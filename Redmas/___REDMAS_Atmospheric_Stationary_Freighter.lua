Author = "REDMAS"
LUAAuthor = "REDMAS"
ModName = "___REDMAS_Atmospheric_Stationary_Freighter"
--ModNameSub = ""
BaseDescription = "Mod idea by Flowwy. -> make player's freighters hovering inside atmosphere. this mod is not visible in multiplayer without the mod"
GameVersion = "4.36.2+"
--ModVersion = "1.0"

----------------------------------------------------------------

Freighters_lowering_value = 2500
-- 3500 to make freighters touch the ground 
-- 1500 to put them on high atmosphere
-- 2500 is mid atmosphere

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
								{"CloudHeightMin", "500"},
								{"CloudHeightMax", "500"},
								{"Large", "500"},
								{"Medium", "500"},
								{"Small", "500"},
								{"Moon", "500"},
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
			}
		}
	}
}