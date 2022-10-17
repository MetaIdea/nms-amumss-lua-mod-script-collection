NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "More Salvage (50-70).pak",
  ["MOD_DESCRIPTION"] = "50-70 Salavage",
  ["MOD_AUTHOR"]      = "OmniSpecter",
  ["LUA_AUTHOR"]      = "Babscoole",
  ["NMS_VERSION"]     = "4.x",
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
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"AmountMin", "50"},
								{"AmountMax", "70"},
							}
						},
					},
				},
			}
		}
	}
}