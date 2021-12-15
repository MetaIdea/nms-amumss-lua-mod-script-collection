Author = "Gumsk"
ModName = "GProc"
ModNameSub = "Fleet Speed 0.05"
BaseDescription = "Procedural technology upgrade modifications"
GameVersion = "352"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	{["SPECIAL_KEY_WORDS"] = {"ID","UP_FRSPE4","StatsType","Freighter_Fleet_Speed"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin", 0.05},
			{"ValueMax", 0.05},
		}},
},}},}}}