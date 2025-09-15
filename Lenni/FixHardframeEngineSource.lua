NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FixHardframeEngineSource.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.50",
["MOD_DESCRIPTION"]			= "Hardframe Engine can be acquired from destroying the barrel as well, not only picking it up",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/ROBOTS/LOOTDROP/MECHLOOT/ENTITIES/MECHLOOT.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"]		= "GcDestructableComponentData",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GivesReward", "MECH_LOOT"},
							}
						},
					}
				},
			}
		}
	}	
}
