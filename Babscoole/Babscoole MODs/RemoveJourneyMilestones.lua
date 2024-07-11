NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "RemoveJourneyMilestones.pak", 
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "",
["MOD_DESCRIPTION"] = "Remove base milestones",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{ "IntValue",   "0" },
								{ "FloatValue", "0" },
							}
						}
					}
				},
			}
		}			
	}
}