EXTRACTOR_SPEED = -3600 -- default = -79200
EXTRACTOR_STORAGE = 5000 -- default = 350

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_speedystellarextractor.pak",
["MOD_DESCRIPTION"] = "Improve max storage and cycle time of stellar extractor", 
["MOD_AUTHOR"]      = "Roflnomish",
["LUA_AUTHOR"]      = "Babscoole",  
["NMS_VERSION"]     = "3.97",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
							},
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
							},
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
							},
						},
					},
				},
			}
		}
	}
}