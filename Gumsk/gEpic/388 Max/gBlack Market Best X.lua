Author = "Gumsk"
ModName = "gBlack Market"
ModNameSub = "Best X"
BaseDescription = "Changes the weighting curve of X-class upgrades"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

WeightingCurve = "MinIsSuperRare"		--MaxIsRare

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
				{
					["SPECIAL_KEY_WORDS"] = {"Quality","Illegal"},
					["REPLACE_TYPE"] = "ALL",
					["LINE_OFFSET"] = 1,
					["VALUE_CHANGE_TABLE"] = {
						{"WeightingCurve", WeightingCurve},
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","UP_LASERX"},
					["VALUE_CHANGE_TABLE"] = {
						{"NumStatsMax", 4},
					}
				},
			}
		}
	}
}
}}