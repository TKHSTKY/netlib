@echo off

set DIRNAME="build"

cd /d %~dp0
if not exist %DIRNAME% (
    mkdir %DIRNAME%
)
cd %DIRNAME%

cmake -G "Visual Studio 14" ^
    ../netlib
cmake --build . --config Release

rem cleanup
cd /d %~dp0

pause
