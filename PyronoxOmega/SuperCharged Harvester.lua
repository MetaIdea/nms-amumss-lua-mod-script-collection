Author = "PyronoxOmega"
ModName = "SuperCharged AUTO MINER"
GameVersion = "4.9"
ModVersion = "1.0"
Description = "SuperCharged Harvester with 9999  output in 30 secs "

Timer = "-15" --collection time 
outpt = "9999" --resource ammount 

--do not change any values below this line unless you know what you are doing !!! 

FileSource1 = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HARVESTER\ENTITIES\RESOURCEHARVESTER.ENTITY.MBIN"}
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName .. "" .. GameVersion .. ModVersion .. ".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] = Description,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource1,
						
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
						     ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
							 ["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								
								{"AmountEmptyTimePeriod",-1}
							}
						},
						
						{
						     ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
							 ["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity" , outpt},
								{"AmountEmptyTimePeriod",Timer}
							}
						},
						
					}
				},		
			}
		}
	}	
}