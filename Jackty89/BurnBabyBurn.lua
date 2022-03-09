GameVersion = "3_84"
ModName = "BurnBabyBurn"
Author = "Jackty89"

UnlockableItemTrees = "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN"
TechnologyTablePath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

AddFlame = [[<Property value="GcUnlockableItemTreeNode.xml">
<Property name="Unlockable" value="FLAME" />
<Property name="Children" />
</Property>]]

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= ModName,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= UnlockableItemTrees,
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_WEAP_TECH_TREE", "Title", "UI_TECH_TREE_SUB","Unlockable", "LASER"},
							["LINE_OFFSET"] = "+1",
                            ["ADD"] = AddFlame
						}
                    }
				},
				{
					["MBIN_FILE_SOURCE"] 	= TechnologyTablePath,
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
							["VALUE_CHANGE_TABLE"] =
							{
								-- {"SubstanceCategory", "Fuel"},
								-- {"Chargeable", "True"},
								{"FragmentCost", "2500"},
								-- {"UsesAmmo", "False"},
								-- {"AmmoId", ""},
								{"WikiEnabled", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" , "TechShopRarity", "GcTechnologyRarity.xml"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TechnologyRarity", "Common"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FLAME" , "Rarity", "GcTechnologyRarity.xml"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TechnologyRarity", "Common"}
							}
						},
						-- {
						-- 	["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
						-- 	["PRECEDING_KEY_WORDS"] = {"ChargeBy", "NMSString0x10.xml"},
						-- 	["VALUE_CHANGE_TABLE"] =
						-- 	{
						-- 		{"Value", "FUEL1"}
						-- 	}
						-- },
						-- {
						-- 	["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
						-- 	["PRECEDING_KEY_WORDS"] = {"ChargeBy", "NMSString0x10.xml", "NMSString0x10.xml"},
						-- 	["VALUE_CHANGE_TABLE"] =
						-- 	{
						-- 		{"Value", "HOT1"}
						-- 	}
						-- },
						-- {
						-- 	["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
						-- 	["PRECEDING_KEY_WORDS"] = {"ChargeBy", "NMSString0x10.xml", "NMSString0x10.xml" , "NMSString0x10.xml"},
						-- 	["VALUE_CHANGE_TABLE"] =
						-- 	{
						-- 		{"Value", "LAVA1"}
						-- 	}
						-- }
                    }
				}
            }
        }
    }
}