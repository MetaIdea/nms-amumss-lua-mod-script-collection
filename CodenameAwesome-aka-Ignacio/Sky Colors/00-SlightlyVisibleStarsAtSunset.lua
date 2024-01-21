--see also StandardSchemeExtended.lua

ALPHA = 0.9

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "SlightlyVisibleStarsAtSunset.pak",
  ["MOD_BATCHNAME"]		= "Spacefarer-SkyColors",
  ["MOD_DESCRIPTION"]		= "Makes the sky slightly transparent",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "4.04",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DUSKSKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SkyColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"A",ALPHA},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SkyUpperColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"A",ALPHA},
							}
						}
					}
				},
			}
		},
	}
}