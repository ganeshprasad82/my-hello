#!/bin/bash -x 
$CC my-hello.c -o my-hello.out
$CC my-hello.c -o a.out

echo "Content of environment variables"
echo "PATH:$PATH"
echo "LD_LIBRARY_PATH:$LD_LIBRARY_PATH"
echo "LIBRARY_PATH:$LIBRARY_PATH"
echo "C_INCLUDE_PATH:$C_INCLUDE_PATH"
echo "CXX_INCLUDE_PATH:$CXX_INCLUDE_PATH"
echo "CPP_INCLUDE_PATH:$CPP_INCLUDE_PATH"
echo "F90:$F90"
echo "FC:$FC"
echo "F77:$F77"
echo "CC:$CC"

echo "Location information"
which $CC
which clang 
which gcc 
which flang
echo "I am in $PWD"


echo "Version information"
clang -v 
flang -v
gcc -v 


echo "Content of this folder:$PWD"
ls -lrt 