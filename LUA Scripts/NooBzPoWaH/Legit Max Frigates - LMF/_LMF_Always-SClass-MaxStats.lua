NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]		= "_LMF_Always-SClass-MaxStats.pak",
["MOD_DESCRIPTION"]		= "This mod makes Frigates spawn with best initial stats and always as S class",
["MOD_AUTHOR"]			= "ll62518475TheSecond",
["NMS_VERSION"]			= "3.+",
["MODIFICATIONS"]			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
					{
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PercentChangeOfFrigateBeingPurchasable",		"100"},		-- Original 60
								{"PercentChanceOfFrigateAdditionalSpawnedTrait",	"600"},		-- Original 55
								{"LowDamageNumberOfExpeditions",			"1"},		-- Original 3
								{"RampDamageNumberOfExpeditions",			"5"},		-- Original 10
							},
						},
						{
								
							["PRECEDING_KEY_WORDS"] = {"FrigateClass","Combat","Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},		-- Original 1
							},
						},
						{
								
							["PRECEDING_KEY_WORDS"] = {"FrigateClass","Combat","Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},		-- Original 0
							},
						},
						{
								
							["PRECEDING_KEY_WORDS"] = {"FrigateClass","Combat","Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{
								
							["PRECEDING_KEY_WORDS"] = {"FrigateClass","Combat","Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},		-- Original 0
							},
						},
						{
								
							["PRECEDING_KEY_WORDS"] = {"FrigateClass","Combat","Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},		-- Original 8
								{"Maximum", 6},		-- Original 12
							},
						},
												{
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},		-- Original 1
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},		-- Original 0
							},
						},
						{		
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},		-- Original 8
								{"Maximum", 6},		-- Original 12
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 1},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},		-- Original 1
							},
						},
						{		
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},		-- Original 8
								{"Maximum", 6},		-- Original 12
							},
						},
												{
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 1},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{		
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},		-- Original 1
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},		-- Original 8
								{"Maximum", 6},		-- Original 12
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{		
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},		-- Original 0
							},
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stats","Stats","Stats","Stats","FuelCapacity"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},		-- Original 1
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_1",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_2",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_3",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_4",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_5",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_1",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_2",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_3",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_4",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_5",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_1",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_2",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_3",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_4",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_5",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_1",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_2",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_3",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_4",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_5",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_1",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_2",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_3",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_4",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_5",},
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Combat",	"0"},
								{"Exploration",	"0"},
								{"Mining",	"0"},
								{"Diplomacy",	"0"},
								{"Support",	"0"},
								{"Normandy",	"0"},
							}
						},
					}
				},				
			}
		},
	}
}