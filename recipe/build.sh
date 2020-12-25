#!/bin/bash
set -x

make

# The make script uses the $PREFIX env variable to install the application.
# The 'gzip' application (which is not gzip) will be renamed libdeflate-gzip.
make install

# Redundant for linux. Necessary for Mac OS X.
cp libdeflate.* $PREFIX/lib/
# Remove static libraries that are installed automatically
rm -f $PREFIX/lib/libdeflate.a
