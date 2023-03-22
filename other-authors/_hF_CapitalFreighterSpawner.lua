Version = "1.0"
GameVersion = "4.15"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_CapitalFreighterSpawner.pak",
["MOD_AUTHOR"]		= "hemis FEAR (Originally: revaneldaris9)",
["NMS_VERSION"]		= GameVersion,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "Replaces the first set of Freighter spawns w/ the system's Capital Freighter",
["MODIFICATIONS"]	= 
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
