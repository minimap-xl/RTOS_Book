/* Filter Descriptor Structure: fully describes the filter and
   its current state.
   This structure contains the two circular buffers and the
   current index within them.
   It contains also the coefficients for the previous input
   and output samples for the filter computation
   y(nT) = aN*y((n-N)T)+...+a1*y((n-1)T)
         + bMu((n-M)T)+...+b1*u((n-1)T + b0*u(nT) */

typedef struct {
  int currIndex;	//Current index in circular buffers
  int bufSize;	//Number of elements in the buffers
  float *yBuf;	//Output history buffer
  float *uBuf;	//Input history buffer
  float *a;		//Previous output coefficients
  int aSize;		//Number of a coefficient
  float *b;		//Previous input coefficients
  int bSize;		//Number of b coefficients
}FilterDescriptor;

/* Filter structure initialization.
   To be called before entering the real-time phase
   Its arguments are the a and b coefficients of the filter */
FilterDescriptor *initFilter(float *aCoeff, int numACoeff,
  float *bCoeff, int numBCoeff)
{
  int i;
  FilterDescriptor *newFilter;
  newFilter = (FilterDescriptor *)malloc(sizeof(FilterDescriptor));
/* Allocate and copy filter coefficients */
  newFilter->a = (float *)malloc(numACoeff * sizeof(float));
  for(i = 0; i < numACoeff; i++)
    newFilter->a[i] = aCoeff[i];
  newFilter->aSize = numACoeff;
  newFilter->b = (float *)malloc(numBCoeff * sizeof(float));
  for(i = 0; i < numBCoeff; i++)
    newFilter->b[i] = bCoeff[i];
  newFilter->bSize = numBCoeff;
/* Circular Buffer dimension is the greatest between the number
   of a and b coefficients */
  if(numACoeff > numBCoeff)
    newFilter->bufSize = numACoeff;
  else
    newFilter->bufSize = numBCoeff;
/* Allocate circularBuffers, initialized to 0 */
  newFilter->yBuf = (float *)calloc(newFilter->bufSize, sizeof(float));
  newFilter->uBuf = (float *)calloc(newFilter->bufSize, sizeof(float));
/* Buffer index starts at 0 */
  newFilter->currIndex = 0;
  return newFilter;
}

/* Run time filter computation.
   The first argument is a pointer to the filter descriptor
   The second argument is the current input
   It returns the current output */
float doFilter(FilterDescriptor *filter, float currIn)
{
  float currOut = 0;
  int i;
  int currIdx;
/* Computation of the current output based on previous input
   and output history */
  currIdx = filter->currIndex;
  for(i = 0; i < filter->aSize; i++)
  {
    currOut += filter->a[i]*filter->yBuf[currIdx];
/* Go to previous sample in the circular buffer */
    currIdx--;
    if(currIdx < 0)
      currIdx += filter->bufSize;
  }
  currIdx = filter->currIndex;
  for(i = 0; i < filter->bSize-1; i++)
  {
    currOut += filter->b[i+1]*filter->uBuf[currIdx];
/* Go to previous sample in the circular buffer */
    currIdx--;
    if(currIdx < 0)
      currIdx += filter->bufSize;
  }
/* b[0] contains the coefficient for the current input */
  currOut += filter->b[0]*currIn;
/* Upate input and output filters */
  currIdx = filter->currIndex;
  currIdx++;
  if(currIdx == filter->bufSize)
    currIdx = 0;
  filter->yBuf[currIdx] = currOut;
  filter->uBuf[currIdx] = currIn;
  filter->currIndex = currIdx;

  return currOut;
}

/* Filter deallocation routine.
   To be called when the filter is no longer used outside
   the real-time phase */
void releaseFilter(FilterDescriptor *filter)
{
  free((char *)filter->a);
  free((char *)filter->b);
  free((char *)filter->yBuf);
  free((char *)filter->uBuf);
  free((char *)filter);
}
