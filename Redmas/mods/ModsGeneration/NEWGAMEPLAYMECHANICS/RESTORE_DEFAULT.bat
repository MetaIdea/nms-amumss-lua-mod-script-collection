@echo off
copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\NEW_GAMEPLAY_MECHANICS_PRESET.lua ..\..\localFiles\UserParams\NEW_GAMEPLAY_MECHANICS_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\NEW_GAMEPLAY_MECHANICS_PRESET.lua