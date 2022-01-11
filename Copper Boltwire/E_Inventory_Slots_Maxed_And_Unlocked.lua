
--[[ Summery Description:
This changes the maximum size of inventories of ships, freighter and the ExoSuit to the 48(8x6) row size.
Multi-tools are locked to 24(8x3) slot size.
Always hated that I was locked to small sizes...

I tried to make a version of this file that STILL offers 48(8x6) slots for above, but where some slots are locked, just how vanilla does it.
But no matter what I tried, it would just not work.
If you know how, let me know... cause as it is, I have NO clue as to what to do to achieve this.
  -Copper
]]--

AllMinSize = 			48 		--min value of ship, freighter, etc... size 
AllMaxSize = 			48 		--max value of ship, freighter, etc... size 
WeaponMinSize = 		24 		--min value of weapon size
WeaponMaxSize = 		24 		--max value of weapon size -- Was 24(Not sure if this breaks it if going beyond the normal 24 slots...)

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 			= "H_Inventory_Slots_Maxed_And_Unlocked.pak",
    ["MOD_AUTHOR"]				= "OnyKroN",
    ["NMS_VERSION"]				= "3.21",
    ["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
                        -- Ships and Freighters:
                        
						{
							["PRECEDING_KEY_WORDS"] = "Table",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        AllMinSize},
								{"MaxSize",         AllMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "GenerationData",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	-- This should just be size, not what is unlocked.........
							{
								{"MinSlots",		AllMinSize},
								{"MaxSlots", 		AllMaxSize},
								{"MinExtraTech", 	AllMinSize},
								{"MaxExtraTech", 	AllMaxSize},
							}
						},
                        
                        -- Weapons:
                        
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_SMALL",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        WeaponMinSize},
								{"MaxSize",	        WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_MEDIUM",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        WeaponMinSize},
								{"MaxSize",	        WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_LARGE",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        WeaponMinSize},
								{"MaxSize",	        WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_DEFAULT",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        WeaponMinSize},
								{"MaxSize",	        WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_PRISTINE",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        WeaponMinSize},
								{"MaxSize",	        WeaponMaxSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id","WEAPON_ALIEN",},	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSize",	        WeaponMinSize},
								{"MaxSize",	        WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponSmall",
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		WeaponMinSize},
								{"MaxSlots",        WeaponMaxSize},
								{"MinExtraTech", 	WeaponMinSize},
								{"MaxExtraTech",    WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponMedium",	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		WeaponMinSize},
								{"MaxSlots", 		WeaponMaxSize},
								{"MinExtraTech", 	WeaponMinSize},
								{"MaxExtraTech", 	WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponLarge",	
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		WeaponMinSize},
								{"MaxSlots", 		WeaponMaxSize},
								{"MinExtraTech", 	WeaponMinSize},
								{"MaxExtraTech", 	WeaponMaxSize},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize","MaxInventoryCapacity",},
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"C",               WeaponMaxSize},
								{"B",               WeaponMaxSize},
								{"A",               WeaponMaxSize},
								{"S",               WeaponMaxSize},
							}
						},
					}
				},
                
                -- Players Inventory:
                
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
                                {"PlayerPersonalInventoryTechWidth", "8"},
                                {"PlayerPersonalInventoryTechHeight", "6"},
                                {"PlayerPersonalInventoryCargoWidth", "8"},
                                {"PlayerPersonalInventoryCargoHeight", "6"}
							}
						}	
					}
				},
			}
		}
	}	
}