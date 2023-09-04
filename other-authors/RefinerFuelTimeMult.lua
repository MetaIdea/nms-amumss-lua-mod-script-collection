--Type your own wanted Capacity for the Portable Refinery
Capacity = 80 --Mults with the Multiplier

--Dont Edit Anything below this
Multiplier = 0.8 --Dont Changeable
BaseTime = 300 --Time in Seconds
XiCapacity = math.floor(Capacity/Multiplier)
XiTime = math.floor((XiCapacity/100)*BaseTime)





NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "RefinerFuelTimeMult.pak",
["MOD_AUTHOR"]		= "XiNaru",
["NMS_VERSION"]		= "4.43",
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
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "MAINT_FUEL1"},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{ "MaxCapacity", XiCapacity },				
								{ "AmountEmptyTimePeriod", XiTime },				
							}
						},
					},
				}, 
			},
		}
	}	
}