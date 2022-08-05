-- speed is in seconds, and has to be a negative value. default = -79200 which is 22 hours, -3600 is 1 hour.
EXTRACTOR_SPEED = -7200 -- default = -79200
EXTRACTOR_STORAGE = 6000 -- default = 350

-- change variables in quotes to change item spawned. get IDs from here: https://docs.google.com/spreadsheets/d/1J8WdrubKgo8A9hPY-hbQLq4eVrb3n3lZAgiI2J7ncAU/edit#gid=66931870
PRODUCT_YELLOWSTAR = "ASTEROID1" -- Silver/ Default = STELLAR2 = Chromatic Metal
PRODUCT_REDSTAR = "ASTEROID2" -- Gold/ Default = GAS1 = Sulpherine
PRODUCT_GREENSTAR = "ASTEROID3" -- Platinum/ Default = GAS2 = Radon
PRODUCT_BLUESTAR = "TECHFRAG" -- Nanite Cluster/ Default = GAS3 = Nitrogen

-- EDITABLE VALUES ABOVE THIS LINE. DON'T TOUCH BELOW UNLESS YOU KNOW WHAT YOU'RE DOING, IN WHICH CASE YOU KNOW MORE THAN ME ;)
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_speedystellarextractor.pak",
["MOD_DESCRIPTION"] = "Improve max storage and cycle time of stellar extractor, and change extractor products", 
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
						    ["SPECIAL_KEY_WORDS"] = {"Id", "STELLAR2" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
								{"Id", PRODUCT_YELLOWSTAR},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
								{"Id", PRODUCT_REDSTAR},
							},
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
								{"Id", PRODUCT_GREENSTAR},
							},
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapactiy",           EXTRACTOR_STORAGE},
								{"AmountEmptyTimePeriod", EXTRACTOR_SPEED},
								{"Id", PRODUCT_BLUESTAR},
							},
						},
					},
				},
			}
		}
	}
}