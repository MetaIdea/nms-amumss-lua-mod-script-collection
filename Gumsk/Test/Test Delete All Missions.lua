Author = "Gumsk"
ModName = "Test"
ModNameSub = "Test"
BaseDescription = "Test"
GameVersion = "313"
ModVersion = "a"
FileSource = "METADATA\SIMULATION\MISSIONS\COMMUNITYMISSIONTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
		["PRECEDING_KEY_WORDS"] = "GcGenericMissionSequence.xml",
		["REPLACE_TYPE"] = "ALL",
		["REMOVE"] = "SECTION",
	},
}},}},}}