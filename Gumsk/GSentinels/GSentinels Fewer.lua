Author = "Gumsk"
ModName = "gSentinels"
ModNameSub = "Fewer"
BaseDescription = "Fewer Sentinels"
GameVersion = "398"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

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
							["VALUE_CHANGE_TABLE"] = {
								{"SentinelsHigh", 5},							--10
								{"SentinelsLow", 60},							--30
								{"ViciousSentinelProbability", .1},				--0.25
								{"AggressiveSentinelProbability", .05},			--0.13
								{"AggressiveSentinelProbabilitySurvival", .05},	--0.13
								{"LowSentinelProbability", .7},					--0.55
								{"LowSentinelProbabilitySurvival", .4},			--0.25
								{"NonAggressiveLushSurvivalProbabability", .75},--0.5
								{"MaxDronesLow", 0},							--0
								{"MaxDronesLowSurvival", 0},					--1
								{"MaxDronesNormal", 1},							--2
								{"MaxDronesNormalSurvival", 1},					--2
								{"MaxDronesAggressive", 1},						--1
								{"MaxDronesAggressiveSurvival", 1},				--1
							},
						},
					},
				},
			}
		}
	}
}