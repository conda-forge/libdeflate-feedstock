#!/bin/bash
set -x

export C_INCLUDE_PATH=${PREFIX}/include

make

# The make script uses the $PREFIX env variable to install the application.
# The 'gzip' application (which is not gzip) will be renamed libdeflate-gzip.
make install


# Remove static libraries
rm -f libdeflate.a
# Redundant for linux. Necessary for Mac OS X.
cp libdeflate.* $PREFIX/lib/
