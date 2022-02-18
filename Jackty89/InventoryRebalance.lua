ModName = "InventoryRebalance"
GameVersion = "3_80"

--NORMAL
SubstanceDefaultStackSizeNormal = 50000	-- Stacksize of substances (Original 9999)
ProductDefaultStackSizeNormal = 50 -- Stacksize of products you can craft or buy (Original 1)

StackMultiPlierExosuitAndShipNormal = 1 -- 50000 and 50 after mutiplier
StackMultiPlierFreighterAndCargoNormal = 2 -- 100000 and 100 after mutiplier
RefundNormal = 1  -- Refund from base Deconstruct (Original 0.5). This will give you a 100% refund
-- ExoSuit Tech Slot 8 x 4 = 32
TechWidthNormal = 8 -- Tech slots increase (Original 7)
TechHeightNormal = 4 -- Tech slots increase (Original 2)

--SURVIVAL
SubstanceDefaultStackSizeSurvival = 250 -- Stacksize of substances (Original 50)
ProductDefaultStackSizeSurvival = 1 -- Stacksize of products you can craft or buy (Original 1)

StackMultiPlierExosuitInvetorySurvival = 2 -- Inventory stack size  250 x 2 = 500
StackMultiPlierExosuitCargoSurvival = 4 -- CargoInvetory 250 x 4 = 1000
StackMultiPlierShipSurvival = 8 -- Ship Inventory 250 x 10 = 2000
StackMultiPlierFreighterAndContainerSurvival = 20 -- Freighter and Cotainer 250 x 20 = 5000

ProductStackMultiPlierExosuitInvetorySurvival = 5 -- Product Stack Size = 5 ExoSuitInvetory
ProductStackMutiplierExosuitCargoAndShip = 10 -- Product Stack Size = 10 ExoSuitCargo and ShipInvetory   
ProductStackMutiplierFreighterAndContainer = 25 -- Product Stack Size = 25 Freigher and BaseContainer

-- ExoSuit Tech Slot 8 x 3 = 24
TechWidthSurvival = 8 -- Exosuit Tech slots increase (Original 7) (8 is max)
TechHeightSurvival = 3 -- Exosuit Tech slots increase (Original 2)	(5 is max)

RefundSurvival = 0.5  -- Refund from base Deconstruct (Original 0.5). This will refund 50% when deconstructing

SubstanceAndProcductStackSizeLimit = 999999 -- (Original 9999)

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Rebalance of InvetorySize and Deconstruction cost",         
  ["MOD_AUTHOR"]			= "Jackty89",         
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
								{"DefaultSubstanceMaxAmount",			        SubstanceDefaultStackSizeNormal},
								{"DefaultProductMaxAmount",                     ProductDefaultStackSizeNormal}, 
							    {"CargoSubstanceStorageMultiplier",             StackMultiPlierFreighterAndCargoNormal},
								{"CargoProductStorageMultiplier",		        StackMultiPlierFreighterAndCargoNormal}, 
								{"FreighterSubstanceStorageMultiplier",         StackMultiPlierFreighterAndCargoNormal},
								{"FreighterProductStorageMultiplier",	        StackMultiPlierFreighterAndCargoNormal}, 
								{"ShipSubstanceStorageMultiplier",              StackMultiPlierExosuitAndShipNormal},
								{"ShipProductStorageMultiplier",                StackMultiPlierExosuitAndShipNormal},
								{"ChestSubstanceStorageMultiplier",             StackMultiPlierExosuitAndShipNormal},
								{"ChestProductStorageMultiplier",               StackMultiPlierExosuitAndShipNormal},
								{"BaseCapsuleSubstanceStorageMultiplier",       StackMultiPlierFreighterAndCargoNormal},
								{"BaseCapsuleProductStorageMultiplier",         StackMultiPlierFreighterAndCargoNormal},
								{"DefaultSubstanceStorageMultiplier",           StackMultiPlierExosuitAndShipNormal},
								{"DefaultProductStorageMultiplier",             StackMultiPlierExosuitAndShipNormal},
								{"SubstanceMaxAmountLimit",                     SubstanceAndProcductStackSizeLimit},
								{"ProductMaxAmountLimit",                       SubstanceAndProcductStackSizeLimit},
								{"PlayerPersonalInventoryTechWidth",            TechWidthNormal},
                                {"PlayerPersonalInventoryTechHeight",           TechHeightNormal},	
								{"DeconstructRefundPercentage",                 RefundNormal}
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
							    {"DefaultSubstanceMaxAmount",			        SubstanceDefaultStackSizeSurvival},
								{"DefaultProductMaxAmount",                     ProductDefaultStackSizeSurvival}, 
								{"CargoSubstanceStorageMultiplier",             StackMultiPlierExosuitCargoSurvival},
								{"CargoProductStorageMultiplier",		        ProductStackMutiplierExosuitCargoAndShip}, 
								{"FreighterSubstanceStorageMultiplier",         StackMultiPlierFreighterAndContainerSurvival},
								{"FreighterProductStorageMultiplier",	        ProductStackMutiplierFreighterAndContainer}, 
								{"ShipSubstanceStorageMultiplier",              StackMultiPlierShipSurvival},
								{"ShipProductStorageMultiplier",                ProductStackMutiplierExosuitCargoAndShip},
								{"ChestSubstanceStorageMultiplier",             StackMultiPlierFreighterAndContainerSurvival},
								{"ChestProductStorageMultiplier",               ProductStackMutiplierFreighterAndContainer},
								{"BaseCapsuleSubstanceStorageMultiplier",       StackMultiPlierFreighterAndContainerSurvival},
								{"BaseCapsuleProductStorageMultiplier",         ProductStackMutiplierFreighterAndContainer},
								{"DefaultSubstanceStorageMultiplier",           StackMultiPlierExosuitInvetorySurvival},
								{"DefaultProductStorageMultiplier",             ProductStackMultiPlierExosuitInvetorySurvival},
								{"SubstanceMaxAmountLimit",                     SubstanceAndProcductStackSizeLimit},
								{"ProductMaxAmountLimit",                       SubstanceAndProcductStackSizeLimit},
								{"PlayerPersonalInventoryTechWidth",            TechWidthSurvival},
                                {"PlayerPersonalInventoryTechHeight",           TechHeightSurvival},	
                                {"DeconstructRefundPercentage",                 RefundSurvival}
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