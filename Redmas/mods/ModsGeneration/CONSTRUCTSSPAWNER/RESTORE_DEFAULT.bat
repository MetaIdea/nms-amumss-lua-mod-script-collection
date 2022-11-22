@echo off

copy ..\..\src\rgog-lua\LUA\REDMASPARAMS\REDMAS_SPAWNER_FOR_CONSTRUCTS_BY_MSSP_PRESET.lua ..\..\localFiles\UserParams\REDMAS_SPAWNER_FOR_CONSTRUCTS_BY_MSSP_PRESET.lua
cd ..\..\src\rgog-engine\tools\LITE
start  lite.exe ..\..\..\..\localFiles\UserParams\REDMAS_SPAWNER_FOR_CONSTRUCTS_BY_MSSP_PRESET.lua