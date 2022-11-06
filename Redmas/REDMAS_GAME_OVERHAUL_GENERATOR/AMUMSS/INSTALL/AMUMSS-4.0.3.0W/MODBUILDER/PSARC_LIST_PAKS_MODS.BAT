@echo off
SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS

rem -------- We are in MODBUILDER  -------------
REM echo.^>^>^> Changed to !CD!

set "_pPAK_LIST=MODS_pak_list.txt"
set _pMODBUILDERDirectory=!CD!

set /p _gNMS_FOLDER=<NMS_FOLDER.txt
set _gNMS_MODS_FOLDER=%_gNMS_FOLDER%\GAMEDATA\PCBANKS\MODS

pushd "%_gNMS_MODS_FOLDER%"
REM echo.^>^>^> Changed to !CD!

echo.
echo.^>^>^> Getting list of files from NMS MODS PAK file(s)...

echo|set /p="FROM MODS">> "%_pMODBUILDERDirectory%\%_pPAK_LIST%"
echo. >> "%_pMODBUILDERDirectory%\%_pPAK_LIST%"

for %%I in ("*.pak.*") do (
  echo.  - %%~nxI
  REM "%_pMODBUILDERDirectory%\psarc.exe" list "%_gNMS_MODS_FOLDER%\%%~nxI" >> "%_pMODBUILDERDirectory%\%_pPAK_LIST%"
  "%_pMODBUILDERDirectory%\psarc.exe" list "%%~nxI" >> "%_pMODBUILDERDirectory%\%_pPAK_LIST%"
  echo. >> "%_pMODBUILDERDirectory%\%_pPAK_LIST%"
)

popd
REM echo.^>^>^> Changed to !CD!

REM rem Get list of lua scripts from %_pPAK_LIST% and create ScriptList.xml
REM %_mLUA% GetListOfScriptsInPaks.lua

goto :eof
rem ---------- WE ARE DONE ---------------------

rem --------------------------------------------
rem subroutine section starts below
rem --------------------------------------------
:LuaEndedOk
	if not EXIST  "%_bMASTER_FOLDER_PATH%MODBUILDER\LuaEndedOK.txt" (
		echo.>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.          From PSARC_LIST_PAKS_MODS.BAT>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.    [BUG] lua.exe generated an [ERROR]... Please report ALL scripts AND this file to NMS Discord: "No Man's Sky Modding" channel, "mod-amumss-lua" room:>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.           https://discord.gg/22ZAU9H>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
	)
	EXIT /B
	
rem --------------------------------------------

ENDLOCAL
