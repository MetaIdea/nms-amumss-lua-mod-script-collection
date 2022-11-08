@echo off

SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS

if exist MODBUILDER\NEW_BUILDMOD.bat goto :RETRY_1
goto :THEEND

:RETRY_1
copy /y /v /b "BUILDMOD.bat" "BUILDMOD_OLD.bat"
if not exist BUILDMOD_OLD.bat (
	ping -n 5 127.0.0.1>nul
	goto :RETRY_1
)
copy /y /v /b "BUILDMOD_OLD.bat" "MODBUILDER\BUILDMOD_OLD.bat"
copy /y /v /b "MODBUILDER\NEW_BUILDMOD.bat" "BUILDMOD.bat"

del "MODBUILDER\NEW_BUILDMOD.bat"
del "BUILDMOD_OLD.bat"

:THEEND
exit