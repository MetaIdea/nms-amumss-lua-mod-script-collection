CHOICE /c:yn /m "%_zRED%??? Would you like to copy the created pak to your game folder and delete [DISABLEMODS.TXT] %_zDEFAULT%"
if %ERRORLEVEL% EQU 2 set _cChoice="N"
EXIT /B
