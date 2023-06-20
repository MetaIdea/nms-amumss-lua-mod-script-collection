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
							COMMENT = [[Test with LINE_OFFSET of 0]],
              ["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = 0,
							["VALUE_CHANGE_TABLE"] 	= {
								{"InteractionType","MessageBeacon"}
							}
						},

						{
							COMMENT = [[Will not compile
              Test with LINE_OFFSET a table with number]],
              ["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = {5},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE","ThisIsNOTHING"} -- IGNORE could be anything else here, LINE_OFFSET forces the change regardless
							}
						},

						{
							COMMENT = [[Will not compile
              Test with LINE_OFFSET a table with string number]],
              ["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = {"5"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE","ThisIsNOTHING"} -- IGNORE could be anything else here, LINE_OFFSET forces the change regardless
							}
						},

						{
							COMMENT = [[Will not compile
              Test with LINE_OFFSET a string number]],
              ["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = "5", -- a string, found line plus 5
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE","ThisIsNOTHING"} -- IGNORE could be anything else here, LINE_OFFSET forces the change regardless
							}
						},

						{
							COMMENT = [[Will not compile
              Test with LINE_OFFSET a number]],
							["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = -6, -- a number, found line minus 6
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE","ThisIsNOTHING"} -- IGNORE could be anything else here, LINE_OFFSET forces the change regardless
							}
						},

					},
				},
				
			}
		}
	} --5 global replacement
}