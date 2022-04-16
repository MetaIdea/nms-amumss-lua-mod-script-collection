STACK = 99999	--Used for substances. Change to your desired max stack size (default is 9999)
PROD_STACK = 7500 -- Used for products you can craft/buy. Change to desired max. (Over 7500 may break game)
SMALL_MULTIPLIER = 1	--Applies to exosuit, exosuit cargo, and starship
LARGE_MULTIPLIER = 1	--Applies to freighter and base cargo containers
REFUND = 0.75		--Refund for deconstructing base parts (default is 0.50)
--Do not change anything below this line
LIMIT = STACK * LARGE_MULTIPLIER 	--Maximum stack limit (do not change)
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Katsu.StackSize99999NEW.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "KatsuhiroTekashi",
["NMS_VERSION"]				= "3.21",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DefaultSubstanceMaxAmount",		STACK}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DefaultProductMaxAmount",		PROD_STACK}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"CargoSubstanceStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"CargoProductStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ShipSubstanceStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ShipProductStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FreighterSubstanceStorageMultiplier",		LARGE_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FreighterProductStorageMultiplier",		LARGE_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ChestSubstanceStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ChestProductStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"BaseCapsuleSubstanceStorageMultiplier",		LARGE_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"BaseCapsuleProductStorageMultiplier",		LARGE_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DefaultSubstanceStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DefaultProductStorageMultiplier",		SMALL_MULTIPLIER}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"SubstanceMaxAmountLimit",		LIMIT}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ProductMaxAmountLimit",		LIMIT}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechWidth",		"8"}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PlayerPersonalInventoryTechHeight",		"6"}				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DeconstructRefundPercentage",		REFUND}				
							}
						} --19 global replacements
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE