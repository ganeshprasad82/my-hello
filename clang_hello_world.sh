


execute_and_check()
{
        cmd="$1"
        $cmd
        retVal=$?

        if [[ $retVal -ne 0 ]]; then
                echo -e "Execution of $cmd command was failed\n\n"
                exit 1
        else
        	echo -e "Execution of $cmd command passed\n\n"
        fi
}


which clang
which clang++
which flang
which ldd

clang --version
clang++ --version
flang --version
ldd --version

execute_and_check "clang hello.c -o hello_64bit.out"
execute_and_check "./hello_64bit.out"

execute_and_check "clang -m32 hello.c -o hello_32bit.out"
execute_and_check "./hello_32bit.out"

execute_and_check "clang++ hello.cpp -o hello_64bit_cpp.out"
execute_and_check "./hello_64bit_cpp.out"

#execute_and_check "clang++ -m32 hello.cpp -o hello_32bit_cpp.out"
#execute_and_check "./hello_32bit_cpp.out"


export EXTRA_LDFLAGS="-mllvm -vector-library=LIBMVEC ${EXTRA_LDFLAGS} "
execute_and_check "clang test_libm.c -O3 -mllvm -vector-library=LIBMVEC  -ohello_amdlibm.out"
execute_and_check "./hello_amdlibm.out"
execute_and_check "ldd hello_amdlibm.out"

execute_and_check "flang hello.f90 -o hello_64bit_fort.out"
ldd hello_64bit_fort.out
execute_and_check "./hello_64bit_fort.out"

#execute_and_check "flang -m32 hello.f90 -o hello_32bit_fort.out"
#execute_and_check "./hello_32bit_fort.out"


execute_and_check "clang -fopenmp test_omp.c -o hello_omp_clang.out"
ldd hello_omp_clang.out
execute_and_check "./hello_omp_clang.out"




