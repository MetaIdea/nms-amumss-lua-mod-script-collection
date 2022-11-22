@echo off
copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\SCIFIFFANTASY_PRESET.lua ..\..\localFiles\UserParams\SCIFIFFANTASY_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\SCIFIFFANTASY_PRESET.lua
