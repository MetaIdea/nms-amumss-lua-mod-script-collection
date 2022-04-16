Author = "Gumsk"
ModName = "gSentinels"
ModNameSub = "Max"
BaseDescription = "Max Sentinels"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

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
					{"SentinelsHigh", 100},							--10
					{"SentinelsLow", 0},							--30
					{"ViciousSentinelProbability", 1},				--0.25
					{"AggressiveSentinelProbability", 1},			--0.13
					{"AggressiveSentinelProbabilitySurvival", 1},	--0.13
					{"LowSentinelProbability", 0},					--0.55
					{"LowSentinelProbabilitySurvival", 0},			--0.25
					{"NonAggressiveLushSurvivalProbabability", .75},--0.5
					{"MaxDronesLow", 8},							--0
					{"MaxDronesLowSurvival", 8},					--1
					{"MaxDronesNormal", 8},							--2
					{"MaxDronesNormalSurvival", 8},					--2
					{"MaxDronesAggressive", 8},						--1
					{"MaxDronesAggressiveSurvival", 8},				--1
				},
			},
		}
}}}}}