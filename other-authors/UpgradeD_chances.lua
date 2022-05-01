-- Applicable values for rarities trending upwards (better results):
-- "MaxIsSuperRare" > "MaxIsRare" > "MaxIsUncommon" > "NoWeighting" > "MinIsUncommon" > "MinIsRare" > "MinIsSuperRare"
-- How will each rarity be replaced
-- NO_WEIGHT may be best to be kept intact as most (I believe all) of the values have no range
MAX_SUPER_RARE = "MinIsRare"
MAX_RARE = "MinIsRare"
MAX_UNCOMMON = "MinIsSuperRare"
NO_WEIGHT = "NoWeighting"
MIN_UNCOMMON = "MinIsSuperRare"
MIN_RARE = "MinIsSuperRare"
MIN_SUPER_RARE = "MinIsSuperRare"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UpgradeD_chances.pak",
["MOD_DESCRIPTION"]			= "Improves the chances of obtaining better quality modules.",
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
					-- Prep lines
						{
							["VALUE_MATCH"] = "MaxIsSuperRare",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", "MAX_SUPER_RARE_TARGET"}
							}},
						{
							["VALUE_MATCH"] = "MaxIsRare",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", "MAX_RARE_TARGET"}
							}},
						{
							["VALUE_MATCH"] = "MaxIsUncommon",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", "MAX_UNCOMMON_TARGET"}
							}},
						{
							["VALUE_MATCH"] = "NoWeighting",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", "NO_WEIGHT_TARGET"}
							}},
						{
							["VALUE_MATCH"] = "MinIsRare",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", "MIN_RARE_TARGET"}
							}},
						{
							["VALUE_MATCH"] = "MinIsSuperRare",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", "MIN_SUPER_RARE_TARGET"}
							}},
					-- Process rarity changes
						{
							["VALUE_MATCH"] = "MAX_SUPER_RARE_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", MAX_SUPER_RARE}
							}},
						{
							["VALUE_MATCH"] = "MAX_RARE_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", MAX_RARE}
							}},
						{
							["VALUE_MATCH"] = "MAX_UNCOMMON_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", MAX_UNCOMMON}
							}},
						{
							["VALUE_MATCH"] = "NO_WEIGHT_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", NO_WEIGHT}
							}},
						{
							["VALUE_MATCH"] = "MIN_UNCOMMON_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", MIN_UNCOMMON}
							}},
						{
							["VALUE_MATCH"] = "MIN_RARE_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", MIN_RARE}
							}},
						{
							["VALUE_MATCH"] = "MIN_SUPER_RARE_TARGET",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"WeightingCurve", MIN_SUPER_RARE}
							}},
					}
				}
			}
		}
	}
}