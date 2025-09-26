NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoBioHorrorSpawns", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "6.05.2",
["MOD_DESCRIPTION"]			= "Whispering Eggs and Hungering Tendrils don't spawn Biological Horrors",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{				
				{
					["MBIN_FILE_SOURCE"] = {
						"MODELS/PLANETS/CREATURES/SANDWORMMINI/SANDWORMMINI/ENTITIES/DATA.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/FIENDEGG/ENTITIES/FIENDEGG.ENTITY.MBIN"
					},
					["MXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VCT"] = {
								{"IncreaseFiendWanted", "false"}, -- original: true
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\FIENDEGGPARTS\FIENDEGGREWARD\ENTITIES\FIENDREWARD.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VCT"] = {
								{"FiendCrime", "None"}, -- original: EggCollected
							},
						},
					},
				},
			}
		}
	}	
}