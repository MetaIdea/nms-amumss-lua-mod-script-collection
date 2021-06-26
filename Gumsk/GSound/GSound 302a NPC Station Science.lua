Author = "Gumsk"
ModName = "GSound"
ModNameSub = "NPC Station Science"
BaseDescription = "Silence NPC science station"
GameVersionA = "3"
GameVersionB = "0"
GameVersionC = "2"
ModVersion = "a"
FileSource = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\NPCROOMS\NPC_SCIENCE\ENTITIES\WORKDESK.ENTITY.MBIN"

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
			{"Ambient", ""}
}}}},}}}}
