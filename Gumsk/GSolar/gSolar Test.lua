Author = "Gumsk"
ModName = "gSolar"
ModNameSub = "Test"
BaseDescription = "Most systems are uncharted"
GameVersion = "387"
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
						{"Yellow", 0},		--0
						{"Green", 0},		--0.1
						{"Blue", 0},		--0.1
						{"Red", 0}			--0
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"EmptySystemProbability"},
					["VALUE_CHANGE_TABLE"] = {
						{"Yellow", 0},		--0
						{"Green", 0},		--0.4
						{"Blue", 0},		--0.4
						{"Red", 0}			--0.95
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"PirateSystemProbability"},
					["VALUE_CHANGE_TABLE"] = {
						{"Yellow", 0},		--0.25
						{"Green", 0},		--0.15
						{"Blue", 0},		--0.15
						{"Red", 0}			--0.5
					}
				},
			}
		}
	}
}
}}