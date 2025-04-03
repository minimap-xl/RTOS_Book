#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <string.h>

#define MAX_THREADS 2000
#define MATRIX_DIM 1000

/* Arguments exchanged with threads */
struct argument{
  int startRow;
  int nRows;
  long partialSum;
} threadArgs[MAX_THREADS];

/* Matrix pointer: it will be dynamically allocated */
long *bigSquareMatrixA, *bigSquareMatrixB, *bigSquareMatrixC;

/* Thread routine: make the summation of all the elements of the
   assigned matrix rows */
static void *threadRoutine(void *arg)
{
  int i, j, k;
/* Type-cast passed pointer to expected structure
   containing the start row, the number of rows to be summed
   and the return sum argument */
  struct argument *currArg = (struct argument *)arg;
  long sum = 0;
  for(i = 0; i < currArg->nRows; i++)
  {
    for(j = 0; j < MATRIX_DIM; j++)
    {
      bigSquareMatrixC[(currArg->startRow + i) * MATRIX_DIM + j] = 0;
      for(k = 0; k < MATRIX_DIM; k++)
      {
          bigSquareMatrixC[(currArg->startRow + i) * MATRIX_DIM + j] += 
             bigSquareMatrixA[(currArg->startRow + i) * MATRIX_DIM + k] *
             bigSquareMatrixB[k * MATRIX_DIM + j];
      }
    }
  }
  return NULL;
}
int main(int argc, char *args[])
{
/* Array of thread identifiers */
  pthread_t threads[MAX_THREADS];
  long totalSum;
  int i, j, nThreads, rowsPerThread, lastThreadRows;
/* Get the number of threads from command parameter */
  if(argc != 2)
  {
    printf("Usage: threads <numThreads>\n");
    exit(0);
  }
  sscanf(args[1], "%d", &nThreads);
/* Allocate  the matrix M */
  bigSquareMatrixA = (long *)malloc(MATRIX_DIM*MATRIX_DIM*sizeof(long));
  bigSquareMatrixB = (long *)malloc(MATRIX_DIM*MATRIX_DIM*sizeof(long));
  bigSquareMatrixC = (long *)malloc(MATRIX_DIM*MATRIX_DIM*sizeof(long));
/* Make them unitary matrices */
  memset(bigSquareMatrixA, 0, MATRIX_DIM*MATRIX_DIM*sizeof(long));
  memset(bigSquareMatrixB, 0, MATRIX_DIM*MATRIX_DIM*sizeof(long));
  for(i = 0; i < MATRIX_DIM; i++)
  {
    for(j = 0; j < MATRIX_DIM; j++)
    {
        if(i == j)
        {
          bigSquareMatrixA[i*MATRIX_DIM+j] = 1;
          bigSquareMatrixB[i*MATRIX_DIM+j] = 1;
        }
    }
  }

/* If the number of rows cannot be divided exactly by the number of
   threads, let the last thread handle also the remaining rows */
  rowsPerThread = MATRIX_DIM / nThreads;
  printf("Rows per thread: %d\n", rowsPerThread);
  if(MATRIX_DIM % nThreads == 0)
    lastThreadRows = rowsPerThread;
  else
    lastThreadRows = rowsPerThread + MATRIX_DIM % nThreads;

/* Prepare arguments for threads */
  for(i = 0; i < nThreads; i++)
  {
/* Prepare Thread arguments */
    threadArgs[i].startRow = i*rowsPerThread;
    if(i == nThreads - 1)
      threadArgs[i].nRows = lastThreadRows;
    else
      threadArgs[i].nRows = rowsPerThread;
  }
/* Start the threads using default thread attributes */
  for(i = 0; i < nThreads; i++)
    pthread_create(&threads[i], NULL, threadRoutine, &threadArgs[i]);

/* Wait thread termination and use the corresponding
   sum value for the final summation */
  totalSum = 0;
  for(i = 0; i < nThreads; i++)
  {
    pthread_join(threads[i], NULL);
  }
  //Check result
  for(i = 0; i < MATRIX_DIM; i++)
  {
    for(j = 0; j < MATRIX_DIM; j++)
    {
        if ((i == j) && bigSquareMatrixA[i*MATRIX_DIM+j] != 1)
        {
          printf("Unexpected Diagonal\n");
          exit(0);
        }
        if ((i != j) && bigSquareMatrixA[i*MATRIX_DIM+j] != 0)
        {
          printf("Unexpected Off Diagonal\n");
          exit(0);
        }
    }
  }

  printf("Check OK\n");
}
