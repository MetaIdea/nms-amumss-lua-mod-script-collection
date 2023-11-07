--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Please don't remove the 0 at the beginning of the script. This ensures that it runs before other scripts. That way, the changes to the grass will affect any following scripts, optimizing them as well.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Duplicates the Frozen biome and forces DISTANTOBJECTS to spawn to create the HugeFrozen biome",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create new files
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/HUGEPROPS/HUGEFROZEN/HUGEFROZENBIOME.MBIN"},
					},
				},
				{--Replace the HugeRing subtype with the HugeFrozen biome
					["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"BiomeSubType","HugeRing"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Filename","OPENBE/BIOMEFILES/CODENAMEAWESOME/HUGEPROPS/HUGEFROZEN/HUGEFROZENBIOME.MXML"}
							}
						}
					}
				},
				{--Biome file edits
					["MBIN_FILE_SOURCE"] = {"OPENBE/BIOMEFILES/CODENAMEAWESOME/HUGEPROPS/HUGEFROZEN/HUGEFROZENBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{--Replace the color palette file
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile","METADATA/SIMULATION/SOLARSYSTEM/COLOURS/BASECOLOURPALETTES.MBIN"},
							}
						},
						{--Set all the screen filter weights to be 1
							["PRECEDING_KEY_WORDS"] = {"GcScreenFilterOption.xml"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"Weight",1},
							}
						},
						{--Tweak the terrain to match other huge biomes
							["PRECEDING_KEY_WORDS"] = {"NoiseLayers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Texture",0},
							}
						},
						{--Make the distant objects always spawn
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["VALUE_CHANGE_TABLE"] = {
								{"Probability",1}
							}
						},
						{--Make the landmarks rarely spawn
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"Probability",0.1}
							}
						}
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE