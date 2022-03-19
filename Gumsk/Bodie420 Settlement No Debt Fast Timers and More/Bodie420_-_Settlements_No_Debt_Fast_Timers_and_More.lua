Author = "Bodie420"
LuaAuthor = "Gumsk"
ModName = "Settlements No Debt Fast Timers and More"
BaseDescription = ""
GameVersion = "384"
ModVersion = "a"
FileSource1 = "GCSETTLEMENTGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["LUA_AUTHOR"]		= LuaAuthor,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {	
				{
					["VALUE_CHANGE_TABLE"] = {
						{"BuildingUpgradeTimeInSeconds","1"},
						{"BuildingFreeUpgradeTimeInSeconds","1"},
						{"JudgementWaitTimeMin","1"},
						{"JudgementWaitTimeMax","1"},
						{"SettlementMiniExpeditionSuccessChance","100"},
						{"Settlement_LandingZone","0"},
						{"Settlement_Bar","0"},
						{"Settlement_Tower","0"},
						{"Settlement_Market","0"},
						{"Settlement_Small","0"},
						{"Settlement_SmallIndustrial","0"},
						{"Settlement_Medium","0"},
						{"Settlement_Large","0"},
						{"Settlement_SheriffsOffice","0"},
						{"Settlement_Double","0"},
						{"Settlement_Farm","0"},
						{"Settlement_Factory","0"},
						{"ProductionCycleDurationInSeconds","1"},
						{"MaxProductionSlotUnits","999999"},
						{"ProductUnitsPerCycleRateModifier","500"},
						{"SubstanceUnitsPerCycleRateModifier","5000"},
						{"InitialDebtCycles","0"},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"AmountMin","0"},
						{"AmountMax","0"},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
					["VALUE_CHANGE_TABLE"] = {
						{"Population","1000"},
						{"Production","99999999"},
						{"Debt","0"},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"NormalisedStatBadThresholds"},
					["VALUE_CHANGE_TABLE"] = {
						{"Debt","0"},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"NormalisedStatGoodThresholds"},
					["VALUE_CHANGE_TABLE"] = {
						{"Debt","0"},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"StatProductionIsNegativeWhenBad"},
					["VALUE_CHANGE_TABLE"] = {
						{"Happiness","False"},
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Debt","GcSettlementStatStrengthData.xml"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"AmountMin","0"},
						{"AmountMax","0"},
					},
				},
			}
		}
	}
}
}}