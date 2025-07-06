

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
	
	--- Antimatter Reactor Hotfix ---
	ANTIMATTER_AMOUNT	 = 20	-- Vanilla=-1; Default=20; Use higher values if you wanna produce larger amounts of anitmatter at once;



NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]             = "cb Remove Technology Overload Ultimate", 
	["MOD_AUTHOR"]               = "chronicallybored",
	["NMS_VERSION"]              = "5.61",
	["MOD_DESCRIPTION"]          = "Removes technology overload, fixes UI/inventory bounds, expands inv/tech slots of just about anything depending on it's class and increases stack sizes by x100.",
	["MODIFICATIONS"]            = 

	{
		{	--- Remove Tech Overload ---
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{	--- Tech Overload Removal ---
								{"MaxNumSameGroupTech", 		NUMBER_SAME_TECH},
								--(bugged/ignore) {"TechMustBeInTechInventory", 	TECH_SLOT_ONLY},
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
						{	--- Cargo for Ships, Freighters, etc ---
							["PRECEDING_KEY_WORDS"] = "MaxCargoInventoryCapacity",
							["REPLACE_TYPE"] = "ALL",
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] =
							{	
								{"IGNORE", 					C_CLASS_INV},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxCargoInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					B_CLASS_INV},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxCargoInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					A_CLASS_INV},
                            }
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxCargoInventoryCapacity",
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = "4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", 					S_CLASS_INV},
                            }
						},
						{	--- Inventory bound and Tech bound fixes ---
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry"},
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxWidthLarge",     10},
                                {"MaxHeightLarge",    12}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry"},
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
		{	--- Antimatter Reactor fix for high stack numbers ---
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\ANTIMATTERHARVESTER\ENTITIES\ANTIMATTERHARVESTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"PreInstalledTech", "GcMaintenanceElement"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",			ANTIMATTER_AMOUNT},
							}
						},
					}
				}
			}
		},
		{	--- Stack Size Multipliers ---
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData"},
							["VALUE_CHANGE_TABLE"] =
							{	
								{"SubstanceStackLimit", 1000000},
                                {"ProductStackLimit",   1000000},
							},
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             1000000},
                                {"Personal",            1000000},
                                {"PersonalCargo",       1000000},
                                {"Ship",                1000000},
                                {"ShipCargo",           1000000},
                                {"Freighter",           1000000},
                                {"FreighterCargo",      1000000},
                                {"Vehicle",             1000000},
                                {"Chest",               1000000},
                                {"BaseCapsule",         1000000},
                                {"MaintenanceObject",   1000000},
                                {"UIPopup",             1000000},
								{"SeasonTransfer",		1000000},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             500},
                                {"Personal",            1000},
                                {"PersonalCargo",       1000},
                                {"Ship",                1000},
                                {"ShipCargo",           1000},
                                {"Freighter",           2000},
                                {"FreighterCargo",      2000},
                                {"Vehicle",             1000},
                                {"Chest",               2000},
                                {"BaseCapsule",         10000},
                                {"MaintenanceObject",   1000},
                                {"UIPopup",             100},
								{"SeasonTransfer",		2000},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
							["VALUE_CHANGE_TABLE"] =
							{	
								{"SubstanceStackLimit", 1000000},
                                {"ProductStackLimit",   1000000},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             50000},
                                {"Personal",            50000},
                                {"PersonalCargo",       50000},
                                {"Ship",                100000},
                                {"ShipCargo",           100000},
                                {"Freighter",           200000},
                                {"FreighterCargo",      200000},
                                {"Vehicle",             100000},
                                {"Chest",               100000},
                                {"BaseCapsule",         200000},
                                {"MaintenanceObject",   25000},
                                {"UIPopup",             25000},
								{"SeasonTransfer",		1000000},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             500},
                                {"Personal",            1000},
                                {"PersonalCargo",       1000},
                                {"Ship",                1000},
                                {"ShipCargo",           1000},
                                {"Freighter",           1000},
                                {"FreighterCargo",      2000},
                                {"Vehicle",             1000},
                                {"Chest",               2000},
                                {"BaseCapsule",         10000},
                                {"MaintenanceObject",   1000},
                                {"UIPopup",             100},
								{"SeasonTransfer",		2000},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
							["VALUE_CHANGE_TABLE"] =
							{	
								{"SubstanceStackLimit", 1000000},
                                {"ProductStackLimit",   1000000},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             15000},
                                {"Personal",            30000},
                                {"PersonalCargo",       30000},
                                {"Ship",                30000},
                                {"ShipCargo",           75000},
                                {"Freighter",           75000},
                                {"FreighterCargo",      75000},
                                {"Vehicle",             30000},
                                {"Chest",               100000},
                                {"BaseCapsule",         125000},
                                {"MaintenanceObject",   15000},
                                {"UIPopup",             15000},
								{"SeasonTransfer",		1000000},
							}
						},
						{	
							["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"]  =
							{
								{"Default",             300},
                                {"Personal",            300},
                                {"PersonalCargo",       500},
                                {"Ship",                300},
                                {"ShipCargo",           500},
                                {"Freighter",           500},
                                {"FreighterCargo",      1000},
                                {"Vehicle",             300},
                                {"Chest",               1000},
                                {"BaseCapsule",         5000},
                                {"MaintenanceObject",   500},
                                {"UIPopup",             100},
								{"SeasonTransfer",		2000},
							}
						}
					}
				}
			}
		},
	}
}