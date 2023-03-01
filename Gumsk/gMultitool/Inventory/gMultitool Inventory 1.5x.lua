Author = "Gumsk"
ModName = "gMultitool Inventory"
ModNameSub = "1.5"
BaseDescription = "Increases multitool inventory limits"
GameVersion = "399"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize","GcWeaponInventoryMaxUpgradeCapacity.xml"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"C",ModNameSub},		--12
								{"B",ModNameSub},		--16
								{"A",ModNameSub},		--20
								{"S",ModNameSub},		--24
							},
						},
					},
				},
			}
		}
	}
}