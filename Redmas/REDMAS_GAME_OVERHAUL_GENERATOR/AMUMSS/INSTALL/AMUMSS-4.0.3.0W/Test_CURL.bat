@echo off
REM @echo on

SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS

echo.
echo. This v1.0

echo. %CD%

rem remark to allow running in any folder
cd MODBUILDER\MBINCompilerDownloader
echo. %CD%

set _wincurl=external
echo. Using %_wincurl% curl
echo.
curl.exe -s --show-error "https://github.com/monkeyman192/MBINCompiler/releases"

echo.
echo.
pause

set _curlpath=
if exist %SYSTEMROOT%\system32\curl.exe (
	set _curlpath=%SYSTEMROOT%\system32\
	set _wincurl=internal
)

echo. Using %_wincurl% curl
echo.
%_curlpath%curl.exe -s --show-error "https://github.com/monkeyman192/MBINCompiler/releases"
REM cd ..
REM cd ..

echo.
echo. %CD%
echo. Using %_wincurl% curl
pause

echo.
echo.  PLEASE COPY/PASTE the content in a file and post the file
echo.
pause
