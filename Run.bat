@echo off
cd bin
if "%1"=="debug" (
  :: run debug
  img2ppx-debug.exe
) else (
  :: run release
  img2ppx.exe
)
pause