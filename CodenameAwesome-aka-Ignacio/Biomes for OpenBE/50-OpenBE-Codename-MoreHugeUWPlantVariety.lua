--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

MIN_SCALE_MULTIPLIER = 10
MAX_SCALE_MULTIPLIER = 15
DENSITY_MULTIPLIER = 1/12.5

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Converts the UNDERWATER objects into massive DistantObjects",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/UNDERWATER/UNDERWATERCRYSTALS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCRYSTALS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/UNDERWATER/UNDERWATERCUCUMBERLIGHTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCUCUMBERLIGHTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/UNDERWATER/UNDERWATERCURVECORAL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCURVECORAL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/UNDERWATER/UNDERWATERFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/UNDERWATER/UNDERWATERGASBAGS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERGASBAGS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/UNDERWATER/UNDERWATERMONOLITHS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERMONOLITHS.MBIN"},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCRYSTALS.MBIN",
					"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCUCUMBERLIGHTS.MBIN",
					"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCURVECORAL.MBIN",
					"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERFULL.MBIN",
					"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERGASBAGS.MBIN",
					"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERMONOLITHS.MBIN",
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
								{"MinHeight",-1},
								{"MaxHeight",128},
							}
						},
					}
				},
				{--Add the object list to relevant biomes. This object list doesn't have plants so we're just going to add it everywhere.
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCRYSTALS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCUCUMBERLIGHTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERCURVECORAL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERGASBAGS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEPROPS/HUGEUWPLANT/UNDERWATERMONOLITHS.MBIN" />
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