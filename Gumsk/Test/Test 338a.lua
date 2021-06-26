Author = "Gumsk"
ModName = "Test"
ModNameSub = ""
BaseDescription = "Test"
GameVersion = "338"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"

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
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","C","BaseStats"},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_DAMAGE"},
				["PRECEDING_FIRST"] = "TRUE",
				["VALUE_CHANGE_TABLE"] = {
					{"Min",0},
					{"Max",0},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","C","BaseStats"},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
				["PRECEDING_FIRST"] = "TRUE",
				["VALUE_CHANGE_TABLE"] = {
					{"Min",12},
					{"Max",20},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Dropship","C","BaseStats"},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_HYPERDRIVE"},
				["PRECEDING_FIRST"] = "TRUE",
				["VALUE_CHANGE_TABLE"] = {
					{"Min",0},
					{"Max",5},
				}
			},
		}
}}}}}