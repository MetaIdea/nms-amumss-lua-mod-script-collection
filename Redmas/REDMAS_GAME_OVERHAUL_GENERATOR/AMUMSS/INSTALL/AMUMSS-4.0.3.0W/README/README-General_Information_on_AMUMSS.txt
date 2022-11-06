***************************  General Information on AMUMSS ****************************
- Installation:
	* No accented characters in the path
	* Always de-compress in a new folder on any drive like X:\AMUMSS (OR in the previous folder)
	  xxxxx NEVER in any system folder (Note: the Desktop / Downloads are also system folders) xxxxx
		
		* If de-compressed in the previous folder, AMUMSS will preserve everything in user folders
		  except changes made to AMUMSS files in AMUMSS main, ModScriptCollection and MODBUILDER folders
		
		* If de-compressed in a new folder, you can copy/paste these folders from the previous version of AMUMSS
		  if you would like to preserve previous work and information...
				+ 'libMBIN_Content'
				+ 'ModScript'
				+ 'ModExtraFilesToInclude'
				+ 'Builds'
				+ 'SavedSections'
				+ 'UNPACKED_DECOMPILED_PAKs'
				+ any other files in AMUMSS main not updated by the unzip file

	* Note: 
		> Sometimes, your anti-virus may detect some component of AMUMSS and block/quarantine it.
		  Be assure it is not a virus but its behavior may be interpreted as such by some anti-virus.
		> Please make sure to create an exception in your anti-virus when this happens.
		> Also a reboot may be required as some anti-virus do not correctly register the exception when it is created.

	* Please execute BUILDMOD.bat once to re-create all user folders (if they do not exist)
	  and fetch updated tools from the web

- See 'README-AMUMSS_Script_Rules.html' for more information about AMUMSS script usage/structure

- **** ALL OPTIONS CAN NOW BE CHANGED IN 'BUILDMOD_AUTO.bat'

- INFO, NOTICE, WARNING, ERROR and BUG messages
	* [INFO] 
		Simply a statement of an event that has happened (likely successful)
	* [NOTICE] 
		Statement that the user should be aware of, use for things like "This is also possible"
	* [WARNING] 
		Statement that something could be wrong but will still produce a viable mod pak (it could possibly be wrong, check!)
	* [ERROR]
		Statement that something went wrong and will not produce a mod pak (check your script!)
	* [BUG]
		Statement that AMUMSS program encountered an error (mainly lua failed to execute the core program) 
		and will not produce a mod pak (Please report 'script(s)' and 'REPORT.lua' to AMUMSS maintainers!!!)
		The best place to report is on Discord:  https://discord.gg/8jGtEcDPEY
			
- Things to remember:
	Last MBIN loaded always wins in NMS.  
	
	So if mod A and B both change MBIN C than the last to load (mod B here) will see its MBIN C win
	(all the values inside MBIN C of mod B are used, none from mod A).
	
	At the same time, if mod A also has MBIN D and mod B also has MBIN E then: 
	MBIN D AND MBIN E are both winners (there is no conflicting MBIN to be overwritten by mod B being loaded after mod A)
	
- One of the lua scripts modifies the same value in the .pak file, which one wins?
	Easy answer:  
	
	Put the pak AND the script modifying the same MBIN in ModScript, 
	run BUILDMOD.bat and look at the values in the resulting EXML file in EXML_Helper folder 
	(both orignal and modded EXMLs are there)  
	
	Find out which values were changed by comparing the files
	
- Creating a Patch or Merging mods

			================== VERY IMPORTANT WARNING ================
			
	Using an 'older' pak (a pak that is NOT updated to the 'current' NMS MBIN file content)  
	could result in a not functional pak that could crash NMS.
	
		- Since AMUMSS will fetch the MBIN (called for by the script(s)) from the 'older' pak, 
		  if that MBIN is NOT a modded 'current' version, the resulting modded MBIN may not be
		  compatible with NMS
		
		- Note that AMUMSS cannot correct the faulty MBIN when it is an 'older' version because it cannot
		  know if the changes made in the 'older' pak to the MBIN were intentional (by the modder)
		  or due to NMS upgrading that MBIN
		  
            ================== VERY IMPORTANT WARNING ================
	
	- How to Create a Patch for existing MOD PAKs ?
			 =====  Also relevant each time you use an existing pak in a 'combined' pak  =====
		see file 'Creating a Patch for existing MOD PAKs.txt' in AMUMSS main folder

	- Merging mods, some cases here:
		A) you have 2 (or more) lua scripts for those mods, just use these in ModScript folder, run AMUMSS and you are done.
		   AMUMSS created a mod pak.
		   
		B) one mod is missing a lua script, you can still create a patch mod: see 'Creating a Patch for existing MOD PAKs.txt' for details.
		
		C) you don't have any lua script.  
			You can 'open' the mod paks using AMUMSS.
			Just put the paks (no lua script) in ModScript and AMUMSS will attempt to un-pack/de-compile them
			in their own folders under the UNPACKED_DECOMPILED_PAKs folder.
			Then you need to examine the changes made to the EXMLs of those mod paks
			and create a lua script that will include those changes.  Then you do A) above.
			AMUMSS does not create lua scripts by itself...

	- If you have 3 paks modifying the same MBIN file:
		Options A): Create 3 lua scripts.  Now you can easily update your mod in record time after NMS changes.

		Options B): Create 2 lua scripts for two of the paks that you use and, with the 3rd pak, create a patch
			However, the 3rd pak may become outdated if NMS changes things in the implicated MBIN.
			You will need the 3rd pak AND the patch pak (loading after the 3rd pak) in your NMS MODS folder for the patch to work
			*** see 'VERY IMPORTANT WARNING' above ***  
			
- Things Found in AMUMSS Main Folder:
	- Generated files
		* 'REPORT.lua' shows the curated information about the latest BuildMod.bat processing
		
		* 'SerializedScript.lua' shows what the script looks like to the engine
			Note that the 'SerializedScript.lua' file can be a valuable tool for the modder developping
				a complex script as it shows what the AMUMSS engine sees of their script.

		* 'NMS_pak_list.txtPretty.lua' contains ALL file names of the paks in the NMS PCBANKS folder

		* 'log.txt' is the raw output of the cmd window during the latest BuildMod.bat processing
		
		* 'NMS_FOLDER.txt' contains the path to the NMS game folder containing 'GAMEDATA' 
			(it is usually auto-generated by AMUMSS and does not, in most cases, need to be updated)
		
		* 'DateTimeFormat.txt' used to modify DateTime formatting:
			AMUMSS default is ""%Y/%m/%d-%H:%M:%S""
			
			**** MODIFY AT YOUR OWN RISK ****: load order could be affected by your change
			You can alter this format string in the first line of the file 'DateTimeFormat.txt'
			found in AMUMSS main folder (remove the 'x' in front of the filename to activate).
			
			Remember that this format string MUST follow the same rules as the ISO C function 'strftime'.
			
			A value of "" will returns a reasonable date and time representation that depends on the host system 
			and on the current locale.
			
			Note: the DateTime format will be 'sanitized' when used in a file name!
		
	- Folders usage
		* 'ModScript' is where you put:
			   A) 'one or many' .lua scripts to create one combined or many individual mods 
			or B) 'one or many' .pak files (to unpack/decompile them to the 'UNPACKED_DECOMPILED_PAKs' folder)
			or C) one .pak plus 'one or many' .lua scripts (to create a PATCH_MOD, a special kind of combined mod)
			or D) 'one or many' .pak files and if 'one or many' of these paks have a .lua script inside, that would allow you to build a mod from it...
			
			NOTE: The order of processing can influence the resulting mod in any of the combined cases above
			  (see AMUMSS order of processing above)
			
			* sub-folder of 'ModScript' can be used to isolate a script or group of scripts
			* 'MEFTI' folders in a sub-folder of 'ModScript' is similar to 'ModExtraFilesToInclude' below
			  but only applies to the current sub-folder of 'ModScript'
			* a file named '___DONOTUSE.txt' in a first level sub-folder deactivates all its content/sub-content
			
		* 'CreatedModPAKs' is where you will find the latest created pak(s)
		* 'Builds' is where copies of all your past and current created paks reside
			sub-folder 'IncrementalBuilds' contains up to 10 copies of your created paks versions
		* 'libMBIN_Content' contains Content_libMBIN_vx.x.x.x.lua' files that reports all structures and fields in a simple format
            that can be used to compare with preceding version for name changes/additions
		* 'ModScriptCollection' contains a collection of .lua scripts that can generally be used to learn AMUMSS syntax (or used in NMS)
		* 'ModExtraFilesToInclude' where you, the modder, can put ANY extra files, of any type, to be INCLUDED in the created PAKs
			The additional files will be put into the paks as is.  Exactly with their folders and files, 
			compiled if .exml and packed with the normal mbin files into the final paks
		* 'EXML_Helper' containing copies of the original and modified files so modders can view and compare the EXML files during script development
		* 'MapFileTrees' contains MapFileTree files automaticaly created which can GREATLY help a modder find the right 
			SPECIAL_KEY_WORDS (UNIQUE or not) and PRECEDING_KEY_WORDS as well as understand the structure of an original EXML
		* 'UNPACKED_DECOMPILED_PAKs' is where unpacked/decompiled .pak reside in their own 'pakname' folders
			along with a 'REPORT_pakname.txt' file
		* 'SavedSections' contains SAVE_SECTION_TO files (see below) (THIS IS STILL IN DEVELOPMENT)

		* 'MODBUILDER' contains all auxiliary files needed for AMUMSS operation (please leave this folder alone)
	
- ADD and REMOVE operations:
	The ADD_REMOVE scripts do include both operations if you look at all the script content. 

	In ADD_REMOVE_FORLOOP_usage-Recipes.lua, you can see the REMOVE parts AFTER the end 
		of the NMS_MOD_DEFINITION_CONTAINER (by exception) because the script programmatically 
		injects the REMOVE section in the EXML_CHANGE_TABLE.  (A bit more involved in lua stuff)

	In ADD_REMOVE_TEXT_EXAMPLE.lua, the REMOVE section is the next to last one of the EXML_CHANGE_TABLE.

	Replacing in place does not involve ADD / REMOVE if you are just changing values.

	That said, if you want to replace, it is usually a two step affair:
		Easiest way is to target the section you want to replace 
		and first ADD your new section after it.  
		Then re-target the same section and REMOVE it. 
		You are then left with only the ADDed section.

- Conflicting LUA script are ok 
	if they don't change the same exact value, as long as you process them at the same time.

	This is how it works:
		1st script that use a new MBIN file will fetch that from PCBANKS or a pak in ModScript.
		2nd script that modifies the same MBIN doesn't need to fetch it again
			and uses the one already invoked by the 1st script and so on...

	It is like if you had only one script making the different changes.
	
	Of course, if you change the same value 2 times, only the last change exist in the exml file that
	will be use to create the pak.

- About Conflicts:  
      
    Conflicts also may come from the fact that a pak is already in your MODS folder   
    AND you asked AMUMSS to also check Conflicts against the MODS folder.  
      
    Since AMUMSS cannot know if this pak is in fact from this .lua script   
    (the pak name could have been renamed by the user), it flags it as 'in conflict'.    
      
    But since you may know this is not the case, you can then safely disregard these conflicts.  

- LUA Coding Tip:
    -In a loop, it is much faster to use a table to store strings and do a table.concat()  
      than to concatenate strings.  As an example:  
  
      function UsingConcatenation() -- may take 50 sec to complete  
          local NbIteration = 200000  
          print("NbIteration = "..NbIteration)  
          local a = "MyString"  
          local b = a  
          for i=1,NbIteration do  
            b = b..a  
          end  
          print(#b)  
      end  
  
      function UsingTable()       -- takes only less than 1 sec to complete for the same result  
          local NbIteration = 200000  
          print("NbIteration = "..NbIteration)  
          local a = "MyString"  
          local T = {}  
          T[1] = a  
          for i=1,NbIteration do  
            T[#T+1] = a  
          end  
          b = table.concat(T)  
          print(#b)  
      end  
  
