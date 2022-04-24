Author = "Gumsk"
ModName = "gProc"
ModNameSub = "Sentinel Gun Test"
BaseDescription = "Procedural technology upgrade modifications"
GameVersion = "384"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_SENGUN","StatsType","Weapon_Projectile_Damage"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","100"},
			{"ValueMax","100"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_SENGUN","StatsType","Weapon_Projectile_ReloadTime"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.001"},
			{"ValueMax","0.001"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_SENGUN","StatsType","Weapon_Projectile_Rate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","10"},
			{"ValueMax","10"},
		}
	},

},}},}}}
