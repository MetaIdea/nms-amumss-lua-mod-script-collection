NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.AllItems99999Plus48SuitTechSlots.6.3.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.3",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"DefaultSubstanceMaxAmount",             "99999"}, -- Original "9999"							
								{"DefaultProductMaxAmount",               "99999"}, -- Original "1"
								{"CargoSubstanceStorageMultiplier",       "10"},    -- Original "1"
								{"CargoProductStorageMultiplier",         "100"},   -- Original "10"
								{"ShipSubstanceStorageMultiplier",        "10"},    -- Original "1"
								{"ShipProductStorageMultiplier",          "50"},    -- Original "5"
								{"FreighterSubstanceStorageMultiplier",   "10"},    -- Original "1"
								{"FreighterProductStorageMultiplier",     "100"},   -- Original "10"
								{"ChestSubstanceStorageMultiplier",       "10"},    -- Original "1"
								{"ChestProductStorageMultiplier",         "200"},   -- Original "20"
								{"BaseCapsuleSubstanceStorageMultiplier", "10"},    -- Original "1"
								{"BaseCapsuleProductStorageMultiplier",   "1000"},  -- Original "100"
								{"DefaultSubstanceStorageMultiplier",     "10"},    -- Original "1"
								{"DefaultProductStorageMultiplier",       "50"},    -- Original "5"
								{"SubstanceMaxAmountLimit",               "99999"}, -- Original "9999"
								{"ProductMaxAmountLimit",                 "99999"}, -- Original "9999"								
								{"PlayerPersonalInventoryTechWidth",      "8"},     -- Original "7"
								{"PlayerPersonalInventoryTechHeight",     "6"},     -- Original "2"
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"DefaultSubstanceMaxAmount",             "99999"}, -- Original "250"							
								{"DefaultProductMaxAmount",               "99999"}, -- Original "1"
								{"CargoSubstanceStorageMultiplier",       "10"},    -- Original "2"
								{"CargoProductStorageMultiplier",         "100"},   -- Original "10"
								{"ShipSubstanceStorageMultiplier",        "10"},    -- Original "2"
								{"ShipProductStorageMultiplier",          "50"},    -- Original "5"
								{"FreighterSubstanceStorageMultiplier",   "10"},    -- Original "4"
								{"FreighterProductStorageMultiplier",     "100"},   -- Original "10"
								{"ChestSubstanceStorageMultiplier",       "10"},    -- Original "4"
								{"ChestProductStorageMultiplier",         "200"},   -- Original "20"
								{"BaseCapsuleSubstanceStorageMultiplier", "10"},    -- Original "8"
								{"BaseCapsuleProductStorageMultiplier",   "1000"},  -- Original "100"
								{"DefaultSubstanceStorageMultiplier",     "10"},    -- Original "1"
								{"DefaultProductStorageMultiplier",       "50"},    -- Original "5"
								{"SubstanceMaxAmountLimit",               "99999"}, -- Original "9999"
								{"ProductMaxAmountLimit",                 "99999"}, -- Original "9999"								
								{"PlayerPersonalInventoryTechWidth",      "8"},     -- Original "7"
								{"PlayerPersonalInventoryTechHeight",     "6"},     -- Original "2"
							}
						},
					}
				},				
			}
		}
	}	
}