@echo off
if not defined _mOK (
	echo.  Please use BUILDMOD.bat or BUILDMOD_AUTO.bat...
	pause
	EXIT
)
REM if exist WOPT_DEBUG.txt (
	REM if not defined _min_subprocess ((cmd /k set _min_subprocess=y ^& %0 %*) & exit )
	REM echo.################ IN DEBUG MODE ################
	REM echo.
REM )

if exist "BUILDMOD_OLD.bat" (
	del "BUILDMOD_OLD.bat" 1>NUL 2>NUL
)

rem All defined variables in BuildMod.bat start with _b (except FOR loop first parameter)
rem so we can easily list them all like this on error, if needed: set _b

REM BUGS BUGS BUGS
rem Bugs: https://ss64.com/nt/goto.html
rem Using GOTO within parenthesis - including FOR and IF commands - will break their context
rem () inside echo can break things, use ^(^)
rem remarks with :: do not work in FOR loops

rem A few Windows tools, such as find.exe, link.exe and sort.exe, may conflict with the Cygwin versions
rem make sure that you use the like %SystemRoot%\system32\Find.exe

REM End: BUGS BUGS BUGS

rem FOR REFERENCE ONLY
	REM set _zRED=[1;31m[1m
	REM set _zGREEN=[1;32m[1m
	REM set _zYELLOW=[1;33m[1m
	REM set _zWHITEonYELLOW=[93;43m[1m
	REM set _zBLACKonYELLOW=[7;93m
	REM set _zDARKGRAY=[1;90m[1m
	REM set _zINVERSE=[7m
	REM set _zDEFAULT=[0m
	
	REM set _zUpOneLineErase=[F[K

SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS
set _sysDrive=%SYSTEMDRIVE%
set _bSystem32=%SYSTEMROOT%\system32

title AMUMSS v4

REM rem -------------  testing for administrator  -------------------------------
REM set _bMyPath=%CD%
REM if "%_bMyPath%" == "%_bSystem32%" set _bADMIN=1

REM if DEFINED _bADMIN (
	REM echo.[ERROR] Please do NOT "Run as administrator", AMUMSS will not work^!
	REM pause
	REM goto :eof
REM )

REM set _bMyPath=
REM set _bADMIN=
REM rem -------------  end testing for administrator  -------------------------------

rem goto Start-up (AMUMSS) folder
rem could remove the need for testing for administrator ???
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

rem --------------   Installed OS_2: get Lua.exe  -----------------------------
rem since MBINCompiler can only be used on x64 now
if exist "!CD!\MODBUILDER\Extras\lua_x64\bin\lua.exe" set "_mLUA=Extras\lua_x64\bin\lua.exe"
if exist "!CD!\MODBUILDER\Extras\lua_x64\bin\luaS.exe" set "_mLUAS=Extras\lua_x64\bin\luaS.exe"
if exist "!CD!\MODBUILDER\Extras\lua_x64\bin\luaM.exe" set "_mLUAM=Extras\lua_x64\bin\luaM.exe"
set "_mLUAC=Extras\lua_x64\bin\luac.exe"
rem --------------  end Installed OS_2: get Lua.exe   -----------------------------
  
SET "_bDateTimeStart=  %DATE% %TIME% AMUMSS starting^!"
echo.!_bDateTimeStart!

rem *********************  NOW IN AMUMSS folder  *******************

if exist WOPT_SERIALIZING.txt (set _mSERIALIZING=Y)
if exist WOPT_DEBUG.txt (set _mDEBUG=y)
if exist WOPT_ISxxx.txt (set _mISxxx=Y)
if exist WOPT_PAUSE.txt (set _mPAUSE=y)
if exist WOPT_VERBOSE_BATCH.txt (set _mVERBOSE=y)
if exist WOPT_Wbertro.txt (set _mWbertro=y)
if exist WOPT_GlobalRepl.txt (set _mGlobalRepl=y)
if exist WOPT_UnusedVariable.txt (set _mUnusedVariable=y)

REM no required anymore
REM if exist WOPT_SIMPLE.txt (set _mSIMPLE=y)

SET /p _mMasterVersion=<"MODBUILDER\AMUMSSMasterVersion.txt"
SET /p _mCurrentVersion=<"MODBUILDER\AMUMSSVersion.txt"

if [!_mMasterVersion!]==[] set "_mMasterVersion=_mCurrentVersion"

rem --------------   Installed DOTNET   -----------------------------
set "_bDotNet=.NET 5 unknown"

REM could also look into:
REM HKLM\SOFTWARE\dotnet\Setup\InstalledVersions\x64\sharedhost
REM key = path
REM returns: C:\Program Files\dotnet\

if exist "!_sysDrive!\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
    set "_bDotNet=.NET 5 Desktop Runtime exist"
) else (
	dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
	MODBUILDER\%_mLUA% .\MODBUILDER\GetDotnetPath.lua
	set /p _bDotnetPath=<"MODBUILDER\DotnetPath.txt"
	if exist "!_bDotnetPath!Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
		set "_bDotNet=.NET 5 Desktop Runtime exist"
	)
)

if ["%_bDotNet%"]==[".NET 5 unknown"] (
	echo.
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%   %_zDEFAULT%%_zDARKCYAN% .NET 5 Desktop Runtime %_zDEFAULT%%_zBLACKonYELLOW% MUST be installed before continuing    %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%      Not 'Core' or 'ASP', and no other version will do^^!           %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%           .NET 6 and above are NOT compatible                     %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.
	CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Press 'Y' to install .NET 5 Desktop Runtime on your machine, 'N' to exit %_zDEFAULT%"
	if !ERRORLEVEL! EQU 2 exit
	if !ERRORLEVEL! EQU 1 set _bInstallNET5=1

	if !_bInstallNET5! EQU 1 (
		echo.
		echo. Follow the instructions if any appear ^(User Account Control may ask for permission^)
		echo.    ^(downloading may take a minute^) and installing please wait...
		winget install --architecture x64 Microsoft.Dotnet.DesktopRuntime.5
	)	

	rem retest
	if exist "!_sysDrive!\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
		echo. Done^^!
		set "_bDotNet=.NET 5 Desktop Runtime exist"
	) else (
		dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
		MODBUILDER\%_mLUA% .\MODBUILDER\GetDotnetPath.lua
		set /p _bDotnetPath=<"MODBUILDER\DotnetPath.txt"
		if exist "!_bDotnetPath!Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
			set "_bDotNet=.NET 5 Desktop Runtime exist"
		)
	)
)
if ["%_bDotNet%"]==[".NET 5 unknown"] (
	echo.
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%    Sorry, could not complete automatic install                    %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%   %_zDEFAULT%%_zDARKCYAN% .NET 5 Desktop Runtime %_zDEFAULT%%_zBLACKonYELLOW% MUST be installed before continuing    %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%      Not 'Core' or 'ASP', and no other version will do^^!           %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%           .NET 6 and above are NOT compatible                     %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.
	echo.  %_zBLACKonYELLOW%    goto 'https://dotnet.microsoft.com/en-us/download/dotnet/5.0'  %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%    and select the '.NET Desktop Runtime 5.?.?? Windows x64'       %_zDEFAULT%
	echo.  %_zBLACKonYELLOW%                                                                   %_zDEFAULT%
	echo.
	pause
	REM dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
	REM echo.
	echo. --- Currently installed versions: ---
	type "MODBUILDER\DOTNET.txt"
	echo.
	pause
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

REM for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductName') do set "ProductName=%%~b"
REM for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion') do set "CurrentVersion=%%~b"
for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set "CurrentBuildHex=%%~b"

if not [%_bWinNum%]==[8] (
	for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v UBR') do set "UBRHEX=%%~b"
) else (
	set "UBRHEX=0"
)

set /a _bCurrentBuildDec=%CurrentBuildHex%
set /a _bUBRDEC=%UBRHEX%
rem --------------  end Installed OS_1   -----------------------------

rem **********************  start Active code page check  *************************
rem Active code page: 850, 437 are ok
chcp >MODBUILDER\ActiveCodePage.txt

FOR /F "tokens=*" %%A IN ('CHCP') DO FOR %%B IN (%%~A) DO SET _CodePage=%%B

rem remove end dot for some version of German Windows XP and 7
if %_CodePage:~-1%==. (
	set _CodePage=%_CodePage:~0,-1%
)

echo.
rem echo.  %_zBLACKonYELLOW% ^>^>^> Note: Please make sure you do not have any %_zDEFAULT%%_zINVERSE%'accented characters'%_zDEFAULT%%_zBLACKonYELLOW% in AMUMSS path %_zDEFAULT%
echo.  %_zDARKCYAN% ^>^>^> Note: Please make sure no %_zDEFAULT%%_zINVERSE% 'accented characters' %_zDEFAULT%%_zDARKCYAN% are in AMUMSS path %_zDEFAULT%
rem **********************  end Active code page check  *************************

rem change to 1250 can throw problems (tested with lMonk)
REM CHCP 1250 1>nul 2>nul

rem *******************  output onfo to cmd  ***************************
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
echo.%_zGREEN%  BUILDMOD %_BMver%%_zDEFAULT%

MODBUILDER\%_mLUA% .\MODBUILDER\GetVersionInfo.lua ".\\" ".\\MODBUILDER\\"
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
set _bDoNotUseName=___DONOTUSE.txt

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

rem *********************  reset MBINCompiler to needed version  ******************
rem *********************  NOW IN MODBUILDER  *******************
cd MODBUILDER

if NOT [%-AutoUpdateMBinCompiler%]==[N] (
	set _bCompilerExist=Y
	if not exist "MBINCompiler.public.exe" set _bCompilerExist=N
	if not exist "MBINCompiler.latest.exe" set _bCompilerExist=N
	if [!_bCompilerExist!]==[N] (
		Del /f /q /s "MBINCompiler.exe" 1>NUL 2>NUL
	)
	REM echo.  Checking MBINCompiler in AutoUpdate mode...
	CALL :MBINCompilerUPDATE

	if exist "VersionPublic.txt" (
		copy /V /Y /B "MBINCompiler.public.exe" "MBINCompiler.exe" >nul
	) else (
		copy /V /Y /B "MBINCompiler.latest.exe" "MBINCompiler.exe" >nul
	)	
)

if exist "MBINCompiler.exe" (
	Del /f /q /s "MBINCompilerVersion.txt" 1>NUL 2>NUL
	MBINCompiler.exe version -q >>MBINCompilerVersion.txt
	set /p _bMBINCompilerVersion=<MBINCompilerVersion.txt

	if exist "MBINCompiler.public.exe" (
		Del /f /q /s "MBINCompilerPublicVersion.txt" 1>NUL 2>NUL
		MBINCompiler.public.exe version -q >>MBINCompilerPublicVersion.txt
		set /p _bMBINCompilerPublicVersion=<MBINCompilerPublicVersion.txt
	)
	if exist "MBINCompiler.latest.exe" (
		Del /f /q /s "MBINCompilerLatestVersion.txt" 1>NUL 2>NUL
		MBINCompiler.latest.exe version -q >>MBINCompilerLatestVersion.txt
		set /p _bMBINCompilerLatestVersion=<MBINCompilerLatestVersion.txt
	)
	echo.^>^>^> MBINCompiler 'latest' version: %_zGREEN%!_bMBINCompilerLatestVersion!%_zDEFAULT%
	echo.^>^>^> MBINCompiler 'public' version: %_zGREEN%!_bMBINCompilerPublicVersion!%_zDEFAULT%

	if exist "MBINCompilerCurrentVersion.txt" (
		set /p _bMBINCompilerCurrentVersion=<MBINCompilerCurrentVersion.txt
	) else (
		set _bMBINCompilerCurrentVersion=
	)
	
	if not [!_bMBINCompilerCurrentVersion!]==[!_bMBINCompilerVersion!] (
		echo.
		echo.^>^>^> MBINCompiler version changed...
		echo.      - Cleaning EXML/MapFileTrees cache...
		
		CALL :Cleaning_TEMP_DECOMPILED
		CALL :Cleaning_MapFileTrees
	)

	rem refresh current version
	Del /f /q /s "MBINCompilerCurrentVersion.txt" 1>NUL 2>NUL
	MBINCompiler.exe version -q >>MBINCompilerCurrentVersion.txt
) else (
	set /p _bMBINCompilerVersion=UNKNOWN
)
rem ******   NOW IN AMUMSS folder   ********
cd ..
REM rem *******************************************************************************

if not exist "!CD!\MapFileTrees" (
	mkdir "!CD!\MapFileTrees\" 2>NUL
)

if not exist "MODBUILDER\ResetMapFileTreeDone.txt" (
	rem to force the re-creation of all MapFileTree files
	rem when format changed
	Del /f /q /s "!CD!\MapFileTrees\*.*" 1>NUL 2>NUL
	ECHO. >.\MODBUILDER\ResetMapFileTreeDone.txt
) else (
	set /p _bResetMFT=<MODBUILDER\ResetMapFileTreeDone.txt
	if [!_bResetMFT!]==[RESET] (
		Del /f /q /s "!CD!\MapFileTrees\*.*" 1>NUL 2>NUL
		Del /f /q /s "MODBUILDER\ResetMapFileTreeDone.txt" 1>NUL 2>NUL
		ECHO. >.\MODBUILDER\ResetMapFileTreeDone.txt
		pause
	)
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
			RD "%%G" 1>NUL 2>NUL
		)
	)
	if not defined _mWbertro (
		Del /f /q /s "MODBUILDER\Delete_this.txt" 1>NUL 2>NUL
		rem show What's_new
		start "" "README\README-What's_new.txt"
	)
)

rem ******************  Check for BUILDMOD_AUTO.bat  ***********************************
if not exist "BUILDMOD_AUTO.bat" (
	rem we need to re-create it
	echo.
	echo.^>^>^>      Re-created missing BUILDMOD_AUTO.bat...
	copy /V /Y /B "MODBUILDER\buildmod_auto.backup" ".\BUILDMOD_AUTO.bat" >nul
)
REM if not exist "BUILDMOD_AMUMSS.bat" (
	REM rem we need to re-create it
	REM echo.
	REM echo.^>^>^>      Re-created missing BUILDMOD_AMUMSS.bat...
	REM copy /V /Y /B "MODBUILDER\buildmod_auto.backup" ".\BUILDMOD_AMUMSS.bat" >nul
REM )
rem *****************************************************

rem **********************  Check for updates  *******************************************
if not exist "!CD!\MODBUILDER\UPDATE" (
	mkdir "!CD!\MODBUILDER\UPDATE\" 2>NUL
)

REM if not defined _mWbertro goto :StepOverTest
REM echo.
REM echo. %_zBGintense%                    xxxxx TEST xxxxx                       %_zDEFAULT%
REM cd /D "!CD!\ModScript"
REM for /D %%G in ("Disabled*") do (
	REM echo.                     found %%~nxG
REM )
REM cd /D "%~dp0"

REM echo. %_zBGintense%                    xxxxx END TEST xxxxx                   %_zDEFAULT%
REM echo.
REM :StepOverTest
rem *****************************************************

rem *********************  NOW IN ModScript  *******************
cd ModScript

rem removing old stuff
if exist EXTRACTED_PAK CALL :Cleaning_EXTRACTED_PAK
if exist EXMLFILES_PAK CALL :Cleaning_EXMLFILES_PAK
if exist EXMLFILES_CURRENT CALL :Cleaning_EXMLFILES_CURRENT
Del /f /q /s "REPORT_*.txt" 1>NUL 2>NUL

rem *********************  NOW IN AMUMSS folder  *******************
cd ..

rem --------------  Check # of scripts present ------------------------------
SET _bNumberScripts=0

Call :LuaEndedOkREMOVE
set location=bz14
REM echo. %location%
cd MODBUILDER
rem el /f /q "modscriptContent.txt" 1>NUL 2>NUL
%_mLUA% SearchModScriptForMultiFileExt.lua ".MBIN,.EXML,.lua,.pak" "" "TooDeep"
cd ..
for /f "tokens=2,4,6,8 delims==," %%G in (MODBUILDER\modscriptContent.txt) do (
	set _MBIN=%%G
	set _EXML=%%H
	set _LUA=%%I
	set _PAK=%%J
)

SET /A "_bNumberScripts=%_LUA%"
SET /A "_bNumberPAKs=%_PAK%"
SET /A "_bNumberMBINs=%_MBIN%"
SET /A "_bNumberEXMLs=%_EXML%"

rem ------------ CLEANLOG --------------------------------
set _CLEANLOG=%-CLEANLOG%
if [%-CLEANLOG%]==[] goto :CLEANLOG
if [%-CLEANLOG%]==[Y] goto :CLEANLOG
if [%-CLEANLOG%]==[N] goto :NOCLEANLOG

echo.
echo.==^> BAD OPTION VALUE for '-CLEANLOG' [%-CLEANLOG%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause
goto :CLEANLOG

:NOCLEANLOG
set _CLEANLOG=N
goto :ENDCLEANLOG

:CLEANLOG
set _CLEANLOG=Y
:ENDCLEANLOG
rem ------------ END: CLEANLOG --------------------------------

rem ------------ SOUND --------------------------------
set _SOUND=%-SOUND%
if [%-SOUND%]==[] goto :SOUND
if [%-SOUND%]==[Y] goto :SOUND
if [%-SOUND%]==[N] goto :NOSOUND

echo.
echo.==^> BAD OPTION VALUE for '-SOUND' [%-SOUND%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause
goto :SOUND

:NOSOUND
set _SOUND=N
goto :ENDSOUND

:SOUND
set _SOUND=Y
:ENDSOUND
rem ------------ END: SOUND --------------------------------

rem ------------ DEV_MODE --------------------------------
set _DEV_MODE=%-DEV_MODE%
if [%-DEV_MODE%]==[ASK] goto :ASK_DEV_MODE
if [%-DEV_MODE%]==[] goto :ASK_DEV_MODE
if [%-DEV_MODE%]==[F] goto :DEV_MODE
if [%-DEV_MODE%]==[D] goto :DEV_MODE
if [%-DEV_MODE%]==[L] goto :DEV_MODE

echo.
echo.==^> BAD OPTION VALUE for '-DEV_MODE' [%-DEV_MODE%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:ASK_DEV_MODE
echo.
echo.^>^>^> NOTE: the choice you make here does not affect the content of Report.lua
echo.                 it only affects the content of this current cmd window
echo.    %_zGREEN%FULL%_zDEFAULT%: generate ALL 'Info' and 'helper' files
echo.    %_zGREEN%DEV %_zDEFAULT%: same as FULL mode ^(but may limit output in cmd^)
echo.    %_zGREEN%LEAN%_zDEFAULT%: ONLY generate minimal 'Info' and files necessary to produce the mods
echo.
CHOICE /c:FDL /m " %_zBLACKonYELLOW% ??? Do you want to use AMUMSS in [F]ULL, [D]EV or [L]EAN mode %_zDEFAULT%"
if %ERRORLEVEL% EQU 3 set _DEV_MODE=L
if %ERRORLEVEL% EQU 2 set _DEV_MODE=D
if %ERRORLEVEL% EQU 1 set _DEV_MODE=F

:DEV_MODE
call :DEV_MODE_INFO
rem ------------ END: DEV_MODE --------------------------------

rem ------------ GameVersion_1 --------------------------------
set _GameVersion=%-GameVersion%
if [%-GameVersion%]==[ASK] goto :ASK_GameVersion
if [%-GameVersion%]==[] goto :ASK_GameVersion
if [%-GameVersion%]==[P] goto :GameVersion
if [%-GameVersion%]==[E] goto :GameVersion

echo.
echo.==^> BAD OPTION VALUE for '-GameVersion' [%-GameVersion%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:ASK_GameVersion
echo.
if exist ".\MODBUILDER\VersionPublic.txt" (
	echo. User previously reported using NMS '%_zGREEN%Public%_zDEFAULT%' version
) else (
	echo. User previously reported using NMS '%_zGREEN%Experimental%_zDEFAULT%' version
)

CHOICE /c:PE /m " %_zBLACKonYELLOW% ??? IS your NMS game version [P]ublic or [E]xperimental %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 set _GameVersion=E
if %ERRORLEVEL% EQU 1 set _GameVersion=P

:GameVersion
rem ------------ END: GameVersion_1 --------------------------------

rem ********************************  end SOME FOLDER preparation  ***********************
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

if "%_bNMS_VERSIONID%"=="not found" (
	rem try again
	MODBUILDER\%_mLUA% .\MODBUILDER\GetVersionInfo.lua ".\\" ".\\MODBUILDER\\"
	set /p _bNMS_VERSIONID=<"MODBUILDER\NMS_versionId.txt" 1>NUL 2>NUL
)

if exist "MODBUILDER\MBINCompiler.exe" (
	Del /f /q /s "MODBUILDER\MBINCompilerVersion.txt" 1>NUL 2>NUL
	MODBUILDER\MBINCompiler.exe version -q >>MODBUILDER\MBINCompilerVersion.txt
	set /p _bMBINCompilerVersion=<MODBUILDER\MBINCompilerVersion.txt
)

if exist ".\MODBUILDER\VersionPublic.txt" (
	if exist "MODBUILDER\MBINCompiler.public.exe" (
		Del /f /q /s "MODBUILDER\MBINCompilerPublicVersion.txt" 1>NUL 2>NUL
		MODBUILDER\MBINCompiler.public.exe version -q >>MODBUILDER\MBINCompilerPublicVersion.txt
		set /p _bMBINCompilerPublicVersion=<MODBUILDER\MBINCompilerPublicVersion.txt
	)
	if not [!_bMBINCompilerPublicVersion!]==[!_bMBINCompilerVersion!] (
		echo|set /p="User previously reported using NMS 'Experimental' with version %_bNMS_VERSIONID%">>"REPORT.lua" & echo.>>"REPORT.lua"
	) else (
		echo|set /p="User previously reported using NMS 'Public' with version %_bNMS_VERSIONID%">>"REPORT.lua" & echo.>>"REPORT.lua"
	)
) else (
	if exist "MODBUILDER\MBINCompiler.latest.exe" (
		Del /f /q /s "MODBUILDER\MBINCompilerLatestVersion.txt" 1>NUL 2>NUL
		MODBUILDER\MBINCompiler.latest.exe version -q >>MODBUILDER\MBINCompilerLatestVersion.txt
		set /p _bMBINCompilerLatestVersion=<MODBUILDER\MBINCompilerLatestVersion.txt
	)
	if not [!_bMBINCompilerLatestVersion!]==[!_bMBINCompilerVersion!] (
		echo|set /p="User previously reported using NMS 'Public' with version %_bNMS_VERSIONID%">>"REPORT.lua" & echo.>>"REPORT.lua"
	) else (
		echo|set /p="User previously reported using NMS 'Experimental' with version %_bNMS_VERSIONID%">>"REPORT.lua" & echo.>>"REPORT.lua"
	)
)

rem ******************  GameVersion_2  ********************************
rem *********************  NOW IN MODBUILDER  *******************
cd MODBUILDER

if exist "MBINCompiler.exe" (
	Del /f /q /s "MBINCompilerVersion.txt" 1>NUL 2>NUL
	MBINCompiler.exe version -q >>MBINCompilerVersion.txt
	set /p _bMBINCompilerVersion=<MBINCompilerVersion.txt
)

if NOT [%-AutoUpdateMBinCompiler%]==[N] (
	if [%_GameVersion%]==[P] (
		echo.^>^>^> User declared using NMS '%_zGREEN%Public%_zDEFAULT%' version
		echo|set /p="User declared using NMS 'Public' with version %_bNMS_VERSIONID%">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		echo. >VersionPublic.txt
	) else (
		echo.^>^>^> User declared using NMS '%_zGREEN%Experimental%_zDEFAULT%' version
		echo|set /p="User declared using NMS 'Experimental' with version %_bNMS_VERSIONID%">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		Del /f /q /s "VersionPublic.txt" 1>NUL 2>NUL
	)
	
	CALL :SWITCH_COMPILER
) else (
	echo.^>^>^> AutoUpdate disabled, using '%_zGREEN%custom%_zDEFAULT%' MBINCompiler version: %_zGREEN%%_bMBINCompilerVersion%%_zDEFAULT%
	echo|set /p="AutoUpdate disabled, using 'custom' MBINCompiler version: %_bMBINCompilerVersion%">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
)

if exist "MBINCompiler.exe" (
	set /p _bMBINCompilerCurrentVersion=<MBINCompilerCurrentVersion.txt
	if not [!_bMBINCompilerCurrentVersion!]==[!_bMBINCompilerVersion!] (
		echo.      - Cleaning EXML/MapFileTrees cache...
		echo|set /p="%_INFO% Cleaned EXML/MapFileTrees cache">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		
		CALL :Cleaning_TEMP_DECOMPILED
		CALL :Cleaning_MapFileTrees
	)
	
	rem refresh current version
	Del /f /q /s "MBINCompilerCurrentVersion.txt" 1>NUL 2>NUL
	MBINCompiler.exe version -q >>MBINCompilerCurrentVersion.txt
	set /p _bMBINCompilerCurrentVersion=<MBINCompilerCurrentVersion.txt
	
) else (
	echo.^>^>^> [ERROR] MBINCompiler.exe is missing in MODBUILDER folder, we cannot continue until corrected
	echo|set /p="[ERROR] MBINCompiler.exe is missing in MODBUILDER folder, we cannot continue until corrected">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	echo.>>"..\REPORT.lua"
	pause
	exit
)
rem ******   NOW IN AMUMSS folder   ********
cd ..

echo|set /p="%_INFO% Now with MBINCompiler v%_bMBINCompilerCurrentVersion%">>"REPORT.lua" & echo.>>"REPORT.lua"

echo.>>"REPORT.lua"
echo|set /p="^>^>^> Starting in !CD!">>"REPORT.lua" & echo.>>"REPORT.lua"
echo|set /p=">>> Updating NMS_FOLDER.txt to %_bNMS_FOLDER%">>"REPORT.lua"
rem & echo.>>"REPORT.lua"

REM ADDED message to check 'open files' in xxx preventing AMUMSS to work
REM echo.
REM echo.%_zRED% ============================================================================%_zDEFAULT%
REM echo. %_zINVERSE%[NOTE] EXCEPT when saying: 'Opening User Lua Script, Please wait...'        %_zDEFAULT%
REM echo. %_zINVERSE%       When AMUMSS seems to freeze and stop processing for ^> 60 seconds     %_zDEFAULT%
REM echo. %_zINVERSE%       probably means it cannot delete some files in a working directories. %_zDEFAULT%
REM echo. %_zINVERSE%    Please 'close' all AMUMSS files you have opened in other apps           %_zDEFAULT%
REM echo. %_zINVERSE%   (Files opened in Notepad++, for example, will not cause this problem)    %_zDEFAULT%
REM echo.%_zRED% ============================================================================%_zDEFAULT%
rem -------------------------------  end Start REPORTing  -----------------------------------------------

rem Windows accepts a max of 260 char for drive/path/filename/ext length
rem NMS accepts only 110 char + .pak = 114
rem we need to leave room for '_(9)' so 110-4 = 106 + .pak
SET _bMaxPakNameLength=106

if %_bNumberScripts% EQU 0 (
	echo.
	echo. %_zBLACKonYELLOW% ^>^>^>   [INFO]  NO user .lua Mod Script found in ModScript... %_zDEFAULT%
	echo.              You may want to put some .lua Mod script in the ModScript folder and retry...
	
	echo|set /p="%_INFO% NO user .lua Mod Script found in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
	echo.>>"REPORT.lua"
	
	set _bNoScript=y
) else (
	SET _bBuildMODpak=y
	REM echo.  Trying to clean EXML_Helper folder...
	CALL :Cleaning_EXML_Helper
)
rem --------------  end Check # of scripts present ------------------------------

rem *********************  NOW IN MODBUILDER  *******************
cd MODBUILDER

if [%-MAPFILETREE%]==[TXT] goto :SelectMapFileTree
if [%-MAPFILETREE%]==[TXTPLUS] goto :SelectMapFileTree
if [%-MAPFILETREE%]==[LUA] goto :SelectMapFileTree
if [%-MAPFILETREE%]==[LUAPLUS] goto :SelectMapFileTree

echo.==^> BAD OPTION VALUE for '-MAPFILETREE' [%-MAPFILETREE%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause
REM set to DEFAULT
set -MAPFILETREE=LUA

:SelectMapFileTree
rem Used by CreateMapFileTree.lua to select type of output file
Del /f /q USE_TXT_MAPFILETREE.txt 1>NUL 2>NUL
Del /f /q USE_LUA_MAPFILETREE.txt 1>NUL 2>NUL
Del /f /q USE_TXTPLUS_MAPFILETREE.txt 1>NUL 2>NUL
Del /f /q USE_LUAPLUS_MAPFILETREE.txt 1>NUL 2>NUL

if [%-MAPFILETREE%]==[TXT] ECHO >USE_TXT_MAPFILETREE.txt
if [%-MAPFILETREE%]==[TXTPLUS] ECHO >USE_TXT_MAPFILETREE.txt
if [%-MAPFILETREE%]==[TXTPLUS] ECHO >USE_TXTPLUS_MAPFILETREE.txt
if [%-MAPFILETREE%]==[LUA] ECHO >USE_LUA_MAPFILETREE.txt
if [%-MAPFILETREE%]==[LUAPLUS] ECHO >USE_LUA_MAPFILETREE.txt
if [%-MAPFILETREE%]==[LUAPLUS] ECHO >USE_LUAPLUS_MAPFILETREE.txt

Del /f /q MapFileTreeRunner.lua 1>NUL 2>NUL
Del /f /q MapFileTreeCreatorRun.txt 1>NUL 2>NUL
Del /f /q MapFileTreeRequested.txt 1>NUL 2>NUL

del /f /q LoadScriptAndFilenamesERROR.txt 1>NUL 2>NUL

del /f /q MOD_BATCHNAME.txt 1>NUL 2>NUL
echo|set /p="">MOD_BATCHNAME.txt

del /f /q MBIN_PAKS.txt 1>NUL 2>NUL
echo|set /p="">MBIN_PAKS.txt
echo.>>"MBIN_PAKS.txt"

del /f /q MODS_pak_list.txt 1>NUL 2>NUL
echo|set /p="">MODS_pak_list.txt

del /f /q MODS_MBIN_list.txt 1>NUL 2>NUL
echo|set /p="">MODS_MBIN_list.txt

Del /f /q "FailedScriptList.txt" 1>NUL 2>NUL

cd ..
rem ******   NOW IN AMUMSS folder   ********

rem ------------ Test IncludeLuaScriptInPak for good option value --------------------------------
if [%-IncludeLuaScriptInPak%]==[ASK] goto :TestOptionValueDone
if [%-IncludeLuaScriptInPak%]==[] goto :SetToY
if [%-IncludeLuaScriptInPak%]==[Y] goto :TestOptionValueDone
if [%-IncludeLuaScriptInPak%]==[N] goto :TestOptionValueDone

echo.
echo.==^> BAD OPTION VALUE for '-IncludeLuaScriptInPak' [%-IncludeLuaScriptInPak%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause
:SetToY
set -IncludeLuaScriptInPak=Y
:TestOptionValueDone
rem ------------ END: Test IncludeLuaScriptInPak for good option value --------------------------------

rem ------------ Test DoConfigGlobal for good option value --------------------------------
if [%-DoConfigGlobal%]==[ASK] goto :TestOptionValueDone1
if [%-DoConfigGlobal%]==[] goto :SetToY_2
if [%-DoConfigGlobal%]==[Y] goto :TestOptionValueDone1
if [%-DoConfigGlobal%]==[N] goto :TestOptionValueDone1

echo.
echo.==^> BAD OPTION VALUE for '-DoConfigGlobal' [%-DoConfigGlobal%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause
:SetToY_2
set -DoConfigGlobal=Y
:TestOptionValueDone1
rem ------------ END: Test DoConfigGlobal for good option value --------------------------------

rem --------------  Check # of PAKs or MBINs present ------------------------------
echo.
echo. Inspecting Modscript...

SET _bNumberPAKs=0
SET _bNumberMBINs=0
SET _bNumberEXMLs=0
set _uOldMBINCompilerFlag=N
SET _uOldMBIN=N

SET _bGNumberFiles=0
SET _bGNumberFilesDecompiled=0
SET _bGNumberFilesMissing=0
SET _bGNumberFilesNoVersionInfo=0
SET _bNumberFilesCouldNotDecompile=0
SET _bGNumScriptsInPak=0

REM for Check mod Conflicts
SET _bGConflictLines=0

Call :LuaEndedOkREMOVE
set location=bz13
REM echo. %location%
cd MODBUILDER
rem Del /f /q "modscriptContent.txt" 1>NUL 2>NUL
%_mLUA% SearchModScriptForMultiFileExt.lua ".MBIN,.EXML,.lua,.pak" "" ""
cd..

for /f "tokens=2,4,6,8 delims==," %%G in (MODBUILDER\modscriptContent.txt) do (
	set _MBIN=%%G
	set _EXML=%%H
	set _LUA=%%I
	set _PAK=%%J
)

SET /A "_bNumberScripts=%_LUA%"
SET /A "_bNumberPAKs=%_PAK%"
SET /A "_bNumberMBINs=%_MBIN%"
SET /A "_bNumberEXMLs=%_EXML%"

if %_bNumberEXMLs% GTR 0 (
	SET _bEXML=Y
)

if %_bNumberPAKs% GTR 0 (
	SET _bPAK_MBIN=Y
) else (
	if %_bNumberMBINs% GTR 0 (
		SET _bPAK_MBIN=Y
	)
)
rem here if _bPAK_MBIN is defined, at least one PAK or MBIN is present in ModScript

			REM rem *********************  NOW IN MODBUILDER  *******************
			REM cd MODBUILDER
			REM REM rem *************  Check MBINCompiler update  *********************

			REM REM REM echo.  Checking MBINCompiler if in AutoUpdate mode...
			REM REM if NOT [%-AutoUpdateMBinCompiler%]==[N] (
				REM REM CALL :MBINCompilerUPDATE
			REM REM )

			REM rem ******   NOW IN AMUMSS folder   ********
			REM cd ..

rem default = INDIVIDUAL
SET _bCOMBINE_MODS=0
rem default = PLAIN
SET _bINDIVIDUAL_MODS=1
rem default = NONE copied to MODS
SET _bCOPYtoNMS=NONE

if DEFINED _bEXML (
	if %_bNumberEXMLs% GTR 1 (
		echo.
		echo. %_zBLACKonYELLOW% ^>^>^> Detected %_bNumberEXMLs% user EXMLs in ModScript... %_zDEFAULT%
		echo.   %_zGREEN%If these EXMLs have the right path, they will be used by all associated script^(s^)%_zDEFAULT%
		echo.

		echo|set /p="%_INFO% Detected %_bNumberEXMLs% user EXMLs in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
	) else (
		if %_bNumberEXMLs% GTR 0 (
			echo.
			echo. %_zBLACKonYELLOW% ^>^>^> Detected 1 user EXML in ModScript... %_zDEFAULT%
			echo.   %_zGREEN%If this EXML has the right path, it will be used by all associated script^(s^)%_zDEFAULT%
			echo.

			echo|set /p="%_INFO% Detected 1 user EXML in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
	)
)

if DEFINED _bPAK_MBIN (
	if %_bNumberScripts% GTR 0 (
		CALL :CHECK_ExtraFilesToInclude
	)

	rem *********************  NOW IN MODBUILDER folder  *******************
	cd MODBUILDER

	CALL :CONFLICTDETECTION
	
	if !_bCheckMODSconflicts! NEQ 2 (
		if !_bCheckMODSconflicts! EQU 1 (
			REM get list paks in NMS MODS folder
			CALL PSARC_LIST_PAKS_MODS.BAT
		)
		if !_bCheckMODSconflicts! EQU 3 (
			REM get list paks in NMS MODS folder
			CALL PSARC_LIST_PAKS_MODS.BAT
		)
	)

	CALL :PAK_LISTsCREATION
	
	rem ******   NOW IN AMUMSS folder   ********
	cd ..

	echo.
	echo.-----------------------------------------------------------
	if %_bNumberPAKs% GTR 1 (
		echo. %_zBLACKonYELLOW% ^>^>^> Detected %_bNumberPAKs% user PAKs in ModScript... %_zDEFAULT%
		echo.

		echo|set /p="%_INFO% Detected %_bNumberPAKs% user PAKs in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
	) else (
		if %_bNumberPAKs% GTR 0 (
			echo. %_zBLACKonYELLOW% ^>^>^> Detected 1 user PAK in ModScript... %_zDEFAULT%
			echo.

			echo|set /p="%_INFO% Detected 1 user PAK in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
	)
	if %_bNumberMBINs% GTR 1 (
		echo. %_zBLACKonYELLOW% ^>^>^> Detected %_bNumberMBINs% user MBINs in ModScript... %_zDEFAULT%
		echo.

		echo|set /p="%_INFO% Detected %_bNumberMBINs% user MBINs in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
	) else (
		if %_bNumberMBINs% GTR 0 (
			echo. %_zBLACKonYELLOW% ^>^>^> Detected 1 user MBIN in ModScript... %_zDEFAULT%
			echo.

			echo|set /p="%_INFO% Detected 1 user MBIN in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
	)
	
	rem *********************  NOW IN MODBUILDER  *******************
	cd MODBUILDER

	rem ****************  Get list of paks in ModScript  ****************
	if %_bNumberPAKs% GTR 0 (
		CALL PSARC_LIST_ModScriptPAKS.BAT
		echo.
		echo.>>"..\REPORT.lua"
	)
	
	if %_bNumberMBINs% GTR 0 (
		CALL LIST_ModScriptMBINs.BAT
		echo.
		echo.>>"..\REPORT.lua"
	)
	
	if !_bCheckMODSconflicts! EQU 3 (
		set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
		if not defined _bStartTime (
			Call :LuaEndedOkREMOVE
			set location=bz11
			SET _bStartTime=Y
			%_mLUA% StartTime.lua "..\\" ""
			Call :LuaEndedOk
		)

		goto :START_CONFLICT_DETECTION
	) else (
		set "_fileToCheck=MODS_pak_list.txt"
		CALL :HOW_MANY_LINES
		REM echo _bCheckMODSconflicts = !_bCheckMODSconflicts!
	)
	
	echo.
	
	rem ******   NOW IN AMUMSS folder   ********
	cd ..
		
	if %_bNumberScripts% EQU 0 (
		echo. %_zBLACKonYELLOW%                                                                             %_zDEFAULT%
		echo. %_zBLACKonYELLOW% [NOTE] Placing one or more paks/mbins in Modscript, without a .lua script,  %_zDEFAULT%
		echo. %_zBLACKonYELLOW%              will unpack and decompile them...                              %_zDEFAULT%
		echo. %_zBLACKonYELLOW%     When possible, the current MBINCompiler will be used                    %_zDEFAULT%
		echo. %_zBLACKonYELLOW%                                                                             %_zDEFAULT%
		echo. 
		if %_bNumberPAKs% GTR 1 (
			echo.^>^>^>   [INFO] AMUMSS is going to unpack and decompile them now...
		) else (
			if %_bNumberPAKs% GTR 0 (
				echo.^>^>^>   [INFO] AMUMSS is going to unpack and decompile it now...
			)
		)
		if %_bNumberMBINs% GTR 1 (
			echo.^>^>^>   [INFO] AMUMSS is going to decompile them now...
		) else (
			if %_bNumberMBINs% GTR 0 (
				echo.^>^>^>   [INFO] AMUMSS is going to decompile it now...
			)
		)
		echo.

		echo|set /p="[NOTE] Placing one or more paks/mbins in Modscript, without a .lua script will unpack and decompile them">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE] When possible, the current MBINCompiler will be used...">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
	) else (
		echo. %_zBLACKonYELLOW%                                                                                      %_zDEFAULT%
		echo. %_zBLACKonYELLOW% [NOTE] One or more paks with at least one .lua script to apply over them             %_zDEFAULT%
		echo. %_zBLACKonYELLOW%             will create a PATCH pak ^(the COMBINED pak^)                               %_zDEFAULT%
		echo. %_zBLACKonYELLOW%        And if the same mbin file is present in any of the .pak and edited by the     %_zDEFAULT%
		echo. %_zBLACKonYELLOW%        .lua script, only the one in the last pak will contribute to the COMBINED pak %_zDEFAULT%
		echo. %_zBLACKonYELLOW%        As always, the natural NMS load order will dictate its effects...             %_zDEFAULT%
		echo. %_zBLACKonYELLOW%                                                                                      %_zDEFAULT%
		echo. %_zBLACKonYELLOW%        FOR THIS TO WORK, the pak^(s^) MUST be fully updated to the current NMS files   %_zDEFAULT%
		echo. %_zBLACKonYELLOW%        since the MBIN files in the pak are used to create the patch                  %_zDEFAULT%
		echo. %_zBLACKonYELLOW%                                                                                      %_zDEFAULT%
		echo. 
		echo. %_zBLACKonYELLOW%                                                                                   %_zDEFAULT%
		echo. %_zBLACKonYELLOW% [NOTE] Remember that a PATCH must be used WITH the original .pak ^(in most cases^)  %_zDEFAULT%
		echo. %_zBLACKonYELLOW%             to get the full effect of the original + your script                  %_zDEFAULT%
		echo. %_zBLACKonYELLOW%                                                                                   %_zDEFAULT%
		echo.

		echo.>>"REPORT.lua"
		echo|set /p="[NOTE] One or more paks with at least one .lua script to apply over them">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE]   will create a PATCH pak (the COMBINED pak) ">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE] When the same mbin file is present in any of the .pak and edited by the">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE]   .lua script, only the one in the last pak will contribute to the COMBINED pak">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE] As always, the natural NMS load order will dictate its effects...">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
		echo|set /p="[NOTE] FOR THIS TO WORK, the pak(s) MUST be fully updated to the current NMS files">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE]   since the MBIN files in the pak are used to create the patch">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
		echo|set /p="[NOTE] Remember that a PATCH must be used with the original .pak (in most cases)">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE]   to get the full effect of the original + your script">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
	)
		
	if %_bNumberScripts% GTR 0 (
		echo.^>^>^>      A GENERIC COMBINED MOD pak will be created...
		echo.^>^>^>      If you choose to COPY to your game folder, the PAKs will ALSO be copied there...
		SET _bCOMBINE_MODS=1
		REM SET _bCOPYtoNMS=NONE
		SET _bPATCH=1

		REM       with /r we look into sub-folders also
		REM FOR /r "%~dp0\ModScript" %%G in (*.pak.*) do ( 
		FOR %%G in ("%~dp0\ModScript\*.pak.*") do ( 
			SET _bPAKname=%%~nG
			echo|set /p="- a patch to be used with %%~nG.pak">>"MODBUILDER\COMBINED_CONTENT_LIST.txt"
			echo.>>"MODBUILDER\COMBINED_CONTENT_LIST.txt"
		)
		goto :SIMPLE_MODE
	)
)
rem --------------  end Check # of PAKs present ------------------------------
rem *************************   check if pak in ModScript, no script   ************************
rem *************************  UNPACK and DECOMPILE paks to UNPACKED_DECOMPILED_PAKs  ******************
if %_bNumberScripts% EQU 0 (
	if DEFINED _bPAK_MBIN (
		rem one or more paks or mbins, no script. Extracting ALL files
		
		REM rem ------  START of automatic processing: start the clock  -----------------------

		CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Check the version of each file prior to decompiling them %_zDEFAULT%"
		if !ERRORLEVEL! EQU 2 set _bCheckVersionOfFiles=N
		if !ERRORLEVEL! EQU 1 set _bCheckVersionOfFiles=Y
		
		REM if %_bNumberPAKs% GTR 1 (
			if not defined _bStartTime (
				Call :LuaEndedOkREMOVE
				set location=bz10
				SET _bStartTime=Y
				MODBUILDER\%_mLUA% "MODBUILDER\StartTime.lua" ".\\" ".\\MODBUILDER\\"
				Call :LuaEndedOk
			)
		REM )
		
		if not exist "!CD!\UNPACKED_DECOMPILED_PAKs" (
			mkdir "!CD!\UNPACKED_DECOMPILED_PAKs\" 2>NUL
		)
		
		REM       with /r we look into sub-folders also
		REM FOR /r "%~dp0\ModScript" %%G in (*.pak.*) do ( 
		FOR %%G in ("%~dp0\ModScript\*.pak.*") do ( 
			echo.
			SET _bPAKname=%%~nG
			echo. %_zBLACKonYELLOW% **** Unpacking/decompiling !_bPAKname! **** %_zDEFAULT%
			echo|set /p="%_INFO% **** Unpacking/decompiling !_bPAKname! ****">>"REPORT.lua" & echo.>>"REPORT.lua"
			if not exist "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!" (
				mkdir "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!" 2>NUL
			)
			
			rem copy PAK to its folder
			xcopy /y /h /v "%%G" "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\*" 1>NUL 2>NUL

			if not exist "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXTRACTED_PAK" (
				mkdir "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXTRACTED_PAK" 2>NUL
			)

			if not exist "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXMLFILES_PAK" (
				mkdir "!CD!\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXMLFILES_PAK" 2>NUL
			)

			cd ModScript
			rem ******   NOW IN ModScript   ********
			if exist EXTRACTED_PAK CALL :Cleaning_EXTRACTED_PAK
			if exist EXMLFILES_PAK CALL :Cleaning_EXMLFILES_PAK

			set _bPaknamePATH=%%G
			CALL ..\MODBUILDER\ExtractMODfromPAK.bat
			rem the PAKs are now unpacked to UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXTRACTED_PAK
			rem and the last PAK is also unpacked to ModScript\EXTRACTED_PAK

			set _bDoingPAk=Y
			call :UNPACKEDtoEXML
			rem the MBINs are now decompiled to UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXMLFILES_PAK, if it was possible
			rem and the last PAK is also decompiled to ModScript\EXMLFILES_PAK
			set _bUNPACKED_DECOMPILED=y
			
			rem make sure those folders are not used by AMUMSS
			ECHO. >.\EXTRACTED_PAK\%_bDoNotUseName%
			ECHO. >.\EXMLFILES_PAK\%_bDoNotUseName%
			
			REM CALL :GET_CURRENT_EXML_for_COMPARISON
			
			cd ..
			rem ******   NOW IN AMUMSS folder   ********

			if %_bNumberPAKs% EQU 1 (
				if !_uOldMBINCompilerFlag!==N (
					echo.
					FOR /r "%~dp0\ModScript\EXTRACTED_PAK" %%G in (*.lua) do ( 
						echo.Found script in this PAK: %%~nxG			
						REM echo.

						if [%-UseLuaScriptInPak%]==[ASK] SET _bUseLuaInPak=
						if [%-UseLuaScriptInPak%]==[] SET _bUseLuaInPak=
						if [%-UseLuaScriptInPak%]==[Y] SET _bUseLuaInPak=Y
						if [%-UseLuaScriptInPak%]==[N] SET _bUseLuaInPak=N

						if not defined _UseLuaInPak (
							CHOICE /c:YN /m ".      %_zBLACKonYELLOW% ??? Do you want to rebuild the MOD pak(s) using this script %_zDEFAULT%"
							if !ERRORLEVEL! EQU 2 SET _bUseLuaInPak=N & echo.
							if !ERRORLEVEL! EQU 1 SET _bUseLuaInPak=Y
						)
						
						if !_bUseLuaInPak!==Y (
							echo.   Copying script to ModScript...
							set _bNoScript=
							SET _bBuildMODpak=y
							SET _bBuildMODpakFromPakScript=y
							
							REM we use the scripts as normal scripts
							xcopy /s /y /h /v "ModScript\EXTRACTED_PAK\*.lua" "Modscript\*"	1>NUL 2>NUL
							
							REM copy all extra files found in that pak
							REM allow all file types, except .lua scripts and .MBIN
							xcopy /f /s /y /h /e /v /i /j /c "ModScript\EXTRACTED_PAK\*.*" "MODBUILDER\MOD\*" /EXCLUDE:MODBUILDER\xcopy_exclude.txt 1>NUL 2>NUL
						)
					)
				)
			)
		)

		if %_bNumberMBINs% GTR 0 (
			cd ModScript
			rem ******   NOW IN ModScript   ********
			if not exist EXTRACTED_PAK (
				mkdir EXTRACTED_PAK 2>NUL
			) else (
				CALL :Cleaning_EXTRACTED_PAK
				mkdir EXTRACTED_PAK 2>NUL
			)
			
			ECHO. >.\EXTRACTED_PAK\%_bDoNotUseName%
			
			if not exist EXMLFILES_PAK (
				mkdir EXMLFILES_PAK 2>NUL
			) else (
				CALL :Cleaning_EXMLFILES_PAK
				mkdir EXMLFILES_PAK 2>NUL
			)
			
			ECHO. >.\EXMLFILES_PAK\%_bDoNotUseName%
			
			copy /y /v "*.MBIN" "EXTRACTED_PAK\" >NUL
			
			set _bDoingPAk=
			call :UNPACKEDtoEXML
			set _bUNPACKED_DECOMPILED=y
			
			cd ..
			rem ******   NOW IN AMUMSS folder   ********
		)
	)
)
rem *************************  end UNPACK and DECOMPILE paks to UNPACKED_DECOMPILED_PAKs  ******************

rem ******   NOW IN AMUMSS folder   ********
rem re-calculate the number of scripts in ModScript
SET _bNumberScripts=0

rem number of scripts could have changed:
rem Check if some LUA scripts exist in ModScript and sub-folders
Call :LuaEndedOkREMOVE
set location=bz9
REM echo. %location%
cd MODBUILDER
rem Del /f /q "modscriptContent.txt" 1>NUL 2>NUL
%_mLUA% SearchModScriptForFileExt.lua ".lua" "" "CreateCompositeName"
SET _bResult=%ERRORLEVEL%
SET /A "_bNumberScripts=_bResult"
cd ..
REM echo.
REM echo. YYYYYY _bNumberScripts = %_bNumberScripts%
Call :LuaEndedOk

			REM FOR %%G in ("%~dp0\ModScript\*.lua") do ( 
				REM SET /A _bNumberScripts=_bNumberScripts+1
			REM )

if %_bNumberScripts% EQU 0 (
	if DEFINED _bEXML (
		SET /A _bNumberScripts=_bNumberScripts+1
	)
)

if %_bNumberScripts% EQU 0 (
	set _bNoScript=y
) else (
	SET _bBuildMODpak=y
	CALL :CHECK_ExtraFilesToInclude
)

CALL :Cleaning_EXML_Helper

if %_uOldMBINCompilerFlag%==Y (
	echo.    %_zBLACKonYELLOW% [NOTICE] Older MBINCompiler used %_zDEFAULT%
	REM echo.

	echo.>>"REPORT.lua"
	echo|set /p=".   [NOTICE] Older MBINCompiler used">>"REPORT.lua" & echo.>>"REPORT.lua"

	REM script, if any, may need updating.  Not processing
	goto :ENDING
)

rem -------- user options start here -----------
rem on 0, treat as INDIVIDUAL mods
rem on 1, treat as a generic combined mod with a NUMERIC suffix
rem on 2, treat as a DISTINCT combined mod with the current DATE-TIME
rem on 3, treat as an INDIVIDUAL mod, the name being like Mod1+Mod2+Mod3.pak, a COMPOSITE mod

CALL :DOPAUSE	

if defined _bNoScript goto :EXECUTE

REM if defined _mSIMPLE goto :SIMPLE_MODE 
if %_bNumberScripts% EQU 1 goto :INDIVIDUAL_SELECTED

if [%-CombineModPak%]==[ASK] goto :AskCombineModPak
if [%-CombineModPak%]==[] goto :AskCombineModPak
if [%-CombineModPak%]==[Y] goto :WhatTypeOfCombinedMod
if [%-CombineModPak%]==[N] goto :INDIVIDUAL_SELECTED

echo.==^> BAD OPTION VALUE for '-CombineModPak' [%-CombineModPak%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:AskCombineModPak
echo.
echo.^>^>^> INFO: - INDIVIDUAL PAKs may or may not work together depending on the EXML files they change
echo.            If they modify the same original EXML files, the last one loaded will win and the other changes will be lost...
echo.            Use INDIVIDUAL PAKs when they don't 'conflict' with each other
echo.
echo.          - COMBINED PAKs will try to keep, as much as possible, all changes made to a particular EXML file by re-using it during PAK creation
echo.            Only the last change made to the same exact values of an EXML will be in the mod
echo.

if [%-CombineModPak%]==[N] goto :INDIVIDUAL_SELECTED
if [%-CombineModPak%]==[Y] goto :WhatTypeOfCombinedMod

CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Do you want to create a COMBINED[Y] or INDIVIDUAL[N] mods %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 goto :INDIVIDUAL_SELECTED

rem =============== COMBINED ==============
:WhatTypeOfCombinedMod
if [%-CombinedModType%]==[ASK] goto :AskCombinedModType
if [%-CombinedModType%]==[] goto :AskCombinedModType
if [%-CombinedModType%]==[1] (
	SET _bCOMBINE_MODS=1	
	goto :SIMPLE_MODE
)
if [%-CombinedModType%]==[2] (
	SET _bCOMBINE_MODS=2	
	goto :SIMPLE_MODE
)
if [%-CombinedModType%]==[3] (
	SET _bCOMBINE_MODS=3
	goto :SIMPLE_MODE
)

echo.==^> BAD OPTION VALUE for '-CombinedModType' [%-CombinedModType%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:AskCombinedModType
echo.
echo.^>^>^> A COMPOSITE combined MOD name has a length limit of less than %_bMaxPakNameLength% characters (excess will be truncated)
REM set /p _bCompositeName=<"MODBUILDER\Composite_MOD_FILENAME.txt"
echo.            It would be like mod1+mod2+mod3.pak
REM echo.      "%_bCompositeName%"
REM echo.               ...in this case
echo.
CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Do you want to use a COMPOSITE combined MOD named just like that %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 goto :COMBINEDTYPE
if %ERRORLEVEL% EQU 1 SET _bCOMBINE_MODS=3
goto :SIMPLE_MODE

:COMBINEDTYPE
echo.
echo.^>^>^> A COMBINED MOD name can be like CombinedMod_(x).pak (where x is 0 to 9)
echo.                         ...or like CombinedMod_DATE-TIME.pak...
echo.
CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Do you want to use a NUMERIC suffix[Y] or the current DATE-TIME[N] to differentiate your mod name %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 SET _bCOMBINE_MODS=1
if %ERRORLEVEL% EQU 1 SET _bCOMBINE_MODS=2
goto :SIMPLE_MODE

rem here _bCOMBINE_MODS is set
rem =============== END: COMBINED ==============

rem =============== INDIVIDUAL ==============
:INDIVIDUAL_SELECTED
if [%-IndividualModPakType%]==[ASK] goto :ASKIndividualModPakType
if [%-IndividualModPakType%]==[] goto :ASKIndividualModPakType
if [%-IndividualModPakType%]==[PLAIN] (
	SET _bINDIVIDUAL_MODS=2
	goto :SIMPLE_MODE
)
if [%-IndividualModPakType%]==[P] (
	SET _bINDIVIDUAL_MODS=2
	goto :SIMPLE_MODE
)
if [%-IndividualModPakType%]==[DATETIME] (
	SET _bINDIVIDUAL_MODS=1
	goto :SIMPLE_MODE
)
if [%-IndividualModPakType%]==[D] (
	SET _bINDIVIDUAL_MODS=1
	goto :SIMPLE_MODE
)

echo.==^> BAD OPTION VALUE for '-IndividualModPakType' [%-IndividualModPakType%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:ASKIndividualModPakType
rem _bINDIVIDUAL_MODS=1 the name of the script
rem _bINDIVIDUAL_MODS=2 the name of the script + date-time
echo.
echo.^>^>^> Making individual MODs named like MyMod.pak
echo.                           ...or like MyMod_DATE-TIME.pak...
echo.
CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Do you want to add the current DATE-TIME[Y] to your mod name %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 SET _bINDIVIDUAL_MODS=2
if %ERRORLEVEL% EQU 1 SET _bINDIVIDUAL_MODS=1
rem =============== END: INDIVIDUAL ==============

:SIMPLE_MODE

if %_bNumberScripts% EQU 1 goto :SIMPLE_MODE_ONE_SCRIPT

REM echo. 0_BXRUN: -CopyToGamefolder = [%-CopyToGamefolder%]
if [%-CopyToGamefolder%]==[ASK] goto :COPYASK
if [%-CopyToGamefolder%]==[] goto :COPYASK
SET _bCOPYtoNMS=NONE
if [%-CopyToGamefolder%]==[NONE] goto :EXECUTE
if [%-CopyToGamefolder%]==[N] goto :EXECUTE
SET _bCOPYtoNMS=SOME
if [%-CopyToGamefolder%]==[SOME] goto :EXECUTE
SET _bCOPYtoNMS=ALL
if [%-CopyToGamefolder%]==[ALL] goto :EXECUTE
if [%-CopyToGamefolder%]==[Y] goto :EXECUTE

echo.==^> BAD OPTION VALUE for '-CopyToGamefolder' [%-CopyToGamefolder%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:COPYASK
echo.
CHOICE /c:NSA /m " %_zBLACKonYELLOW% ??? Would you like or [N]ot to COPY [S]ome or [A]ll Created Mod PAKs to your game folder and DELETE [DISABLEMODS.TXT] %_zDEFAULT%"
if %ERRORLEVEL% EQU 3 SET _bCOPYtoNMS=ALL
if %ERRORLEVEL% EQU 2 SET _bCOPYtoNMS=SOME
if %ERRORLEVEL% EQU 1 SET _bCOPYtoNMS=NONE

goto :EXECUTE

:SIMPLE_MODE_ONE_SCRIPT
if [%-CopyToGamefolder%]==[ASK] goto :ASK_COPYTOMODS
if [%-CopyToGamefolder%]==[] goto :ASK_COPYTOMODS

SET _bCOPYtoNMS=NONE
if [%-CopyToGamefolder%]==[NONE] goto :EXECUTE
if [%-CopyToGamefolder%]==[N] goto :EXECUTE

SET _bCOPYtoNMS=ALL
if [%-CopyToGamefolder%]==[SOME] goto :EXECUTE
if [%-CopyToGamefolder%]==[ALL] goto :EXECUTE
if [%-CopyToGamefolder%]==[Y] goto :EXECUTE

echo.==^> BAD OPTION VALUE for '-CopyToGamefolder' [%-CopyToGamefolder%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause
goto :COPYASK

:ASK_COPYTOMODS
if %_bNumberScripts% EQU 0 (
	echo. _bNumberScripts is 0
	set _bCOPYtoNMS=NONE
	goto :EXECUTE
)

echo.
CHOICE /c:YN /m " %_zBLACKonYELLOW% ??? Would you like to COPY the created Mod PAKs to your game folder and DELETE [DISABLEMODS.TXT] %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 SET _bCOPYtoNMS=NONE
if %ERRORLEVEL% EQU 1 SET _bCOPYtoNMS=ALL
rem -------- user options end here -----------

:EXECUTE
REM echo. 1_BXRUN: -CopyToGamefolder = [%-CopyToGamefolder%]
REM if [%CopyToGamefolder%]==[Y] set _bCOPYtoNMS=ALL
REM if [%CopyToGamefolder%]==[N] set _bCOPYtoNMS=NONE

REM :POST_EXECUTE
REM echo. 2_BXRUN: _bCOPYtoNMS = [%_bCOPYtoNMS%]

rem EXECUTE --------------------------------------------
if not exist "!CD!\CreatedModPAKs" (
	mkdir "!CD!\CreatedModPAKs\" 2>NUL
)
Del /f /q /s ".\CreatedModPAKs\*.*" 1>NUL 2>NUL

Del /f /q "%_bMASTER_FOLDER_PATH%MODBUILDER\LuaEndedOk.txt" 1>NUL 2>NUL
Del /f /q "LuaEndedOk.txt" 1>NUL 2>NUL

Del /f /q "TempScript.lua" 1>NUL 2>NUL
Del /f /q "TempTable.lua" 1>NUL 2>NUL

REM always Cleaning _TEMP at the start of a new run
REM FOR NOW
REM echo. FULL RESET of _TEMP files
REM CALL :Cleaning_TEMP_DECOMPILED

rem *********************  NOW IN MODBUILDER  *******************
cd MODBUILDER
pushd "!CD!"

if defined _mVERBOSE (
	echo.
	echo.^>^>^> %_bB% Changed to !CD!
)

del /f /q OnlyOneScript.txt 1>NUL 2>NUL

if %_bNumberScripts% EQU 1 (
	echo|set /p="">OnlyOneScript.txt
)

if not DEFINED _bPAK_MBIN (
REM if %_bNumberPAKs% EQU 0 (
	CALL :CONFLICTDETECTION
	
	if !_bCheckMODSconflicts! EQU 1 (
		REM get list paks in NMS MODS folder
		CALL PSARC_LIST_PAKS_MODS.BAT
	)
	if !_bCheckMODSconflicts! EQU 3 (
		REM get list paks in NMS MODS folder
		CALL PSARC_LIST_PAKS_MODS.BAT
	)

	if !_bCheckMODSconflicts! EQU 3 (
		set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
		if not defined _bStartTime (
			Call :LuaEndedOkREMOVE
			set location=bz8
			SET _bStartTime=Y
			%_mLUA% StartTime.lua "..\\" ""
			Call :LuaEndedOk
		)

		goto :START_CONFLICT_DETECTION
	) else (
		set "_fileToCheck=MODS_pak_list.txt"
		CALL :HOW_MANY_LINES
		REM echo _bCheckMODSconflicts = !_bCheckMODSconflicts!
	)
	
	CALL :PAK_LISTsCREATION
)

REM rem **************************  MapFileTrees creation choice section  ********************************
if [%-ReCreateMapFileTree%]==[ASK] goto :AskReCreateMapFileTree
if [%-ReCreateMapFileTree%]==[] goto :AskReCreateMapFileTree
if [%-ReCreateMapFileTree%]==[Y] goto :START
if [%-ReCreateMapFileTree%]==[N] goto :START
if [%-ReCreateMapFileTree%]==[X] goto :START

echo.==^> BAD OPTION VALUE for '-ReCreateMapFileTree' [%-ReCreateMapFileTree%], please correct!
echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
pause

:AskReCreateMapFileTree
echo.
if defined _bNMSUpdated (
	echo.^>^>^> There was a NMS update, it is recommended to recreate the MapFileTrees files
	echo.
	echo.^>^>^> Some of your MapFileTrees files may be outdated
	echo.^>^>^>    You can recreate them using the script MapFileTree_UPDATER.lua
	echo.^>^>^>    To update a specific file, add it to the script
	echo.^>^>^> All other MapFileTrees will be updated as you process other scripts
)

echo.
CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Do you want to FORCE (RE)CREATE the MapFileTrees files DURING script processing %_zDEFAULT%"
if %ERRORLEVEL% EQU 1 (set -ReCreateMapFileTree=Y)
rem **************************  end MapFileTrees creation choice section  ********************************

:START
rem ------  START of automatic processing: start the clock  -----------------------
if not defined _bStartTime (
	Call :LuaEndedOkREMOVE
	set location=bz7
	SET _bStartTime=Y
	%_mLUA% StartTime.lua "..\\" ""
	Call :LuaEndedOk
)

if %_bNumberPAKs% GTR 0 (
	echo.
	if %_bNumberScripts% GTR 0 (
		echo.---------------------------------------------------------
		echo.^>^>^> So, we are making a GENERIC COMBINED MOD PAK...	
		echo|set /p="%_INFO%   A GENERIC COMBINED MOD will be created...">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		if defined _bExtraFilesInPAK (
			echo.^>^>^>      Extra Files in the 'main' ModExtraFilesToInclude will be included
			echo|set /p="%_INFO%   Extra Files in the 'main' ModExtraFilesToInclude will be included">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		) else (
			if !_bExtraFiles! GTR 0 (
				echo.^>^>^>      Extra Files in the 'main' ModExtraFilesToInclude will NOT be included
				echo|set /p="%_INFO%   Extra Files in the 'main' ModExtraFilesToInclude will NOT be included">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			)
		)
		if %_bCOPYtoNMS%==NONE (
			echo.^>^>^>      It will NOT be copied to NMS MOD folder
			echo|set /p="%_INFO%   It will NOT be copied to NMS MOD folder">>"..\REPORT.lua"
		)
		if %_bCOPYtoNMS%==ALL (
			if %_bNumberPAKs% GTR 1 (
				echo.^>^>^>      and will be copied with the user PAKs to NMS MOD folder
				echo|set /p="%_INFO%   and will be copied with the user PAKs to NMS MOD folder">>"..\REPORT.lua"
			) else (
				echo.^>^>^>      and will be copied with the user PAK to NMS MOD folder
				echo|set /p="%_INFO%   and will be copied with the user PAK to NMS MOD folder">>"..\REPORT.lua"
			)
		)
	)
	echo.>>"..\REPORT.lua"
	echo.>>"..\REPORT.lua"
) else (
	if defined _bNoScript goto :SIMPLE_MODE2
	echo.
	echo.---------------------------------------------------------
	if %_bCOMBINE_MODS% EQU 0 (
		echo.^>^>^> So, we are making INDIVIDUAL MOD PAKs ^(except where ___COMBINE.txt exist in sub-folders^)...
		echo|set /p="%_INFO%   INDIVIDUAL MOD PAKs will be created (except where ___COMBINE.txt exist in sub-folders)...">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	)
	if %_bCOMBINE_MODS% EQU 1 (
		echo.^>^>^> So, we are making a GENERIC COMBINED MOD PAK...	
		echo|set /p="%_INFO%   A GENERIC COMBINED MOD will be created...">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	)
	if %_bCOMBINE_MODS% EQU 2 (
		echo.^>^>^> So, we are making one or more DISTINCT COMBINED MOD PAK...	
		echo|set /p="%_INFO%   One or more DISTINCT COMBINED MOD PAK will be created...">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	)
	if %_bCOMBINE_MODS% EQU 3 (
		echo.^>^>^> So, we are making a COMPOSITE-NAME COMBINED MOD PAK...	
		echo|set /p="%_INFO%   A COMPOSITE-NAME COMBINED MOD will be created...">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	)
	if defined _bExtraFilesInPAK (
		echo.^>^>^>      Extra Files in the 'main' ModExtraFilesToInclude will be included
		echo|set /p="%_INFO%   Extra Files in the 'main' ModExtraFilesToInclude will be included">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	) else (
		if !_bExtraFiles! GTR 0 (
			echo.^>^>^>      Extra Files in the 'main' ModExtraFilesToInclude will NOT be included
			echo|set /p="%_INFO%   Extra Files in the 'main' ModExtraFilesToInclude will NOT be included">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		)
	)
	if %_bCOPYtoNMS%==NONE (
		echo.^>^>^>      and NONE will be copied to NMS MOD folder
		echo|set /p="%_INFO%   and NONE will be copied to NMS MOD folder">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	)
	if %_bCOPYtoNMS%==ALL (
		echo.^>^>^>      and ALL will be copied to NMS MOD folder
		echo|set /p="%_INFO%   and ALL will be copied to NMS MOD folder">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	)
	echo.>>"..\REPORT.lua"
)
echo.---------------------------------------------------------

REM if defined _mSIMPLE goto :SIMPLE_MODE2 
REM if defined _min_subprocess goto :SIMPLE_MODE2 

REM if not defined _mSKIP_USER_PAUSE (
	REM REM echo.Waiting 3 sec...
	REM timeout /T 3 /NOBREAK
REM )

rem *********************  STILL IN MODBUILDER  *******************
:SIMPLE_MODE2 
if not defined _bBuildMODpak goto :ENDING

Del /f /q "..\SerializedScript.lua" 1>NUL 2>NUL

REM echo.
REM echo.^>^>^> %_bB% Number of scripts to build: %_bNumberScripts% ^('*' indicates that MEFTI is present^)

rem Let MapFileTreeCreator know it can run if requested
echo|set /p="">MapFileTreeCreatorRun.txt

rem ###################################################################
rem --------  processing only if scripts are present -------------
rem ###################################################################
	rem reset counter of processed scripts
	echo|set /p="">ScriptCounter.txt

	Call :LuaEndedOkREMOVE
	set location=bz6
	%_mLUA% LoadAndExecuteModScript.lua
	Call :LuaEndedOk
	
	rem get # of processed script
	SET /p _bScriptCounter=<ScriptCounter.txt
	
	IF EXIST "LoadScriptAndFilenamesERROR.txt" (
		set _bErrorLoadingScript=y
	)
		
	REM CALL :DOPAUSE
	IF DEFINED _bErrorLoadingScript (
		echo|set /p="    [ENDED THIS SCRIPT PROCESSING] ========================================================================================">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		echo.
	)
	set _bErrorLoadingScript=
	del /f /q LoadScriptAndFilenamesERROR.txt 1>NUL 2>NUL

rem ##########################################################################
rem --------  END: processing only if scripts are present -------------
rem ##########################################################################

rem Let MapFileTreeCreator know it can terminate if it has completed its works
Del /f /q MapFileTreeCreatorRun.txt 1>NUL 2>NUL

:ENDING
echo.
echo.^>^>^>  Ending phase...

rem ******   NOW IN AMUMSS folder   ********
cd "%~dp0"

rem if more than one script
if %_bNumberScripts% GTR 1 (
	if %_bCOMBINE_MODS% EQU 0 (
		rem more then one script and individual mods
		rem we switch to LEAN mode 
		echo.
		echo.  ==^> Switching to LEAN mode: Found more then one script AND creating INDIVIDUAL mods
		echo|set /p="%_INFO% Switching to LEAN mode: Found more then one script AND creating INDIVIDUAL mods">>"REPORT.lua" & echo.>>"REPORT.lua"
		set _DEV_MODE=L
	)
)

if %_bNumberScripts% GTR 0 (
	if [%_DEV_MODE%]==[L] (
		echo|set /p="">".\EXML_Helper\LEAN_MODE_ACTIVE.txt"
		call :DEV_MODE_INFO
		echo.
		echo.^>^>^> %_bB% LEAN mode: Skipping EXML_Helper update
		echo.}>>"REPORT.lua"
		echo|set /p="%_INFO% In LEAN mode: Skipping EXML_Helper update">>"REPORT.lua" & echo.>>"REPORT.lua"
	) else (
		del ".\EXML_Helper\LEAN_MODE_ACTIVE.txt" 1>NUL 2>NUL
		echo.
		echo.^>^>^> %_bB% Updating EXML_Helper\MODDED...

		echo.}>>"REPORT.lua"
		echo|set /p="%_INFO% Updated EXML_Helper\MODDED">>"REPORT.lua" & echo.>>"REPORT.lua"

		if %_bNumberScripts% GTR 1 (
			echo.^>^>^> %_bB%     Note that the MODDED files ARE based on the last processed script if individual mods were created
			echo|set /p="%_INFO%     --Note that the MODDED files ARE based on the last processed script if individual mods were created">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
		
		REM allow all file types, except .lua scripts and .MBIN
		xcopy /f /s /y /h /e /v /i /j /c "MODBUILDER\MOD\*.*" "EXML_Helper\MODDED\" /EXCLUDE:MODBUILDER\xcopy_exclude.txt 1>NUL 2>NUL
		
		echo.^>^>^> %_bB% Updating EXML_Helper\ORG_EXML and/or EXTRACTED...
		echo|set /p="%_INFO% Updated EXML_Helper\ORG_EXML">>"REPORT.lua" & echo.>>"REPORT.lua"

		REM echo|set /p=".EXML">>"MODBUILDER\exclude.txt"
		for /R .\EXML_Helper\MODDED\ %%G in (*.EXML) do (
			rem echo. - %%G
			set _org=%%G
			rem echo. - !_org!
			rem echo.
			set _tmpDest=!_org:MODDED=ORG_EXML!
			REM echo. - _tmpDest = [!_tmpDest!]
			set _tmpSrc=!_org:EXML_HELPER\MODDED=MODBUILDER\_TEMP\DECOMPILED!
			REM echo. - _tmpSrc = [!_tmpSrc!]
			REM allow all file types
			xcopy /s /y /h /v /i /j /c "!_tmpSrc!" "!_tmpDest!*" 1>NUL 2>NUL
			REM echo.
			set _tmpDest=!_org:MODDED=EXTRACTED!
			set _tmpDest=!_tmpDest:.EXML=.MBIN!
			set _tmp=!_tmpDest:.GEOMETRY.=!
			if NOT [!_tmp!]==[!_tmpDest!] (set _tmpDest=!_tmpDest:.MBIN=.MBIN.PC!)
			REM echo. - _tmpDest = [!_tmpDest!]
			set _tmpSrc=!_org:EXML_HELPER\MODDED=MODBUILDER\_TEMP\EXTRACTED!
			set _tmpSrc=!_tmpSrc:.EXML=.MBIN!
			REM echo. - _tmpSrc = [!_tmpSrc!]
			REM exclude the .EXML files
			xcopy /s /y /h /v /i /j /c "!_tmpSrc!" "!_tmpDest!*" 1>NUL 2>NUL
			REM echo. --------------
		)
		REM del MODBUILDER\exclude.txt
		
		REM REM allow all file types
		REM xcopy /s /y /h /e /v /i /j /c "MODBUILDER\_TEMP\DECOMPILED\*.*" "EXML_Helper\ORG_EXML\" 1>NUL 2>NUL

		REM REM exclude the .EXML files
		REM echo|set /p=".EXML">>"MODBUILDER\exclude.txt"
		REM xcopy /s /y /h /e /v /i /j /c "MODBUILDER\_TEMP\EXTRACTED\*.*" "EXML_Helper\EXTRACTED\" /EXCLUDE:MODBUILDER\exclude.txt 1>NUL 2>NUL
		REM del MODBUILDER\exclude.txt
	)
)

echo.
echo.%_zDARKGRAY%-----------------------------------------------------%_zDEFAULT%
echo.   %_zBLACKonYELLOW% ^>^>^>        AMUMSS v%_mCurrentVersion% finished        ^<^<^< %_zDEFAULT%
echo.%_zDARKGRAY%-----------------------------------------------------%_zDEFAULT%
echo.

if defined _bNoScript (
	if %_bNumberPAKs% EQU 0 (
		echo. %_zBLACKonYELLOW% ^>^>^>   [NOTICE] NO user .lua Mod Script found in ModScript... %_zDEFAULT%
		echo.              You may want to put some .lua Mod script in the ModScript folder and retry...

		echo|set /p="}   [NOTICE] No user .lua Mod Script found in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="%_INFO% You may want to put some .lua Mod script in the ModScript folder and retry...">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
	) else (
		if %_bNumberScripts% EQU 0 (
			echo. %_zBLACKonYELLOW% ^>^>^>   [INFO] NO user .lua Mod Script found in ModScript... %_zDEFAULT%
			
			echo|set /p="}   [INFO] NO user .lua Mod Script found in ModScript...">>"REPORT.lua" & echo.>>"REPORT.lua"
			echo.>>"REPORT.lua"
		)
	)
) else (
	if not defined _bErrorLoadingScript (
		if [%_DEV_MODE%]==[L] (
			echo.^>^>^> [INFO] If created, PAKs are in local folder ^>^>^> CreatedModPAKs ^<^<^<
			echo.^>^>^> [INFO] and Backups in ^>^>^> IncrementalBuilds ^<^<^<
		) else (
			echo.^>^>^> [INFO] If created, PAKs are in local folder ^>^>^> CreatedModPAKs ^<^<^<
			echo.^>^>^> [INFO] and Backups in ^>^>^> Builds ^<^<^< and ^>^>^> Builds\IncrementalBuilds ^<^<^<
		)
		
		echo.>>"REPORT.lua"
		if [%_DEV_MODE%]==[L] (
			echo|set /p="%_INFO% If created, PAKs are in local folder >>> CreatedModPAKs <<<">>"REPORT.lua" & echo.>>"REPORT.lua"
			echo|set /p="%_INFO% and Backups in >>> IncrementalBuilds <<<">>"REPORT.lua" & echo.>>"REPORT.lua"
		) else (
			echo|set /p="%_INFO% If created, PAKs are in local folder >>> CreatedModPAKs <<<">>"REPORT.lua" & echo.>>"REPORT.lua"
			echo|set /p="%_INFO% and Backups in >>> Builds <<< and >>> Builds\IncrementalBuilds <<<">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
		echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
		echo|set /p="%_INFO% END OF PROCESSING">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="%_INFO% Total scripts processed: %_bScriptCounter%">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
	)
)
Call :LuaEndedOkREMOVE

if %_bCheckMODSconflicts% EQU 1 set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
if %_bCheckMODSconflicts% EQU 3 set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
if %_bCheckMODSconflicts% EQU 4 set "_fileToCheck=MODBUILDER\MBIN_PAKS.txt"

:START_CONFLICT_DETECTION
rem ******   NOW IN AMUMSS folder   ********
cd "%~dp0"

if !_bCheckMODSconflicts! NEQ 2 (
	CALL :HOW_MANY_LINES

	if !_bCheckMODSconflicts! EQU 1 set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
	if !_bCheckMODSconflicts! EQU 3 set "_fileToCheck=MODBUILDER\MODS_pak_list.txt"
	if !_bCheckMODSconflicts! EQU 4 set "_fileToCheck=MODBUILDER\MBIN_PAKS.txt"
	REM echo._fileToCheck = !_fileToCheck!

	REM echo _bCheckMODSconflicts = !_bCheckMODSconflicts!
	if !_bCheckMODSconflicts! NEQ 2 (
		if !_bGConflictLines! GTR 0 (
			echo.
			echo.^>^>^> Conflict Detection starting...
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

REM SPECIAL
Call :LuaEndedOkREMOVE
set location=bz18
.\MODBUILDER\%_mLUA% ".\MODBUILDER\ReportFailedScript.lua" ".\\" ".\\MODBUILDER\\"
Call :LuaEndedOk

if defined _bErrorLoadingScript (
	echo.
	echo.  %_zBLACKonYELLOW% ^>^>^>  INTERRUPTED / INCOMPLETE PROCESSING  ^<^<^< %_zDEFAULT%

	echo.>>"REPORT.lua"
	echo|set /p="%_INFO%     >>>  INTERRUPTED / INCOMPLETE PROCESSING  <<<">>"REPORT.lua" & echo.>>"REPORT.lua"
)

Call :LuaEndedOkREMOVE
set location=bz4
.\MODBUILDER\%_mLUA% ".\MODBUILDER\CheckREPORTLOG.lua" ".\\" ".\\MODBUILDER\\" !_bCheckMODSconflicts!
Call :LuaEndedOk

echo.            %_zBLACKonYELLOW% ^>^>^> See "REPORT.lua" ^<^<^< %_zDEFAULT%

if %_uOldMBINCompilerFlag%==Y (
	if %_bNumberScripts% GTR 0 (
		echo.
		echo.%_zRED%============================================================================%_zDEFAULT%
		echo. %_zINVERSE%[NOTE] Some PAKs could not be decompiled by the current MBINCompiler      %_zDEFAULT%
		echo. %_zINVERSE%       Processing of .lua scripts is halted until those PAKs are removed  %_zDEFAULT%
		echo. %_zINVERSE%       from ModScript                                                     %_zDEFAULT%
		echo.%_zRED%============================================================================%_zDEFAULT%

		echo|set /p="[NOTE] Some PAKs could not be decompiled by the current MBINCompiler">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE] Processing of .lua scripts is halted until those PAKs are removed">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p="[NOTE] from ModScript">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
	)
)

if defined _bUNPACKED_DECOMPILED (
	echo.
	echo.%_zRED%      %_bNumberMBINs% MBIN^(s^) processed%_zDEFAULT%
	echo.%_zRED%      %_bGNumScriptsInPak% Script^(s^) found in PAK^(s^)%_zDEFAULT%
	echo.%_zRED%      %_bNumberPAKs% PAK^(s^)/MBIN^(s^) processed%_zDEFAULT%
	echo.%_zRED%      	%_bGNumberFiles% file^(s^) found in PAK^(s^)/MBIN^(s^)%_zDEFAULT%
	
	if [!_bCheckVersionOfFiles!]==[Y] (
		if %_bGNumberFilesNoVersionInfo% GTR 0 (
			echo.%_zRED%      	%_bGNumberFilesNoVersionInfo% file^(s^) having NO Version information%_zDEFAULT%
		)
	)
	echo.%_zRED%      	%_bGNumberFilesDecompiled% file^(s^) decompiled%_zDEFAULT%
	if %_bNumberFilesCouldNotDecompile% GTR 0 (
		echo.%_zRED%      	%_bNumberFilesCouldNotDecompile% file^(s^) could not be decompiled by any MBINCompiler version%_zDEFAULT%
	)
	if %_bGNumberFilesMissing% GTR 0 (
		echo.%_zRED%      	%_bGNumberFilesMissing% file^(s^) missing the right MBINCompiler%_zDEFAULT%
		echo.          %_zBLACKonYELLOW%    Please report missing VERSION to AMUMSS developper, thanks.    %_zDEFAULT%
	)

	echo.>>"REPORT.lua"
	echo|set /p="%_INFO% %_bNumberMBINs% MBIN(s) processed">>"REPORT.lua" & echo.>>"REPORT.lua"
	echo|set /p="%_INFO% %_bGNumScriptsInPak% Script(s) found in PAK(s)">>"REPORT.lua" & echo.>>"REPORT.lua"
	echo|set /p="%_INFO% %_bNumberPAKs% PAK(s)/MBIN(s) processed">>"REPORT.lua" & echo.>>"REPORT.lua"
	echo|set /p="%_INFO%   %_bGNumberFiles% file(s) found in PAK(s)/MBIN(s)">>"REPORT.lua" & echo.>>"REPORT.lua"
	
	if [!_bCheckVersionOfFiles!]==[Y] (
		if %_bGNumberFilesNoVersionInfo% GTR 0 (
			echo|set /p="%_INFO%   %_bGNumberFilesNoVersionInfo% file(s) having NO Version information">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
	)
	echo|set /p="%_INFO%   %_bGNumberFilesDecompiled% file(s) decompiled">>"REPORT.lua" & echo.>>"REPORT.lua"
	if %_bNumberFilesCouldNotDecompile% GTR 0 (
		echo|set /p="%_INFO%   %_bNumberFilesCouldNotDecompile% file(s) could not be decompiled by any MBINCompiler version">>"REPORT.lua" & echo.>>"REPORT.lua"
	)
	if %_bGNumberFilesMissing% GTR 0 (
		echo|set /p="%_INFO%   %_bGNumberFilesMissing% file(s) missing the right MBINCompiler">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p=".   [WARNING]     Please report missing VERSION to AMUMSS developper, thanks.">>"REPORT.lua" & echo.>>"REPORT.lua"
	)
	echo.>>"REPORT.lua"

	if %_uOldMBIN%==Y (
		echo.
		echo.   %_zRED%========================================================%_zDEFAULT%
		echo.    %_zINVERSE%[NOTE] An older version of MBINCompiler was used      %_zDEFAULT%
		echo.    %_zINVERSE%      or the MBIN file was never compiled             %_zDEFAULT%
		echo.    %_zINVERSE%      or the right MBINCompiler could not be found.   %_zDEFAULT%
		echo.    %_zINVERSE%      It means that one or more EXML are most likely  %_zDEFAULT%
		echo.    %_zINVERSE%      not compatible with the current version of NMS. %_zDEFAULT%
		if %_bNumberScripts% GTR 0 (
			echo. %_zINVERSE%      No PAK will be produced^^!                      %_zDEFAULT%
		)
		echo.   %_zRED%========================================================%_zDEFAULT%
		
		echo.>>"REPORT.lua"
		echo|set /p=".   [NOTE] An older version of MBINCompiler was used">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p=".   [NOTE] or the MBIN file was never compiled">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p=".   [NOTE] or the right MBINCompiler could not be found.">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p=".   [NOTE] It means that one or more EXML are most likely">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo|set /p=".   [NOTE] not compatible with the current version of NMS.">>"REPORT.lua" & echo.>>"REPORT.lua"
		if %_bNumberScripts% GTR 0 (
			echo|set /p=".   [NOTE] No PAK will be produced^!">>"REPORT.lua" & echo.>>"REPORT.lua"
		)
		echo.>>"REPORT.lua"
	)

	echo.
	if %_bNumberPAKs% GTR 0 (
		echo. %_zBLACKonYELLOW%                                                                                                       %_zDEFAULT%
		echo. %_zBLACKonYELLOW% ^>^>^> You can examine the content of the PAKs in the UNPACKED_DECOMPILED_PAKs folder under the PAK name %_zDEFAULT%
		echo. %_zBLACKonYELLOW%                                                                                                       %_zDEFAULT%
		echo. %_zBLACKonYELLOW% ^>^>^> The content of the LAST PAK is also in ModScript's EXTRACTED_PAK and EXMLFILES_PAK folders        %_zDEFAULT%
		echo. %_zBLACKonYELLOW%                                                                                                       %_zDEFAULT%

		echo|set /p="%_INFO% You can examine the content of the PAKs in the UNPACKED_DECOMPILED_PAKs folder under the PAK name">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
		echo|set /p="%_INFO% The content of the LAST PAK is also in ModScript's EXTRACTED_PAK and EXMLFILES_PAK folders">>"REPORT.lua" & echo.>>"REPORT.lua"
		echo.>>"REPORT.lua"
	)
)

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

REM if defined _min_subprocess (
	REM echo.################ IN DEBUG MODE ################
	REM echo.
	REM if defined _mDEBUG (
		REM set _
		REM echo.%_zDEFAULT%
		REM echo. ********* Ran with these arguments *********
		REM set -
	REM )
	REM echo.%_zDEFAULT%
REM )

If defined _mGlobalRepl (
	Call :LuaEndedOkREMOVE
	set location=bz1
	.\MODBUILDER\%_mLUA% ".\MODBUILDER\CheckGlobalReplacements.lua" ".\\" ".\\MODBUILDER\\"
	Call :LuaEndedOk
)

REM cleanup %_mLUA% errors
del /f /q .\MODBUILDER\LuaEndedOk.txt 1>NUL 2>NUL
del /f /q LuaEndedOk.txt 1>NUL 2>NUL
REM end cleanup %_mLUA% errors

REM if exist "LuaEndedOk.txt" (
	REM echo. LuaEndedOk.txt in main folder
	REM pause
REM )

if exist "%_bNMS_PCBANKS_FOLDER%DISABLEMODS.TXT" (
	echo. %_zRED% --- DISABLEMODS.TXT still exist in your PCBANKS folder --- %_zDEFAULT%
	echo. %_zRED% ---   Delete/Rename it or NMS will not use your mods   --- %_zDEFAULT%
)

if not exist .\MODBUILDER\NEW_BUILDMOD.bat (
	echo.
	echo. %_zBLACKonYELLOW% === PRESS ANY KEY and THIS window will close shortly and clean log.lua === %_zDEFAULT%
	echo. %_zBLACKonYELLOW% === or close using the 'X' at the top right === %_zDEFAULT%
)

if [%-SOUND%]==[Y] (
	echo. 
)

rem start /b "" MODBUILDER\Log_file_cleaner.bat  1>NUL 2>NUL
rem .\MODBUILDER\%_mLUA% .\MODBUILDER\Log_file_cleaner.lua

REM if not defined _mDEBUG (
	REM REM echo.Pause before exit
	REM pause
REM )

pause

:LASTCHANCE 
set "_AMUMSS_PATH=%CD%"
set "command=%_AMUMSS_PATH%\MODBUILDER\buildmod_update.bat"

if exist .\MODBUILDER\NEW_BUILDMOD.bat (
	echo.
	echo. %_zRED% Updating BUILDMOD.bat:  This window will close shortly, please wait... %_zDEFAULT%
)

START "" /MIN "%command%"

rem start /b "" MODBUILDER\Log_file_cleaner.bat  1>NUL 2>NUL
REM .\MODBUILDER\%_mLUA% .\MODBUILDER\Log_file_cleaner.lua

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
	echo.   - MAYBE an other instance of AMUMSS is already open, close it...
	echo.   - Try to delete the folder yourself...
	echo.   - Close AMUMSS cmd window and re-try...
	pause
	EXIT

rem --------------------------------------------
:DEV_MODE_INFO
	echo.
		echo. %_zBGintense%                                           %_zDEFAULT%
	if [%_DEV_MODE%]==[F] (echo.      ^>^>^>     Using FULL mode     ^<^<^<)
	if [%_DEV_MODE%]==[D] (echo.   ^>^>^>     Using DEVELOPMENT mode     ^<^<^<)
	if [%_DEV_MODE%]==[L] (echo.       ^>^>^>     Using LEAN mode     ^<^<^<)
		echo. %_zBGintense%                                           %_zDEFAULT%
	echo.
	EXIT /B

rem --------------------------------------------
:Cleaning_EXML_Helper
	set _bCount=0
	:RETRY4
	if !_bCount! GTR 1000 (
		echo.   xxxxx [WARNING] Problem cleaning folder 'EXML_Helper' xxxxx
		goto :PROBLEM_FOLDER
	)
	
	SET /A _bCount=_bCount+1
	Del /f /q /s "EXML_Helper\*.*" 1>NUL 2>NUL
	if exist "EXML_Helper" (
		rd /s /q "EXML_Helper" 2>NUL
		goto :RETRY4
	)
	mkdir "EXML_Helper"
	mkdir "EXML_Helper\MODDED"
	mkdir "EXML_Helper\ORG_EXML"
	mkdir "EXML_Helper\EXTRACTED"
	EXIT /B
	
rem --------------------------------------------
:Cleaning_TEMP_DECOMPILED
	set _bCount=0
	:RETRY5
	if !_bCount! GTR 1000 (
		echo.   xxxxx [WARNING] Problem cleaning folder 'MODBUILDER\_TEMP_DECOMPILED' xxxxx
		goto :PROBLEM_FOLDER
	)
	
	SET /A _bCount=_bCount+1
	Del /f /q /s ".\_TEMP\DECOMPILED\*.*" 1>NUL 2>NUL
	if exist ".\_TEMP\DECOMPILED" (
		rd /s /q ".\_TEMP\DECOMPILED" 2>NUL
		goto :RETRY5
	)
	rem DO NOT create _TEMP\DECOMPILED
	EXIT /B
	
rem --------------------------------------------
:Cleaning_MapFileTrees
	Del /f /q /s "!CD!\MapFileTrees\*.*" 1>NUL 2>NUL
	ECHO. >ResetMapFileTreeDone.txt	
	EXIT /B
	
rem --------------------------------------------
:Cleaning_EXTRACTED_PAK
	set _bCount=0
	:RETRY7
	if !_bCount! GTR 1000 (
		echo.   xxxxx [WARNING] Problem cleaning folder 'ModScript\EXTRACTED_PAK' xxxxx
		goto :PROBLEM_FOLDER
	)
	
	SET /A _bCount=_bCount+1
	Del /f /q /s "EXTRACTED_PAK\*.*" 1>NUL 2>NUL
	if exist "EXTRACTED_PAK" (
		rd /s /q "EXTRACTED_PAK" 1>NUL 2>NUL
		goto :RETRY7
	)
	rem DO NOT create ModScript\EXTRACTED_PAK
	EXIT /B

rem --------------------------------------------
:Cleaning_EXMLFILES_PAK
	set _bCount=0
	:RETRY8
	if !_bCount! GTR 1000 (
		echo.   xxxxx [WARNING] Problem Cleaning folder 'ModScript\EXMLFILES_PAK' xxxxx
		goto :PROBLEM_FOLDER
	)
	
	SET /A _bCount=_bCount+1
	Del /f /q /s "EXMLFILES_PAK\*.*" 1>NUL 2>NUL
	if exist "EXMLFILES_PAK" (
		rd /s /q "EXMLFILES_PAK" 1>NUL 2>NUL
		goto :RETRY8
	)
	rem DO NOT create ModScript\EXMLFILES_PAK
	EXIT /B

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
		echo.    [[BUG]] lua.exe generated an [ERROR]... Please report ALL scripts AND this file to NMS Discord: "No Man's Sky Modding" channel, "mod-amumss-lua" room:>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.           https://discord.gg/22ZAU9H>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
		echo.>>"%_bMASTER_FOLDER_PATH%REPORT.lua"
	)
	EXIT /B
	
rem --------------------------------------------
:LuaEndedOkREMOVE
	Del /f /q /s "%_bMASTER_FOLDER_PATH%MODBUILDER\LuaEndedOK.txt" 1>NUL 2>NUL
	EXIT /B
	
rem --------------------------------------------
:SWITCH_COMPILER
	if [%_GameVersion%]==[P] (
		copy /V /Y /B "MBINCompiler.public.exe" "MBINCompiler.exe" >nul

		Del /f /q /s "MBINCompilerVersion.txt" 1>NUL 2>NUL
		MBINCompiler.exe version -q >>MBINCompilerVersion.txt
		set /p _bMBINCompilerVersion=<MBINCompilerVersion.txt
		
		if exist "VersionPublic.txt" (
			echo.      - Using 'Public' MBINCompiler %_zGREEN%!_bMBINCompilerVersion!%_zDEFAULT%...
		) else (
			echo.      - NOW using 'Public' MBINCompiler %_zGREEN%!_bMBINCompilerVersion!%_zDEFAULT%...
		)
	) else (
		copy /V /Y /B "MBINCompiler.latest.exe" "MBINCompiler.exe" >nul

		Del /f /q /s "MBINCompilerVersion.txt"	1>NUL 2>NUL
		MBINCompiler.exe version -q >>MBINCompilerVersion.txt
		set /p _bMBINCompilerVersion=<MBINCompilerVersion.txt
		
		if not exist "VersionPublic.txt" (
			echo.      - Using 'most recent' MBINCompiler %_zGREEN%!_bMBINCompilerVersion!%_zDEFAULT%...
		) else (
			echo.      - NOW using 'most recent' MBINCompiler %_zGREEN%!_bMBINCompilerVersion!%_zDEFAULT%...
		)
	)
	:ENDSWITCH_COMPILER
	EXIT /B

rem --------------------------------------------
:MBINCompilerUPDATE
	rem ****************************  start MBINCompiler.exe update section  ******************************
	rem ******   Currently IN MODBUILDER   ********
	echo.
	if not exist "MBINCompiler.exe" (
		echo. MBINCompiler.exe DOES NOT EXIST
		Del /f /q /s ".\MBINCompilerDownloader\URLPrevious.txt" 1>NUL 2>NUL
		echo.^>^>^> Fetching MBINCompiler on the web...
		goto :RETRY_MBINCompiler
	)

	Del /f /q /s "MBINCompilerVersion.txt" 1>NUL 2>NUL
	MBINCompiler.exe version -q >>MBINCompilerVersion.txt
	set /p _bMBINCompilerVersion=<MBINCompilerVersion.txt
	
	REM echo.^>^>^> Your current MBINCompiler is version: %_zGREEN%%_bMBINCompilerVersion%%_zDEFAULT%
	
	REM set /p _bMBINCompilerVersionOLD=<MBINCompilerVersion.txt

	if [%-AutoUpdateMBinCompiler%]==[N] goto :END_MBINCompilerUPDATE

	REM REM in case this is a new install over an existing older one, force update
	REM if not exist "MBINCompiler.public.exe" (
		REM echo. MBINCompiler.public.exe DOES NOT EXIST
		REM Del /f /q /s ".\MBINCompilerDownloader\URLPrevious.txt" 1>NUL 2>NUL
		REM echo.^>^>^> Fetching MBINCompiler on the web...
		REM goto :RETRY_MBINCompiler
	REM )

	if [%-AutoUpdateMBinCompiler%]==[ASK] goto :AskUpdateMBinCompiler
	if [%-AutoUpdateMBinCompiler%]==[] goto :AskUpdateMBinCompiler
	if [%-AutoUpdateMBinCompiler%]==[Y] goto :RETRY_MBINCompiler
	if [%-AutoUpdateMBinCompiler%]==[N] goto :END_MBINCompilerUPDATE
	
	echo.==^> BAD OPTION VALUE for '-AutoUpdateMBinCompiler' [%-AutoUpdateMBinCompiler%], please correct!
	echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
	pause

	:AskUpdateMBinCompiler
	echo.
	CHOICE /c:yn /t 30 /d y /m " %_zBLACKonYELLOW% ??? Do you want to UPDATE MBINCompiler.exe, if it is available, (default Y in 30 seconds) %_zDEFAULT%"
	if %ERRORLEVEL% EQU 2 goto :END_MBINCompilerUPDATE

	REM :SIMPLE_MODE1
	REM echo.
	REM REM echo.^>^>^> %_bB% Calling MBINCompilerDownloader.bat: getting latest MBINCompiler from Web
	REM echo.^>^>^> Getting latest MBINCompiler from Web...

	:RETRY_MBINCompiler
	CALL MBINCompilerDownloader.bat

	REM :CONTINUE_EXECUTION2
	if not exist "MBINCompiler.exe" (
		REM Del /f /q /s ".\MBINCompilerDownloader\URLPrevious.txt" 1>NUL 2>NUL
		REM goto :RETRY_MBINCompiler
		echo.***** MISSING MBINCompiler.exe: AMUMSS cannot work.  Terminating batch until corrected.
		echo.***** Probable cause: anti-virus, make exception to AMUMSS main folder and restore blocked files
		echo.***** or: problem with internet
		pause
		exit
	)
	
	Del /f /q /s "MBINCompilerVersion.txt" 1>NUL 2>NUL
	MBINCompiler.exe version -q >>"MBINCompilerVersion.txt"
	set /p _bMBINCompilerVersion=<MBINCompilerVersion.txt
	
	if [%_bMBINCompilerVersion%]==[] (
		echo.
		echo.^>^>^> [ERROR] MBINCompiler.exe cannot execute.  Probable cause: .net5 DESKTOP runtime x64 is missing%_zDEFAULT%
		echo.
		echo.  %_zBLACKonYELLOW%                                                                                   %_zDEFAULT%
		echo.  %_zBLACKonYELLOW% .NET 5 Desktop latest version MUST be installed before continuing                 %_zDEFAULT%
		echo.  %_zBLACKonYELLOW%                                                                                   %_zDEFAULT%
		echo.  %_zBLACKonYELLOW%    goto 'https://dotnet.microsoft.com/en-us/download/dotnet/5.0'                  %_zDEFAULT%
		echo.  %_zBLACKonYELLOW%    and select the '.NET Desktop Runtime 5.?.?? Windows x64'                       %_zDEFAULT%
		echo.  %_zBLACKonYELLOW%                                                                                   %_zDEFAULT%
		echo.
		echo|set /p="[ERROR] MBINCompiler.exe cannot execute.  Probable cause: .net5 x64 DESKTOP runtime is missing">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		echo.>>"..\REPORT.lua"
		pause
		exit
	)
	
	REM if NOT "%_bMBINCompilerVersionOLD%"=="%_bMBINCompilerVersion%" (
		REM echo.
		REM echo.^>^>^> Your new MBINCompiler is version: %_zGREEN%%_bMBINCompilerVersion%%_zDEFAULT%
		REM echo|set /p="%_INFO% Your new MBINCompiler is version: %_bMBINCompilerVersion%">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
		REM echo.>>"..\REPORT.lua"
	REM REM ) else (
		REM REM echo.
		REM REM echo.^>^>^> MBINCompiler is still version: %_zGREEN%%_bMBINCompilerVersion%%_zDEFAULT%
	REM )
	rem ****************************  end MBINCompiler.exe update section  ******************************

	:END_MBINCompilerUPDATE
	EXIT /B

rem --------------------------------------------
:CHECK_ExtraFilesToInclude
	rem --------------  Check if ExtraFilesToInclude are present ------------------------------
	SET _bExtraFiles=0

	FOR /r "%~dp0\ModExtraFilesToInclude" %%G in (*.*) do ( 
		SET /A _bExtraFiles=_bExtraFiles+1
	)
	SET _bExtraFilesInPAK=N
	if %_bExtraFiles% EQU 0 goto :END_CHECK_ExtraFilesToInclude

	if [%-UseExtraFilesInPAK%]==[ASK] goto :AskUseExtraFilesInPAK
	if [%-UseExtraFilesInPAK%]==[] goto :AskUseExtraFilesInPAK
	if [%-UseExtraFilesInPAK%]==[Y] (
		SET _bExtraFilesInPAK=Y
		goto :END_CHECK_ExtraFilesToInclude
	)
	if [%-UseExtraFilesInPAK%]==[N] goto :END_CHECK_ExtraFilesToInclude

	echo.==^> BAD OPTION VALUE for '-UseExtraFilesInPAK' [%-UseExtraFilesInPAK%], please correct!
	echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
	pause

	:AskUseExtraFilesInPAK
	echo.
	echo.^>^>^> There are Extra Files in the 'main' ModExtraFilesToInclude folder.  If you INCLUDE them...
	echo.^>^>^>      *****  Remember, these files will OVERWRITE any existing ones in the created PAKs  *****

	CHOICE /c:YN /m " %_zBLACKonYELLOW% ??? Do you want to include them in the created PAK %_zDEFAULT%"
	echo.
	if %ERRORLEVEL% EQU 2 goto :END_CHECK_ExtraFilesToInclude
	if %ERRORLEVEL% EQU 1 SET _bExtraFilesInPAK=Y

	echo|set /p="%_INFO% Extra Files in the 'main' ModExtraFilesToInclude folder will be included in the PAKs">>"REPORT.lua" & echo.>>"REPORT.lua"
	echo.>>"REPORT.lua"

	:END_CHECK_ExtraFilesToInclude
	EXIT /B

rem --------------------------------------------
:PAK_LISTsCREATION
	rem **************************  start PAK_LISTs creation section  ********************************
	echo.
	echo.^>^>^> Checking NMS PCBANKS PAK file list existence...

	REM check if we need to re-create the list
	CALL GetDateTimePCBANKS.bat

	if exist "pak_list.txt" SET _gPAKlistExist=y

	if defined _gPAKlistExist goto :Ask

	echo.
	echo.^>^>^> [INFO] NMS PCBANKS was updated...
	echo.
	set _bNMSUpdated=1

	:DoUpdate
	CALL PSARC_LIST_PAKS.BAT
	REM if defined _mVERBOSE (
		REM Call :LuaEndedOkREMOVE
		REM %_mLUA% FormatPAKlist.lua
		REM Call :LuaEndedOk
	REM )

	goto :NoNeedToAsk

	:Ask
	if NOT exist "..\NMS_FULL_pak_list.txt" goto :DoUpdate

	REM if NOT defined _mDEBUG goto :NoNeedToAsk
	
	if [%-RecreatePAKList%]==[ASK] goto :PAK_LISTsCREATION_2
	if [%-RecreatePAKList%]==[] goto :PAK_LISTsCREATION_2
	if [%-RecreatePAKList%]==[N] (
		set _bRecreatePAKList=2
		goto :NoNeedToAsk
	)
	if [%-RecreatePAKList%]==[Y] (
		set _bRecreatePAKList=1
		goto :RecreatePAKLIST
	)
	
	echo.==^> BAD OPTION VALUE for '-RecreatePAKList' [%-RecreatePAKList%], please correct!
	echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
	pause
	
	:PAK_LISTsCREATION_2
	echo.
	REM echo.^>^>^> If there was a NMS update, it is recommended to recreate this list
	CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Do you want to RECREATE the NMS PAK file list %_zDEFAULT%"
	if %ERRORLEVEL% EQU 2 set _bRecreatePAKList=2
	if %ERRORLEVEL% EQU 1 set _bRecreatePAKList=1

	:RecreatePAKLIST
	if %_bRecreatePAKList% EQU 1 (
		echo.
		CALL PSARC_LIST_PAKS.BAT
		REM if defined _mVERBOSE (
			REM Call :LuaEndedOkREMOVE
			REM %_mLUA% FormatPAKlist.lua
			REM Call :LuaEndedOk
			REM )
	)

	:NoNeedToAsk
	SET _gPAKlistExist=
	SET _bRecreatePAKList=
	rem **************************  end PAK_LISTs creation section  ********************************
	EXIT /B

rem --------------------------------------------
:UNPACKEDtoEXML
	rem ******   In UNPACKEDtoEXML: Currently IN ModScript   ********
	echo.
	set "_bCurrentPath=%_bMASTER_FOLDER_PATH%ModScript\EXTRACTED_PAK\"
	
	REM echo._bDoingPAk is %_bDoingPAk%
	
	if DEFINED _bDoingPAk Del /f /q /s "REPORT_!_bPAKname!.txt" 1>NUL 2>NUL
	if DEFINED _bDoingPAk echo|set /p="REPORT for !_bPAKname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
	
	rem checking if extra files are present and say so in report
	rem just have psarc list the content to the report
	if DEFINED _bDoingPAk echo|set /p="">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
	REM if DEFINED _bDoingPAk echo|set /p="Pak content from psarc: ">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
	if DEFINED _bDoingPAk "..\MODBUILDER\psarc.exe" list "%_bPaknamePATH%" >>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
	if DEFINED _bDoingPAk echo|set /p="">>"REPORT_!_bPAKname!.txt"

	set _bNumberFilesNoVersionInfo=0
	set _bNumberFiles=0
	if [!_bCheckVersionOfFiles!]==[Y] (
		FOR /r ".\EXTRACTED_PAK\" %%G in (*.mbin.*) do (
			REM echo.With current MBINCompiler: %%G
			SET /A _bNumberFiles=_bNumberFiles+1
			set "_bG=%%G"
			set "_bNMSname=!_bG:%_bCurrentPath%=!"
			set _gMBINVersion=
			Del /f /q /s ".\EXTRACTED_PAK\bMBINVersion.txt" 1>NUL 2>NUL
			rem get MBINCompiler version that compiled this MBIN
			..\MODBUILDER\MBINCompiler.exe version -q "%%G">>".\EXTRACTED_PAK\bMBINVersion.txt"
			set /p _gMBINVersion=<".\EXTRACTED_PAK\bMBINVersion.txt"
			Del /f /q /s ".\EXTRACTED_PAK\bMBINVersion.txt" 1>NUL 2>NUL
			if "!_gMBINVersion!"=="0.0.0.0" (
				SET /A _bNumberFilesNoVersionInfo=_bNumberFilesNoVersionInfo+1
				echo.----- %_zRED%[NO VERSION INFO]%_zDEFAULT%    Never compiled: !_bNMSname!
				echo|set /p=".   [NO VERSION INFO]    Never compiled: !_bNMSname!">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
				if DEFINED _bDoingPAk echo|set /p=".   [NO VERSION INFO]    Never compiled: !_bNMSname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
			) else (
				if "!_gMBINVersion!"=="" (
					echo.----- %_zRED%[NO VERSION INFO]%_zDEFAULT%    Could not check version: !_bNMSname!
					echo|set /p=".   [NO VERSION INFO]    Could not check version: !_bNMSname!">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
					if DEFINED _bDoingPAk echo|set /p=".   [NO VERSION INFO]    Could not check version: !_bNMSname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
				) else (
					echo.----- [INFO] Compiled with version !_gMBINVersion!: !_bNMSname!
					echo|set /p="%_INFO%     Compiled with version !_gMBINVersion!: !_bNMSname!">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
					if DEFINED _bDoingPAk echo|set /p="%_INFO%     Compiled with version !_gMBINVersion!: !_bNMSname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
				)
			)
		)
	) else (
		FOR /r ".\EXTRACTED_PAK\" %%G in (*.mbin.*) do (
			REM echo.With current MBINCompiler: %%G
			SET /A _bNumberFiles=_bNumberFiles+1
			set "_bG=%%G"
			set "_bNMSname=!_bG:%_bCurrentPath%=!"
		)
	)
	
	echo.
	echo.%_zGREEN%^>^>^> %_bB% Current MBINCompiler.exe trying to decompile ALL .mbin... *** BE PATIENT ***%_zDEFAULT%
	echo.>>"..\REPORT.lua"
	echo|set /p="%_INFO%   Trying to decompile ALL .mbin with current MBINCompiler...">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	if DEFINED _bDoingPAk echo|set /p="%_INFO%   Trying to decompile ALL .mbin...">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"

	rem First we try our current MBINCompiler, extracting ALL to folder EXTRACTED_PAK
	REM THIS USED TO WORK
	REM ..\MODBUILDER\mbincompiler.exe convert -y -f -oEXML -d".\EXTRACTED_PAK" --exclude=";" --include="*.MBIN;*.MBIN.PC" ".\EXTRACTED_PAK" 1>NUL 2>NUL

	REM THIS CURRENTLY WORKS
	..\MODBUILDER\mbincompiler.exe convert -y -f -oEXML -d".\EXTRACTED_PAK" --exclude=";" --include="*.MBIN;*.MBIN.PC" ".\EXTRACTED_PAK" 1>NUL 2>NUL
	REM echo. Done A
	
	REM rem if none of the files decompiled then skip this
	REM why do this, even if so much faster, we will do them in the next step
	REM FOR /r ".\EXTRACTED_PAK\" %%G in (*.mbin.*) do (
		REM set "_bG=%%G"
		REM set "_bNMSname=!_bG:%_bCurrentPath%=!"

		REM set _gMBIN_FILE=%%G
		REM set _gMBIN_FILE=!_gMBIN_FILE:.MBIN.PC=.MBIN!
		REM set _gEXML_FILE=!_gMBIN_FILE:.MBIN=.EXML!
		
		REM if not exist !_gEXML_FILE! (
			REM REM echo. ====^> Not found file: !_gEXML_FILE!
			REM rem Then we try to extracts to folder EXTRACTED_PAK with the other MBINCompiler
			REM REM echo.     ====^> using Previous MBINCOMPILER with %%G
			REM ..\MODBUILDER\MBINCompiler.previous.exe "%%G" 1>NUL 2>NUL
		REM )
	REM )
REM echo. Done B

	SET _uOldMBIN=N

	SET _bNumberFilesDecompiled=0
	SET _bNumberFilesMissing=0
	SET _bNumberFilesCouldNotDecompile=0
	
	SET _bLastCompiler=
	SET _bBadLastCompiler=N

	FOR /r ".\EXTRACTED_PAK\" %%G in (*.mbin.*) do (
		echo.For !_bNMSname!
		set "_bG=%%G"
		set "_bNMSname=!_bG:%_bCurrentPath%=!"

		set _gMBIN_FILE=%%G
		set _gMBIN_FILE=!_gMBIN_FILE:.MBIN.PC=.MBIN!
		set _gEXML_FILE=!_gMBIN_FILE:.MBIN=.EXML!
		
		if exist !_gEXML_FILE! (
			echo.      [SUCCESS] Decompiled with current %_zGREEN%MBINCompiler.%_bMBINCompilerVersion%%_zDEFAULT%
			echo|set /p="%_INFO%     SUCCESS: Decompiled with current MBINCompiler.%_bMBINCompilerVersion%: !_bNMSname!">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p="%_INFO%     SUCCESS: Decompiled with current MBINCompiler.%_bMBINCompilerVersion%: !_bNMSname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
			SET /A _bNumberFilesDecompiled=_bNumberFilesDecompiled+1
		) else (
			REM we need to try all MBINCompiler.exe
			REM maybe we will get lucky
			REM echo.With other MBINCompilers: %%G
			echo.
			SET _uFound=N
			SET _bBadCompiler=N
			SET _bCurrentCompiler=

			if not [!_bLastCompiler!]==[] (	
				REM echo.%_zGREEN%^>^>^> %_bB% trying to decompile .mbin with last successful MBINCompiler...%_zDEFAULT%
				REM echo.
				
				if !_bBadLastCompiler!==Y (
					echo.%_zUpOneLineErase%%_zUpOneLineErase%%_zGREEN%   Trying !_bLastCompiler!%_zDEFAULT%
				) else (
					echo.%_zUpOneLineErase%%_zGREEN%   Trying !_bLastCompiler!%_zDEFAULT%
				)
				SET _gMBINVersion=!_bLastCompiler!
				SET _gMBINVersion=!_gMBINVersion:MBINCompiler.=!
				REM echo.----- [INFO] version [!_gMBINVersion!]
				
				REM rem these do not return MBINCompiler version info
				REM rem and ask to press a key
				REM SET _bBadCompiler=N
				REM if "!_gMBINVersion!"=="1.58.0" SET _bBadCompiler=Y
				REM if "!_gMBINVersion!"=="1.57.0" SET _bBadCompiler=Y
				REM if "!_gMBINVersion!"=="1.55.0" SET _bBadCompiler=Y
				REM if "!_gMBINVersion!"=="1.53.0" SET _bBadCompiler=Y
				REM if "!_gMBINVersion!"=="1.52.0" SET _bBadCompiler=Y
				REM if "!_gMBINVersion!"=="1.38.0" SET _bBadCompiler=Y
				
				if !_bBadLastCompiler!==Y (
					rem echo.%_zRED%Sorry, this version of MBINCompiler requires you to press any key...%_zDEFAULT%
					rem trying to extracts to folder EXTRACTED_PAK
					echo. & echo.|..\MODBUILDER\Extras\MBINCompiler_OldVersions\!_bLastCompiler! "%%G" 1>NUL 2>NUL
				) else (
					rem trying to extracts to folder EXTRACTED_PAK
					..\MODBUILDER\Extras\MBINCompiler_OldVersions\!_bLastCompiler! "%%G" 1>NUL 2>NUL
				)

			) else (
				echo. Last MBINcompiler unknown, trying them all...
			)
			
			if exist !_gEXML_FILE! (
				set _bCurrentCompiler=!_bLastCompiler!
				if !_uOldMBINCompilerFlag!==N (
					set _uOldMBINCompilerFlag=Y
					set _uOldMBIN=Y
				)
				if !_uFound!==N (
					SET _uFound=Y
					if !_bBadCompiler!==Y (
						set _zUOLE=%_zUpOneLineErase%
					)
					SET _bBadCompiler=N
				)
			) else (
echo. trying older versions of MBINCompiler...
echo.
				rem SET _bCurrentCompiler=
				for /f "tokens=*" %%H in ('dir /b /O:-N "..\MODBUILDER\Extras\MBINCompiler_OldVersions\*.exe"') do (
					if exist !_gEXML_FILE! (
						if !_uOldMBINCompilerFlag!==N (
							set _uOldMBINCompilerFlag=Y
							set _uOldMBIN=Y
						)
						if !_uFound!==N (
							SET _uFound=Y
							set _bLastCompiler=!_bCurrentCompiler!
							if !_bBadCompiler!==Y (
								set _zUOLE=%_zUpOneLineErase%
							)
							SET _bBadCompiler=N
						)
					) else (
						SET _bCurrentCompiler=%%~nH
						
						if !_bBadCompiler!==Y (
							echo.%_zUpOneLineErase%%_zUpOneLineErase%%_zGREEN%   Trying %%~nH%_zDEFAULT%
						) else (
							echo.%_zUpOneLineErase%%_zGREEN%   Trying %%~nH%_zDEFAULT%
						)
						SET _gMBINVersion=%%~nH
						SET _gMBINVersion=!_gMBINVersion:MBINCompiler.=!
						REM echo.----- [INFO] version [!_gMBINVersion!]
						
						rem these do not return MBINCompiler version info
						rem and ask to press a key
						SET _bBadCompiler=N
						if "!_gMBINVersion!"=="1.58.0" SET _bBadCompiler=Y
						if "!_gMBINVersion!"=="1.57.0" SET _bBadCompiler=Y
						if "!_gMBINVersion!"=="1.55.0" SET _bBadCompiler=Y
						if "!_gMBINVersion!"=="1.53.0" SET _bBadCompiler=Y
						if "!_gMBINVersion!"=="1.52.0" SET _bBadCompiler=Y
						if "!_gMBINVersion!"=="1.38.0" SET _bBadCompiler=Y
						set _bBadLastCompiler==!_bBadCompiler!
						
						if !_bBadCompiler!==Y (
							rem echo.%_zRED%Sorry, this version of MBINCompiler requires you to press any key...%_zDEFAULT%
							rem trying to extracts to folder EXTRACTED_PAK
							echo. & echo.|..\MODBUILDER\Extras\MBINCompiler_OldVersions\%%~nH "%%G" 1>NUL 2>NUL
						) else (
							rem trying to extracts to folder EXTRACTED_PAK
							..\MODBUILDER\Extras\MBINCompiler_OldVersions\%%~nH "%%G" 1>NUL 2>NUL
						)
					)
				)
			)
			if !_uFound!==Y (
				echo.%_zUpOneLineErase%!_zUOLE!      [SUCCESS] Decompiled with ------^> %_zRED%!_bCurrentCompiler!%_zDEFAULT%
				echo|set /p="%_INFO%     SUCCESS: Decompiled with ------> !_bCurrentCompiler!: !_bNMSname!">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
				if DEFINED _bDoingPAk echo|set /p="%_INFO%     SUCCESS: Decompiled with ------> !_bCurrentCompiler!: !_bNMSname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
				SET /A _bNumberFilesDecompiled=_bNumberFilesDecompiled+1
			) else (
				set _bLastCompiler=
				SET /A _bNumberFilesCouldNotDecompile=_bNumberFilesCouldNotDecompile+1
				echo.%_zUpOneLineErase%!_zUOLE!%_zRED%      [SORRY] No MBINCompiler could decompile this file%_zDEFAULT%
				echo|set /p="%_INFO%       SORRY:                 No MBINCompiler could decompile this file: !_bNMSname!">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
				if DEFINED _bDoingPAk echo|set /p="%_INFO%       SORRY:                 No MBINCompiler could decompile this file: !_bNMSname!">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
			)
			set _zUOLE=
			
			Del /f /q /s "..\MODBUILDER\Extras\MBINCompiler_OldVersions\*.log" 1>NUL 2>NUL				
			REM )
		)
	)
	
	echo.
	echo.%_zGREEN%^>^>^> Decompiled %_bNumberFilesDecompiled% / %_bNumberFiles% files%_zDEFAULT%
	
	echo|set /p="%_INFO%   Decompiled %_bNumberFilesDecompiled% / %_bNumberFiles% files">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
	if DEFINED _bDoingPAk echo|set /p="%_INFO%   Decompiled %_bNumberFilesDecompiled% / %_bNumberFiles% files">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"

	rem calculate the number of scripts in this pak
	SET _bNumScriptsInPak=0
	FOR %%G in ("..\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\*.lua") do ( 
		SET /A _bNumScriptsInPak=_bNumScriptsInPak+1
	)

	if %_bNumScriptsInPak% GTR 0 (
		if %_bNumScriptsInPak% EQU 1 (
			echo.%_zGREEN%^>^>^> Copied one script file %_zDEFAULT%
			echo|set /p="%_INFO%   Copied one script file">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p="%_INFO%   Copied one script file">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
		) else (
			echo.%_zGREEN%^>^>^> Copied %_bNumScriptsInPak% script files %_zDEFAULT%
			echo|set /p="%_INFO%   Copied %_bNumScriptsInPak% script files">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p="%_INFO%   Copied %_bNumScriptsInPak% script files">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
		)
	)
	
	if not exist ".\EXMLFILES_PAK" (
		mkdir "EXMLFILES_PAK" 2>NUL
	)

	if %_bNumberFilesMissing% GTR 0 (
		if %_bNumberFilesMissing% GTR 1 (
			echo.%_zRED%^>^>^> [WARNING] %_bNumberFilesMissing% files are missing the right version of MBINCompiler, please report%_zDEFAULT%
			
			echo|set /p=".   [WARNING] %_bNumberFilesMissing% files are missing the right version of MBINCompiler, please report">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p=".   [WARNING] %_bNumberFilesMissing% files are missing the right version of MBINCompiler, please report">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
		) else (
			echo.%_zRED%^>^>^> [WARNING] One file is missing the right version of MBINCompiler, please report%_zDEFAULT%
			
			echo|set /p=".   [WARNING] One file is missing the right version of MBINCompiler, please report">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p=".   [WARNING] One file is missing the right version of MBINCompiler, please report">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
		)
	)

	if %_bNumberFilesCouldNotDecompile% GTR 0 (
		if %_bNumberFilesCouldNotDecompile% GTR 1 (
			echo.%_zRED%^>^>^> [WARNING] %_bNumberFilesCouldNotDecompile% cannot be decompiled using any MBINCompiler%_zDEFAULT%
			
			echo|set /p=".   [WARNING] %_bNumberFilesCouldNotDecompile% cannot be decompiled using any MBINCompiler">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p=".   [WARNING] %_bNumberFilesCouldNotDecompile% cannot be decompiled using any MBINCompiler">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
		) else (
			echo.%_zRED%^>^>^> [WARNING] One file cannot be decompiled using any MBINCompiler%_zDEFAULT%
			
			echo|set /p=".   [WARNING] One file cannot be decompiled using any MBINCompiler">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
			if DEFINED _bDoingPAk echo|set /p=".   [WARNING] One file cannot be decompiled using any MBINCompiler">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
		)
	)
	
	if [!_bCheckVersionOfFiles!]==[Y] (
		if %_bNumberFilesNoVersionInfo% GTR 0 (
			REM echo.
			if %_bNumberFilesNoVersionInfo% GTR 1 (
				echo.%_zRED%^>^>^> [WARNING] %_bNumberFilesNoVersionInfo% files have NO version information%_zDEFAULT%
				
				echo|set /p=".   [WARNING] %_bNumberFilesNoVersionInfo% files have NO version information">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
				if DEFINED _bDoingPAk echo|set /p=".   [WARNING] %_bNumberFilesNoVersionInfo% files have NO version information">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
			) else (
				echo.%_zRED%^>^>^> [WARNING] One file has NO version information%_zDEFAULT%
				
				echo|set /p=".   [WARNING] One file has NO version information">>"..\REPORT.lua" & echo.>>"..\REPORT.lua"
				if DEFINED _bDoingPAk echo|set /p=".   [WARNING] One file has NO version information">>"REPORT_!_bPAKname!.txt" & echo.>>"REPORT_!_bPAKname!.txt"
			)
		) else (
			echo.>>"..\REPORT.lua"	
		)
	) else (
		echo.>>"..\REPORT.lua"	
	)
	
	rem *******************  if any EXML files in EXTRACTED_PAK, move them to EXMLFILES_PAK
	echo.
	echo.%_zGREEN%^>^>^> Moving EXML files to ModScript\EXMLFILES_PAK folder...%_zDEFAULT%
	FOR /r "EXTRACTED_PAK" %%G in (*.exml) do (
		set _gEXML_FILE=%%G
		set _gEXML_FILE=!_gEXML_FILE:EXTRACTED_PAK=EXMLFILES_PAK!
		rem NOTE: move command did not work
		xcopy /y /h /v "%%G" "!_gEXML_FILE!*" 1>NUL 2>NUL
	)

	if DEFINED _bDoingPAk echo.
	if DEFINED _bDoingPAk echo.^>^>^> Saving extracted files to UNPACKED_DECOMPILED_PAKs folder...

	rem doing it in two step so we can use the pak info in ModScript with a .lua
	rem when one exist (inside the pak or from the user)
	if DEFINED _bDoingPAk ROBOCOPY /e /j "EXMLFILES_PAK" "..\UNPACKED_DECOMPILED_PAKs\!_bPAKname!\EXMLFILES_PAK" 1>NUL 2>NUL

	if DEFINED _bDoingPAk ROBOCOPY /j "EXTRACTED_PAK" "..\UNPACKED_DECOMPILED_PAKs\!_bPAKname!" "*.lua" 1>NUL 2>NUL
	Del /f /q /s ".\EXTRACTED_PAK\*.exml" 1>NUL 2>NUL
	rem *******************  END: any EXML files in EXTRACTED_PAK, move them to EXMLFILES_PAK
	
	rem copy this pak report to its folder
	if DEFINED _bDoingPAk ROBOCOPY /j "." "..\UNPACKED_DECOMPILED_PAKs\!_bPAKname!" "REPORT_!_bPAKname!.txt" 1>NUL 2>NUL
	
	SET /A _bGNumberFiles=_bGNumberFiles+!_bNumberFiles!
	SET /A _bGNumberFilesDecompiled=_bGNumberFilesDecompiled+!_bNumberFilesDecompiled!
	if [!_bCheckVersionOfFiles!]==[Y] (
		SET /A _bGNumberFilesNoVersionInfo=_bGNumberFilesNoVersionInfo+!_bNumberFilesNoVersionInfo!
	)
	SET /A _bGNumberFilesMissing=_bGNumberFilesMissing+!_bNumberFilesMissing!
	SET /A _bGNumScriptsInPak=_bGNumScriptsInPak+!_bNumScriptsInPak!
	
	EXIT /B

rem --------------------------------------------
:GET_CURRENT_EXML_for_COMPARISON
	rem ******   Currently IN ModScript   ********
	REM @echo on
	echo.

	if not exist EXMLFILES_CURRENT (
		mkdir EXMLFILES_CURRENT 2>NUL
	) else (
		CALL :Cleaning_EXMLFILES_CURRENT
		mkdir EXMLFILES_CURRENT 2>NUL
	)
	
	rem ******   Currently IN ModScript\EXMLFILES_CURRENT   ********
	cd EXMLFILES_CURRENT
	
	echo.%_zRED%=============================%_zDEFAULT%
	FOR /r "%~dp0\ModScript\EXTRACTED_PAK" %%G in (*.MBIN) do ( 
		echo.Getting current EXML for %%~nxG

		set _gMBIN_FILE=%%G
		set _gMBIN=!_gMBIN_FILE:.MBIN.PC=.MBIN!
		set _gEXML_FILE=!_gMBIN:.MBIN=.EXML!
		if not exist "!_gEXML_FILE!" (
			mkdir "ModScript\EXTRACTED_SOURCE"

			rem ******   Currently IN MODBUILDER   ********
			cd ..\..\MODBUILDER
			
			CALL :EXTRACT_this !_gMBIN_FILE!
			
			rem ******   Currently IN ModScript   ********
			cd ..\ModScript
			
			echo.^>^>^> %_gG% MBINCompiler working...
			echo.----- [INFO] %%G
			..\MODBUILDER\MBINCompiler.exe "!CD!\EXTRACTED_SOURCE\%%G" -y -f -d "!CD!\EXMLFILES_CURRENT\%%G\.." 1>NUL 2>NUL
			Call :LuaEndedOkREMOVE
			set location=bz17
			..\MODBUILDER\%_mLUA% ..\MODBUILDER\CheckMBINCompilerLOG.lua "..\\" "..\\MODBUILDER\\" "Decompiling %%G"
			Call :LuaEndedOk
			echo.
			REM echo."!CD!\DECOMPILED\!_gEXML_FILE!"
			REM echo."..\MOD\!_gEXML_FILE!*"
			REM xcopy /s /y /h /v "!CD!\DECOMPILED\!_gEXML_FILE!" "..\MOD\!_gEXML_FILE!*" 1>NUL 2>NUL
		)
	)
	echo.%_zRED%=============================%_zDEFAULT%
	
	rem ******   Currently IN ModScript   ********
	cd..
	CALL :Cleaning_EXTRACTED_SOURCE
	
	EXIT /B

rem --------------------------------------------
:EXTRACT_this
	rem ******   Currently IN MODBUILDER   ********
	
	Call :LuaEndedOkREMOVE
	set location=bz16
	%_mLUA% LocateMOD_PAK_SOURCE.lua %1
	Call :LuaEndedOk

	FOR /F "tokens=*" %%H in (..\ModScript\MOD_PAK_SOURCE.txt) do (
		if not exist "..\ModScript\EXTRACTED_SOURCE\%%H" (
			REM echo.
			echo.^>^>^> Getting %%H from NMS PCBANKS folder. Please wait...
			xcopy /s /y /h /v "%_bNMS_PCBANKS_FOLDER%%%H" "%_bMASTER_FOLDER_PATH%ModScript\EXTRACTED_SOURCE\" >NUL
		)
		REM echo.^>^>^> Looking to Extract required MBIN/EXML from %%H...
		..\psarc.exe extract "%_bNMS_PCBANKS_FOLDER%%%H" "%1" --to="%_bMASTER_FOLDER_PATH%ModScript\EXTRACTED_SOURCE" -y 1>NUL 2>NUL
		if exist "%_bMASTER_FOLDER_PATH%ModScript\EXTRACTED_SOURCE\%1" (
			echo.^>^>^> Extracted MBIN/EXML from %%H...
			REM echo.^>^>^> %_gG% Found required MBIN
			goto :ENDEXTRACT
		)
	)
	:ENDEXTRACT_this
	EXIT /B
	
rem --------------------------------------------
:CheckBankSignatures
	echo. [%~2]
	echo. [%1] [!%1!]
	if exist "%~2" (
		echo. Does exist
		set "%1=Y"
	) else (
		echo. Does not exist
	)
	:ENDCheckBankSignatures
	exit /B
	
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
	
	:SkipSubtract
	if !_Lines! GTR 10000 (
		echo.
		echo.  %_zGREEN%We have !_Lines! lines to process for Conflicts, it could add a few minutes to complete...%_zDEFAULT%
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
	SET /A _bGConflictLines=_bGConflictLines+!_Lines!
	:END_HOW_MANY_LINES
	exit /B

rem --------------------------------------------
:CONFLICTDETECTION
	rem -------------   Conflict detection or not?  -------------
	if [%-CheckForModConflicts%]==[ASK] goto :ASK_CONFLICTDETECTION
	if [%-CheckForModConflicts%]==[] goto :ASK_CONFLICTDETECTION
	if [%-CheckForModConflicts%]==[N] (
		set _bCheckMODSconflicts=2
		goto :ENDCONFLICTDETECTION
	)
	if [%-CheckForModConflicts%]==[Y] (
		set _bCheckMODSconflicts=1
		goto :ENDCONFLICTDETECTION
	)
	if [%-CheckForModConflicts%]==[MODS] (
		set _bCheckMODSconflicts=3
		goto :ENDCONFLICTDETECTION
	)
	if [%-CheckForModConflicts%]==[M] (
		set _bCheckMODSconflicts=3
		goto :ENDCONFLICTDETECTION
	)
	if [%-CheckForModConflicts%]==[SCRIPTS] (
		set _bCheckMODSconflicts=4
		goto :ENDCONFLICTDETECTION
	)
	if [%-CheckForModConflicts%]==[S] (
		set _bCheckMODSconflicts=4
		goto :ENDCONFLICTDETECTION
	)

	echo.==^> BAD OPTION VALUE for '-CheckForModConflicts' [%-CheckForModConflicts%], please correct!
	echo.==^> see 'README-OPTIONS_DEFINITIONS.txt' for proper OPTION definitions
	pause

	:ASK_CONFLICTDETECTION
	echo.
	CHOICE /c:ynms /m " %_zBLACKonYELLOW% ??? Would you like to check your NMS MODS for conflict ('Y'es, 'N'o, in 'M'ODS folder or 'S'cripts folder only)? %_zDEFAULT%"
	if %ERRORLEVEL% EQU 4 set _bCheckMODSconflicts=4
	if %ERRORLEVEL% EQU 3 set _bCheckMODSconflicts=3
	if %ERRORLEVEL% EQU 2 set _bCheckMODSconflicts=2
	if %ERRORLEVEL% EQU 1 set _bCheckMODSconflicts=1
	:ENDCONFLICTDETECTION
	EXIT /B

rem --------------------------------------------
