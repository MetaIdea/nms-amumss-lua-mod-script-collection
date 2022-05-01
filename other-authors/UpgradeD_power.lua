-- Rarity used when multiplying
RANK_C_MULT = 1.1
RANK_B_MULT = 1.2
RANK_A_MULT = 1.3
RANK_S_MULT = 1.4
RANK_X_MULT = 1.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UpgradeD_power.pak",
["MOD_DESCRIPTION"]			= "Increases the peak power of some of the modules (not all values are increased).",
["MOD_AUTHOR"]				= "Bean-Bon",
["NMS_VERSION"]				= "3.88",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Quality", "Normal"},
							["PRECEDING_KEY_WORDS"] = {"StatLevels"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "1.00",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ValueMax", RANK_C_MULT}
							}},
						{
							["SPECIAL_KEY_WORDS"] = {"Quality", "Rare"},
							["PRECEDING_KEY_WORDS"] = {"StatLevels"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "1.00",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ValueMax", RANK_B_MULT}
							}},
						{
							["SPECIAL_KEY_WORDS"] = {"Quality", "Epic"},
							["PRECEDING_KEY_WORDS"] = {"StatLevels"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "1.00",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ValueMax", RANK_A_MULT}
							}},
						{
							["SPECIAL_KEY_WORDS"] = {"Quality", "Legendary"},
							["PRECEDING_KEY_WORDS"] = {"StatLevels"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "1.00",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ValueMax", RANK_S_MULT}
							}},
						{
							["SPECIAL_KEY_WORDS"] = {"Quality", "Illegal"},
							["PRECEDING_KEY_WORDS"] = {"StatLevels"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "1.00",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ValueMax", RANK_X_MULT}
							}},
					},
				}
			}
		}
	}
}