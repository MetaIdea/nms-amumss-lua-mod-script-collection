Author = "Gumsk"
ModName = "gSolar"
ModNameSub = "Abandoned"
BaseDescription = "Most systems are abandoned"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

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
					["PRECEDING_KEY_WORDS"] = {"AbandonedSystemProbability"},
					["VALUE_CHANGE_TABLE"] = {
						{"Yellow", .9},		
						{"Green", .5},
						{"Blue", .1},
						{"Red", .9}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"EmptySystemProbability"},
					["VALUE_CHANGE_TABLE"] = {
						{"Yellow", 0},		
						{"Green", .5},
						{"Blue", .9},
						{"Red", .1}
					}
				},
			}
		}
	}
}
}}