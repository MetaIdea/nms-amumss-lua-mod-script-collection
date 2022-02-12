NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = "NeoFastDialogues-Expeditions.pak",
	["MOD_AUTHOR"] = "Ergoforce0",
	["MOD_DESCRIPTION"] = "speed up communications as much as possible",
	["NMS_VERSION"] = "3.35",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
				  ["MBIN_FILE_SOURCE"] = "METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
				  ["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Delay", "0.01",}, -- set exisiting delay values to 0.01
								{"DefaultDelay", "0.001",} -- set exisiting DefaultDelay values to 0.001
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Punctuation","{}",},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] =
							{
								{"Delay", "0",}, -- Keep existing Default value 0
							}
						}
					}
				}
			}
		}
	}
}