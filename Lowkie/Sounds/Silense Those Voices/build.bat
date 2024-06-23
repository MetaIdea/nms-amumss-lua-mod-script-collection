@echo off
setlocal EnableDelayedExpansion

if exist \AUDIO (
rmdir /s /q \AUDIO
)

Rem Load list of voice sounds
set idf=files\_ids_ex.txt 

Rem get max amount
for /f "tokens=2" %%o in ('findstr "##total=" %idf%') do set max=%%o
set /a done=%max%+1

Rem Loop through the list of sounds in the _ids_ex.txt file
Rem Add each number to the WW list.
Rem Add each line with a value to the "trascript" list
Rem Add each number to a list indicating SoundStatus.

for /l %%i in (1,1,%max%) do (
	for /f "tokens=2,3*" %%j in ('findstr "#%%i#" %idf%') do (
		set ww[%%i]=%%j
		if "%%l"=="" (
			set "transcript[%%i]=%%j"
		) else (
			set "transcript[%%i]=%%l"
		)
	)
	set SoundStatus[%%i]=Enabled
)

Rem now ready to accept user input
:menu
rem cls
echo.
echo.
echo  Toggle the audio on or off from the list
echo  below by entering the corresponding number
echo  on your keyboard followed by Enter:
echo.
echo  Precede your choice with a plus sign 
echo  to hear an audio sample in English
echo  (like this: +2)
echo.
echo.

Rem Loop through the 134 records printing the content
Rem this will show the Number, Indicate if disabled or not, 
Rem and show a textual description of the sound
for /l %%i in (1,1,%max%) do (
	echo  [%%i] [!SoundStatus[%%i]!] !transcript[%%i]!
)

echo.
echo  [%done%] Done
echo.
set /p selection=

Rem loop through all numbers disabling each one
if %selection%==DISABLEALL (
	for /l %%i in (1,1,%max%) do (
		set SoundStatus[%%i]=Disabled
	)
goto finish
)

Rem add each selected as SoundStatus.
Rem if there is a "+" in front of the number play the sound with oggdec.exe
Rem once 135 is detected start building pak
if %selection:~0,1%==+ (
	files\oggdec.exe -p files\samples\!ww[%selection:~1%]!
    echo !ww[%selection:~1%]!
) else (
	if %selection%==%done% (
		goto finish
	) else (
		if !SoundStatus[%selection%]!==Enabled (        
			set SoundStatus[%selection%]=Disabled
		) else (
			set SoundStatus[%selection%]=Enabled
		)
	)
)

goto menu

:finish

set changed=false

Rem create the appropriate directory structure for each langauge
xcopy /e /i /y files\AUDIO \AUDIO

Rem look through the list of Ids if the SoundStatus is disabled add it to the pak
for /l %%i in (1,1,%max%) do (
	if !SoundStatus[%%i]!==Disabled (
		 for /d %%d in (files\AUDIO\WINDOWS\*.*) do (        
			 for /f "tokens=1" %%v in ('findstr "!ww[%%i]!" "%%d\VOCAL_LOCALISED.TXT"') do set "id=%%v"
			 set directory=%%d
			 echo !directory!
			 echo !directory:~5!\!id!.WEM
			 echo !ww[%%i]!> !directory:~5!\!id!.WEM
		 )
		 set changed=true
	   )
)

if %changed%==false (
	echo You didn't disable anything
	echo
	pause
	rmdir /s /q \AUDIO
)

files\psarc.exe create --xml=files\create.xml
rmdir /s /q \AUDIO
pause