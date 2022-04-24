Author = "Gumsk"
ModName = "gSettlement"
ModNameSub = "Instant"
BaseDescription = "Removes all timers from settlement activities"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "GCSETTLEMENTGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"BuildingUpgradeTimeInSeconds",1},
					{"BuildingFreeUpgradeTimeInSeconds",1},
					{"JudgementWaitTimeMin",1},
					{"JudgementWaitTimeMax",1},
					{"SettlementMiniExpeditionSuccessChance",1.0},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
				["VALUE_CHANGE_TABLE"] = {
					{"Settlement_LandingZone",1},
					{"Settlement_Bar",1},
					{"Settlement_Tower",1},
					{"Settlement_Market",1},
					{"Settlement_Small",1},
					{"Settlement_SmallIndustrial",1},
					{"Settlement_Medium",1},
					{"Settlement_Large",1},
					{"Settlement_Monument",1},
					{"Settlement_SheriffsOffice",1},
					{"Settlement_Double",1},
					{"Settlement_Farm",1},
					{"Settlement_Factory",1},
					{"Settlement_Clump",1},
				}
			},
		}
}}}}}