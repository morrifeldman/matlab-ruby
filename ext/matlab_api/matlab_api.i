%module "matlab::driver::native::API"
%include "carrays.i"
%{
/* Includes the header in the wrapper code */
#include "engine.h"
#include "matrix.h"

#define Init_API Init_matlab_api
%}

/* Parse the header file to generate wrappers */
typedef size_t    mwSize;         /* unsigned pointer-width integer */
%include "engine.h"
%include "matrix.h"

%array_class(double, DoubleArray);
