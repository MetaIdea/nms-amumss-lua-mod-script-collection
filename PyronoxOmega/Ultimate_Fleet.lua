Author = "PyronoxOmega"
ModName = "Ultimate_Fleet_S_Normal_Time"
GameVersion = "4.4"
ModVersion = "1.5"
Description = "Mostly S-class with high Stats based on RNG "
FileSource1 = "METADATA/REALITY/TABLES/FRIGATETRAITTABLE.MBIN"
FileSource2 ="GCFLEETGLOBALS.GLOBAL.MBIN"
TimeExpEZ = "900" --time for easy expedition 900
TimeExpEV = "5400" --time for expedition event 5400
NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName..""..GameVersion..-ModVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= 
{{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = 
			{				
				{
					["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_1"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
						
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_2"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_3"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_4"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","FUEL_BAD_5"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_1"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_2"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_3"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_4"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","COMBAT_BAD_5"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_1"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_2"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_3"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_4"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MINING_BAD_5"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_1"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_2"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_3"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_4"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","TRADING_BAD_5"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_1"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_2"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_3"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_4"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","EXPLORE_BAD_5"},
					["PRECEDING_KEY_WORDS"] ="ChanceOfBeingOffered",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Combat", 0},						--5
						{"Exploration", 0},					--5
						{"Mining", 0},						--5
						{"Diplomacy", 0},					--5
						{"Support", 0},						--5
						{"Pirate", 0},						--5
					},
				},
			},
   },
   --Globals
   {
					["MBIN_FILE_SOURCE"] 	= FileSource2,
					["EXML_CHANGE_TABLE"] = 
			{
				{
					["INTEGER_TO_FLOAT"] = "FORCE",
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] 	= 
						{
								{"PercentChangeOfFrigateBeingPurchasable",	100},
								--{"MinFrigateStatValue",	50},
								{"PercentChanceOfFrigateAdditionalSpawnedTrait",	100},
								--{"MaximumSpeedDecrease",	50},-- -50
								--{"MaximumSpeedDecrease",	50},--50
								{"MaxNumberOfPlayerShipsInFreighterHangar",	8},--6 all ships visible in hanger.
								{"TimeTakenForExpeditionEvent_Easy", TimeExpEZ },			-- Original 900
								{"TimeTakenForExpeditionEvent",		 TimeExpEV },			-- Original 5400
						},
				},
						{
							["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 8},
								{"Maximum", 8},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
						--exploration
						{
							["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 8},
								{"Maximum", 8},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
				--mining
				         {
							["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 1},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 8},
								{"Maximum", 8},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
				--Diplomacy
							{
							["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 1},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 8},
								{"Maximum", 8},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
				--Support
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
								{"Maximum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelCapacity"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},
								{"Maximum", 5},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
						--Normandy
						{
							["SPECIAL_KEY_WORDS"] = {"Normandy","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
						--DeepSpace
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpace","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
					--DeepSpaceCommon
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 8},
								{"Maximum", 8},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
						--Pirate
						{
							["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 5},
								
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},		
							["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 12},
								{"Maximum", 12},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},	
							["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Minimum", 4},
								{"Maximum", 4},
							},
						},
			},
    }
   }
   }
	}
	}