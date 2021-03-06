--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

MIN_SCALE_MULTIPLIER = 10
MAX_SCALE_MULTIPLIER = 10
DENSITY_MULTIPLIER = 1/10

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Converts the Frozen objects into massive DistantObjects",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENHQOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENHQOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENPILLAROBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENPILLAROBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENROCKYWEIRDOBJECTS.MBIN"},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENHQOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENPILLAROBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Switch out the category names
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[<Property name="DistantObjects" />]],[[]]},
								{[[<Property name="Objects">]],[[<Property name="DistantObjects">]]},
							}
						},
						{--Tweak scale, density and render distance
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MinScale",MIN_SCALE_MULTIPLIER},
								{"MaxScale",MAX_SCALE_MULTIPLIER},
							}
						},
						{--Set the render distance
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"MaxRegionRadius",9999},
								{"MaxImposterRadius",9999},
								{"FadeOutStartDistance",9999},
								{"FadeOutEndDistance",9999},
							}
						},
					}
				},
				{--Add the object list to relevant biomes. This object list doesn't have plants so we're just going to add it everywhere.
				-- The do NOT have to be copied to the actual HUGEFROZENBIOME, as that biome is a copy of the main FROZENBIOME. The changes cross over.
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENHQOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENPILLAROBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEFROZEN/HUGEFROZENROCKYWEIRDOBJECTS.MBIN" />
        </Property>]],
						},
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE