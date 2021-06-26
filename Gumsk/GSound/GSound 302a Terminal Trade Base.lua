Author = "Gumsk"
ModName = "GSound"
ModNameSub = "Terminal Trade Base"
BaseDescription = "Silence base galactic trade terminal"
GameVersionA = "3"
GameVersionB = "0"
GameVersionC = "2"
ModVersion = "a"
FileSource = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL\ENTITIES\TERMINAL.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersionA..GameVersionB..GameVersionC..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersionA.."."..GameVersionB.."."..GameVersionC,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
	["MBIN_FILE_SOURCE"] = FileSource,
	["EXML_CHANGE_TABLE"] = {{
		["VALUE_CHANGE_TABLE"] = {
			{"Filename", ""}
}}}},}}}}
