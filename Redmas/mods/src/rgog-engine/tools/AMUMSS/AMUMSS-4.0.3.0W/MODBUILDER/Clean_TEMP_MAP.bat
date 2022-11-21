@echo off

Del /f /q /s "_TEMP_MAP\*.*" 1>NUL 2>NUL
:RETRY
if exist "_TEMP_MAP" (
	rd /s /q "_TEMP_MAP" 2>NUL
	goto :RETRY
)
