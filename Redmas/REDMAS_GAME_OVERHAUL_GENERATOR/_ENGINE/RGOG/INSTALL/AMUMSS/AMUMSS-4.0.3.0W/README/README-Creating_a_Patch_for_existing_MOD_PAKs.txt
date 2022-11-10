How to Create a Patch for existing MOD PAKs ?

Very short story:
	- Outdated pak: >>> DON'T USE <<< see VERY IMPORTANT WARNING below
	- Have a script for a pak: >>> re-create the pak by putting the lua script in ModScript folder (discard the pak)
	- Do not have a script for a pak: >>> you have to make a script (unless the pak is already updated)

ONLY USE THESE INSTRUCTIONS WHEN YOU NEED TO MAKE A PATCH
	- You DO NOT need a patch, if you have a lua script (that came with it or you made) for the mod pak
	      >>> use the script to re-build/update the pak
	      >>> do NOT use/put the old pak anywhere (discard it)
	- You need to make a patch when you have a pak that DOES not have a lua script for it
	      >>> and you want to change something in the pak without making a full script for it

Background note:
	Mods files in NMS are loaded from top to bottom (in the NMS 'Load Order', see General Information on AMUMSS.txt).
	A later loading mod (a mod that load after another one) that modify the same file (.MBIN, .DDS, ...)
	as in any previously loaded mod will win (meaning overwrite) all changes to that file (.MBIN, .DDS, ...)

            ================== VERY IMPORTANT WARNING ================
			
	Using an 'older' pak (a pak that is NOT updated to the 'current' NMS MBIN file content)  
	could result in a not functional pak that could crash NMS.
	
		- Since AMUMSS will fetch the MBIN (called for by the script(s)) from the 'older' pak, 
		  if that MBIN is NOT a modded 'current' version, the resulting modded MBIN may not be
		  compatible with NMS
		
		- Note that AMUMSS cannot correct the faulty MBIN when it is an older version because it cannot
		  know if the changes made in the 'older' pak to the MBIN were intentional (by the modder)
		  or due to NMS upgrading that MBIN
		  
            ================== VERY IMPORTANT WARNING ================
	
MODBUILDER can help in creating the "Patch_xyz.pak"
	A. Create a simple "MyScript.lua" script with the changes you want to make to the .EXML/MBIN file
		***** We have included plenty of examples and a Script_Rules.txt file to help in creating a script *****
	
	B. Copy the script AND the MOD PAKs you want to patch to the ModScript folder
		
		WARNING: Having more than one pak in ModScript will NOT combine both paks if they modify the same file,
		only the last one loaded will combine with the script(s)
			  
		AMUMSS can handle correctly multiple paks in ModScript
			but be aware that only the last mbin file loaded will be the one used by the script(s)
			
	C. MODBUILDER will attempt to use your MBIN_FILE_SOURCE named in the script by searching for it in the mod PAK(s)
	  *** If found, that will preserve the mod PAK changes UNLESS you have changed the exact same values with your script ***
	  *** which could be what you would want to do sometimes... ***
	
	D. A new mod PAK will be created in the CreatedModPAKs folder (give it the name you want in the script)
		or after by renaming it in the folder
	
	E. Place BOTH files (all original PAKs and PATCH pak) into your NMS MODS folder if you did not let MODBUILDER copy it to MODS for you
	
	F. Verify that the DISABLEMODS.TXT file in PCBANKS folder is still deleted if you did not let MODBUILDER delete it for you
	
	G. Enjoy
	
NOTES: * The name of the lua script "MyScript.lua" can be changed.
       * Any other script can be put in ModScript at the same time, they will all be COMBINED into the resulting PAK
       * The name of the resulting pak "Patch_xyz.pak" can be changed, but should be at least below the pak or at the BOTTOM of the NMS 'Load Order'
	     for optimum effect (see 'README-AMUMSS_Script_Rules.html': 'About Load / Processing Order')

In summary

	- As Reikoku said on No Man's Sky Modding Discord:
	  Patch.pak only includes the modded files that the lua script changes from the OriginalMod.pak file.

	  If the OriginalMod.pak edits more files than the lua script then you would need both in the NMS MODS folder. 
	  (this will make a conflict 'between Patch.pak and OriginalMod.pak' but that's what you want)
	  The Patch.pak would need to load after OriginalMod.pak so the changes to files included in the Patch.pak
	  overwrites the changes in the OriginalMod.pak.  Rename the files to change the load order.