#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#define MAX_THREADS 2000
#define ROWS 10000
#define COLS 10000

/* Arguments exchanged with threads */
struct argument{
  int startRow;
  int nRows;
  long partialSum;
} threadArgs[MAX_THREADS];

/* Matrix pointer: it will be dynamically allocated */
long *bigMatrix;

/* Thread routine: make the summation of all the elements of the
   assigned matrix rows */
static void *threadRoutine(void *arg)
{
  int i, j;
/* Type-cast passed pointer to expected structure
   containing the start row, the number of rows to be summed
   and the return sum argument */
  struct argument *currArg = (struct argument *)arg;
  long sum = 0;
  for(i = 0; i < currArg->nRows; i++)
    for(j = 0; j < COLS; j++)
      sum += bigMatrix[(currArg->startRow + i) * COLS + j];
  currArg->partialSum = sum;
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
  bigMatrix = (long *)malloc(ROWS*COLS*sizeof(long));
/* Fill the matrix with some values */
  for(i = 0; i < ROWS; i++)
  {
    for(j = 0; j < COLS; j++)
    {
        bigMatrix[i*COLS+j] = 1;
    }
  }

/* If the number of rows cannot be divided exactly by the number of
   threads, let the last thread handle also the remaining rows */
  rowsPerThread = ROWS / nThreads;
  printf("Rows per thread: %d\n", rowsPerThread);
  if(ROWS % nThreads == 0)
    lastThreadRows = rowsPerThread;
  else
    lastThreadRows = rowsPerThread + ROWS % nThreads;

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
    totalSum += threadArgs[i].partialSum;
  }
  printf("Total Sum: %d\n", totalSum);
}
