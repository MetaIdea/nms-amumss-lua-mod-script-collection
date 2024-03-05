ModAuthor = "Gumsk"
LuaAuthor = "lyravega"
ModName = "gBlack Market"
ModNameSub = "Better X"
BaseDescription = "Changes the weighting curve of X-class upgrades"
GameVersion = "452"
ModVersion = "a"

NewWeightingCurve = "MinIsUncommon"				--MaxIsRare; X-class curves where higher is better
NewWeightingCurveReverse = "MaxIsUncommon" 		--MinIsUncommon; X-class curves where lower is better

--[[Files Modified:
METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						--Find reversed weighting curves, where lower is better, and temporarily label them Temp
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {
								"Quality","Illegal",
							},
							["VALUE_MATCH_OPTIONS"] = "=",
							["VALUE_CHANGE_TABLE"] = {
								{"WeightingCurve","Temp"},
							},
							["VALUE_MATCH"] = {
								"MinIsRare",
								"MinIsUncommon",
							},
						},
						--Find normal weighting curves, where higher is better, and apply the improved normal weighting curve
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {
								"Quality","Illegal",
							},
							["VALUE_MATCH_OPTIONS"] = "=",
							["VALUE_CHANGE_TABLE"] = {
								{"WeightingCurve",NewWeightingCurve},
							},
							["VALUE_MATCH"] = {
								"MaxIsRare",
								"MaxIsUncommon",
							},
						},
						--Find weighting curves labeled Temp and apply the improved reversed weighting curve
						{
							["REPLACE_TYPE"] = "ALL",
							["SPECIAL_KEY_WORDS"] = {
								"Quality","Illegal",
							},
							["VALUE_MATCH_OPTIONS"] = "=",
							["VALUE_CHANGE_TABLE"] = {
								{"WeightingCurve",NewWeightingCurveReverse},
							},
							["VALUE_MATCH"] = {
								"Temp",
							},
						},
					}
				},
			}
		}
	}
}