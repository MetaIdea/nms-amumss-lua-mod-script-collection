for /r %%i in (*.pak) do (
	rem lua.exe script.lua "%%~nxi"
	"C:\Program Files\7-Zip\7z.exe" a -tzip -mm=Deflate "%%i.zip" "%%i"
	rem -mx=9 -ms=on 
)
echo --------FINISEHD--------
pause
