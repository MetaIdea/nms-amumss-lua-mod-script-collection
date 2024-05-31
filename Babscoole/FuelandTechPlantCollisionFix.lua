NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "FuelandTechPlantCollisionFix.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.71",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FUELPLANT\ENTITIES\FUELPLANT.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FUELPLANT1\ENTITIES\FUELPLANT_1.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TECHPLANT\ENTITIES\TECHPLANT.ENTITY.MBIN",
                    },
					["EXML_CHANGE_TABLE"] =
					{
						{
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoPlayerCollide", "True"},
                            }
						},
					}
				},
			}
		}
	}	
}