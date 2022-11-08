@echo off
SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS
pushd "%~dp0"

set _sysDrive=%SYSTEMDRIVE%
set _bSystem32=%SYSTEMROOT%\system32

title AMUMSS_install

SET _bNumberOK=0

echo.  TESTING AMUMSS Install v1.2.6

echo.
echo. sysDrive = [%_sysDrive%]
echo. System32 = [%_bSystem32%]
echo.

echo. Re-run this batch file until you see the message:   [READY TO GO...]

echo.
echo. ^>^>^> NOTE: a 'reboot' is sometimes required after making AV exceptions
echo.

echo.  ^>^>^> we are in [%~dp0]
pause

echo.
echo.  - Is MODBUILDER accessible?
if not exist "!CD!\MODBUILDER" (
	echo.     - folder MODBUILDER does NOT exist or access is restricted
	echo.     - check AV exceptions ^(and restore when quarantined^)
	goto :ENDING
) else (
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
)

echo.
echo.  - Is lua.exe accessible?

set "_mLUA=Extras\lua_x64\bin\lua.exe"
MODBUILDER\%_mLUA% -e print(_VERSION)>temp.txt
set /p _bVLua=<temp.txt
set _bVersionLua=%_bVLua:~0,3%
if /I not ["!_bVersionLua!"]==["Lua"] (
	echo.     - lua.exe is NOT accessible from AMUMSS main folder
	echo.     - its path is MODBUILDER\Extras\lua_x64\bin\lua.exe
	echo.     - if it is not there: check AV exceptions ^(and restore when quarantined^)
	goto :ENDING
) else (
	echo.    version [!_bVLua!]
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
)	
Del /f /q "temp.txt" 1>NUL 2>NUL

echo.
echo.  - also from AMUMSS MODBUILDER folder...
cd MODBUILDER

%_mLUA% -e print(_VERSION)>temp.txt
set /p _bVLua=<temp.txt
set _bVersionLua=%_bVLua:~0,3%
if /I not ["!_bVersionLua!"]==["Lua"] (
	echo.     - lua.exe is NOT accessible from MODBUILDER folder
	echo.     - MODBUILDER folder could be read-only
	echo.     - check AV exceptions ^(and restore when quarantined^)
	goto :ENDING
) else (
	echo.    version [!_bVLua!]
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
)	
Del /f /q "temp.txt" 1>NUL 2>NUL
cd ..

echo.
echo.  - Is MODBUILDER\MBINCompilerDownloader accessible?
cd MODBUILDER\MBINCompilerDownloader 1>NUL 2>NUL
if %ERRORLEVEL% EQU 1 (
	echo.     - MODBUILDER\MBINCompilerDownloader folder is missing or access is restricted
	echo.     - check AV exceptions ^(and restore when quarantined^)
	goto :ENDING
) else (
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
)

echo.
echo.  - Is curl.exe accessible and functional?
echo.       one moment...

set _curlpath=
if exist %SYSTEMROOT%\system32\curl.exe (
	REM echo.       **** windows curl.exe exist ****
	set "_curlExist=OSversion of curl is used"
	set _curlpath=%SYSTEMROOT%\system32\
)

%_curlpath%curl.exe -s "https://github.com/HolterPhylo/AMUMSS/wiki">temp.txt
REM type temp.txt
set /p _bAns=<temp.txt
echo. %_curlExist%%_bAns%
set _bAnswer=%_bAns:~0,1%
if /I ["!_bAnswer!"]==[""] (
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
) else (
	echo.
	if defined _curlExist (
		echo.     - curl.exe can not access 'https://github.com/HolterPhylo/AMUMSS/wiki'
		echo.        - Copy link above and try to access in your web browser
	) else (
		echo.     - curl.exe is NOT accessible from AMUMSS main folder
	)
	echo.        - MBINCompilerDownloader folder could be read-only
	echo.        - check AV exceptions ^(and restore when quarantined^)
	goto :ENDING
)	
Del /f /q "temp.txt" 1>NUL 2>NUL
cd "%~dp0"

echo.
echo.  - Is '.NET 5 Desktop Runtime for x64' installed?
set "_bDotNet=.NET 5 unknown"

if exist "!_sysDrive!Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
	REM echo. === .NET 5 Desktop Runtime exist in !_sysDrive!
    set "_bDotNet=.NET 5 Desktop Runtime exist"
) else (
	dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
	MODBUILDER\%_mLUA% .\MODBUILDER\GetDotnetPath.lua
	set /p _bDotnetPath=<"MODBUILDER\DotnetPath.txt"
	if exist "!_bDotnetPath!\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
		echo.  === Found .NET 5 Desktop Runtime in !_bDotnetPath!
		set "_bDotNet=.NET 5 Desktop Runtime exist"
	)
)

echo.      %_bDotNet%
if ["%_bDotNet%"]==[".NET 5 unknown"] (
	dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
	echo.
	echo.NO  ^>^>^> '.NET 5 Runtime Desktop for x64' MUST be installed before continuing
	echo.                 IT MUST be .NET 5, no other version will do^^!
	echo.                      .NET 6 and above are NOT compatible
	echo.
	
	CHOICE /c:yn /m " ??? Press 'Y' to install .NET 5 Desktop Runtime on your machine, 'N' to exit "
	if !ERRORLEVEL! EQU 2 exit
	if !ERRORLEVEL! EQU 1 set _bInstallNET5=1

	if !_bInstallNET5! EQU 1 (
		echo.
		echo. Please follow the instructions if any
		echo.    downloading and installing...
		winget install --architecture x64 Microsoft.Dotnet.DesktopRuntime.5 1>NUL 2>NUL
		echo. Done^^!
	)	
	
	if exist "!_sysDrive!\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
		REM echo. === .NET 5 Desktop Runtime exist in !_sysDrive!
		set "_bDotNet=.NET 5 Desktop Runtime exist"
	) else (
		dotnet --list-runtimes>"MODBUILDER\DOTNET.txt"
		MODBUILDER\%_mLUA% .\MODBUILDER\GetDotnetPath.lua
		set /p _bDotnetPath=<"MODBUILDER\DotnetPath.txt"
		if exist "!_bDotnetPath!Program Files\dotnet\shared\Microsoft.WindowsDesktop.App\5.?.??" (
			echo.  === Found .NET 5 Desktop Runtime in !_bDotnetPath!
			set "_bDotNet=.NET 5 Desktop Runtime exist"
		)
	)
)

if ["%_bDotNet%"]==[".NET 5 unknown"] (
	echo.	
	echo.    Sorry, could not complete automatic install
	echo.
	echo.  goto:  https://dotnet.microsoft.com/en-us/download/dotnet/5.0
	echo.
	echo.      Download and install the 'x64 Intallers version for Windows'...
	echo.
	pause
	echo.
	echo. --- Currently you have these versions installed: ---
	type "MODBUILDER\DOTNET.txt"
	goto :ENDING
) else (
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
)

REM echo.
REM echo.  - Is MBINCompiler.exe accessible?
REM if exist "MODBUILDER\MBINCompiler.exe" (
	REM .\MODBUILDER\MBINCompiler.exe version -q>temp.txt
	REM set /p _bAnswer=<temp.txt
	REM echo.    version [!_bAnswer!]
	REM if [!_bAnswer!]==[] (
		REM echo.     - MISSING MBINCompiler.exe: EXECUTE BUILDMOD.bat until no more updates are offered
		REM echo.     - Or if .NET 5.0 is missing please install the latest .NET 5.0 DESKTOP Runtime for your system
		REM echo.     - make sure you install the x64 version
		REM goto :ENDING
	REM ) else (
		REM echo.OK
		REM SET /A _bNumberOK=_bNumberOK+1
	REM )
REM ) else (
	REM echo.     - MISSING MBINCompiler.exe: EXECUTE BUILDMOD.bat until no more updates are offered
	REM echo.     - Or if .NET 5.0 is missing please install the latest .NET 5.0 DESKTOP Runtime for your system
	REM echo.     - make sure you install the x64 version
	REM goto :ENDING
REM )

rem turn colors ON for win 10 1903 and before
reg add HKCU\Console /V VirtualTerminalLevel /T REG_DWORD /D 0x00000001 /F /reg:64 1>NUL 2>NUL

REM enable color output
for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set "CurrentBuildHex=%%~b"
set /a _bCurrentBuildDec=%CurrentBuildHex%

rem nothing to do to get colors for > win 10 1803 (18362)
if %_bCurrentBuildDec% LEQ 7601 (
	rem for win 7 and before, use ansicon.exe instead
	.\MODBUILDER\ansicon_x64\ansicon.exe -p 1>NUL 2>NUL
	set _ansicon=*
)

if defined _ansicon (
	echo.
	echo.  - Is MODBUILDER\ansicon_x64 accessible?
	cd MODBUILDER\ansicon_x64 1>NUL 2>NUL
	if %ERRORLEVEL% EQU 1 (
		echo.     - MODBUILDER\ansicon_x64 folder is missing or access is restricted
		echo.     - check AV exceptions ^(and restore when quarantined^)
		goto :ENDING
	) else (
		echo.OK
		SET /A _bNumberOK=_bNumberOK+1
	)
) else (
	echo.
	echo.  - Using Console colors?
	echo.OK
	SET /A _bNumberOK=_bNumberOK+1
)

:ENDING
if %_bNumberOK% EQU 7 (
	echo.
	echo. ALL TEST PASSED OK
) else (
	echo.
	echo. TEST FAILURE
	goto :FAILorNOT
)
cd "%~dp0"

echo.
pause

if defined _ansicon (
	echo.
	echo.  SUPPLEMENTAL TEST
	echo.  - Is ansicon.exe working?
	cd MODBUILDER\ansicon_x64 1>NUL 2>NUL
	ansicon.exe -p
)

echo.
echo.    ^>^>^> Setting colors...
REM allow color output
REM reg add HKEY_CURRENT_USER\Console /v VirtualTerminalLevel /t REG_DWORD /d 0x00000001 /f
set _zRED=[1;31m[1m
set _zGREEN=[1;32m[1m
set _zBLACKonYELLOW=[7;93m
set _zDEFAULT=[0m

REM echo.%_zGREEN%  AMUMSS  %_zDEFAULT%
REM echo.%_zRED%  This was a test  %_zDEFAULT%

CHOICE /c:YN /m ".      ??? Do you see [%_zGREEN%AMUMSS in green%_zDEFAULT%] and [%_zRED%This is a test in red%_zDEFAULT%]"
if %ERRORLEVEL% EQU 2 (
	echo.
	echo.     - Your system could be imcompatible with color output in the cmd window
	echo.       If this is the case you can turn OFF color
	echo.          by making OPTION [-UseColors] 'N' in BUILDMOD_AUTO.bat
	echo.          and use BUILDMOD_AUTO.bat instead of BUILDMOD.bat
	echo.       ^>^>^> Just adjust all the OPTIONS to your liking
	echo.
	echo.     - Or your AV may have blocked it, check AV exceptions ^(and restore when quarantined^)
	echo.
	echo.^>^>^> After that you are
	echo.
	echo.  READY TO GO...
) else (
	echo.
	echo. %_zBLACKonYELLOW% READY TO GO... %_zDEFAULT%
)
cd "%~dp0"

:FAILorNOT
popd

echo.
pause

