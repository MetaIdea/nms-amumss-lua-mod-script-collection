ModName = "InventoryUnbalance"
GameVersion = "3_80"

--NORMAL
SubstanceDefaultStackSizeNormal = "50000"	-- Stacksize of substances (Original 9999)
ProductDefaultStackSizeNormal = "2500" -- Stacksize of products you can craft or buy (Original 1)

StackMultiPlierExosuitAndShipNormal = "1" -- 50000 and 2500 after multiplier
StackMultiPlierFreighterAndCargoNormal = "2" -- 100 000 and 5000 after multiplier

RefundNormal = "1"  -- Refund from base Deconstruct (Original 0.5). This will give you a 100% refund

-- ExoSuit Tech Slot 8 x 6 = 48
TechWidthNormal = "8" -- Tech slots increase 
TechHeightNormal = "6" -- Tech slots increase

SubstanceAndProcductStackSizeLimit = "9999999" -- (Original 9999)

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Unbalance of InvetorySize and Deconstruction cost",         
  ["MOD_AUTHOR"]			= "Jackty89",         
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
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

								{"ChestSubstanceStorageMultiplier",             StackMultiPlierFreighterAndCargoNormal},
								{"ChestProductStorageMultiplier",               StackMultiPlierFreighterAndCargoNormal},

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
				}
            }
		}
    }
}