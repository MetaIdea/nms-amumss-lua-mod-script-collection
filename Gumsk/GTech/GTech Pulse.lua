Author = "Gumsk"
ModName = "GTech"
ModNameSub = "Pulse Speed"
BaseDescription = "Increases to ship boost and pulse speeds"
GameVersion = "352"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

Ship_Boost = 101
Ship_PulseDrive_MiniJumpSpeed = 2

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"]	= {

	{["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP1"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] ={
			{"Bonus", Ship_Boost}}},
	{["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP1"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] ={
			{"Bonus", Ship_PulseDrive_MiniJumpSpeed}}},
	
}}}}}}