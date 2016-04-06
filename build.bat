@echo off

set DIRNAME="build"

cd /d %~dp0
if not exist %DIRNAME% (
    mkdir %DIRNAME%
)
cd %DIRNAME%

cmake -G "Visual Studio 12" ^
    -Dbuild_examples=ON ^
    ../cx
pause
