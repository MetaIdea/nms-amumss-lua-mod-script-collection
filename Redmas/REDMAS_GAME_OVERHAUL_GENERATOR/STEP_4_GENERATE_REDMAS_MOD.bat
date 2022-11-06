cd RGOG
copy REDMAS_MODS_BUILDER.lua ..\ENGINE\ModScript\REDMAS_MODS_BUILDER.lua
cd ..
cd ENGINE
start  _ModScript_Manager.exe
xcopy CreatedModPAKs ..\MODS_ARCHIVE /q /s /y
start %windir%\explorer.exe CreatedModPAKs
