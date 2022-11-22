@echo off
copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\FANTASY_PRESET.lua ..\..\localFiles\UserParams\FANTASY_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\FANTASY_PRESET.lua
