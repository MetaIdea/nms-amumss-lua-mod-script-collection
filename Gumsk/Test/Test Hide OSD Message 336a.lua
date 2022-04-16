Author = "Gumsk"
ModName = "Test"
ModNameSub = "Hide OSD Message"
BaseDescription = "Test"
GameVersion = "336"
ModVersion = "a"
FileSource1 = "UI\HUD\HUDDEATHPAGE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"FontHeight","50"},
				["REPLACE_TYPE"] = "ALL",
				--["WHERE_IN_SECTION"] = {{"FontHeight","55"}},
				["VALUE_CHANGE_TABLE"] = {
					{"FontHeight","200"},
				},
			},
		}
}}}}}