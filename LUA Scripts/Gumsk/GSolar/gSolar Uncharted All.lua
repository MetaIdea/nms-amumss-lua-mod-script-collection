Author = "Gumsk"
ModName = "gSolar"
ModNameSub = "Uncharted All"
BaseDescription = "All systems are uncharted"
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
						{"Yellow", .0},		
						{"Green", 0},
						{"Blue", 0},
						{"Red", .0}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"EmptySystemProbability"},
					["VALUE_CHANGE_TABLE"] = {
						{"Yellow", 1},		
						{"Green", 1},
						{"Blue", 1},
						{"Red", 1}
					}
				},
			}
		}
	}
}
}}