GameVersion = "3_84"
ModName = "SlotMaster"
Author = "Jackty89"

FilePath = {"METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"}
InventoryTablePath = "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN"

TechWidth = 8
TechHeight = 6

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = ModName .. GameVersion .. ".pak",
	["MOD_DESCRIPTION"] = ModName,
	["MOD_AUTHOR"] = Author,
	["NMS_VERSION"] = GameVersion,
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] = InventoryTablePath,
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"40","48"},
								{"32","48"},
								{"24","48"},
								{"21","48"},
								{"14","48"},
								{"7","48"},
								{"7","48"},
								{"0","48"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity.xml"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"C", "48"},
								{"B", "48"},
								{"A", "48"},
								{"S", "48"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FilePath,
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlayerPersonalInventoryTechWidth", TechWidth},
								{"PlayerPersonalInventoryTechHeight", TechHeight}
							}
						}
					}
				}
			}
		}
	}
}
