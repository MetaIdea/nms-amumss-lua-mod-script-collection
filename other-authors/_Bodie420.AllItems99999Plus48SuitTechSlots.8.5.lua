NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Bodie420.99999Stacks+48SuitTech.8.5.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "Bodie420",
["LUA_AUTHOR"]				= "Babscoole+DeathWrench",
["NMS_VERSION"]				= "8.5",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DefaultSubstanceMaxAmount",				"99999"},  -- Original "9999" - Mod8.5 ""
								{"DefaultProductMaxAmount",					"10"},  -- Original "1" - Mod8.5 "10" - Mod 6.5 "99999"
								{"CargoSubstanceStorageMultiplier",			"50"},  -- Original "1"
								{"CargoProductStorageMultiplier",			"50"},  -- Original "10"
								{"ShipSubstanceStorageMultiplier",			"50"},  -- Original "1"
								{"ShipProductStorageMultiplier",			"50"},  -- Original "5"
								{"FreighterSubstanceStorageMultiplier",		"50"},  -- Original "1"
								{"FreighterProductStorageMultiplier",		"50"},  -- Original "10"
								{"ChestSubstanceStorageMultiplier",			"50"},  -- Original "1"
								{"ChestProductStorageMultiplier",			"50"},  -- Original "20"
								{"BaseCapsuleSubstanceStorageMultiplier",	"50"},  -- Original "1"
								{"BaseCapsuleProductStorageMultiplier",		"50"},  -- Original "100"
								{"DefaultSubstanceStorageMultiplier",		"50"},  -- Original "1"
								{"DefaultProductStorageMultiplier",			"50"},  -- Original "5"
								{"SubstanceMaxAmountLimit",					"99999"},  -- Original "9999"
								{"ProductMaxAmountLimit",					"99999"},  -- Original "9999"								
								{"PlayerPersonalInventoryTechWidth",		"8"},  -- Original "7"
								{"PlayerPersonalInventoryTechHeight",		"6"},  -- Original "2"
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DefaultSubstanceMaxAmount",				"999999"},  -- Original "250"							
								{"DefaultProductMaxAmount",					"10"},  -- Original "1" - Mod8.5 "10" - Mod 6.5 "99999"
								{"CargoSubstanceStorageMultiplier",			"50"},  -- Original "2"
								{"CargoProductStorageMultiplier",			"50"},  -- Original "10"
								{"ShipSubstanceStorageMultiplier",			"50"},  -- Original "2"
								{"ShipProductStorageMultiplier",			"50"},  -- Original "5"
								{"FreighterSubstanceStorageMultiplier",		"50"},  -- Original "4"
								{"FreighterProductStorageMultiplier",		"50"},  -- Original "10"
								{"ChestSubstanceStorageMultiplier",			"50"},  -- Original "4"
								{"ChestProductStorageMultiplier",			"50"},  -- Original "20"
								{"BaseCapsuleSubstanceStorageMultiplier",	"50"},  -- Original "8"
								{"BaseCapsuleProductStorageMultiplier",		"50"},  -- Original "100"
								{"DefaultSubstanceStorageMultiplier",		"50"},  -- Original "1"
								{"DefaultProductStorageMultiplier",			"50"},  -- Original "5"
								{"SubstanceMaxAmountLimit",					"99999"},  -- Original "9999"
								{"ProductMaxAmountLimit",					"99999"},  -- Original "9999"								
								{"PlayerPersonalInventoryTechWidth",		"8"},  -- Original "7"
								{"PlayerPersonalInventoryTechHeight",		"6"},  -- Original "2"
							}
						},
					}
				},				
			}
		}
	}	
}
