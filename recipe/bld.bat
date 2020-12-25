@echo on

set C_INCLUDE_PATH=%LIBRARY_INC%

nmake /f Makefile.msc
if errorlevel 1 exit 1


mkdir %LIBRARY_BIN%
if errorlevel 1 exit 1
mkdir %LIBRARY_LIB%
if errorlevel 1 exit 1
mkdir %LIBRARY_INC%
if errorlevel 1 exit 1

copy libdeflate.dll %LIBRARY_BIN%\libdeflate.dll
if errorlevel 1 exit 1
copy libdeflate.lib %LIBRARY_LIB%\libdeflate.lib
if errorlevel 1 exit 1
copy libdeflate.h   %LIBRARY_INC%\libdeflate.h
if errorlevel 1 exit 1
copy gzip.exe       %LIBRARY_BIN%\libdeflate-gzip.exe
if errorlevel 1 exit 1
copy gunzip.exe     %LIBRARY_BIN%\libdeflate-gunzip.exe
if errorlevel 1 exit 1
