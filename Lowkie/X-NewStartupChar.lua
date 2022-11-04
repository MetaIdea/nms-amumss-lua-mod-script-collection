NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-NewStartupChar.pak", 
["MOD_AUTHOR"]				= "Personal Built",
["NMS_VERSION"]				= "3.3",
["MOD_DESCRIPTION"]			= "Adjust a new starting char",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
					["EXML_CHANGE_TABLE"]= 
					{	
						{
							["PRECEDING_KEY_WORDS"] = {"SuitStartingSlotLayout"},
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Slots", "48"}, --Default 24
								
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyStartingSlotLayout"},
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Slots", "48"}, --Default 24
								
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SuitCargoStartingSlotLayout"},
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Slots", "48"}, --Default 24
								
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipStartingLayout"},
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Slots", "24"}, --Default 14								
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipTechOnlyStartingLayout"},
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Slots", "24"}, --Default 4
							},
						},
                        {
							["PRECEDING_KEY_WORDS"] = {"ShipCargoOnlyStartingLayout"},
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Slots", "24"}, --Default 4
							},
						},	
                    },
                   
				},
                {
					["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/MISSIONS/COREMISSIONTABLE.MBIN"},
					["EXML_CHANGE_TABLE"]= 
					{	
						{  
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "ACT1_STEP1"},
                            ["REPLACE_TYPE"]		= "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoStart", "None"},--Default None
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "ACT1_STEP3"},
                            ["REPLACE_TYPE"]		= "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoStart", "None"},--Default AllModes
                            }
                        },                       
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = {"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"},
                    -- ["EXML_CHANGE_TABLE"]= 
                    -- {	
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"Stats", "Ship", "Stats", "StatIds"},
                            -- ["ADD"]                 = AdvancedLaser,
                        -- },	
                       
                    -- }
                -- },				
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE

				
				