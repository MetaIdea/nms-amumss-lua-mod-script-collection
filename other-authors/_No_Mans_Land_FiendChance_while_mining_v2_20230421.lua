ModName = "No Mans Land FiendChance while mining" 
GameVersion = "4_23"
Description = "Mining crystals of ALL sizes, icluding those carrying Di-hydrogen (LANCHSUB), and various rocks has  a chance to spawn Fiends (Biological Horrors)."


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1", 
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ENTITIES\CYSTAL_SMALL.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
						
						
						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT\ENTITIES\SHARDS.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_MOUNTAIN\ENTITIES\SHARDS_MOUNTAIN.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_UNDERWATER\ENTITIES\SHARDS_UNDERWATER.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_MOUNTAIN\ENTITIES\CYSTAL_SMALL_MOUNTAIN.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_UNDERWATER\ENTITIES\CYSTAL_SMALL_UNDERWATER.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTALCUBE_SMALL\ENTITIES\CYSTALCUBE_SMALL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM\ENTITIES\CRYSTAL_MEDIUM.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_MOUNTAIN\ENTITIES\CRYSTAL_MEDIUM_MOUNTAIN.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_UNDERWATER\ENTITIES\CRYSTAL_MEDIUM_UNDERWATER.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTALCUBE_MEDIUM\ENTITIES\CRYSTAL_MEDIUM.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTALCUBE_LARGE\ENTITIES\CRYSTALCUBE_LARGE.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\ROCKS\MEDIUM\RESOURCEROCK\ENTITIES\RESOURCEROCK.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\ROCKS\SMALL\RESOURCESMALL\ENTITIES\RESOURCEROCKSMALL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\VENUSFLYTRAP\ENTITIES\VENUSFLYTRAP.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT\ENTITIES\TENTACLEPLANT.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT\ENTITIES\TENTACLEPLANTFLAT.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT\ENTITIES\TENTACLEPLANTSIDE.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\ROCKS\MEDIUM\MEDIUMROCK\ENTITIES\ROCKMEDIUM1.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.068"}				
							}
						},
					}
				},
			
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\ROCKS\SMALL\SMALLROCK\ENTITIES\SMALLROCK.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWanted",	"True"}				
							}
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseFiendWantedChance",	"0.017"}				
							}
						},
					}
				},
			}
		}
	}
}



