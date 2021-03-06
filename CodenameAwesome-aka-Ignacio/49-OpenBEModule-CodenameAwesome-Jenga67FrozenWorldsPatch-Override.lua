--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak AND _FROZEN_WORLDS.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-Jenga67FrozenWorldsPatch-SplitFiles.pak",
  ["MOD_DESCRIPTION"]		= "Splits Jenga97's Frozen Worlds mod into OpenBE's layered system and adds the object lists to the appropriate biomes",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {--Copy the files
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN","OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENHQOBJECTSMID.MBIN"},
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN","OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENHQOBJECTSMID.MBIN"},
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN","OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENHQOBJECTSMID.MBIN"},
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSFULL.MBIN"},
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSFULL.MBIN"},
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENOBJECTSFULL.MBIN"},
					},
				},
				{--Clean up LANDMARKS
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENHQOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSFULL.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["REMOVE"] = "SECTION",
						},
					},
				},
				{--Clean up OBJECTS
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENHQOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENOBJECTSFULL.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["REMOVE"] = "SECTION",
						},
					},
				},
				{--Clean up DETAILOBJECTS
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENHQOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSFULL.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["REMOVE"] = "SECTION",
						},
					},
				},
			}
		}
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE