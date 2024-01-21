NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "IgnaciosSkyColors.pak",
  ["MOD_BATCHNAME"]		= "Spacefarer-SkyColors",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "4.04",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Settings"},
							["SEC_SAVE_TO"] = "space_colors",
							["SEC_KEEP"] = "TRUE"
						},
						{
							["SEC_EDIT"] = "space_colors",
							["REMOVE"] = "HBOS",
							["SEC_KEEP"] = "TRUE"
						}
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE