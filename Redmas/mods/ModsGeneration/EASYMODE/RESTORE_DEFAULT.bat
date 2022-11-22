@echo off
copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\REDMAS_EASY_MODE_PRESET.lua ..\..\localFiles\UserParams\REDMAS_EASY_MODE_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\REDMAS_EASY_MODE_PRESET.lua