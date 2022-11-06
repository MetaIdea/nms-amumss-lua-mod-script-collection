@echo off
SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS

REM echo.
REM echo.^>^>^> %_bB% Starting in !CD!

set "_mLUA=Extras\lua_x64\bin\lua.exe"

REM del  /f /q "logcleaner.txt" 1>NUL 2>NUL

REM :RETRY_1
REM copy /y /v /b "BUILDMOD.bat" "logcleaner.txt"
REM if not exist logcleaner.txt (
	REM ping -n 1 127.0.0.1>nul
	REM goto :RETRY_1
REM )
REM del  /f /q "logcleaner.txt" 1>NUL 2>NUL

REM echo. found and deleted logcleaner.txt
..\%_mLUA% Log_file_cleaner_MOD.lua

pause
exit
