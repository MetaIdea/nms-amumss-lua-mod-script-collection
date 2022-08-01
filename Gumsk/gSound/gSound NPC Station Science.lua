Author = "Gumsk"
ModName = "GSound"
ModNameSub = "NPC Station Science"
BaseDescription = "Mutes the NPC science station"
GameVersion = "388"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\NPCROOMS\NPC_SCIENCE\ENTITIES\WORKDESK.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
	["EXML_CHANGE_TABLE"] = {{
		["VALUE_CHANGE_TABLE"] = {
			{"Ambient", ""}
}}}},}}}}
