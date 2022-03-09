Author = "Gumsk"
ModName = "gTech"
ModNameSub = "Hyperdrive"
BaseDescription = "Vastly increases ship and freighter hyperdrive range."
GameVersion = "382"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"]	= {

	{ --Life Support damage reduction
	["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 1,
		["SECTION_ACTIVE"] = {1,},							
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", 999999}}},

	{ --Life Support damage reduction
	["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE_SPEC","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 1,
		["SECTION_ACTIVE"] = {1,},							
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", 999999}}},

	{ --Life Support damage reduction
	["SPECIAL_KEY_WORDS"] = {"ID", "WARP_ALIEN","StatsType","Ship_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 1,
		["SECTION_ACTIVE"] = {1,},							
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", 999999}}},

	{ --Life Support damage reduction
	["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE","StatsType","Freighter_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 1,
		["SECTION_ACTIVE"] = {1,},							
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", 999999}}},

}}}}}}