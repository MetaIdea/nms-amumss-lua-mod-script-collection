Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "No Falling Damage"
BaseDescription = "No falling damage"
GameVersion = "370"
ModVersion = "a"
FileSource = "GCPLAYERGLOBALS.GLOBAL.MBIN"

HardLandTime = 8		--0.5
HardLandMin = 50		--5
HardLandMax = 150		--18

  
NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{["VALUE_CHANGE_TABLE"] = {
	
	{"HardLandTime",HardLandTime},
	{"HardLandMin",HardLandMin},
	{"HardLandMax",HardLandMax},
	
	}},
}}}}}}