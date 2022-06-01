--------------------------------------------
-- Quicksilver Mission Muliplier Settings --
--------------------------------------------

-- Multipliers --
Daily_Multiplier = "10" -- Nexus Daily Quicksilver Mission Muliplier
Weekly_Multiplier = "10" -- Nexus Weekly Quicksilver Mission Muliplier

-------------------------------------------------------------------
-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --
-------------------------------------------------------------------

-- File Settings --
FileName = "QS Daily Mission Reward 10x 1.4.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= FileName,
  ["MOD_AUTHOR"]				= ModAuthor,
  ["LUA_AUTHOR"]				= LuaAuthor,
  ["NMS_VERSION"]				= NMS_Version,
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {FileSource1},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 1,
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Daily_Multiplier},
								{"AmountMax",	Daily_Multiplier},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS_PQ","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 1,
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Weekly_Multiplier},
								{"AmountMax",	Weekly_Multiplier},
							},
						},
					}
				},
			}
		},
	}
}