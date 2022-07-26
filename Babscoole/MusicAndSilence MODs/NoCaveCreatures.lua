NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "NoCaveCreatures.pak",
["MOD_AUTHOR"]    = "MusicAndSilence",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.97",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ProbabilityOfBeingEnabled", "0" },
								{"IncreasedSpawnDistance",    "2" },
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\CAVE\CAVETABLECOMMON.MBIN",											
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
							["SECTION_ACTIVE"] = {1,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ProbabilityOfBeingEnabled", "0" },
							}
						},
					}
				},				
			}
		},
	},	
}