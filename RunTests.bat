@echo off
cd bin/test
if "%1"=="debug" (
  :: run debug
  TestAll-Debug.exe
) else (
  :: run release
  TestAll.exe
)
pause