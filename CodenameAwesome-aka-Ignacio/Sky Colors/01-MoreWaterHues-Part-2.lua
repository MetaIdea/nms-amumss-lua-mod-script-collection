dofile([[OBE_methods.lua]])

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "IgnaciosWaterColors.pak",
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
						"METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Settings"},
							["ADD"] = hue_cycler("water_colors")
						}
					}
				}
			}
		},
	}
}