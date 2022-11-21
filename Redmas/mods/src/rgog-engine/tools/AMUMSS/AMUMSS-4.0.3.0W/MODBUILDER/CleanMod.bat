@echo off

set _bCount=0
:RETRY2
if !_bCount! GTR 1000 (
	echo.   xxxxx [WARNING] Problem cleaning folder 'MODBUILDER\MOD' xxxxx
	goto :PROBLEM_FOLDER
)

SET /A _bCount=_bCount+1
Del /f /q /s "MOD\*.*" 1>NUL 2>NUL
if exist "MOD" (
	rd /s /q "MOD" 2>NUL
	goto :RETRY2
)
mkdir "MOD"

goto :eof
rem *****************************************************************************************
rem               --------------------- WE ARE DONE ---------------------
rem *****************************************************************************************

rem --------------------------------------------
rem subroutine section starts below

rem --------------------------------------------
:PROBLEM_FOLDER
	echo.   - Make sure no file are in use in that folder...
	echo.   - Try to delete the folder yourself...
	echo.   - Close AMUMSS cmd window and re-try...
	pause
	EXIT
