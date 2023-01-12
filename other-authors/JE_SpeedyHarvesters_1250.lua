-- speed is in seconds, and has to be a negative value. default = -79200 which is 22 hours, -3600 is 1 hour.
HARVESTER_SPEED = -1800 -- default = -3600
HARVESTER_STORAGE = 1250 -- default = 250
F_HARVESTER_SPEED = 1800 -- default = 3600, fuel burn time

Author = "Jaggid Edje"
ModName = "SpeedyHarvesters"
ModNameSub = "JE"
BaseDescription = "Increases speed and storage of AMUs and Oxygen and Gas Harvesters"
GameVersion = "4.08"
ModVersion = "v4.08"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\GASHARVESTER\ENTITIES\GASHARVESTER.ENTITY.MBIN"
FileSource2 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\OXYGENHARVESTER180\ENTITIES\OXYGENHARVESTER.ENTITY.MBIN"
FileSource3 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HARVESTER\ENTITIES\RESOURCEHARVESTER.ENTITY.MBIN"
FileSource4 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"




NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "GAS1" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",           HARVESTER_STORAGE},
								{"AmountEmptyTimePeriod", HARVESTER_SPEED},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource2,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "OXYGEN" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",           HARVESTER_STORAGE},
								{"AmountEmptyTimePeriod", HARVESTER_SPEED},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL4" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource3,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "YELLOW2" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",           HARVESTER_STORAGE},
								{"AmountEmptyTimePeriod", HARVESTER_SPEED},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL1" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource4,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "BUILDHARVESTER" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp",           "True"}
								
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "BUILDGASHARVEST" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp",           "True"}
								
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "O2_HARVESTER" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp",           "True"}
								
							}
						},
					},
				},
			}
		}
	}
}