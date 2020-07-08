#!/bin/bash -x 
$CC my-hello.c -o my-hello.out
$CC my-hello.c -o a.out
which $CC
which clang 
which gcc 
echo "I am in $PWD"