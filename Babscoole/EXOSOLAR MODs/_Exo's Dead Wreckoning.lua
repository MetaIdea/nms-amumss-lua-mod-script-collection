NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Exo's Dead Wreckoning.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.00",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 		
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Shelter",},						
							["VALUE_CHANGE_TABLE"] = 					
							{ 
								{"Dead",  "3"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Beacon",},						
							["VALUE_CHANGE_TABLE"] = 					
							{
								{"Dead",  "7"},	
								{"Weird", "7"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Depot",},						
							["VALUE_CHANGE_TABLE"] = 					
							{														
								{"Dead",  "4"},	
								{"Weird", "4"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Factory",},						
							["VALUE_CHANGE_TABLE"] = 					
							{ 							
								{"GivesShelter", "True"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Harvester",},						
							["VALUE_CHANGE_TABLE"] = 					
							{ 							
								{"GivesShelter",  "True"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Plaque",},						
							["VALUE_CHANGE_TABLE"] = 					
							{ 
								{"Dead", "5"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Monolith",},						
							["VALUE_CHANGE_TABLE"] = 					
							{ 
								{"Dead", "3"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Debris",},						
							["VALUE_CHANGE_TABLE"] = 					
							{														
								{"Dead",  "3"},	
								{"Weird", "3"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "DamagedMachine",},						
							["VALUE_CHANGE_TABLE"] = 					
							{														
								{"Dead",  "4"},	
								{"Weird", "4"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "DistressSignal",},						
							["VALUE_CHANGE_TABLE"] = 					
							{						
								{"Dead", 	    "2"},	
								{"Weird", 	    "1"},
								{"OverrideRadius",  "45"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Base",},						
							["VALUE_CHANGE_TABLE"] = 					
							{
								{"WaterPlacement", "Underwater"},														
								{"Dead", 	   "2"},	
								{"Weird", 	   "2"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "CrashedFreighter",},						
							["VALUE_CHANGE_TABLE"] = 					
							{														
								{"Dead",  "2"},	
								{"Weird", "1"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "GraveInCave",},						
							["VALUE_CHANGE_TABLE"] = 					
							{														
								{"Dead",  "1"},	
								{"Weird", "3"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "TreasureRuins",},						
							["VALUE_CHANGE_TABLE"] = 					
							{															
								{"Weird", "0"},									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "NPCDebris",},						
							["VALUE_CHANGE_TABLE"] = 					
							{															
								{"Dead", "1"},									
							}
						},						
					}
				}		
			}
		}
	}	
}