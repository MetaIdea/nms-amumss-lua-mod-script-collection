@echo off
copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\FANTASY_2_PRESET.lua ..\..\localFiles\UserParams\FANTASY_2_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\FANTASY_2_PRESET.lua
