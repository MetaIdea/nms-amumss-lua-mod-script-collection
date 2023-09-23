NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]  = "NoPauseLoseFocus.pak",
    ["MOD_AUTHOR"]    = "Kevrlet",
    ["NMS_VERSION"]   = "4.40",
    ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"AlwaysHaveFocus", "True"}
							}
						}
					}
				},
			}
		}
	}
}