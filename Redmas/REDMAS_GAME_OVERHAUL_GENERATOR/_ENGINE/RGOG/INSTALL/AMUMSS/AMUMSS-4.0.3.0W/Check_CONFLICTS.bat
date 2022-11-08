@echo off
set "_CCver=v1.1"

REM enable color output
for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set "CurrentBuildHex=%%~b"
set /a _bCurrentBuildDec=%CurrentBuildHex%

rem nothing to do to get colors for > win 10 1803 (18362)
if %_bCurrentBuildDec% LEQ 18362 (
	if %_bCurrentBuildDec% LEQ 7601 (
		rem for win 7 and before, use ansicon.exe instead
		.\MODBUILDER\ansicon_x64\ansicon.exe -p 1>NUL 2>NUL
	) else (
		rem turn colors ON for win 10 1903 and before
		reg add HKEY_CURRENT_USER\Console /v VirtualTerminalLevel /t REG_DWORD /d 0x00000001 /f 1>NUL 2>NUL
	)
)

REM REM enable color output
REM rem NOT USED, won't work on win 7, use ansicon.exe instead
REM rem reg add HKEY_CURRENT_USER\Console /v VirtualTerminalLevel /t REG_DWORD /d 0x00000001 /f 1>NUL 2>NUL

REM .\MODBUILDER\ansicon_x64\ansicon.exe -p 1>NUL 2>NUL

set _zRED=[1;31m[1m
set _zGREEN=[1;32m[1m
set _zYELLOW=[1;33m[1m
set _zDARKGRAY=[1;90m[1m
set _zDARKCYAN=[1;46m[1m

set _zWHITEonYELLOW=[93;43m[1m
set _zBLUEonDARKGRAY=[34;47m
set _zBLACKonYELLOW=[7;93m

set _zINVERSE=[7m
set _zDEFAULT=[0m

set _zUpOneLineErase=[F[K
set _zBGintense=[100m
rem END: For win 7 to use colors also

SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS
set _bSystem32=%SYSTEMROOT%\system32

REM rem -------------  testing for administrator  -------------------------------
REM set _bMyPath=%CD%
REM if "%_bMyPath%" == "%_bSystem32%" set _bADMIN=1

REM if DEFINED _bADMIN (
	REM echo.[ERROR] Please do NOT "Run as administrator", AMUMSS Check_CONFLICTS will not work^!
	REM pause
	REM goto :eof
REM )

REM set _bMyPath=
REM set _bADMIN=
REM rem -------------  end testing for administrator  -------------------------------

cd /D "%~dp0"

set "_bMASTER_FOLDER_PATH=%~dp0"

rem MASTER_FOLDER_PATH.txt is needed by certain functions
echo|set /p="%~dp0">MASTER_FOLDER_PATH.txt
echo|set /p="%~dp0">.\MODBUILDER\MASTER_FOLDER_PATH.txt

rem -------------  testing for AMUMSS path  -------------------------------
set "_search=("
CALL set "_testPath=%%_bMASTER_FOLDER_PATH:%_search%=%%"
if /i NOT ["%_testPath%"]==["%_bMASTER_FOLDER_PATH%"] set _found=Y
if defined _found (
	echo. %_zRED%%_bB% Path to AMUMSS contains parenthesis ^(^), please remove them and retry%_zDEFAULT%
	pause
	exit
)
rem -------------  END: testing for AMUMSS path  -------------------------------

SET "_bDateTimeStart=  %DATE% %TIME% AMUMSS Check_CONFLICTS starting^!"
echo.!_bDateTimeStart!

rem *********************  NOW IN AMUMSS folder  *******************

if exist WOPT_SERIALIZING.txt (set _mSERIALIZING=Y)
if exist WOPT_DEBUG.txt (set _mDEBUG=y)
if exist WOPT_ISxxx.txt (set _mISxxx=Y)
if exist WOPT_PAUSE.txt (set _mPAUSE=y)
if exist WOPT_VERBOSE_BATCH.txt (set _mVERBOSE=y)
if exist WOPT_Wbertro.txt (set _mWbertro=y)
if exist WOPT_GlobalRepl.txt (set _mGlobalRepl=y)

SET /p _mMasterVersion=<"MODBUILDER\AMUMSSMasterVersion.txt"
SET /p _mCurrentVersion=<"MODBUILDER\AMUMSSVersion.txt"

if [!_mMasterVersion!]==[] set "_mMasterVersion=_mCurrentVersion"

rem --------------   Installed DOTNET   -----------------------------
rem also check 
set "_bDotNet=.NET 5 unknown"
if exist "C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
    set "_bDotNet=.NET 5 Desktop Runtime exist"
			REM ) else (
				REM if exist "C:\Program Files\dotnet\shared\Microsoft.NETCore.App\5.?.??" (
					REM set "_bDotNet=.NET 5 Runtime exist"
				REM )
)

if ["%_bDotNet%"]==[".NET 5 unknown"] (
	rem dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
	echo.
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%    .NET 5 Desktop Runtime MUST be installed before continuing     %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%      IT MUST be .NET 5, no other version will do^^!                 %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%           .NET 6 and above are NOT compatible                     %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.
	CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Press 'Y' to install .NET 5 Desktop Runtime on your machine, 'N' to exit %_zDEFAULT%"
	if !ERRORLEVEL! EQU 2 exit
	if !ERRORLEVEL! EQU 1 set _bInstallNET5=1

	if !_bInstallNET5! EQU 1 (
		echo.
		echo. Please follow the instructions if any
		echo.    downloading and installing...
		winget install --architecture x64 Microsoft.Dotnet.DesktopRuntime.5 1>NUL 2>NUL
	)	
)

if exist "C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
    echo. Done^^!
	set "_bDotNet=.NET 5 Desktop Runtime exist"
)
if ["%_bDotNet%"]==[".NET 5 unknown"] (
	echo.
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%    Sorry, could not complete automatic install                    %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%    .NET 5 Desktop Runtime MUST be installed before continuing     %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%      IT MUST be .NET 5, no other version will do^^!                 %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%           .NET 6 and above are NOT compatible                     %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.
	echo.  %_zBLACKonYELLOW%    goto 'https://dotnet.microsoft.com/en-us/download/dotnet/5.0'  %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%    and select the '.NET Desktop Runtime 5.?.?? Windows x64'       %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.
	pause
	REM echo.
	REM echo. --- Currently installed versions: ---
	REM type "MODBUILDER\DOTNET.txt"
	REM echo.
	REM pause
	exit
)

rem --------------   END: Installed DOTNET   ------------------------

rem --------------   Installed OS_1   -----------------------------
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
	set "_bWinVer=%%i %%j %%k"
	set "_bWinNum=%%j"
)

Set _bOS_bitness=64
IF %PROCESSOR_ARCHITECTURE% == x86 (
  IF NOT DEFINED PROCESSOR_ARCHITEW6432 Set _bOS_bitness=32
  )

set _bCPU=%NUMBER_OF_PROCESSORS%
set _bMinCPU=3

if %_bCPU% gtr %_bMinCPU% (
	set _bAllowMapFileTreeCreator=Y
	set _bCreateMapFileTree=1
)

if [%-MAPFILETREEFORCE%]==[Y] (
	set _bAllowMapFileTreeCreator=N	
)

for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set "CurrentBuildHex=%%~b"

if not [%_bWinNum%]==[8] (
	for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v UBR') do set "UBRHEX=%%~b"
) else (
	set "UBRHEX=0"
)

set /a _bCurrentBuildDec=%CurrentBuildHex%
set /a _bUBRDEC=%UBRHEX%
rem --------------  end Installed OS_1   -----------------------------

rem --------------   Installed OS_2: get Lua.exe  -----------------------------
rem since MBINCompiler can only be used on x64 now
if exist "!CD!\MODBUILDER\Extras\lua_x64\bin\lua.exe" set "_mLUA=Extras\lua_x64\bin\lua.exe"
if exist "!CD!\MODBUILDER\Extras\lua_x64\bin\luaS.exe" set "_mLUAS=Extras\lua_x64\bin\luaS.exe"
if exist "!CD!\MODBUILDER\Extras\lua_x64\bin\luaM.exe" set "_mLUAM=Extras\lua_x64\bin\luaM.exe"
set "_mLUAC=Extras\lua_x64\bin\luac.exe"

rem --------------  end Installed OS_2: get Lua.exe   -----------------------------
  
rem **********************  start Active code page check  *************************
rem Active code page: 850, 437 are ok
chcp >MODBUILDER\ActiveCodePage.txt

FOR /F "tokens=*" %%A IN ('CHCP') DO FOR %%B IN (%%~A) DO SET _CodePage=%%B

rem remove end dot for some version of German Windows XP and 7
if %_CodePage:~-1%==. (
	set _CodePage=%_CodePage:~0,-1%
)

echo.
echo.  %_zINVERSE% ^>^>^> Note: Please make sure you do not have any accented characters in AMUMSS path %_zDEFAULT%
rem **********************  end Active code page check  *************************

echo.
if defined _updateDone (
	echo.%_zRED%  AMUMSS UPDATED to v%_mCurrentVersion%%_zDEFAULT%
) else (
	echo.%_zGREEN%  AMUMSS v%_mCurrentVersion%%_zDEFAULT%
)
MODBUILDER\%_mLUA% -e print(_VERSION)>temp.txt
set /p _bVersionLua=<temp.txt
echo.%_zGREEN%  %_bVersionLua% custom version with lfs%_zDEFAULT%
Del /f /q "temp.txt" 1>NUL 2>NUL

if %_bCurrentBuildDec% GEQ 22000 (
	set _bWinVer=%_bWinVer:10=11%
)

if %_bOS_bitness%==64 (
	echo.%_zGREEN%  %_bWinVer% 64bit, Build: %_bCurrentBuildDec%.%_bUBRDEC% with %NUMBER_OF_PROCESSORS% logical CPUs ^(cp%_CodePage%^)%_zDEFAULT%
) else (
	echo.%_zGREEN%  %_bWinVer% 32bit, Build: %_bCurrentBuildDec%.%_bUBRDEC% with %NUMBER_OF_PROCESSORS% logical CPUs ^(cp%_CodePage%^)%_zDEFAULT%
)
echo.%_zGREEN%  %_bDotNet%%_zDEFAULT%
echo.%_zGREEN%  Check_CONFLICTS %_CCver%%_zDEFAULT%

MODBUILDER\%_mLUA% .\MODBUILDER\GetVersionInfo.lua ".\\" ".\\MODBUILDER\\" "Y"
set /p _bNMS_VERSIONID=<"MODBUILDER\NMS_versionId.txt" 1>NUL 2>NUL

rem DO NOT REMOVE
set "_bB="

if defined _mVERBOSE set "_bB=BuildMod.bat:"

if defined _mVERBOSE (
	echo.
	echo.^>^>^>     In BuildMod.bat
)

echo.
echo.^>^>^> %_bB% Starting in !CD!

rem remove old report.txt
Del /f /q "REPORT.txt" 1>NUL 2>NUL

rem we are using this now
Del /f /q "REPORT.lua" 1>NUL 2>NUL

rem **********************  start of NMS_FOLDER DISCOVERY section  *************************
rem try to find the NMS folder path
rem if the user gave a path, try to use it first
echo.
echo.^>^>^> %_bB% Checking Path to NMS_FOLDER...

rem *****************************************************
if not exist "NMS_FOLDER.txt" (
	rem we need to re-create it
	echo.
	echo.^>^>^>      Re-creating missing NMS_FOLDER.txt...
	copy /V /Y /B "MODBUILDER\NMS_FOLDER.txt" ".\NMS_FOLDER.txt" 1>NUL 2>NUL
)
rem *****************************************************

set /p _bNMS_FOLDER=<NMS_FOLDER.txt 1>NUL 2>NUL
echo !_bNMS_FOLDER!>test.txt
REM echo. A- [!_bNMS_FOLDER!]

set "_bNMS_PCBANKS_FOLDER=%_bNMS_FOLDER%\GAMEDATA\PCBANKS\"
REM echo. 0- [%_bNMS_PCBANKS_FOLDER%]

if not exist "%_bNMS_PCBANKS_FOLDER%BankSignatures.bin" (
	echo. Current path does not work...
	for %%G in (1,2) do (
		if not defined _bFoundNMS (
			if %%G EQU 1 (
				rem NMS on Steam
				echo.   Trying NMS on Steam using registry
				set _bREGKEY="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 275850"
				set _bREGVAL="InstallLocation"
			)
			if %%G EQU 2 (
				rem NMS on GOG on 64bit
				echo.   Trying NMS on GOG on 64bit using registry
				set _bREGKEY="HKLM\SOFTWARE\Wow6432Node\GOG.com\Games\1446213994"
				set _bREGVAL="path"
			)
			
			rem for DEBUG
			REM REG QUERY !_bREGKEY! /v !_bREGVAL!
			set _bvalue=
			FOR /F "usebackq skip=2 tokens=1,2*" %%A IN (`REG QUERY !_bREGKEY! /v !_bREGVAL!`) DO (
				set "_bvalue=%%C"
			)
			REM echo. E- !_bvalue!
			ECHO !_bvalue!>test.txt
			
			set /p _bNMS_FOLDER=<test.txt
			REM echo. B- [!_bNMS_FOLDER!]
			set "_bNMS_PCBANKS_FOLDER=!_bNMS_FOLDER!\GAMEDATA\PCBANKS\"
			REM echo. 1- [!_bNMS_PCBANKS_FOLDER!]
			if exist "!_bNMS_PCBANKS_FOLDER!BankSignatures.bin" (
				echo.
				echo.%_bB% Found Path to NMS_FOLDER...
				set _bFoundNMS=y
				goto :REG_EXPLORATION_DONE
			) else (
				echo.      not here...
			)
		)
	)
	echo.   Registry research done...
) else (
	set _bFoundNMS=y
)

:REG_EXPLORATION_DONE
echo.
if defined _bFoundNMS (
	copy /y /v "test.txt" "NMS_FOLDER.txt*" 1>NUL 2>NUL
) else (
	echo.^>^>^> %_bB% Still looking to locate path to NMS_FOLDER...
	echo.
	set _bvalue=
	
	set _bREGKEY="HKLM\SOFTWARE\WOW6432Node\Valve\Steam"
	set _bREGVAL="InstallPath"
	FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY !_bREGKEY! /v !_bREGVAL!`) DO (
		if [%%B]==[] (
			set "_bvalue=%%A"
		) else (
			set "_bvalue=%%A %%B"
		)
	)
	rem returns F:\Program Files (x86)\Steam
	rem or something like D:\Steam
	REM echo.   Found Steam install folder: !_bvalue!	
	REM echo.   Looking for Libraries in !_bvalue!\steamapps\libraryfolders.vdf
	rem or in D:\Steam\steamapps\common\No Man's Sky
	
	ECHO !_bvalue!>test.txt
	set /p _bNMS_FOLDER=<test.txt
	set "_bNMS_PCBANKS_FOLDER=!_bNMS_FOLDER!\GAMEDATA\PCBANKS\"
	REM echo. 1- [!_bNMS_PCBANKS_FOLDER!]
	if exist "!_bNMS_PCBANKS_FOLDER!BankSignatures.bin" (
		echo.
		echo.%_bB% Found Path to NMS_FOLDER...
		copy /y /v "test.txt" "NMS_FOLDER.txt*" 1>NUL 2>NUL
	) else (
		rem then NMS could be in a Steam Library folder
		ECHO !_bvalue!>test.txt
		echo.   Looking for Libraries in: [!_bvalue!]
		echo.
		
		Call :LuaEndedOkREMOVE
		set location=bz15
		MODBUILDER\%_mLUA% MODBUILDER\GetNMSFolder.lua "!_bvalue!" ".\\MODBUILDER\\"
		Call :LuaEndedOk
	)	
)

set _bREGKEY=
set _bREGVAL=
set _bvalue=
set _bFoundNMS=

set /p _bNMS_FOLDER=<NMS_FOLDER.txt
set "_bNMS_PCBANKS_FOLDER=%_bNMS_FOLDER%\GAMEDATA\PCBANKS\"

REM look for GamePass
if not exist "%_bNMS_PCBANKS_FOLDER%BankSignatures.bin" (
	echo.   Looking for GAMEPASS No Man's Sky folder
	MODBUILDER\%_mLUA% .\MODBUILDER\GetGamePassPath.lua
)

set /p _bNMS_FOLDER=<NMS_FOLDER.txt
set "_bNMS_PCBANKS_FOLDER=%_bNMS_FOLDER%\GAMEDATA\PCBANKS\"

if not exist "%_bNMS_PCBANKS_FOLDER%BankSignatures.bin" (
	echo.********************* PLEASE correct your path in NMS_FOLDER.txt, NMS game files not found ********************
	echo. Bad Path to: ["%_bNMS_PCBANKS_FOLDER%BankSignatures.bin"]
	echo. Found this PATH in [NMS_FOLDER.txt] "%_bNMS_FOLDER%"
	echo.%_zRED% ^>^>^> Your PATH in [NMS_FOLDER.txt] must be pointing to the folder containing 'GAMEDATA' %_zDEFAULT%
	echo.***** Terminating batch until corrected...
	pause
	exit
) else (
	echo. %_zBLACKonYELLOW% Path to NMS_FOLDER is ^>^>^>%_zDEFAULT%%_zDARKCYAN% GOOD %_zDEFAULT%%_zBLACKonYELLOW%^<^<^< game files found %_zDEFAULT%
)
cd /D "%~dp0"

echo.
echo.^>^>^> %_bB% Updating NMS_FOLDER.txt to "%_bNMS_FOLDER%"
copy /y /v "NMS_FOLDER.txt" "MODBUILDER\NMS_FOLDER.txt*" >NUL
Del /f /q "test.txt" 1>NUL 2>NUL
rem **********************  end of NMS_FOLDER DISCOVERY section  *************************

rem ************************************  SOME FOLDER preparation  ***********************
if not exist "!CD!\ModScript" (
	mkdir "!CD!\ModScript\" 2>NUL
)

set "_DisableFolder=Disabled scripts and paks"
if not exist "!CD!\ModScript\%_DisableFolder%" (
	mkdir "!CD!\ModScript\%_DisableFolder%" 2>NUL
)

if not exist "!CD!\ModScriptCheck" (
	mkdir "!CD!\ModScriptCheck\" 2>NUL
)

if not exist "!CD!\SavedSections" (
	mkdir "!CD!\SavedSections\" 2>NUL
)

if not exist "!CD!\UNPACKED_DECOMPILED_PAKs" (
	mkdir "!CD!\UNPACKED_DECOMPILED_PAKs\" 2>NUL
)

if not exist "!CD!\MODBUILDER\_TEMP" (
	mkdir "!CD!\MODBUILDER\_TEMP\" 2>NUL
)

if not exist "!CD!\MapFileTrees" (
	mkdir "!CD!\MapFileTrees\" 2>NUL
)

if not exist "!CD!\ModExtraFilesToInclude" (
	mkdir "!CD!\ModExtraFilesToInclude\" 2>NUL
)

if not exist "!CD!\Builds" (
	mkdir "!CD!\Builds\" 2>NUL
)

if not exist "!CD!\Builds\IncrementalBuilds" (
	mkdir "!CD!\Builds\IncrementalBuilds\" 2>NUL
)

if exist "MODBUILDER\Delete_this.txt" (
	FOR /F "delims=" %%G in (MODBUILDER\Delete_this.txt) do (
		if exist "%%G" (
			Del /f /q /s "%%G" 1>NUL 2>NUL
			RD "%%G"
		)
	)
	if not defined _mWbertro (
		Del /f /q /s "MODBUILDER\Delete_this.txt" 1>NUL 2>NUL
	)
)

rem ******************  Check for BUILDMOD_AUTO.bat  ***********************************
if not exist "BUILDMOD_AUTO.bat" (
	rem we need to re-create it
	echo.
	echo.^>^>^>      Re-created missing BUILDMOD_AUTO.bat...
	copy /V /Y /B "MODBUILDER\buildmod_auto.backup" ".\BUILDMOD_AUTO.bat" >nul
)
rem *****************************************************

rem **********************  Check for updates  *******************************************
if not exist "!CD!\MODBUILDER\UPDATE" (
	mkdir "!CD!\MODBUILDER\UPDATE\" 2>NUL
)

set "_INFO=^[INFO] "
set "_INFO="

rem ----------------------------------  Start REPORTing  -----------------------------------------------
echo|set /p=!_bDateTimeStart!>>"REPORT.lua" & echo.>>"REPORT.lua"
echo.>>"REPORT.lua"
if defined _updateDone (
	echo|set /p="%_INFO% AMUMSS UPDATED to v%_mCurrentVersion%">>"REPORT.lua" & echo.>>"REPORT.lua"
) else (
	echo|set /p="%_INFO% AMUMSS v%_mCurrentVersion%">>"REPORT.lua" & echo.>>"REPORT.lua"
)
echo|set /p="%_INFO% using %_bVersionLua% custom version with lfs">>"REPORT.lua" & echo.>>"REPORT.lua"

if %_bOS_bitness%==64 (
	echo|set /p="%_INFO% on %_bWinVer% 64bit, Build: %_bCurrentBuildDec%.%_bUBRDEC% with %NUMBER_OF_PROCESSORS% logical CPUs (cp%_CodePage%)">>"REPORT.lua" & echo.>>"REPORT.lua"
) else (
	echo|set /p="%_INFO% on %_bWinVer% 32bit, Build: %_bCurrentBuildDec%.%_bUBRDEC% with %NUMBER_OF_PROCESSORS% logical CPUs (cp%_CodePage%)">>"REPORT.lua" & echo.>>"REPORT.lua"
)
echo|set /p="%_INFO% %_bDotNet%">>"REPORT.lua" & echo.>>"REPORT.lua"

if defined _bMBINCompilerVersion (
	echo|set /p="%_INFO% with MBINCompiler v%_bMBINCompilerVersion%">>"REPORT.lua" & echo.>>"REPORT.lua"
)

if "%_bNMS_VERSIONID%"=="not found" (
	rem try again
	MODBUILDER\%_mLUA% .\MODBUILDER\GetVersionInfo.lua ".\\" ".\\MODBUILDER\\"
	set /p _bNMS_VERSIONID=<"MODBUILDER\NMS_versionId.txt" 1>NUL 2>NUL
)

echo|set /p="%_INFO% NMS version is %_bNMS_VERSIONID%">>"REPORT.lua" & echo.>>"REPORT.lua"
echo.>>"REPORT.lua"

rem *********************  NOW IN MODBUILDER  *******************
cd MODBUILDER

del /f /q MBIN_PAKS.txt 1>NUL 2>NUL
echo|set /p="">MBIN_PAKS.txt
echo.>>"MBIN_PAKS.txt"

del /f /q MODS_pak_list.txt 1>NUL 2>NUL
echo|set /p="">MODS_pak_list.txt

REM for Check mod Conflicts
SET _bGConflictLines=0

set _bCheckMODSconflicts=3

if !_bCheckMODSconflicts! EQU 3 (
	REM get list paks in NMS MODS folder
	CALL PSARC_LIST_PAKS_MODS.BAT
)

set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"

if not defined _bStartTime (
	Call :LuaEndedOkREMOVE
	set location=bz8
	SET _bStartTime=Y
	%_mLUA% StartTime.lua "..\\" ""
	Call :LuaEndedOk
)

:START_CONFLICT_DETECTION
rem ******   NOW IN AMUMSS folder   ********
cd "%~dp0"

if !_bCheckMODSconflicts! NEQ 2 (
	if !_bCheckMODSconflicts! EQU 1 set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
	if !_bCheckMODSconflicts! EQU 3 set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
	if !_bCheckMODSconflicts! EQU 4 set "_fileToCheck=MODBUILDER\MBIN_PAKS.txt"
	REM echo._fileToCheck = !_fileToCheck!

	CALL :HOW_MANY_LINES
	
	REM echo _bCheckMODSconflicts = !_bCheckMODSconflicts!
	if !_bCheckMODSconflicts! NEQ 2 (
		if !_bGConflictLines! GTR 0 (
			echo.
			echo.^>^>^> Conflict Detection in MODS starting, be patient...
			if !_bCheckMODSconflicts! EQU 3 (
				echo|set /p="%_INFO% Only checking conflicts in MODS, at user request (no script processed)">>"REPORT.lua" & echo.>>"REPORT.lua"
			)
			
			if !_bCheckMODSconflicts! EQU 4 (
				echo|set /p="%_INFO% Only checking conflicts in ModScript, at user request">>"REPORT.lua" & echo.>>"REPORT.lua"
			)
			
			Call :LuaEndedOkREMOVE
			set location=bz5
			.\MODBUILDER\%_mLUA% ".\MODBUILDER\CheckCONFLICTLOG.lua" ".\\" ".\\MODBUILDER\\" "" !_bCheckMODSconflicts!
			Call :LuaEndedOk
		) else (
			echo.
			echo.  %_zGREEN%No conflicting files to check%_zDEFAULT%
			echo.
		)
	)
)

if !_bCheckMODSconflicts! EQU 2 (
	echo.
	echo.%_zGREEN%^>^>^> Skipped Conflict Detection at user request%_zDEFAULT%
	echo.
	echo|set /p="%_INFO% Skipped Conflict Detection at user request">>"REPORT.lua" & echo.>>"REPORT.lua"
)

echo.              %_zBLACKonYELLOW% ^>^>^> FINAL REPORT ^<^<^< %_zDEFAULT%
echo.            %_zBLACKonYELLOW% ^>^>^> See "REPORT.lua" ^<^<^< %_zDEFAULT%

echo.>>"REPORT.lua"
echo|set /p="%_INFO%                 >>> FINAL REPORT  <<<">>"REPORT.lua" & echo.>>"REPORT.lua"

Call :LuaEndedOkREMOVE
set location=bz4
.\MODBUILDER\%_mLUA% ".\MODBUILDER\CheckREPORTLOG.lua" ".\\" ".\\MODBUILDER\\" !_bCheckMODSconflicts!
Call :LuaEndedOk

echo.            %_zBLACKonYELLOW% ^>^>^> See "REPORT.lua" ^<^<^< %_zDEFAULT%

REM get time to process
if defined _bStartTime (
	Call :LuaEndedOkREMOVE
	set location=bz3
	.\MODBUILDER\%_mLUA% ".\MODBUILDER\EndTime.lua" ".\\" ".\\MODBUILDER\\"
	Call :LuaEndedOk

	Call :LuaEndedOkREMOVE
	set location=bz2
	.\MODBUILDER\%_mLUA% ".\MODBUILDER\DiffTime.lua" ".\\" ".\\MODBUILDER\\"
	Call :LuaEndedOk
)

REM cleanup %_mLUA% errors
del /f /q .\MODBUILDER\LuaEndedOk.txt 1>NUL 2>NUL
REM end cleanup %_mLUA% errors

if exist "%_bNMS_PCBANKS_FOLDER%DISABLEMODS.TXT" (
	echo. %_zRED% --- DISABLEMODS.TXT still exist in your PCBANKS folder --- %_zDEFAULT%
	echo. %_zRED% ---       Delete it or NMS will not use your mods      --- %_zDEFAULT%
)

REM if not exist .\MODBUILDER\NEW_BUILDMOD.bat (
	REM echo.
	REM echo. %_zBLACKonYELLOW% === PRESS ANY KEY and THIS window will close shortly and clean log.lua === %_zDEFAULT%
	REM echo. %_zBLACKonYELLOW% === or close using the 'X' at the top right === %_zDEFAULT%
REM )

echo.
pause

exit
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

rem --------------------------------------------
:Cleaning_EXMLFILES_CURRENT
	set _bCount=0
	:RETRY9
	if !_bCount! GTR 1000 (
		echo.   xxxxx [WARNING] Problem Cleaning folder 'ModScript\EXMLFILES_CURRENT' xxxxx
		goto :PROBLEM_FOLDER
	)
	
	SET /A _bCount=_bCount+1
	Del /f /q /s "EXMLFILES_CURRENT\*.*" 1>NUL 2>NUL
	if exist "EXMLFILES_CURRENT" (
		rd /s /q "EXMLFILES_CURRENT" 1>NUL 2>NUL
		goto :RETRY9
	)
	rem DO NOT create ModScript\EXMLFILES_CURRENT
	EXIT /B

rem --------------------------------------------
:Cleaning_EXTRACTED_SOURCE
	set _bCount=0
	:RETRY10
	if !_bCount! GTR 1000 (
		echo.   xxxxx [WARNING] Problem Cleaning folder 'ModScript\EXTRACTED_SOURCE' xxxxx
		goto :PROBLEM_FOLDER
	)
	
	SET /A _bCount=_bCount+1
	Del /f /q /s "EXTRACTED_SOURCE\*.*" 1>NUL 2>NUL
	if exist "EXTRACTED_SOURCE" (
		rd /s /q "EXTRACTED_SOURCE" 1>NUL 2>NUL
		goto :RETRY10
	)
	rem DO NOT create ModScript\EXTRACTED_SOURCE
	EXIT /B

rem --------------------------------------------
:DOPAUSE
	if defined _mPAUSE (
		echo.******
		pause
		echo.******
	)
	EXIT /B
	
rem --------------------------------------------
:LuaEndedOk
	if not EXIST  "%_bMASTER_FOLDER_PATH%MODBUILDER\LuaEndedOK.txt" (
		echo.>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.          From bzrun.BAT %location%>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.    [BUG] lua.exe generated an [ERROR]... Please report ALL scripts AND this file to NMS Discord: "No Man's Sky Modding" channel, "mod-amumss-lua" room:>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.           https://discord.gg/22ZAU9H>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
	)
	EXIT /B
	
rem --------------------------------------------
:LuaEndedOkREMOVE
	Del /f /q /s "%_bMASTER_FOLDER_PATH%MODBUILDER\LuaEndedOK.txt" 1>NUL 2>NUL
	EXIT /B
	
rem --------------------------------------------
:HOW_MANY_LINES
	REM check how many lines to process for Conflict Detection
	SET /a _Lines=0
	For /f %%j in ('!_bSystem32!\Find.exe "" /v /c ^<%_fileToCheck%') Do set /a _Lines=%%j
	
	REM if !_bCheckMODSconflicts! EQU 1 goto :SkipSubtract
	REM if !_bCheckMODSconflicts! EQU 3 SET _subtractOne=Y
	if !_bCheckMODSconflicts! EQU 4 SET _subtractOne=Y
	
	if defined _subtractOne (
		rem one less for MODS
		set /a "_Lines=_Lines-1"
	)
	SET _subtractOne=
	
	REM if defined _subtractTwo (
		REM rem two less for SCRIPTS
		REM set /a "_Lines=_Lines-2"
	REM )
	REM SET _subtractTwo=
	
	REM skip asking
	goto :SET_numConflictLines
	
	:SkipSubtract
	if !_Lines! GTR 10000 (
		echo.
		echo.  %_zGREEN%We have !_Lines! lines to process for Conflicts, it could take a few minutes to complete...%_zDEFAULT%
		CHOICE /c:ynms /m " %_zBLACKonYELLOW% ??? Do you really want to check your NMS MODS for conflicts ('Y'es, 'N'o, in 'M'ODS or Mod'S'cripts)?%_zDEFAULT%"
		if !ERRORLEVEL! EQU 4 set _bCheckMODSconflicts=4
		if !ERRORLEVEL! EQU 3 set _bCheckMODSconflicts=3
		if !ERRORLEVEL! EQU 2 SET _bCheckMODSconflicts=2
		if !ERRORLEVEL! EQU 1 SET _bCheckMODSconflicts=1	
	) else (
		if !_Lines! GTR 0 (
			echo.
			if !_Lines! GTR 1 (
				echo.  %_zGREEN%We will check !_Lines! possible conflicting files%_zDEFAULT%
			) else (
				echo.  %_zGREEN%We will check !_Lines! possible conflicting file%_zDEFAULT%
			)
		)
	)
	:SET_numConflictLines
	SET /A _bGConflictLines=_bGConflictLines+!_Lines!
	:END_HOW_MANY_LINES
	exit /B
