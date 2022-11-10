BASIC NMS MODDING INFO

NMS paks, the game assets, are the original pak files found in the game folder "No Man's Sky\GAMEDATA\PCBANKS".
  They are like special zip files. These files we do not touch!

"Modded paks" (hereafter called 'mod') are placed in "No Man's Sky\GAMEDATA\PCBANKS\MODS", this folder must be created.
Only 'mod' paks go into this folder, anything else is ignored by the game.
Any file with an extension beginning with '.pak' is loaded by the game.

The file 'DISABLEMODS.TXT', found in "No Man's Sky\GAMEDATA\PCBANKS" must be renamed/deleted for the game to load/use our mods.

'Mod's are loaded by the game in a specific order.  The last 'mod' changing a particular MBIN file will have its values used
by the game winning over all preceeding changes to that particular MBIN file.

Althought it is possible to do it manually (using Tools below), most 'mod's are created by scripts.

Scripts modify original MBIN's and create the modded paks (i.e. the 'mod').  

Creating a 'mod' generally involves getting a game MBIN that has the values you want to change and creating a new MBIN with the changes.
  Putting all the modified MBIN's back in a new mod pak (the 'mod') and putting it in the MODS/ folder.

Two main tools automate the process of getting original MBIN's, decompiling them to readable form, making the changes as per the script
and compiling/re-pakking the MBIN's into 'mods'.
    - AMUMSS using lua scripts.
    - NMSMB using C# scripts.

Both script types are written by the modder.
    - No automated tool can write the scripts (except for very simple value changes)
   
Both come with a collection of existing scripts and have repositories of scripts written by others.

- AMUMSS lua scripts modify MBINCompiler's extracted and decompiled EXML files.
    EXML files are human readable text files.
    It recompile the modified EXML's back into MBIN and then put all modified MBIN in a 'new pak' (the 'mod').
  
- NMSMB extracts MBIN's from the pak internally into memory (with in app human readable form)
    It's c# scripts modify the in-memory MBIN data.
    It converts them back to MBIN and puts all modified MBIN in a 'new pak' (the 'mod').

Manual Tools:
- psarc.exe or psarctool.exe can be used to extract items from pak files and create new pak files.  
    - nmsmb has this ability built-in.
    - AMUMSS comes with and calls upon psarc.exe internally

- mbincompiler.exe or libmbin.dll are used to convert binary MBIN data to|from .NET object and|or EXML text file.
    - Both presently specifically require '.NET Desktop Runtime 5.?.?? Windows x64' to work.
    - AMUMSS automatically updates and calls MBINCompiler.exe from code
    - nmsmb calls libmbin.dll from code, updates to libmbin.dll must be acquired manually

Q: Is there any way to merge two mods that only provide PAKs? Is it possible to extract whatever they change, dump into LUA and then rebuild it?

    >>> Short answer, no.

    What can be done is:
    1) Unpak each mod.   Decompile the MBINs to EXML.  AMUMSS can do that for you.
    2) Using the mods EXML, compare them to original / current MBIN/EXML in a text editor or compare tool of your choice.
    3) Code the changes into a script with nmsmb (C#) or AMUMSS (lua) .  You can then use the script to create an updated pak.

    Alternatively, you can write the script for only one of the two mods and create a patch mod with AMUMSS
    (but the other mod must be up-to-date, otherwise the outdated MBINs it contains will not work with the latest game)
