NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = "Tech20.pak",
  ["MOD_DESCRIPTION"] = "quick edit to salvaged technology-data drops, from 2-4 to 5-10 or 10-20", 
  ["MOD_AUTHOR"]      = "GrandTickler", 
  ["LUA_AUTHOR"]      = "Babscoole", 
  ["NMS_VERSION"]     = "3.97",
  ["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE", "ID","BP_SALVAGE",},
							["SECTION_ACTIVE"] = {5,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "10"},
								{"AmountMax", "20"},
							}
						},					
					},
				},
			}
		}
	}
}