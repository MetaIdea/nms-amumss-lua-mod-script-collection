Multiplier = 10

Author = "Gumsk"
ModName = "gStack"
ModNameSub = Multiplier.."x"
BaseDescription = "Multiplies stack sizes"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {FileSource1},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"InventoryStackLimits","GcDifficultySettingCommonData.xml"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"DifficultySettingEditability","FullyEditable"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Permadeath","GcDifficultySettingsData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"InventoryStackLimitsDifficulty","High"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PermadeathMinSettings","GcDifficultySettingsData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"InventoryStackLimitsDifficulty","High"},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"SubstanceStackLimit",Multiplier},
								{"ProductStackLimit",Multiplier},
								{"Default",Multiplier},
								{"Personal",Multiplier},
								{"PersonalCargo",Multiplier},
								{"Ship",Multiplier},
								{"ShipCargo",Multiplier},
								{"Freighter",Multiplier},
								{"FreighterCargo",Multiplier},
								{"Vehicle",Multiplier},
								{"Chest",Multiplier},
								{"BaseCapsule",Multiplier},
								{"MaintenanceObject",Multiplier},
								{"UIPopup",Multiplier},
							},
						},
					}
				},
			}
		}
	}
}
