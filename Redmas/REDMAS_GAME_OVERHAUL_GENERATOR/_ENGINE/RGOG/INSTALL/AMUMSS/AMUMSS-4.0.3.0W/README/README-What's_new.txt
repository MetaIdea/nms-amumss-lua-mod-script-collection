NEW in v4.0.3.0W:
[*]NEW VERSIION: NMSPE v2.2.1.0, .NET 5
[*]ADDED: '.\PAK_Content\Hash_vx.x.x.x.json' file with hash values of all NMS pak files content
          that can be used to compare with preceding version for file changes/additions
		  Created when clicking menu Unpack Options/Create Hash of pak content

v4.0.2.0W:
[*]NEW VERSIION: NMSPE v2.2.0.0, .NET 5
[*]ADDED: '.\libMBIN_Content\Content_libMBIN_vx.x.x.x.lua' file that reports all structures and fields in a simple format
          that can be used to compare with preceding version for name changes/additions
[*]CORRECTED: NMSPE memory leak while decompiling
[*]CORRECTED: NMSPE always selecting one file in PAKList tab

v4.0.1.0W:
[*]ADDED: created pak name 'info' to Report.lua

v4.0.0.9W:
[*]ADDED: Option: -GameVersion: To ask the user if their NMS game files are '(P)ublic' or '(E)xperimental'
          the option can be added to the user BUILDMOD_AUTO.bat, just copy/paste the following line:
set _O=%_O%      -GameVersion ASK
          See 'README-OPTIONS_DEFINITIONS.txt' for details
[*]ENHANCED: Hopefully getting feedback about the user game files vwill eliminate most problems
          with automatically using the right vof MBINCompiler.exe

v4.0.0.8W:
[*]CORRECTED: missing reset of MODBUILDER/_TEMP folder when a new vof MBINCompiler.exe is downloaded

v4.0.0.7W:
[*]REMOVED: pause command after MBINCompiler check

v4.0.0.6W:
[*]CORRECTED: fetching the right MBINCompiler.exe version for public/experimental
[*]ADDED: reference to '-DoConfigGlobal' in default OPTIONS list

v4.0.0.5W:
[*]UPDATE: Better handling of multiple ModScript sub-folders with/without MEFTI folders
[*]ADDED: "//", "%" and "^" as valid MATH_OPERATION
[*]ADDED: "!" as a valid option to F/FB type MATH_OPERATION
[*]ADDED: information, in the Script Rules, about "Which parts of LUA language can I use in scripts?"
[*]ADDED: an internal function GUIF() that allows a script creator to ask the script user for alternate script values
[*]ADDED: action button 'BUILDMOD' to AMM (ModScript_Manager) to execute BUILDMOD/BUILDMOD_AUTO.bat
[*]ENHANCED: LINE_OFFSET behavior to include LINE_OFFSET = 0 which is now different than having NO LINE_OFFSET entry in an EXML_CT sub-table
[*]UPDATED: README-AMUMSS_Script_Rules.html to reflect changes
[*]CORRECTED: bad path to delete DISABLEMODS.txt

v4.0.0.4W:
[*]NEW: 'Alias names' for INTEGER_TO_FLOAT ('ITF') and MATH_OPERATION ('MATH_OP')
[*]ADDED: Info -> "What do 'Script to build' types mean?" to README Script Rules
[*]UPDATED: ModScript_Manager.exe to v1.2
[*]ENHANCED: dotnet install drive detection
[*]UPDATED: Test_AMUMSS_install.bat to v1.2.2
[*]UPDATED: BUILDMOD.bat to v1.4

v4.0.0.3W:
[*]REMOVED: some debugging info

v4.0.0.2W:
[*]CORRECTED: wrong name of pak when combining only one script under certain conditions
[*]UPDATED: alias names to members in "Simplified Hierarchy of 'NMS_MOD_DEFINITION_CONTAINER'" of README

v4.0.0.1W:
[*]ADDED: Option: -SOUND = 'Y': meaning use SOUND
          see 'README-OPTIONS_DEFINITIONS.txt'
[*]ADDED: Option: -CLEANLOG = 'Y': meaning clean log.lua of escape sequences if allowed
          see 'README-OPTIONS_DEFINITIONS.txt'
[*]UPDATED: Check_CONFLICTS.bat (same functionnality + checks for .NET proper v+ reports game/exe version)
[*]CORRECTED: a rare bug that prevented a script section without an EXML_CHANGE_TABLE, 'after' a previous section
              with an EXML_CHANGE_TABLE, from processing the right EXML (thanks Lenni)

v4.0.0.0W:
[*]ENHANCED: Compiling speed with vof MBINCompiler.exe >= 3.84.0.1
[*]UPGRADED: LUA to custom v5.4.4 with lfs.currentdir support
[*]NEW: 'README-AMUMSS_Script_Rules.html' now browser friendly ->> 'supersides' all previous 'Script Rules' files
[*]NEW: a '___DONOTUSE.txt' file in a first level sub-folder of ModScript will instruct AMUMSS 
          to IGNORE that sub-folder and ALL its content: files and sub-folders
[*]NEW: a '___COMBINE.txt' file in a sub-folder of ModScript will instruct AMUMSS 
          to AUTO_COMBINE the scripts in that sub-folder
[*]NEW: FOREACH_SKW_GROUP (member of EXML_CHANGE_TABLE).  Read all about it in the new 'README-AMUMSS_Script_Rules.html'
[*]NEW: NOTICE_OFF (member of EXML_CHANGE_TABLE).  Read all about it in the new 'README-AMUMSS_Script_Rules.html'
[*]NEW: WI_SEC_LOP (member of EXML_CHANGE_TABLE).  Read all about it in the new 'README-AMUMSS_Script_Rules.html'
[*]NEW: WISUB_SEC_LOP (member of EXML_CHANGE_TABLE).  Read all about it in the new 'README-AMUMSS_Script_Rules.html'
[*]NEW: WISUB_SEC_OPTION (member of EXML_CHANGE_TABLE).  Read all about it in the new 'README-AMUMSS_Script_Rules.html'
[*]NEW: 'Alias names' for PRECEDING_KEY_WORDS ('PKW'), SPECIAL_KEY_WORDS ('SKW') and VALUE_CHANGE_TABLE ('VCT')
[*]NEW: 'README-What_are_ShowExtraSections.txt' to explain what is the meaning of those 'ExtraSections' when turned ON
[*]NEW: COMMENT, a STRING comment that the modder can make appear in the cmd window and REPORT.lua
          for the current EXML_CHANGE_TABLE sub-table (suggested by CopperBoltwire#0745 on Discord)
[*]NEW: 'EXML's in ModScript can be used to override PCBANKS generated files with scripts
          Also can be used without scripts to create a GENERIC.pak (that you should rename)
[*]ENHANCED: SPECIAL AND PRECEDING 'KEYWORDS' are now fully case insensitive
[*]ENHANCED: MapFiletree files now include more information
[*]ENHANCED: MapFiletree LANGUAGE files are especially processed to reduce the line count to 5.5% 
             compared to the original line count (like 30706/552642 lines) and to speed up their creation.
[*]ENHANCED: VALUE_MATCH can now use LUA's regular string expressions interpreted as LUA 'Patterns'
             Read all about it in 'README-AMUMSS_Script_Rules.html'
[*]ENHANCED: VALUE_MATCH is case insensitive
[*]ENHANCED: VALUE_MATCH can be a table of strings where each string can trigger a replacement if matching
[*]ENHANCED: VALUE_CHANGE_TABLE can now use LUA's regular string expressions interpreted as LUA 'Patterns'
             Read all about it in 'README-AMUMSS_Script_Rules.html'
[*]ENHANCED: in VALUE_CHANGE_TABLE (at Lenni's request), 
             - if a '+' is added at the front of 'newvalue' like '+newvalue'
               then the 'newvalue' is concatenated to the end of the old 'value'
             - if a '+' is added at the end of 'newvalue' like 'newvalue+'
               then the 'newvalue' is concatenated to the start of the old 'value'
[*]ENHANCED: VALUE_CHANGE_TABLE 'Property name/value=' is case insensitive
[*]ENHANCED: MATH_OPERATION SUFFIX L: and LB: now accept '!' to lock the first value found
             Read all about it in the new 'README-AMUMSS_Script_Rules.html'
[*]ENHANCED: CONTAINER matching bracket analysis
[*]IMPROVED: windows's curl.exe will be used if found in system32 (removing one problem with AV)
[*]IMPROVED: call to windows\system32\find.exe so that Cygwin's find.exe (and others) cannot be used instead
          causing AMUMSS to target the wrong file (see https://cygwin.com/cygwin-ug-net/using-effectively.html)
[*]ADDED: to ADD_FILES section: INTERNAL_FILE_SOURCE (adds files from NMS 'original' PCBANKS paks)
[*]ADDED: WARNING in 'README-Creating_a_Patch_for_existing_MOD_PAKs.txt' about mod paks using 'older' MBINs
[*]ADDED: Information about 'empty' folders in your 'GAMEDATA\PCBANKS\MODS' folder that can 'crash' NMS
          see 'README-AMUMSS_Script_Rules.html': "About 'empty' folders in your 'GAMEDATA\PCBANKS\MODS' folder" 
[*]ADDED: internal ability to automatically remove obsolete AMUMSS files
[*]ADDED: Check of .NET Desktop Runtime 5.?.?? Windows x64 install (or 'lack of' and request to user to do so!)
[*]ADDED: MOD_MAINTENANCE, a STRING to indicate who is doing the maintenance of this script
          (as used  by Babscoole on Discord)
[*]ADDED: Handling of sub-folder 'MEFTI' of your 'custom script folder',
          Files in this folder will be automatically included in the final PAK.
          A 'custom script folder' is a sub-folder of ModScript that includes ALL parts 
		  of your mod (.lua script and extra files in its 'MEFTI' folder)
		  just like the 'ModExtraFilesToInclude' folder is for all scripts
[*]ADDED: pak content listing to report when unpacking a pak file to 'UNPACKED_DECOMPILED_PAKs' folder
[*]ADDED: Option: -ReCreateMapFileTree = 'X': meaning NEVER create MapFileTree files (if you do not use them)
[*]ADDED: Option: -DEV_MODE F   --FULL mode: instruct AMUMSS to generate ALL information in cmd window
                    (slowest, with full feedback to modder)
                  -DEV_MODE D   --DEVELOPMENT mode: instruct AMUMSS to generate ALL 'helper' files
                    (medium, but adequate information to modder in the cmd window)
                  -DEV_MODE L   --LEAN mode: AMUMSS only generates files necessary to produce the mods
					(fastest, much less information to user in the cmd window)
            In any DEV_MODE: ALL information is still in Report.lua
			-DEV_MODE option can be manually added to BUILDMOD_AUTO.bat if the user whishes
[*]ADDED: AMUMSS_SUPPRESS_MSG, read about it in README-AMUMSS_Script_Rules.html
[*]RENAMED: 'ADD_NAMED_SECTION' renamed to 'SECTION_ADD_NAMED' (old name retained for backward compatibility)
[*]RENAMED:      'EDIT_SECTION' renamed to 'SECTION_EDIT'      (old name retained for backward compatibility)
[*]RENAMED:      'KEEP_SECTION' renamed to 'SECTION_KEEP'      (old name retained for backward compatibility)
[*]RENAMED:   'SAVE_SECTION_TO' renamed to 'SECTION_SAVE_TO'   (old name retained for backward compatibility)
[*]CORRECTED: a bug in REGEXBEFORE and REGEXAFTER involving '\\' (thanks DeadMoroz#9600 on Discord)
[*]CORRECTED: improper folding of REPORT.lua when message 'No replacement done. Please verify your script' was present
[*]CORRECTED: a bug made WHERE_IN_SECTION and WHERE_IN_SUBSECTION to skip every two entries
[*]CORRECTED: a bug that made BUILDMOD.bat very slow to start some times

v3.9.5.98W:
[*]UPDATED: PRECEDING_KEY_WORDS internal algorithm (it was, some times, incorrectly returning more sections than it should)
[*]REMOVED: some unnecessary NOTICES when multiple sections are found and SECTION_ACTIVE is in use
[*]CLARIFIED: SECTION_ACTIVE rule when SECTION_ACTIVE = '0'

v3.9.5.97W:
[*]UPDATED: SECTION_ACTIVE
[*]UPDATED: PRECEDING_KEY_WORDS internal algorithm (it was, some times, incorrectly returning more sections than it should)
[*]REMOVED: some unnecessary NOTICES when multiple sections are found and SECTION_ACTIVE is in use
[*]CLARIFIED: SECTION_ACTIVE rule when SECTION_ACTIVE = '0'

v3.9.5.96W:
[*]CORRECTED: some MBINCompiler error reporting causing problems with the collapsible Report.lua
[*]ALLOWED: more relaxed ways to write script properties like VALUE_MATCH, VALUE_MATCH_TYPE and others
[*]ALLOWED: script files encoded with 'CR' only to still be processed correctly
        Windows uses two characters the CRLF sequence; Unix only uses LF
        and the old MacOS ( pre-OSX MacIntosh) used CR.
[*]OPTIMIZED: MapFileTree creation on 2nd thread
[*]CORRECTED: Uninitialized variable missing in a sub-function and pass back to the calling function
        as a nil that went undetected because I was using it as a boolean in a code block

v3.9.5.95W:
[*]TEST: Testing AMUMSS update package source

v3.9.5.94W:
[*]SWITCHED: AMUMSS update package source

v3.9.5.93W:
[*]IMPROVED: AMUMSS updating simplified.  Distinct update packages reduce download times

v3.9.5.92W:
[*]ADDED: BUILDMOD.bat can NOW be updated like the rest of AMUMSS when BUILDMOD.bat is executed

v3.9.5.91W:
[*]CORRECTED: removed extra NOTICEs about multiple sections found
[*]CORRECTED: curl complaining about 'no URL specified!' after getting MBINCompiler.exe/libMBIN.dll

v3.9.6W:
[*]ADDED: 'New update available' message at BUILDMOD.bat starts

[*]ADDED: reporting of failed scripts at end of REPORT.lua
[*]ADDED: to *.pak_content.txt file when such a file is created, ex.:
		Original information:
		   MOD FILENAME: ThisMaster.pak
			 MOD AUTHOR: Ignacio
			 LUA AUTHOR: Unknown
		MOD DESCRIPTION: is the original requester for this added information
			NMS VERSION: 3+
			
[*]IMPROVED: 'REPORT.txt' renamed to 'REPORT.lua' with collapsable sections for each script/MBIN processed and the Conflict section
[*]IMPROVED: when using option '-SerializeScript Y' (default is 'N'), the 'scriptname.serial.lua' file created in ModScriptCheck folder
        shows exactly what AMUMSS sees internally of your script NMS_MOD_DEFINITION_CONTAINER.
		*** That file 'IMPROVED' format is a VERY good tool while developping your script! ***
[*]IMPROVED: MapFileTree, options are:
		-MAPFILETREE LUA     --Create collapsable LUA MAPFILETREEs
		-MAPFILETREE LUAPLUS --(default) Create collapsable LUA MAPFILETREEs including </Property> lines as "<<<"
		-MAPFILETREE TXT     --Create TXT MAPFILETREEs
		-MAPFILETREE TXTPLUS --Create TXT MAPFILETREEs including </Property> lines as "<<<" 
[*]IMPROVED: detection/reporting of INTEGER_TO_FLOAT conversion

[*]CORRECTED: removed unnecessary NOTICE about multiple sections found when ["REPLACE_TYPE"] is in use
[*]CORRECTED: false-positive detection of FLOAT that are in fact INTEGER
[*]CORRECTED: using LINE_OFFSET, the wrong keyword line was used as the base line when PRECEDING_KEY_WORDS were used after SPECIAL_KEY_WORDS
[*]CORRECTED: using ["ADD_OPTION"] = "ADDafterLINE", the found line was never used