NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "FixBlueShipTrail",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.62",
["MOD_DESCRIPTION"]			= "Changes the blue starship trail to the pre-Endurance version",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTTRAIL.MATERIAL.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["PKW"] = "Samplers",
							["VCT"] =
							{
								{"Map", "TEXTURES/EFFECTS/TRAILS/HOT/GLOWBLUE_SHIP.DDS"},
							}
						},
					}
				},
			}
		}
	}
}