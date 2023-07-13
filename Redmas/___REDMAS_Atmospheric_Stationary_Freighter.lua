Author = "REDMAS"
LUAAuthor = "REDMAS"
ModName = "___REDMAS_Atmospheric_Stationary_Freighter"
--ModNameSub = ""
BaseDescription = "Mod idea by Flowwy. -> make player's freighters hovering inside atmosphere. this mod is not visible in multiplayer without the mod"
GameVersion = "4.36.2+"
--ModVersion = "1.01"

----------------------------------------------------------------

Freighters_lowering_value = 2500
-- 3500 to make freighters touch the ground 
-- 1500 to put them on high atmosphere
-- 2500 is mid atmosphere

Normandy_lowering_value = 4450
Livingfrigate_lowering_value = 4450
frigates_lowering_value = 1500

---------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName.." for NMS "..GameVersion..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["LUA_AUTHOR"] 	= LUAAuthor,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"]    = 
	{
        {
            ["MBIN_CHANGE_TABLE"] = 
			{
                {
					-- Clouds fixing ( in order to make them not being seen inside the freighters hangars,
					-- we lower the clouds skybox
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SECTION_ACTIVE"] = {0,1,2},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"CloudHeightMin", "100"},
								{"CloudHeightMax", "200"},
								{"Large", "100"},
								{"Medium", "100"},
								{"Small", "100"},
								{"Moon", "100"},
							}
						},                    
					}
				},
				--
				-- we lower player freighters			
				{
					
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\FREIGHTER_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Hull_B"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},  
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Hull_A"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},						
					}
				},
								
				{
					
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\CAPITALFREIGHTER_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Hull_A3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},  
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},						
					}
				},
				-- lowering frigates
								{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\LIVINGFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Root_jnt"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODLivingFrigateData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LivingFrigateData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 		 						
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\COMBATFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODCombatData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SpaceshipData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 					 						
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\DIPLOMATICFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODDiplomaticData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SpaceshipData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineVFXREF5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineVFXREF4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineVFXREF3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineVFXREF2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineVFXREF1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 		
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineVFXREF"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\INDUSTRIALFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODIndustrialData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SpaceshipData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	 						
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\SCIENCEFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODScienceData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SpaceshipData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	  						
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\SUPPORTFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODSupportData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Name", "SpaceshipData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", frigates_lowering_value},
							}
						}, 						
					}
				},
			
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATELOD0.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATELOD1.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATELOD2.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATELOD3.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATELOD4.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Normandy"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Normandy_lowering_value},
							}
						}, 					
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\FRIGATES\LIVINGFRIGATE.SCENE.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Root_jnt"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODLivingFrigateData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LivingFrigateData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Livingfrigate_lowering_value},
							}
						}, 		 						
					}
				},

			}
		}
	}
}