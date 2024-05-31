Author = "Gumsk"
ModName = "Test"
ModNameSub = "Shield Strength"
BaseDescription = "Test"
GameVersion = "353"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

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
				["SPECIAL_KEY_WORDS"] = {"ID","UP_SHLD4","StatsType","Suit_Armour_Shield_Strength"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"ValueMin",0.001},
					{"ValueMax",0.001},
				}
			},
		}
}}}}}