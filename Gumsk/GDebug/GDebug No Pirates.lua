Author = "Gumsk"
ModName = "gDebug"
ModNameSub = "No Pirates"
BaseDescription = "Removes pirates"
GameVersion = "384"
ModVersion = "a"
FileSource = "GCDEBUGOPTIONS.GLOBAL.MBIN"

	SpawnPirates = "False"						--True
	SpawnRobots = "True"						--True

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] 	= {
	{["VALUE_CHANGE_TABLE"] = {
		{"SpawnPirates", SpawnPirates},
		{"SpawnRobots", SpawnRobots},
	}}
}}}}}}