-- Remove Tech Overload

	NUMBER_SAME_TECH = 48	-- How many mods of the same type you can equip without triggering technology overloaded;
							-- by default this is set to 48; vanilla value is 3;

-- Expanded Tech Slots

	-- Tech for Ships, Weapons, Freighters, etc
	
	C_CLASS = 12	-- These values change the maximum reachable technology (and in some cases inventory) slots
	B_CLASS = 24	-- for the corresponding ship, freighter and weapon classes. Keep in mind that you still have
	A_CLASS = 36	-- to upgrade the slots in game.
	S_CLASS = 48
	
	-- Exosuit
	EXOSUIT_WIDTH  = 8	-- These values multiplied with each other determine the size of your exosuit inventory/tech
	EXOSUIT_HEIGHT = 6



NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]             = "Remove_Tech_Overload_Plus.pak", 
	["MOD_AUTHOR"]               = "chronicallybored",
	["NMS_VERSION"]              = "3.82",
	["MOD_DESCRIPTION"]          = "Removes Technology Overload and expands tech and inventory slots for pretty much everything",
	["MODIFICATIONS"]            = 

	{
		{	-- Remove Tech Overload
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech", 		NUMBER_SAME_TECH},					
							}
						}
					}	
				}
			}
		},
		{	-- PLUS FEATURES Expanded Tech and Inventory Slots
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{	-- Ships, Freighters, etc
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
							["REPLACE_TYPE"] = "ALL",
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] =
							{	
								{"IGNORE", 					C_CLASS},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					B_CLASS},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					A_CLASS},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					S_CLASS},
                            }
						},
						{	-- Inventory upgrade living ships
							["PRECEDING_KEY_WORDS"] = {"Alien", "MaxInventoryCapacity",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					S_CLASS},
                            }
						},
						{	-- Weapons upgrade
							["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "MaxInventoryCapacity",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", 						C_CLASS},
								{"B", 						B_CLASS},
								{"A", 						A_CLASS},
								{"S", 						S_CLASS},
                            }
						},
					}
				},
				{	-- Exosuit expansion normal mode
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",	EXOSUIT_WIDTH},
								{"PlayerPersonalInventoryTechHeight",	EXOSUIT_HEIGHT},
							}
						}	
					}
				},
				{	-- Exosuit expansion survival mode
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",	EXOSUIT_WIDTH},
								{"PlayerPersonalInventoryTechHeight",	EXOSUIT_HEIGHT},
							}
						}	
					}
				}
			}
		},
	}
}