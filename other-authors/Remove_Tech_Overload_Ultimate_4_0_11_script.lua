

----------Remove Tech Overload----------

	NUMBER_SAME_TECH = 9999		-- How many mods of the same type you can equip without triggering technology overload;
								-- mod default is 9999; vanilla default is 3;
								
	--(bugged) TECH_SLOT_ONLY = "False"	-- This value defines if tech can only be installed in the tech inventory, when set to "False"
								-- it allows to equip tech in any inventory you normally could not, eg. the cargo inventory;
								-- vanilla default is "True";

----------Plus: Expanded Tech Slots----------
	
		-- These values change the maximum reachable technology (and in some cases inventory) slots
		-- for the corresponding ship, freighter and weapon classes. Keep in mind that you still have
		-- to upgrade the slots in game.
		
	--- Tech for Ships, Freighters, etc. ---
	
	C_CLASS_TECH 	= 30			
	B_CLASS_TECH 	= 40			
	A_CLASS_TECH	= 50			
	S_CLASS_TECH	= 60
	
	--- Inventory for Ships, Freighters, etc. ---
	
	C_CLASS_INV 	= 60			
	B_CLASS_INV 	= 80			
	A_CLASS_INV		= 100			
	S_CLASS_INV		= 120
	
	--- Inventory/Tech for Multitools and Weapons ---
	
	C_CLASS_TOOL 	= 30
	B_CLASS_TOOL 	= 40
	A_CLASS_TOOL 	= 50
	S_CLASS_TOOL 	= 60
	
	--- Exosuit
	--- These values multiplied with each other (W * H = total size; in this case 120 and 60) determine the size of your exosuit tech inventory and cargo inventory
	
	EXOSUIT_CARGO_WIDTH  = 10	-- Exosuit cargo size W
	EXOSUIT_CARGO_HEIGHT = 12	-- Exosuit cargo size H
	EXOSUIT_TECH_WIDTH   = 10	-- Exosuit tech inventory size W
	EXOSUIT_TECH_HEIGHT  = 6	-- Exosuit tech inventory size H
	

----------Ultimate: Stack size multipliers----------
	
	--- These values multiply the default inventory stack sizes with the given number for each difficulty; default =1; ---
	
	STACK_MULT_CREA 	 = 100	-- Creative mode
	STACK_MULT_NORM 	 = 100	-- Normal mode
	STACK_MULT_SURV 	 = 100	-- Survival/Permadeath mode



NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]             = "_Remove_Tech_Overload_Ultimate_4_0_11.pak", 
	["MOD_AUTHOR"]               = "chronicallybored",
	["NMS_VERSION"]              = "4.52",
	["MOD_DESCRIPTION"]          = "Removes technology overload, enables tech in cargo slots (deactivated for now since it's bugged), fixes UI/inventory bounds, expands inv/tech slots of just about anything depending on it's class and increases stack sizes by x100.",
	["MODIFICATIONS"]            = 

	{
		{	--- Remove Tech Overload ---
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{	--- Tech Overload Removal and enable tech in cargo slots ---
								{"MaxNumSameGroupTech", 		NUMBER_SAME_TECH},
								--(bugged) {"TechMustBeInTechInventory", 	TECH_SLOT_ONLY},
							}
						},
						{
							["VALUE_CHANGE_TABLE"]  =
                            {	--- Inv/Boundary fixes ---
                                {"PersonalInventoryMinWidthMax",      10},
                                {"PersonalInventoryMinHeightMax",     12},
                                {"PersonalTechInventoryMinWidthMax",  10},
                                {"PersonalTechInventoryMinHeightMax", 6},
                                {"ShipInventoryMinWidthMax",          10},
                                {"ShipInventoryMinHeightMax",         12},
                                {"ShipTechInventoryMinWidthMax",      10},
                                {"ShipTechInventoryMinHeightMax",     6},
                                {"VehicleInventoryMinWidthMax",       10},
                                {"VehicleInventoryMinHeightMax",      12},
                                {"WeaponInventoryMinWidthMax",        10},
                                {"WeaponInventoryMinHeightMax",       6}
                            }
						},
					}	
				}
			}
		},
		{	--- Plus features: Tech and Inventory Slots ---
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{	--- Tech for Ships, Freighters, etc ---
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
							["REPLACE_TYPE"] = "ALL",
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] =
							{	
								{"IGNORE", 					C_CLASS_TECH},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					B_CLASS_TECH},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					A_CLASS_TECH},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxTechInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					S_CLASS_TECH},
                            }
						},
						{	--- Inventory upgrade living ships ---
							["PRECEDING_KEY_WORDS"] = {"Alien", "MaxInventoryCapacity",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					S_CLASS_TECH},
                            }
						},
						{	--- Multitool/Weapons upgrade ---
							["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "MaxInventoryCapacity",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", 						C_CLASS_TOOL},
								{"B", 						B_CLASS_TOOL},
								{"A", 						A_CLASS_TOOL},
								{"S", 						S_CLASS_TOOL},
                            }
						},
						{	--- Inventory for Ships, Freighters, etc ---
							["PRECEDING_KEY_WORDS"] = "MaxInventoryCapacity",
							["REPLACE_TYPE"] = "ALL",
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] =
							{	
								{"IGNORE", 					C_CLASS_INV},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					B_CLASS_INV},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					A_CLASS_INV},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					S_CLASS_INV},
                            }
						},
						{	--- Inventory bound and Tech bound fixes ---
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxWidthLarge",     10},
                                {"MaxHeightLarge",    12}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"TechBounds"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxWidthLarge",     10},
                                {"MaxHeightLarge",    6}
                            }
                        }
					}
				},
				{	
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{	--- Exosuit expansion normal mode Tech and Cargo ---
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",	EXOSUIT_TECH_WIDTH},
								{"PlayerPersonalInventoryTechHeight",	EXOSUIT_TECH_HEIGHT},
								{"PlayerPersonalInventoryCargoWidth",	EXOSUIT_CARGO_WIDTH},
								{"PlayerPersonalInventoryCargoHeight",	EXOSUIT_CARGO_HEIGHT},
							}
						}
					}
				},
				{	
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{	--- Exosuit expansion survival mode Tech and Cargo ---
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",	EXOSUIT_TECH_WIDTH},
								{"PlayerPersonalInventoryTechHeight",	EXOSUIT_TECH_HEIGHT},
								{"PlayerPersonalInventoryCargoWidth",	EXOSUIT_CARGO_WIDTH},
								{"PlayerPersonalInventoryCargoHeight",	EXOSUIT_CARGO_HEIGHT},
							}
						},
					}
				}
			}
		},
		{	--- Remove Tech Overload Ultimate REWORK 4.50 Omega ---
			["PAK_FILE_SOURCE"] 	= "NMSARC.MetadataEtc.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{	--- Stack size multipliers: Normal ---
								{"SubstanceStackLimit", STACK_MULT_NORM},
                                {"ProductStackLimit",   STACK_MULT_NORM},
							},
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             STACK_MULT_NORM},
                                {"Personal",            STACK_MULT_NORM},
                                {"PersonalCargo",       STACK_MULT_NORM},
                                {"Ship",                STACK_MULT_NORM},
                                {"ShipCargo",           STACK_MULT_NORM},
                                {"Freighter",           STACK_MULT_NORM},
                                {"FreighterCargo",      STACK_MULT_NORM},
                                {"Vehicle",             STACK_MULT_NORM},
                                {"Chest",               STACK_MULT_NORM},
                                {"BaseCapsule",         STACK_MULT_NORM},
                                {"MaintenanceObject",   STACK_MULT_NORM},
                                {"UIPopup",             STACK_MULT_NORM},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             STACK_MULT_NORM},
                                {"Personal",            STACK_MULT_NORM},
                                {"PersonalCargo",       STACK_MULT_NORM},
                                {"Ship",                STACK_MULT_NORM},
                                {"ShipCargo",           STACK_MULT_NORM},
                                {"Freighter",           STACK_MULT_NORM},
                                {"FreighterCargo",      STACK_MULT_NORM},
                                {"Vehicle",             STACK_MULT_NORM},
                                {"Chest",               STACK_MULT_NORM},
                                {"BaseCapsule",         STACK_MULT_NORM},
                                {"MaintenanceObject",   STACK_MULT_NORM},
                                {"UIPopup",             STACK_MULT_NORM},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{	--- Stack size multipliers: Survival/Permadeath ---
								{"SubstanceStackLimit", STACK_MULT_SURV},
                                {"ProductStackLimit",   STACK_MULT_SURV},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             STACK_MULT_SURV},
                                {"Personal",            STACK_MULT_SURV},
                                {"PersonalCargo",       STACK_MULT_SURV},
                                {"Ship",                STACK_MULT_SURV},
                                {"ShipCargo",           STACK_MULT_SURV},
                                {"Freighter",           STACK_MULT_SURV},
                                {"FreighterCargo",      STACK_MULT_SURV},
                                {"Vehicle",             STACK_MULT_SURV},
                                {"Chest",               STACK_MULT_SURV},
                                {"BaseCapsule",         STACK_MULT_SURV},
                                {"MaintenanceObject",   STACK_MULT_SURV},
                                {"UIPopup",             STACK_MULT_SURV},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             STACK_MULT_SURV},
                                {"Personal",            STACK_MULT_SURV},
                                {"PersonalCargo",       STACK_MULT_SURV},
                                {"Ship",                STACK_MULT_SURV},
                                {"ShipCargo",           STACK_MULT_SURV},
                                {"Freighter",           STACK_MULT_SURV},
                                {"FreighterCargo",      STACK_MULT_SURV},
                                {"Vehicle",             STACK_MULT_SURV},
                                {"Chest",               STACK_MULT_SURV},
                                {"BaseCapsule",         STACK_MULT_SURV},
                                {"MaintenanceObject",   STACK_MULT_SURV},
                                {"UIPopup",             STACK_MULT_SURV},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Low", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{	--- Stack size multipliers: Easy/Creative ---
								{"SubstanceStackLimit", STACK_MULT_CREA},
                                {"ProductStackLimit",   STACK_MULT_CREA},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             STACK_MULT_CREA},
                                {"Personal",            STACK_MULT_CREA},
                                {"PersonalCargo",       STACK_MULT_CREA},
                                {"Ship",                STACK_MULT_CREA},
                                {"ShipCargo",           STACK_MULT_CREA},
                                {"Freighter",           STACK_MULT_CREA},
                                {"FreighterCargo",      STACK_MULT_CREA},
                                {"Vehicle",             STACK_MULT_CREA},
                                {"Chest",               STACK_MULT_CREA},
                                {"BaseCapsule",         STACK_MULT_CREA},
                                {"MaintenanceObject",   STACK_MULT_CREA},
                                {"UIPopup",             STACK_MULT_CREA},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData.xml"},
							["MATH_OPERATION"] = "*",
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             STACK_MULT_CREA},
                                {"Personal",            STACK_MULT_CREA},
                                {"PersonalCargo",       STACK_MULT_CREA},
                                {"Ship",                STACK_MULT_CREA},
                                {"ShipCargo",           STACK_MULT_CREA},
                                {"Freighter",           STACK_MULT_CREA},
                                {"FreighterCargo",      STACK_MULT_CREA},
                                {"Vehicle",             STACK_MULT_CREA},
                                {"Chest",               STACK_MULT_CREA},
                                {"BaseCapsule",         STACK_MULT_CREA},
                                {"MaintenanceObject",   STACK_MULT_CREA},
                                {"UIPopup",             STACK_MULT_CREA},
							}
						}
					}
				}
			}
		}
	}
}