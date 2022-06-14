-- Quicksliver Reward Settings --
Daily_Minimum  = "1250" -- Nexus Daily Mission
Daily_Maximum  = "1250"
Weekly_Minimum = "6000" -- Nexus Weekly Mission
Weekly_Maximum = "6000"

-- File Settings --
FileName    = "QS Daily Mission Reward 5x 1.41.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["NMS_VERSION"]   = NMS_Version,
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "R_NEXUS_QS", "Currency", "Specials"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Daily_Minimum},
								{"AmountMax",	Daily_Maximum},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "R_NEXUS_QS_PQ", "Currency", "Specials"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Weekly_Minimum},
								{"AmountMax",	Weekly_Maximum},
							},
						},
					}
				},
			}
		},
	}
}