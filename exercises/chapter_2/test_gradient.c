#include <stdio.h>
#include <stdlib.h>

extern int makeBorderNonOptimized(unsigned char *image, unsigned char *border, int cols, int rows, int threshold);
extern int makeBorderOptimized(unsigned char *image, unsigned char *border, int cols, int rows, int threshold);
int main(int argc, char **argv)
{
    struct timeval time1, time2;
    FILE *inF, *outF;
    int rows, cols, col, row, pix, threshold, numBlackPixels, usecs, mode;
    unsigned char *pixels, *border_pixels;
    if (argc != 4)
    {
      printf("Usage: test_gradient <input pixel file> <output pixel file> <mode(0: non optimized; 1: optimized)>\n");
      return 0;
    }
    sscanf(argv[3], "%d", &mode);
    if(mode != 0 && mode != 1)
    {
      printf("mode argument shall be either 0 (non optimized) or 1 (optimized)\n");
      return 0;
    }
    threshold = 100;
    inF = fopen(argv[1], "r");
    fscanf(inF, "%d", &rows);
    fscanf(inF, "%d", &cols);
    printf("Rows: %d  Cols: %d\n", rows, cols);
    pixels = (unsigned char *)malloc(rows * cols);
    border_pixels = (unsigned char *)malloc(rows * cols);
    for(row = 0; row < rows; row++)
    {
      for(col = 0; col < cols; col++)
      {
          fscanf(inF, "%d ", &pix);
          pixels[row*cols+col] = pix;
      }
    }
    fclose(inF);
    gettimeofday(&time1, NULL);
    if(mode == 1)
      numBlackPixels = makeBorderOptimized(pixels, border_pixels, cols, rows, threshold);
    else
      numBlackPixels = makeBorderNonOptimized(pixels, border_pixels, cols, rows, threshold);
     gettimeofday(&time2, NULL);
    printf("Num Pixels: %d\tNum  Black Pixels: %d\n", rows*cols, numBlackPixels);
    usecs = (time2.tv_sec - time1.tv_sec)*1000000 +  (time2.tv_usec - time1.tv_usec);
    printf("Elapsed time(us): %d\n", usecs);
    outF = fopen(argv[2], "w");
    fprintf(outF, "%d %d\n", rows, cols);
    for(row = 0; row < rows; row++)
    {
      for(col = 0; col < cols; col++)
      {
        if(col < cols - 1)
          fprintf(outF, "%d ", border_pixels[row*cols+col]);
        else
          fprintf(outF, "%d\n", border_pixels[row*cols+col]);
      }
    }
    fclose(outF);
    return 0;
}
    
