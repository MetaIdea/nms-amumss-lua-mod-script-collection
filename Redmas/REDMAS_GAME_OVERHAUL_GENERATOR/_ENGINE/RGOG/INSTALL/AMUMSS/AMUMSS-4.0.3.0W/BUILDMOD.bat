@echo off
cd /D "%~dp0"

SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS

set "_BMver=v1.5"
REM echo.%_BMver%
set _mOK=Y

rem https://stackoverflow.com/questions/3973824/windows-bat-file-optional-argument-parsing/8162578#8162578
rem let us set default options value here
rem the order of definition is irrelevant

rem these defaults can be overridden by calling like: BUILDMOD.bat -CombineModPak N -CopyToGamefolder NONE
rem     BETTER YET: USE BUILDMOD_AUTO.bat for easy control of the OPTIONS

rem     SEE 'README-OPTIONS_DEFINITIONS.txt' for OPTION definitions

rem  >>>>>>>>>>>>>>  DO NOT EVER MODIFY THIS LINE BELOW, modify BUILDMOD_AUTO.bat instead  <<<<<<<<<<<<<<<<<<
set "options=-AutoUpdateMBinCompiler:"Y" -CheckForModConflicts:"Y" -CLEANLOG:"Y" -CombinedModType:"ASK" -CombineModPak:"ASK" -CopyToGamefolder:"ASK" -DEV_MODE:"ASK" -DoConfigGlobal:"ASK" -GameVersion:"ASK" -IncludeLuaScriptInPak:"Y" -IndividualModPakType:"P" -MAPFILETREE:"LUAPLUS" -MAPFILETREEFORCE:"N" -ReCreateMapFileTree:"N" -RecreatePAKList:"N" -SerializeScript:"N" -SHOWEXTRASECTIONS:"N" -SHOWOPTIONS:"N" -SHOWSECTIONS:"Y" -SOUND:"Y" -UseColors:"Y" -UseExtraFilesInPAK:"ASK" -UseLuaScriptInPak:"ASK""
rem  >>>>>>>>>>>>>>  DO NOT EVER MODIFY THIS LINE ABOVE, modify BUILDMOD_AUTO.bat instead  <<<<<<<<<<<<<<<<<<

for %%O in (%options%) do (for /f "tokens=1,* delims=:" %%A in ("%%O") do (set "%%A=%%~B"))
:loop
if not "%~1"=="" (
  set "test=!options:*%~1:=! "
  if "!test!"=="!options! " (
      echo. Error: Invalid option %~1
  ) else if "!test:~0,1!"==" " (
      set "%~1=1"
  ) else (
      setlocal disableDelayedExpansion
      set "val=%~2"
      call :escapeVal
      setlocal enableDelayedExpansion
	  CALL :UCase val val
      for /f delims^=^ eol^= %%A in ("!val!") do endlocal&endlocal&set "%~1=%%A" !
      shift /1
  )
  shift /1
  goto :loop
)
goto :endArgs

:escapeVal
set "val=%val:^=^^%"
set "val=%val:!=^!%"
exit /b

:endArgs
if [%-SHOWOPTIONS%]==[Y] (
	set -
	echo.
)

rem To get the value of a single parameter, just remember to include the `-`
REM echo The value of -CopyToGamefolder is: !-CopyToGamefolder!

if [%-UseColors%]==[N] goto :SKIP_COLORS

rem turn colors ON for win 10 1903 and before
reg add HKCU\Console /V VirtualTerminalLevel /T REG_DWORD /D 0x00000001 /F /reg:64 1>NUL 2>NUL
rem RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

REM enable color output
for /f "tokens=2*" %%a in ('Reg Query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set "CurrentBuildHex=%%~b"
set /a _bCurrentBuildDec=%CurrentBuildHex%

rem nothing to do to get colors for > win 10 1803 (18362)
REM if %_bCurrentBuildDec% LEQ 18362 (
	if %_bCurrentBuildDec% LEQ 7601 (
		rem for win 7 and before, use ansicon.exe instead
		.\MODBUILDER\ansicon_x64\ansicon.exe -p 1>NUL 2>NUL
		set _ansicon=*
	REM ) else (
		REM rem turn colors ON for win 10 1903 and before
		REM reg add HKEY_CURRENT_USER\Console /v VirtualTerminalLevel /t REG_DWORD /d 0x00000001 /f 1>NUL 2>NUL
	)
REM )

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
set _zBLACKonYELLOW=[7;93m

set _zINVERSE=[7m
set _zDEFAULT=[0m

set _zUpOneLineErase=[F[K
rem set _zBGintense=[4m
set _zBGintense=[100m
rem END: For win 7 to use colors also

:SKIP_COLORS
Del /f /q "log.lua" 1>NUL 2>NUL

if not exist "MODBUILDER\UpdatePackage" (
	mkdir "MODBUILDER\UpdatePackage\" 2>NUL
) else (
	Del /f /q /s "MODBUILDER\UpdatePackage\*.*" 1>NUL 2>NUL
)

if not exist "MODBUILDER\UpdatePackage_CONTENT" (
	mkdir "MODBUILDER\UpdatePackage_CONTENT\" 2>NUL
) else (
	Del /f /q /s "MODBUILDER\UpdatePackage_CONTENT\*.*" 1>NUL 2>NUL
)

if exist "MODBUILDER\Development_path.txt" (
	set _dev=Y
	echo. xxxx _dev is active xxxx
)

set /p _CurrentVersion=<MODBUILDER\AMUMSSVersion.txt 1>NUL 2>NUL

REM if defined _dev set _CurrentVersion=4.0.0.4W

if exist "MODBUILDER\AMUMSSMasterVersion.txt" (
	set /p _MasterVersion=<MODBUILDER\AMUMSSMasterVersion.txt 1>NUL 2>NUL
) else (
	set "_MasterVersion=%_CurrentVersion%"
	echo|set /p="!_MasterVersion!">"MODBUILDER\AMUMSSMasterVersion.txt"
)

echo.
echo.  MasterVersion = [%_MasterVersion%]
echo. CurrentVersion = [%_CurrentVersion%]
echo.

if defined _dev (
	set /p myPath=<MODBUILDER\Development_path.txt 1>NUL 2>NUL
) else (
	set "myPath=https://raw.githubusercontent.com/HolterPhylo/AMUMSS/main/AMUMSS/MODBUILDER/UPDATE/"
)
set "myPathCUP_url=!myPath!CreatedUpdatePackage.!_CurrentVersion:W=!.pak"
rem like: https://raw.githubusercontent.com/HolterPhylo/AMUMSS/main/AMUMSS/MODBUILDER/UPDATE/CreatedUpdatePackage.3.9.5.92.pak
rem echo.%myPathCUP_url%
set _curlpath=.\MODBUILDER\MBINCompilerDownloader\
if exist %SYSTEMROOT%\system32\curl.exe (
	set _curlExist=*
	REM echo.       **** windows curl.exe exist ****
	set _curlpath=%SYSTEMROOT%\system32\
)

%_curlpath%curl.exe -s --ssl-no-revoke "!myPathCUP_url!" >MODBUILDER/UpdatePackage/UpdatePackage.pak

set /p _packageExist=<"MODBUILDER\UpdatePackage\UpdatePackage.pak" 1>NUL 2>NUL
rem [404: Not Found]
rem echo.%_packageExist%
set _packageExist=%_packageExist:404: =%

if ["%_packageExist%"]==["Not Found"] (
	echo. ===^> %_curlExist%%_ansicon%No further update currently available
) else (
	echo. ===^> %_curlExist%%_ansicon%update available
)

if ["%_packageExist%"]==["PSAR"] (
	echo. ===^> update package is valid
	set "_AMUMSS_PATH=!CD!"
	
	if defined _dev (
		set "_AMUMSS_PATH=!CD!\MODBUILDER\UpdatePackage_CONTENT"
	)
	
	cd MODBUILDER
	set "_MODBUILDER_PATH=!CD!"
	
	psarc.exe extract "UpdatePackage/UpdatePackage.pak" "MODBUILDER/AMUMSSVersion.txt" --to="!_MODBUILDER_PATH!\UpdatePackage_CONTENT" -y >nul
	cd ..
	
	set /p _packageVersion=<"MODBUILDER\UpdatePackage_CONTENT\MODBUILDER\AMUMSSVersion.txt" 1>NUL 2>NUL
	
	if not [!_CurrentVersion!]==[!_packageVersion!] (
		echo. ===^> New version available [!_packageVersion!]

		echo.
		CHOICE /c:yn /m " %_zBLACKonYELLOW% ??? Would you like to UPDATE AMUMSS version (recommended) %_zDEFAULT%"
		if !ERRORLEVEL! EQU 2 goto :CancelledByUser

		cd MODBUILDER
		psarc.exe extract "UpdatePackage/UpdatePackage.pak" --to="!_AMUMSS_PATH!" -y >nul
		cd ..

		set /p _UpdatedVersion=<"MODBUILDER\AMUMSSVersion.txt" 1>NUL 2>NUL

		if defined _dev (
			set /p _UpdatedVersion=<"MODBUILDER\UpdatePackage_CONTENT\MODBUILDER\AMUMSSVersion.txt" 1>NUL 2>NUL
		)

		if [!_packageVersion!]==[!_UpdatedVersion!] (
			echo. ===^> Update completed successfully, see README-What's_new.txt for details
			set "_updateDone=Y"

			FOR /F "delims=" %%G in (MODBUILDER\Delete_this.txt) do (
				if exist "%%G" (
					Del /f /q /s "%%G" 1>NUL 2>NUL
					RD "%%G" 1>NUL 2>NUL
				)
			)

			echo.
			echo. %_zBLACKonYELLOW% A NEW update may exist, re-start BUILDMOD.bat to check %_zDEFAULT%
			pause
			start "" MODBUILDER\buildmod_update.bat
			exit
		)
	) else (
		echo. ===^> update already installed
	)
)		
goto :RUN

:CancelledByUser
echo. ===^> UPDATE cancelled by user

:RUN
echo. ===^> here we go...
echo.
start /b "" bzrun.bat 2>&1 | MODBUILDER\wtee.exe log.lua

if [%-CLEANLOG%]==[N] goto :ENDING

rem needs to be standing alone
echo. Cleaning log.lua...
set "command=Log_file_cleaner.bat"
START /b "" /MIN "%command%"


:ENDING
goto :eof
rem *****************************************************************************************
rem               --------------------- WE ARE DONE ---------------------
rem *****************************************************************************************

rem --------------------------------------------
rem subroutine section starts below

rem --------------------------------------------
rem https://www.robvanderwoude.com/battech_convertcase.php
:LCase
:UCase
	:: Converts to upper/lower case variable contents
	:: Syntax: CALL :UCase _VAR1 _VAR2
	:: Syntax: CALL :LCase _VAR1 _VAR2
	:: _VAR1 = Variable NAME whose VALUE is to be converted to upper/lower case
	:: _VAR2 = NAME of variable to hold the converted value
	:: Note: Use variable NAMES in the CALL, not values (pass "by reference")

	SET _UCase=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
	REM SET _LCase=a b c d e f g h i j k l m n o p q r s t u v w x y z
	SET _Lib_UCase_Tmp=!%1!
	IF /I "%0"==":UCase" SET _Abet=%_UCase%
	REM IF /I "%0"==":LCase" SET _Abet=%_LCase%
	FOR %%Z IN (%_Abet%) DO SET _Lib_UCase_Tmp=!_Lib_UCase_Tmp:%%Z=%%Z!
	SET %2=%_Lib_UCase_Tmp%
	exit /b
