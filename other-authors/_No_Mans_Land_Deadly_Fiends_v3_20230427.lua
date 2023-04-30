ModName = "No Mans Land Deadly Fiends" --originally authored by gumsk and then Xen0nex for PtsD; modified by youngneil1
GameVersion = "4_23"
Description = "Fiends become much more deadly, especially much faster."


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1", --based on Xen0nex and gumsk work, extended espcially in regards to aggro/stay time, move speed and pounce attack delay
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= "GCCREATUREGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							--["SPECIAL_KEY_WORDS"] = {"VehicleDestroyEffect", "VEHICLECRASH"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FiendAggroTime",	"500"},
								{"FiendDespawnDistance",	"3000"},
								{"FiendPounceDistanceModifier" , "6"},
								{"FiendPerceptionDistance", "300"},
								{"FiendOnscreenMarkers", "300"},
								{"FiendHealth", "1500"},
								{"FiendMaxEngaged", "8"},
								{"FiendMaxAttackers", "4"},
								{"FiendMaxVerticalForPounce", "0.5"},
								{"MaxFiendsToSpawn", "8"},
								{"FiendMinSpawnTime", "0.2"},
								{"FiendMaxSpawnTime", "2.3"},
							}
							
						}
						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/ECOSYSTEM/CREATUREDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FIEND"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MoveSpeedScale",	"1.15"},
								{"DelayBetweenPounceAttacks",	"1.6"}
								
							},
								
						}	
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/DAMAGETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FIEND_DMG"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",	"90"}	
							}
								
						},
						{
							["REPLACE_TYPE"] = "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FIENDSPIT_DMG"},				
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Damage",	"20"}	
							}
								
						}
						
						
						
						
					}
				
				}
			}
		}
	}
}
	
