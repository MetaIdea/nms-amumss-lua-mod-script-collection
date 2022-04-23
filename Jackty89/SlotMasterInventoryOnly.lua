ModName = "SlotMasterInv"
Author = "Jackty89"

FilePath = {"METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"}

TechWidth = 8
TechHeight = 6

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = ModName.. ".pak",
	["MOD_DESCRIPTION"] = ModName,
	["MOD_AUTHOR"] = Author,
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
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