********************************************************************************
   (default) are processed in BUILDMOD.bat, PLEASE DO NOT CHANGE 'BUILDMOD.bat'

   >>> MAKE ALL YOUR OPTION PREFERENCES KNOWN BY MODIFYING 'BUILDMOD_AUTO.bat' <<<
   
   The (default) OPTIONS are:
                -AutoUpdateMBinCompiler Y
                -CheckForModConflicts Y
                -CLEANLOG Y
                -CombinedModType ASK
                -CombineModPak ASK
                -CopyToGamefolder ASK
                -DEV_MODE ASK
                -DoConfigGlobal ASK
                -GameVersion ASK
                -IncludeLuaScriptInPak Y
                -IndividualModPakType P
                -MAPFILETREE LUA
                -MAPFILETREEFORCE N
                -ReCreateMapFileTree N
                -RecreatePAKList N
                -SerializeScript N
                -SHOWEXTRASECTIONS N
                -SHOWOPTIONS N
                -SHOWSECTIONS Y
                -SOUND Y
                -UseColors Y
                -UseExtraFilesInPAK ASK
                -UseLuaScriptInPak ASK
                
examples: notice the "-" at the beginning of the option word, one space and the option value
          copy/paste is the best!

this would use all the (default) OPTIONS like double-clicking 'BUILDMOD.bat'

TO ADD a new OPTION not in your 'BUILDMOD_AUTO.bat':
    just add aline like
      "set _O=%_O%      -DEV_MODE ASK" without the ""
    to the other OPTIONS, order is not important
********************************************************************************

Below are the OPTION definitions:

-AutoUpdateMBinCompiler ASK -- ask if should update MBINCompiler.exe version if a new version exist
-AutoUpdateMBinCompiler Y   -- (default) update MBINCompiler.exe in MODBUILDER if a newer version exist, no asking
-AutoUpdateMBinCompiler N   -- never update MBINCompiler.exe

-CheckForModConflicts ASK
-CheckForModConflicts Y            -- (default) Check mod conflicts in both ModScript and MODS folder
-CheckForModConflicts SCRIPTS or S -- Check mod conflicts between ModScript files only
-CheckForModConflicts MODS or M    -- Check mod conflicts in MODS folder, no script processing
-CheckForModConflicts N            -- Never check for conflicts

-CLEANLOG Y -- (default) removes escape sequences from log.lua
-CLEANLOG N

-CombinedModType ASK -- (default)
-CombinedModType 1   -- GENERIC COMBINED MOD PAK + current DATE-TIME suffix
-CombinedModType 2   -- DISTINCT COMBINED MOD PAK with a NUMERIC suffix
-CombinedModType 3   -- COMPOSITE-NAME COMBINED MOD PAK like Mod1+Mod2+Mod3.pak

-CombineModPak ASK -- (default)
-CombineModPak Y   -- create a Combined mod
-CombineModPak N   -- create individual mods

-CopyToGamefolder ASK       -- (default) Ask which option to use (NONE, SOME, ALL)
-CopyToGamefolder NONE or N -- Do not copy any created mods to the game folder
-CopyToGamefolder SOME      -- Ask which created mods to copy to the game folder
-CopyToGamefolder ALL or Y  -- Copy all created mods to the game folder

-DoConfigGlobal ASK-- (default)
-DoConfigGlobal Y -- Globally, allow script configuration
-DoConfigGlobal N -- Globally, do not allow script configuration

              -- NOTE: In any DEV_MODE: ALL information is still in Report.lua
-DEV_MODE ASK -- (default)
-DEV_MODE F   -- FULL mode: instruct AMUMSS to generate ALL information
                          (slowest, with full feedback to modder)
-DEV_MODE D   -- DEV  mode: instruct AMUMSS to generate ALL 'helper' files
                          most information is still in the Report.lua file
                          (medium, but adequate information to modder in the cmd window)
-DEV_MODE L   -- LEAN mode: AMUMSS only generates files necessary to produce the mods
                          most information is still in the Report.lua file
                          (fastest, much less information to user in the cmd window)

-GameVersion ASK -- (default)
-GameVersion E   --  experimental
-GameVersion P   --  public

-IncludeLuaScriptInPak ASK
-IncludeLuaScriptInPak Y -- (default) Include the lua script in the mod PAK
-IncludeLuaScriptInPak N -- Do not include the lua script in the mod PAK

-IndividualModPakType ASK
-IndividualModPakType PLAIN or P    -- (default) Name of Mod pak is MOD_FILENAME
-IndividualModPakType DATETIME or D -- Name of Mod pak is MOD_FILENAME + current DATE-TIME suffix

-MAPFILETREE LUA     -- Create collapsable LUA MAPFILETREEs
-MAPFILETREE LUAPLUS -- (default) Create collapsable LUA MAPFILETREEs including </Property> lines as "<<<"
-MAPFILETREE TXT     -- Create TXT MAPFILETREEs
-MAPFILETREE TXTPLUS -- Create TXT MAPFILETREEs including </Property> lines as "<<<" 

-MAPFILETREEFORCE Y -- Force creation of MAPFILETREE files in main thread
-MAPFILETREEFORCE N -- (default) MAPFILETREE files are created by 2nd thread

-ReCreateMapFileTree ASK
-ReCreateMapFileTree Y -- Force re-creation of the MapFileTree files (should not be required, only use in extreme cases)
-ReCreateMapFileTree N -- (default) Do not re-create MapFileTree files if they already exist and are newer than the MBIN file
-ReCreateMapFileTree X -- NEVER create MapFileTree files (only use if you don't use MapFileTree files)

-RecreatePAKList ASK
-RecreatePAKList Y -- forced to re-create (should not be required, only use in extreme cases)
-RecreatePAKList N -- (default) re-create only when needed based on AMUMSS assessment

-SerializeScript Y -- Creates a Serial_NameOfScript.lua version of the script in main folder
-SerializeScript N -- (default) Does not creates a Serial_NameOfScript.lua version of the script in main folder

-SHOWEXTRASECTIONS Y -- To show all info on sections
-SHOWEXTRASECTIONS N -- (default) Do not show all info on sections

-SHOWOPTIONS Y -- Show OPTIONS sent to BUILDMOD.bat
-SHOWOPTIONS N -- (default) Do not show OPTIONS sent to BUILDMOD.bat

-SHOWSECTIONS Y -- (default) Show found section information
-SHOWSECTIONS N -- Do not show found section information

-SOUND Y -- (default)
-SOUND N

-UseColors Y -- (default) Use colors in cmd window
-UseColors N -- Not to use colors in cmd window

       -- NOTE: This Option does not affect MEFTI folder content which is always included
-UseExtraFilesInPAK ASK -- (default)
-UseExtraFilesInPAK Y   -- Include the files in ModExtraFilesToInclude folder in the created mod
-UseExtraFilesInPAK N   -- Do not include the files in ModExtraFilesToInclude folder in the created mod

-UseLuaScriptInPak ASK -- (default) 
-UseLuaScriptInPak Y   -- Use the lua script included in the PAK to re-build the mod
-UseLuaScriptInPak N   -- Do not use the lua script included in the PAK to re-build the mod
