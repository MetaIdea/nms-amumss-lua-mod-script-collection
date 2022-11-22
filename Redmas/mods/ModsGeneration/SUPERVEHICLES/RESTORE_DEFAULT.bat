@echo off
copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\REDMAS_SUPER_VEHICLES_PRESET.lua ..\..\localFiles\UserParams\REDMAS_SUPER_VEHICLES_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\REDMAS_SUPER_VEHICLES_PRESET.lua