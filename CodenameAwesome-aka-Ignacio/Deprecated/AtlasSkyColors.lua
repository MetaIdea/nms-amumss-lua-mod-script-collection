--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "AtlasSkyColors.pak",
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
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DAYSKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{--Clamp the SkyUpperColour color to be brighter, since some of the old palettes are too dark.
							["PRECEDING_KEY_WORDS"] = {"SkyUpperColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_MATCH"] = "0.4",
							["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] = {
								{"R",0.4},
								{"G",0.4},
								{"B",0.4},
							}
						},
						{--Clamp the LightColour color to be brighter, since some of the old palettes are too dark.
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
						{--Set CloudColour2 to match SkyUpperColour but darker.
							["PRECEDING_KEY_WORDS"] = {"CloudColour2"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] 	= "*LB:53",
							["VALUE_CHANGE_TABLE"] = {
								{"R",0.55},
								{"G",0.55},
								{"B",0.55},
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