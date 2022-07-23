NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_MegaStacks&AllSuitTechSlots.pak",
["MOD_AUTHOR"]    = "Ichigo0Soul",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.96",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = 
					{
						"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
						"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DefaultSubstanceMaxAmount",             "999999"},
								{"DefaultProductMaxAmount",               "10"},
								{"CargoSubstanceStorageMultiplier",       "50"},
								{"CargoProductStorageMultiplier",         "50"},
								{"ShipSubstanceStorageMultiplier",        "50"},
								{"ShipProductStorageMultiplier",          "50"},
								{"FreighterSubstanceStorageMultiplier",   "50"},
								{"FreighterProductStorageMultiplier",     "50"},
								{"ChestSubstanceStorageMultiplier",       "50"},
								{"ChestProductStorageMultiplier",         "50"},
								{"BaseCapsuleSubstanceStorageMultiplier", "50"},
								{"DefaultSubstanceStorageMultiplier",     "50"},
								{"DefaultProductStorageMultiplier",       "50"},
								{"SubstanceMaxAmountLimit",               "999999"},
								{"ProductMaxAmountLimit",                 "999999"},
								{"PlayerPersonalInventoryTechWidth",      "8"},
								{"PlayerPersonalInventoryTechHeight",     "6"},
							}
						}
					} 
				}
			}
		}
	}	
}