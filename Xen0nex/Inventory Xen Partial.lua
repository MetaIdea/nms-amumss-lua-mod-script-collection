ModName = "InventoryXen Partial"
GameVersion = "3_87"

--NOTE: Currently the part that multiplies the stack size of Albumen Pearl, Sac Venom, Vortex Cube etc. has been move to the "Unlock Cost Increaser" mod lua

--NORMAL INVENTORY
--Note, in Expedition / Normal mode things act a little weird, the Cargo and Ship inventories don't seem to apply their multipliers as expected
	--Update, maybe it was just an update pacth that broke the mod? Re made the mod and this time it seems to work fine? Ignore the warning below about things being "locked"
DefaultSubstanceMaxAmountNormal = 1000	-- (Original 9999)
DefaultProductMaxAmountNormal = 1 -- Stacksize of products you can craft or buy (Original 1)

CargoSubstanceStorageMultiplierNormal = 2	-- (Original 1, but seems to be locked to "Default")
CargoProductStorageMultiplierNormal = 5	-- (Original 10, but seems to be maybe locked to double whatever exosuit is?)

ShipSubstanceStorageMultiplierNormal = 2	-- (Original 1, but seems to be locked to "Default")
ShipProductStorageMultiplierNormal = 10	-- (Original 5, but seems to be locked to whatever the Exosuit amount is)

FreighterSubstanceStorageMultiplierNormal = 4	-- (Original 1)
FreighterProductStorageMultiplierNormal = 10	-- (Original 10)

ChestSubstanceStorageMultiplierNormal = 4	-- (Original 1)
ChestProductStorageMultiplierNormal = 20	-- (Original 20)

BaseCapsuleSubstanceStorageMultiplierNormal = 8	-- (Original 1)
BaseCapsuleProductStorageMultiplierNormal = 100	-- (Original 100)

DefaultSubstanceStorageMultiplierNormal = 1	-- (Original 1, but seems to be locked to "Default")
DefaultProductStorageMultiplierNormal = 5	-- (Original 5)

SubstanceMaxAmountLimitNormal = 9999	-- (Original 9999)
ProductMaxAmountLimitNormal = 9999	-- (Original 9999)

PlayerPersonalInventoryTechWidthNormal = 7 -- Tech slots maximum (Original 7)
PlayerPersonalInventoryTechHeightNormal = 2 -- Tech slots maximum (Original 2)

PlayerPersonalInventoryCargoWidthNormal = 5 -- Cargo slots maximum (Original 8)
PlayerPersonalInventoryCargoHeightNormal = 5 -- Cargo slots maximum (Original 6)

DeconstructRefundPercentageNormal = 0.75 -- Refund from base Deconstruct (Original 0.5). This will give you a 75% refund


--SURVIVAL INVENTORY
DefaultSubstanceMaxAmountSurvival = 500	-- (Original 250)
DefaultProductMaxAmountSurvival = 1 -- Stacksize of products you can craft or buy (Original 1)

CargoSubstanceStorageMultiplierSurvival = 2	-- (Original 2)
CargoProductStorageMultiplierSurvival = 5	-- (Original 10)

ShipSubstanceStorageMultiplierSurvival = 2	-- (Original 2)
ShipProductStorageMultiplierSurvival = 10	-- (Original 5)

FreighterSubstanceStorageMultiplierSurvival = 4	-- (Original 4)
FreighterProductStorageMultiplierSurvival = 10	-- (Original 10)

ChestSubstanceStorageMultiplierSurvival = 4	-- (Original 4)
ChestProductStorageMultiplierSurvival = 20	-- (Original 20)

BaseCapsuleSubstanceStorageMultiplierSurvival = 8	-- (Original 8)
BaseCapsuleProductStorageMultiplierSurvival = 100	-- (Original 100)

DefaultSubstanceStorageMultiplierSurvival = 1	-- (Original 1)
DefaultProductStorageMultiplierSurvival = 5	-- (Original 5)

SubstanceMaxAmountLimitSurvival = 9999	-- (Original 9999)
ProductMaxAmountLimitSurvival = 9999	-- (Original 9999)

PlayerPersonalInventoryTechWidthSurvival = 7 -- Tech slots maximum (Original 7)
PlayerPersonalInventoryTechHeightSurvival = 2 -- Tech slots maximum (Original 2)

PlayerPersonalInventoryCargoWidthSurvival = 5 -- Cargo slots maximum (Original 8)
PlayerPersonalInventoryCargoHeightSurvival = 5 -- Cargo slots maximum (Original 6)

DeconstructRefundPercentageSurvival = 0.5 -- Refund from base Deconstruct (Original 0.5). This will give you a 50% refund


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Rebalance of Inventory and Trade Products Slot sizes",         
  ["MOD_AUTHOR"]			= "Jackty89 and Xen0nex",         -- (Based on Inventory Rebalance by Jackty89, modified by Xen0nex)
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSubstanceMaxAmount",			        DefaultSubstanceMaxAmountNormal},
								{"DefaultProductMaxAmount",                     DefaultProductMaxAmountNormal}, 
								{"CargoSubstanceStorageMultiplier",             CargoSubstanceStorageMultiplierNormal},
								{"CargoProductStorageMultiplier",		        CargoProductStorageMultiplierNormal}, 
								{"ShipSubstanceStorageMultiplier",              ShipSubstanceStorageMultiplierNormal},
								{"ShipProductStorageMultiplier",                ShipProductStorageMultiplierNormal},
								{"FreighterSubstanceStorageMultiplier",         FreighterSubstanceStorageMultiplierNormal},
								{"FreighterProductStorageMultiplier",	        FreighterProductStorageMultiplierNormal}, 
								{"ChestSubstanceStorageMultiplier",             ChestSubstanceStorageMultiplierNormal},
								{"ChestProductStorageMultiplier",               ChestProductStorageMultiplierNormal},
								{"BaseCapsuleSubstanceStorageMultiplier",       BaseCapsuleSubstanceStorageMultiplierNormal},
								{"BaseCapsuleProductStorageMultiplier",         BaseCapsuleProductStorageMultiplierNormal},
								{"DefaultSubstanceStorageMultiplier",           DefaultSubstanceStorageMultiplierNormal},
								{"DefaultProductStorageMultiplier",             DefaultProductStorageMultiplierNormal},
								{"SubstanceMaxAmountLimit",                     SubstanceMaxAmountLimitNormal},
								{"ProductMaxAmountLimit",                       ProductMaxAmountLimitNormal},
								{"PlayerPersonalInventoryTechWidth",            PlayerPersonalInventoryTechWidthNormal},
                                {"PlayerPersonalInventoryTechHeight",           PlayerPersonalInventoryTechHeightNormal},	
								{"PlayerPersonalInventoryCargoWidth",           PlayerPersonalInventoryCargoWidthNormal},
                                {"PlayerPersonalInventoryCargoHeight",          PlayerPersonalInventoryCargoHeightNormal},	
                                {"DeconstructRefundPercentage",                 DeconstructRefundPercentageNormal}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"DefaultSubstanceMaxAmount",			        DefaultSubstanceMaxAmountSurvival},
								{"DefaultProductMaxAmount",                     DefaultProductMaxAmountSurvival}, 
								{"CargoSubstanceStorageMultiplier",             CargoSubstanceStorageMultiplierSurvival},
								{"CargoProductStorageMultiplier",		        CargoProductStorageMultiplierSurvival}, 
								{"ShipSubstanceStorageMultiplier",              ShipSubstanceStorageMultiplierSurvival},
								{"ShipProductStorageMultiplier",                ShipProductStorageMultiplierSurvival},
								{"FreighterSubstanceStorageMultiplier",         FreighterSubstanceStorageMultiplierSurvival},
								{"FreighterProductStorageMultiplier",	        FreighterProductStorageMultiplierSurvival}, 
								{"ChestSubstanceStorageMultiplier",             ChestSubstanceStorageMultiplierSurvival},
								{"ChestProductStorageMultiplier",               ChestProductStorageMultiplierSurvival},
								{"BaseCapsuleSubstanceStorageMultiplier",       BaseCapsuleSubstanceStorageMultiplierSurvival},
								{"BaseCapsuleProductStorageMultiplier",         BaseCapsuleProductStorageMultiplierSurvival},
								{"DefaultSubstanceStorageMultiplier",           DefaultSubstanceStorageMultiplierSurvival},
								{"DefaultProductStorageMultiplier",             DefaultProductStorageMultiplierSurvival},
								{"SubstanceMaxAmountLimit",                     SubstanceMaxAmountLimitSurvival},
								{"ProductMaxAmountLimit",                       ProductMaxAmountLimitSurvival},
								{"PlayerPersonalInventoryTechWidth",            PlayerPersonalInventoryTechWidthSurvival},
                                {"PlayerPersonalInventoryTechHeight",           PlayerPersonalInventoryTechHeightSurvival},	
								{"PlayerPersonalInventoryCargoWidth",           PlayerPersonalInventoryCargoWidthSurvival},
                                {"PlayerPersonalInventoryCargoHeight",          PlayerPersonalInventoryCargoHeightSurvival},	
                                {"DeconstructRefundPercentage",                 DeconstructRefundPercentageSurvival}
							}
						}
					}
				}
            }
		}
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE