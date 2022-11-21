@echo off
cd /D "%~dp0"
set "_O= "

rem ADD, CHANGE or REMOVE options BELOW...
rem this will overrides DEFAULT values of the corresponding OPTIONS in BUILDMOD.bat

rem See 'README-OPTIONS_DEFINITIONS.txt' for all the OPTIONS

rem ************  the order of definition is irrelevant
rem    KEEP spaces between %_O% and -option Y

set _O=%_O%      -AutoUpdateMBinCompiler Y
set _O=%_O%      -CheckForModConflicts N
set _O=%_O%      -CLEANLOG Y
set _O=%_O%      -CombinedModType ASK
set _O=%_O%      -CombineModPak ASK
set _O=%_O%      -CopyToGamefolder ASK
set _O=%_O%      -DEV_MODE L
set _O=%_O%      -DoConfigGlobal Y
set _O=%_O%      -GameVersion Y
set _O=%_O%      -IncludeLuaScriptInPak Y
set _O=%_O%      -IndividualModPakType P
set _O=%_O%      -MAPFILETREE LUAPLUS
set _O=%_O%      -MAPFILETREEFORCE N
set _O=%_O%      -ReCreateMapFileTree N
set _O=%_O%      -RecreatePAKList N
set _O=%_O%      -SerializeScript N
set _O=%_O%      -SHOWEXTRASECTIONS N
set _O=%_O%      -SHOWOPTIONS N
set _O=%_O%      -SHOWSECTIONS Y
set _O=%_O%      -SOUND Y
set _O=%_O%      -UseColors Y
set _O=%_O%      -UseExtraFilesInPAK ASK
set _O=%_O%      -UseLuaScriptInPak ASK

REM for FUTURE OPTIONS
set _O=%_O%      
set _O=%_O%      
set _O=%_O%      
set _O=%_O%      
set _O=%_O%      
set _O=%_O%      
set _O=%_O%      

rem >>>>>>>>>> To override DEFAULT OPTIONS, change only one or more options ABOVE and save

rem ************  Any missing option means 'ask the user' OR 'apply the default value'
rem ************  the order of definition is irrelevant
rem >>>>>>>>>> To override DEFAULT OPTIONS, only change the OPTIONS above and save

BUILDMOD.bat %_O%
