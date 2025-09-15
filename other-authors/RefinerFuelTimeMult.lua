--Type your own wanted Capacity for the Portable Refinery
Capacity = 80 --Default 80

--Don't edit anything below this
Multiplier = 0.8
BaseTime = 300 --Time in Seconds
calculatedCapacity = math.floor(Capacity/Multiplier)
calculatedTime = math.floor((calculatedCapacity/100)*BaseTime)





NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "RefinerFuelTimeMult.pak",
["MOD_AUTHOR"]		= "XiNaru",
["NMS_VERSION"]		= "5.01.1",
["MOD_DESCRIPTION"]	= "Add the Ability to set an own Portable and Personal Refinery Fuel Capacity/Time",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]	= {
					                            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN",
												"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
											  },
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "MAINT_FUEL1"},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{ "MaxCapacity", calculatedCapacity },				
								{ "AmountEmptyTimePeriod", calculatedTime },				
							}
						},
					},
				}, 
			},
		}
	}	
}