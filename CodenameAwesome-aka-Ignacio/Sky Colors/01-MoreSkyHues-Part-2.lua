dofile([[OBE_methods.lua]])

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
							["ADD"] = hue_cycler("day_colors")
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
							["ADD"] = hue_cycler("dusk_colors")
						}
					}
				}
			}
		},
	}
}