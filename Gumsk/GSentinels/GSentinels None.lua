Author = "Gumsk"
ModName = "gSentinels"
ModNameSub = "None"
BaseDescription = "No Sentinels"
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
								{"SentinelsHigh", 0},							--10
								{"SentinelsLow", 100},							--30
								{"ViciousSentinelProbability", 0},				--0.25
								{"AggressiveSentinelProbability", 0},			--0.13
								{"AggressiveSentinelProbabilitySurvival", 0},	--0.13
								{"LowSentinelProbability", 1},					--0.55
								{"LowSentinelProbabilitySurvival", 1},			--0.25
								{"NonAggressiveLushSurvivalProbabability", 1},	--0.5
								{"MaxDronesLow", 0},							--0
								{"MaxDronesLowSurvival", 0},					--1
								{"MaxDronesNormal", 0},							--2
								{"MaxDronesNormalSurvival", 0},					--2
								{"MaxDronesAggressive", 0},						--1
								{"MaxDronesAggressiveSurvival", 0},				--1
							},
						},
					},
				},
			}
		}
	}
}