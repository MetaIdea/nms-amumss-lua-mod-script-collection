@echo off
copy ..\..\..\src\rgog-lua\LUA\REDMASPARAMS\_DEBUG.lua ..\..\localFiles\UserParams\_DEBUG.lua
cd ..\..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\_DEBUG.lua

