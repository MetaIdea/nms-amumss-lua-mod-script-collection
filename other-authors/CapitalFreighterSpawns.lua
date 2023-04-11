NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "CapitalFreighterSpawns.pak",
["MOD_AUTHOR"]				= "Chroma",
["NMS_VERSION"]				= "3.99.1",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"WarpIn",		"True"}, 	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","Role"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AIShipRole",		"CapitalFreighter"}, 	-- Original "Freighter"
							}
						}
					}
				}
			}
		}
	}
}
