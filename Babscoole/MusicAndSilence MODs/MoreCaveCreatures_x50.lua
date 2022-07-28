NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "MoreCaveCreatures_x50.pak",
["MOD_AUTHOR"]    = "MusicAndSilence",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.97",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",											
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Sparse",    "2500" },
								{"Normal",    "5000" },
								{"Dense",     "10000" },
								{"VeryDense", "15000" },
							}
						},
					}
				},				
			}
		},
	},	
}