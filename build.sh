#!/bin/bash -x 

echo -e "\n\nPWD is:  $PWD"

echo -e "\n\nContent of this folder:$PWD"
ls -lrt 


$CC my-hello.c -o my-hello.out
$CC my-hello.c -o a.out

echo -e "\n\nContent of environment variables"
echo "F90:$F90"
echo "FC:$FC"
echo "F77:$F77"
echo "CC:$CC"
echo "PATH:$PATH"
echo "LD_LIBRARY_PATH:$LD_LIBRARY_PATH"
echo "LIBRARY_PATH:$LIBRARY_PATH"
echo "C_INCLUDE_PATH:$C_INCLUDE_PATH"
echo "CXX_INCLUDE_PATH:$CXX_INCLUDE_PATH"
echo "CPP_INCLUDE_PATH:$CPP_INCLUDE_PATH"
echo "RPATH:$RPATH"
echo "RUNPATH:$RUNPATH"
echo "LD_RUN_PATH:$LD_RUN_PATH"

echo -e "\n\nWhich compilers are present:"
which $CC
which clang 
which clang++ 
which flang
which gcc 
which g++
which gfortran


echo -e "\n\nVersion information"
clang -v 
flang -v
gcc -v 

echo -e "\n\n Hello world programs check"
bash clang_hello_world.sh
