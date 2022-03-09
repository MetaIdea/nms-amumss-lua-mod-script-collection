NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "GFlight NPC No Freighter 23a.pak",
["MOD_DESCRIPTION"]	= "NPC Flight - No NPCs on Freighters",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.3",
["MODIFICATIONS"] = {{
	["MBIN_CHANGE_TABLE"] = {{
	["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN",
	["EXML_CHANGE_TABLE"] = {{
		["VALUE_CHANGE_TABLE"] = {
			{"AIDestination", "False"},
			-- {"NoPlayerCollide", "True"}
		}},
}}}}}}