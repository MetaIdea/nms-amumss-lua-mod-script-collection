Multiplier = 100
Remainder = Multiplier

if Multiplier == 10 or Multiplier == 100 then
	Remainder = Multiplier - 1
else
	Remainder = Multiplier
end

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]    = "Multiplies Stack Sizes " ..Multiplier.. "X.pak",
	["MOD_DESCRIPTION"] = "Multiplies Stack Sizes",
	["MOD_AUTHOR"]      = "KuroPeach",
	["LUA_AUTHOR"]      = "Gumsk & KuroPeach",
	["NMS_VERSION"]     = "5.20",
	["MODIFICATIONS"]   = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = { "InventoryStackLimits", "GcDifficultySettingCommonData.xml" },
							["VALUE_CHANGE_TABLE"] = {
								{ "DifficultySettingEditability", "FullyEditable" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Presets" },
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{ "InventoriesAlwaysInRange",       "True" },
								{ "AllSlotsUnlocked",               "True" },
								{ "InventoryStackLimitsDifficulty", "High" },
								{ "FishingDifficulty",              "AutoCatch" },
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = { "InventoryStackLimitsOptionData" },
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{ "SubstanceStackLimit", Multiplier },
								{ "ProductStackLimit",   Multiplier },
								{ "Default",             Multiplier },
								{ "Personal",            Multiplier },
								{ "PersonalCargo",       Multiplier },
								{ "Ship",                Multiplier },
								{ "ShipCargo",           Multiplier },
								{ "Freighter",           Multiplier },
								{ "FreighterCargo",      Multiplier },
								{ "Vehicle",             Multiplier },
								{ "Chest",               Multiplier },
								{ "BaseCapsule",         Multiplier },
								{ "MaintenanceObject",   Multiplier },
								{ "UIPopup",             Multiplier },
								{ "SeasonTransfer",      Multiplier },
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = { "InventoryStackLimitsOptionData" },
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "+",
							["VALUE_CHANGE_TABLE"] = {
								{ "SubstanceStackLimit", Remainder },
								{ "ProductStackLimit",   Remainder },
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = { "High", "GcDifficultyInventoryStackSizeOptionData.xml" },
							["MATH_OPERATION"] = "+",
							["VALUE_CHANGE_TABLE"] = {
								{ "Default",           Remainder },
								{ "Personal",          Remainder },
								{ "PersonalCargo",     Remainder },
								{ "Ship",              Remainder },
								{ "ShipCargo",         Remainder },
								{ "Freighter",         Remainder },
								{ "FreighterCargo",    Remainder },
								{ "Vehicle",           Remainder },
								{ "Chest",             Remainder },
								{ "BaseCapsule",       Remainder },
								{ "MaintenanceObject", Remainder },
								{ "UIPopup",           Remainder },
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = { "MaxSubstanceStackSizes" },
							["MATH_OPERATION"] = "+",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{ "SeasonTransfer", Remainder },
							},
						},
					}
				},
			}
		}
	}
}
