#!/bin/bash

export C_INCLUDE_PATH=${PREFIX}/include
export LIBRARY_PATH=${PREFIX}/lib

make

# The make script uses the $PREFIX env variable to install the application.
# The 'gzip' application (which is not gzip) will be renamed libdeflate-gzip. 
make install
