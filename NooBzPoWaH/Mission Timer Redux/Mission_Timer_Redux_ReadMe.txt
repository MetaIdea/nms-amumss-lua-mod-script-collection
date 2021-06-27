///////Mission Timer Redux\\\\\\\
\\\\\\\*******************///////


Here's a cheaty little Mod for you all impatient players !

It sets Mission Timer for Atlas Path,  Base Computer and Living Ship to Zero (minutes/seconds).

It also Greatly Decreases Fleet Expeditions Time to Less Insane values.

Several variations to choose from.


**************************************************************************************

Compatibility : 

Current Mod version : 3.52

Compatible with game version : NMS "PRISMS" v.3.51/3.52 (Steam's build 6801242/6814857)

3xperimental branch is not supported !

Modified Files :

Main Mod
"Mission Timer Redux"

GCFLEETGLOBALS.GLOBAL.MBIN
METADATA\SIMULATION\MISSIONS\ATLASPATHTABLE.MBIN
METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN
METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN

Optional Variations
"Mission Timer Redux APBCLS"
(Only for Atlas Path,  Base Computer and Living Ship)

METADATA\SIMULATION\MISSIONS\ATLASPATHTABLE.MBIN
METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN
METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN

"Mission Timer Redux Fleet"
(only for Fleet Expeditions)

GCFLEETGLOBALS.GLOBAL.MBIN

"Merged MTR-LMF"
(Merged "Mission Timer Redux" with "Legit Max Frigates")

GCFLEETGLOBALS.GLOBAL.MBIN
METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN
METADATA\SIMULATION\MISSIONS\ATLASPATHTABLE.MBIN
METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN
METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN


***************************************************************************************

Thanks to Babscool some .lua files (script) are provided with every variations.
So you can merge this Mod with any other one modifying any of the same files,
or update it yoursel with "AMUMSS" if i'm not around to do it.

To merge Mods with "AMUMSS" it's real easy !

You would have to choose a lua file (or the .pak file) from the Mod you'd want to merge and one lua file from this Mod, put them both in the "ModScript" AMUMSS' folder, run "BUILDMOD.bat", answer Y(es) to the first 2 questions and whatever you want for the last ones, let it do its thing then get the pak file, to use instead of the ones coming from our two Mods,
(that can be renamed to whatever) in "CreatedModPAKs".

That merge needs to be done again every time a Mod is updating !


***************************************************************************************

Installation Instructions :

Manually :

Put the "_MOD_....pak" file which is inside the archive (.zip) you choose in your
InstallPath\No Man's Sky\GAMEDATA\PCBANKS\MODS folder.

If that doesn't exist, create it ("MODS" not Mods or mods or whatever,
as it's case sensitive and uppercase is the rule).

or

Via Vortex (Nexus new Mod Manager) :

Just click on the "Mod Manager Download" button.

In any case:

- Delete, remove or rename the file DISABLEMODS.txt from the PCBANKS folder
(also watch out for big updates since HG often add one back then).


***************************************************************************************


Uninstallation :

Such an nasty thing to do...
Delete the "_MOD_....pak" from your MODS folder, or
Disable/Uninstall and Remove it via Vortex.
That's it. Bye Bye ! ;)


****************************************************************************************


Thanks to monkeyman192 for keeping updating his great tool "MBINCompiler".
Thanks to all members of the No Man's Sky Modding Discord Channel for their kind help and insight.
Big shout out to Babscool for providing some of the .lua files.
