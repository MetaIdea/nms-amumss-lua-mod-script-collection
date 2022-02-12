--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Please don't remove the 0 at the beginning of the script. This ensures that it runs before other scripts. That way, the changes to the grass will affect any following scripts, optimizing them as well.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds new biome subtypes that use color palette files previously cut from the game.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Fix the color palettes
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQCOLOURPALETTE.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQCOLOURPALETTES.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQCOLOURPALETTES.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"RockSaturated"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NumColours",	"Inactive"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RockSaturated"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NumColours",	"Inactive"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Sand"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NumColours",	"Inactive"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"BiomeSubType","HighQuality"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MXML]],[[OPENBE/BIOMEFILES/CODENAMEAWESOME/LUSH/LUSHHQBIOME.MXML]]},
								{[[OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MXML]],[[OPENBE/BIOMEFILES/CODENAMEAWESOME/FROZEN/FROZENHQBIOME.MXML]]},
								{[[OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENBIOME.MXML]],[[OPENBE/BIOMEFILES/CODENAMEAWESOME/BARREN/BARRENHQBIOME.MXML]]},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/LUSH/LUSHHQBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/BARREN/BARRENHQBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/FROZEN/FROZENHQBIOME.MBIN"},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/LUSH/LUSHHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQCOLOURPALETTE.MBIN"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/BARREN/BARRENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQCOLOURPALETTES.MBIN"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/CODENAMEAWESOME/FROZEN/FROZENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQCOLOURPALETTES.MBIN"}
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