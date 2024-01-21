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
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DAYSKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings"},
							["SEC_SAVE_TO"] = "day_colors",
							["SEC_KEEP"] = "TRUE"
						},
						{
							["SEC_EDIT"] = "day_colors",
							["REMOVE"] = "HBOS",
							["SEC_KEEP"] = "TRUE"
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DUSKSKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings"},
							["SEC_SAVE_TO"] = "dusk_colors",
							["SEC_KEEP"] = "TRUE"
						},
						{
							["SEC_EDIT"] = "dusk_colors",
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