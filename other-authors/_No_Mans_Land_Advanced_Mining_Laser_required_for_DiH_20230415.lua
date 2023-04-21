ModName = "No Mans Land Advanced Mining Laser required" --originally authored by Xen0nex for PtsD; modfiied by youngneil1
GameVersion = "4_20"
Description = "Mining crystals of ALL sizes, icluding those carrying Di-hydrogen (LANCHSUB), requires a advanced mining laser now (STRONGLASER). This way, a player cannot use their ship to farm di-hydrogen while airborne. "


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1", --based on Xen0nex work
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
							}
						},
						
					}
				},
				{
				                              
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_CAVE\ENTITIES\SHARDS_CAVE.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
							}
						},
						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_CAVE\ENTITIES\CYSTAL_SMALL_CAVE.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
							}
						},
						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM_CAVE\ENTITIES\CRYSTAL_MEDIUM_CAVE.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
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
							["SPECIAL_KEY_WORDS"] = {"ImpactShakeEffect", "SHOOTABLESHAKE"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RequiredTech",	"STRONGLASER"}				
							}
						},
					
					}
				},
				
			}
		}
	}
}



