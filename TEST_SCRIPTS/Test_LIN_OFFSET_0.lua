NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "Test_LINE_OFFSET_0.pak",
	["MOD_DESCRIPTION"]	= "",
	["MOD_AUTHOR"]		= "Wbertro",
	["NMS_VERSION"]		= "",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\MESSENGER\ENTITIES\MESSENGER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = {
					
						{
							["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							["LINE_OFFSET"] = 0,
							["VALUE_CHANGE_TABLE"] 	= {
								{"InteractionType","None"}
							}
						},
					},
				},
				
			}
		}
	} --1 global replacement
}