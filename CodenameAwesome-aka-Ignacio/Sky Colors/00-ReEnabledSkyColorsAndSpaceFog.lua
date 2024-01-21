--see also StandardSchemeExtended.lua

CLOUDCOLOUR2_BRIGHTNESS = 0.8

SKY_RGB_MIN = 0.3

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "ReEnabledSkyColors.pak",
  ["MOD_BATCHNAME"]		= "Spacefarer-SkyColors",
  ["MOD_DESCRIPTION"]		= "Restores sky color palettes from the days of Atlas Rises.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "4.04",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = {"GCSKYGLOBALS.GLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"SafeSkyMaxIndex",9999},
								{"FrozenSkyMaxIndex",9999},
							}
						},
						{--Match SpaceFogPlanetMax to SpaceFogMax
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*FB:SpaceFogMax",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpaceFogPlanetMax",	1},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {"GCSKYGLOBALS.GLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"SafeSkyMaxIndex",9999},
								{"FrozenSkyMaxIndex",9999},
							}
						},
						{--Match SpaceFogPlanetMax to SpaceFogMax
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*FB:SpaceFogMax",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpaceFogPlanetMax",	1},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DAYSKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SkyColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_MATCH"] = SKY_RGB_MIN,
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] = {
								{"R",SKY_RGB_MIN},
								{"G",SKY_RGB_MIN},
								{"B",SKY_RGB_MIN},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SkyUpperColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_MATCH"] = SKY_RGB_MIN,
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] = {
								{"R",SKY_RGB_MIN},
								{"G",SKY_RGB_MIN},
								{"B",SKY_RGB_MIN},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LightColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_MATCH"] = "0.8",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] = {
								{"R",0.8},
								{"G",0.8},
								{"B",0.8},
							}
						},
						{--Set CloudColour1 to match HorizonColour
							["PRECEDING_KEY_WORDS"] = {"CloudColour1"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] 	= "*LB:35",
							["VALUE_CHANGE_TABLE"] = {
								{"R",0.9},
								{"G",0.9},
								{"B",0.9},
							}
						},
						{--Set CloudColour2 to match SkyColour
							["PRECEDING_KEY_WORDS"] = {"CloudColour2"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] 	= "*LB:53",
							["VALUE_CHANGE_TABLE"] = {
								{"R",CLOUDCOLOUR2_BRIGHTNESS},
								{"G",CLOUDCOLOUR2_BRIGHTNESS},
								{"B",CLOUDCOLOUR2_BRIGHTNESS},
							}
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE