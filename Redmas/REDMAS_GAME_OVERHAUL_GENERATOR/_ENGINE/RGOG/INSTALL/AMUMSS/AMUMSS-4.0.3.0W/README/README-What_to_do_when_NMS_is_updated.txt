Very short version:

	NOTHING to do until MBINCompiler.exe is update (be patient)
		and, when MBINCompiler.exe is updated, let AMUMSS handle the rest...

	NEW in 3.9.0W and up:
		By default, AMUMSS will automatically update MBINCompiler and will use the right one
		for your current 'public/stable' or 'experimental' NMS version.
		
		>>> Unless you __really__ want to use an older NMS version with an older MBINCompiler,
			no need to change OPTION [-AutoUpdateMBinCompiler Y], that is the default behavior

______________________________________________________________________________________________________________
Medium version:

	NEW in 3.9.0W and up:
		IN ALL CASE, AMUMSS will AUTOMATICALLY try both 'Latest Release' and 'Pre-Release' version of MBINCompiler
		
		By default, it will ask you if you want to update MBINCompiler, but you call ALWAYS say 'Y'es
		(unless you really want to use an older version of MBINCompiler, then say 'N'o)

		An OPTION can be set in 'BUILDMOD_AUTO.bat' to control AMUMSS behavior:
			-AutoUpdateMBinCompiler Y   -- (default) update MBINCompiler.exe in MODBUILDER if a newer version exist, no asking
				AMUMSS will automatically use the right MBINCompiler version for 'public/stable' or 'experimental'
			-AutoUpdateMBinCompiler ASK -- ask if AMUMSS should or not update MBINCompiler.exe version if a new version exist
			-AutoUpdateMBinCompiler N   -- never update MBINCompiler.exe

		If you set the OPTION to '-AutoUpdateMBinCompiler ASK', AMUMSS will ask you if you want to update MBINCompiler,
		and you call ALWAYS say 'Y'es (unless you __really__ want to use an older version of MBINCompiler, then say 'N'o)

		If you set the OPTION to '-AutoUpdateMBinCompiler N', AMUMSS will never update (or even ask to update) MBINCompiler
			That will tell AMUMSS to use your current MBINCompiler instead of updating to the latest release. 
			When you are ready to let AMUMSS update again just change the OPTION to 'Y' or 'ASK'.

		You can modify AMUMSS behavior thru the OPTIONS available:
			See 'README-OPTIONS_DEFINITIONS.txt' for a description
			OPTIONS can be adjusted to your liking in 'BUILDMOD_AUTO.bat'
			(which will not be overwritten in AMUMSS main folder if present when you unzip)
			Please do not modify 'BUILDMOD.bat' as it will be overwritten
______________________________________________________________________________________________________________
Long version:

	What follow is a general discussion of what happens when NMS updates!
		You don't need to understand all of it to use AMUMSS...
		
	>>> But if you insist:
	
Before the NMS update (your NMS file content is on 'public/stable' or 'experimental'):
	- Let us say NMS public and experimental are version 'A'
		So they are 'equal in terms of file content: exe and paks in PCBANKS' 
	- Also your MBINCompiler is fully updated to version 'A' (automatically using AMUMSS or manually)
	- AMUMSS works well and your mods are too...

Now, NMS updates 'experimental' to version 'B' (BUT 'public' is still on version 'A')
	- NMS.exe and some pak files changed in PCBANKS
	- MBINCompiler is not yet updated
	
	If you are on public, all your mods are still ok. If you are on experimental, some of your mods 
	(which are still NMS pre-update) may not work anymore because of the NMS update. 
	
	Now, MBINCompiler maintainers work on updating it and a release is made 
	(that can be just a partial or a full update). 
	
	If a mod is created using this updated MBINCompiler, it may still work with public 
	(if the mod touches only MBIN files NOT modified by the NMS update)
	or it won't work with public (if the mod touches a MBIN file modified by the NMS update) 
	but it will work with experimental. When finally NMS pushes experimental to public, the problem goes away...

In your case, one of two things: 
	A) you are on public and AMUMSS updated MBINCompiler to the latest release. 
	   Since GCPLAYERGLOBALS was modified in experimental but your version of it in public is incompatible,
	   AMUMSS automatically tries both pre-release and latest release version of MBINCompiler and works. 
	
	B) you are on experimental and AMUMSS updated MBINCompiler to the latest release but MBINCompiler was not 
	   yet fully updated to the latest NMS version for that MBIN. You then get an error message and MBINCompiler
	   cannot work with this MBIN yet.  Be patient, MBINCompiler maintainers will do their best to update it
	   as soon as possible (real life permitting!)

It is a balancing act until everything gets updated to the latest version.

If you are on public, you can prevent AMUMSS 3.9.0W and up from updating automatically MBINCompiler 
by responding 'N'o when AMUMSS asks.

If you set the OPTION '-AutoUpdateMBinCompiler N', AMUMSS will never update or ask to update MBINCompiler

That will tell AMUMSS to use your current MBINCompiler instead of updating to the latest release. 
When you are ready to let AMUMSS update again just change the OPTION to Y or ASK.

***** In other words *****: 

Are you on the 'experimental' branch ? 
	AMUMSS will use the right version automatically for 'experimental' branch,
	just let it update!

Are you on the 'public/stable' branch ? 
	AMUMSS will use the right version automatically for 'public' branch,
	just let it update!
