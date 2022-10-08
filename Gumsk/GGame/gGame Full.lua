Author = "Gumsk"
ModName = "gGame"
ModNameSub = "Full"
BaseDescription = "Various modifications to gameplay globals"
GameVersion = "401"
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

				--Scanning
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",500},									--200; Multitool scan range, in u, easy mode
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",500},									--150; Multitool scan range, in u, hard mode
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",30000},								--10000; Ship scan range, in u
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedEffect",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BasecolourIntensity",2.0},						--0.4; 
								{"ScanlinesSeparation",5},							--5; 
								{"FresnelIntensity",-10},							--"-10"; 
								{"GlowIntensity",1},								--0; 
								{"FadeInTime",0},									--0.1; 
								{"FadeOutTime",0.35}								--0.2; 
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedColour",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"R",0},											--0.588; 
								{"G",1},											--1; 
								{"B",0},											--0.639; 
								{"A",0.6}											--1; 
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedUnknownColour",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"R",1},											--0.926; 
								{"G",0},											--0.539; 
								{"B",0},											--1; 
								{"A",1}												--1; 
							},
						},
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"TerrainResourceScanTime",30},						--30; 
								{"TerrainResourceScanRange",2000},					--1200; 
								{"BinocsDisplayUnknownCreatures","False"},			--False; 
								{"BinocularScanTargetMinHeight",5},					--5; 
								{"BinocularScanTargetHeightRange",0},				--0; 
								{"BinocTimeBeforeScan",0.2},						--0.5; 
								{"BinocMinScanTime",0.2},							--3.9; 
								{"BinocScanTime",0.2},								--3.9; 
								{"BinocCreatureScanTime",0.2},						--3.9; 
								{"ScanStartTimeDelayMinDist",30},					--30; 
								{"ScanStartTimeDelayRange",100},					--100; 
								{"ScanStartTimeDistanceDelayTime",1},				--1; 
								{"ScanStickyDecay",3},								--3; 
								{"CreatureScanStickyDecay",0.8},					--0.8; 
								{"CreatureScanAngle",0.08},							--0.08; 
								{"CreatureMinScanTime",0.8},						--0.8; 
								{"ScanAngle",0.04},									--0.04; 
								{"NewDiscoveryDisplayTime",0.5},					--2; 
								{"SurveyMaxDistance",2000},							--400; How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable.
								{"SurveySonarMinPulseSpeed",-2.4},					--0.4; Frequency for sweeps or pings of the hotspot scanner. Lower is slower.

				--Grouping
								{"TechMustBeInTechInventory", "False"},				--True
								{"MaxNumSameGroupTech", 120},						--3; Maximum number of same tech group on one inventory page
								{"BonusSameTypeElementsAdd", 0.06},					--0.06; 
								{"BonusSameTypeElementsMultiply", 0.04},			--0.04; 
								{"BonusChildTypeElementsAdd", 0.05},				--0.05; 
								{"BonusChildTypeElementsMultiply", 0.03},			--0.03; 

				--Random
								{"AtmosphereEntryTime",1.0},						--1.5; 
								{"ShipInteractRadius",300},							--80; 
								{"LightStrength",1.1},								--1; All lights. 4 is blinding in small areas or up close
								{"AirLockDoorRange",3},								--3; 
								{"UseTradingCostTable","False"},					--False; 
								{"ChangePricesLocally","False"},					--False; 
								{"ProductItemStockDecayTime",60},					--60; 
								{"ProductItemStockReplenishTime",60},				--60; 
								{"SubstanceItemStockDecayTime",2},					--2; 
								{"SubstanceItemStockReplenishTime",2},				--2; 
								{"RefinerProductsMadeInTime",20},					--2; 
								{"RefinerSubsMadeInTime",2500},						--250; 
								{"RefinerProductsMadeInTimeSurvival",10},			--1; 
								{"RefinerSubsMadeInTimeSurvival",1000},				--100; 
								{"FourthRaceSpawnPercentage",4},					--3; 
								{"NonDominantRaceSpawnPercentage",30},				--30; 
								{"ViciousStormProbability",0.5},					--0.5; 
								{"ViciousWeatherProbability",0.5},					--0.5; 
								{"WarpsBetweenBattles",3},							--5; 
								{"HoursBetweenBattles",1},							--3; 
								{"DeadPlanetGravityFactor",0.4},					--0.6; 

				--Sentinels
								{"ViciousSentinelProbability",0.25},				--0.25; 
								{"AggressiveSentinelProbability",0.13},				--0.13; 
								{"AggressiveSentinelProbabilitySurvival",0.13},		--0.13; 
								{"LowSentinelProbability",0.55},					--0.55; 
								{"LowSentinelProbabilitySurvival",0.25},			--0.25; 
								{"NonAggressiveLushSurvivalProbabability",0.5},		--0.5; 
								{"MaxDronesLow",0},									--0; 
								{"MaxDronesLowSurvival",1},							--1; 
								{"MaxDronesNormal",2},								--2; 
								{"MaxDronesNormalSurvival",2},						--2; 
								{"MaxDronesAggressive",1},							--1; 
								{"MaxDronesAggressiveSurvival",1},					--1; 

				--Terrain Resources
								{"ResourceReducer",7},								--10; Reduces amount of standard resource deposit yields. Higher means fewer resources.
								{"ResourceMinAmount",2},							--1; Minimum amount of standard resource deposit yields per hit.
								{"ResourceMaxAmount",3},							--2; Maximum amount of standard resource deposit yields per hit.
								{"ResourceCommonReducer",4},						--5 ???
								{"ResourceCommonMinAmount",2},						--1 ???
								{"ResourceCommonMaxAmount",12},						--8 ???
								{"ResourceDirtReducer",5},							--40; Reduces amount of silicate powder yields. Higher means fewer silicate powder.
								{"ResourceDirtMinAmount",2},						--1; Minimum amount of silicate powder yields per hit.
								{"ResourceDirtMaxAmount",12},						--8; Maximum amount of silicate powder yields per hit.

				--Torch
								{"TorchFoV", 120},									--120; 
								{"TorchStrength", 4.2},								--3.5; 
								{"TorchCookieIndex", 0},							--0; 
								{"TorchDimFoV", 65},								--65; Derelict freighter FOV
								{"TorchDimStrength", 2.2},							--1.5; Derelict freighter strength
								{"InteractionTorchFoV", 120},						--120; 
								{"InteractionTorchStrength", 1.5},					--2; 
								{"UndergroundTorchFoV", 70},						--70; 
								{"UndergroundTorchFoVFar", 100},					--100; 
								{"UndergroundTorchStrength", 3.0},					--2.5; 
								{"UndergroundTorchStrengthFar", 7.5},				--6.5; 
								{"TorchOffsetX", 0},								--0; Torch source, + right, -left of centerline of character, in u
								{"TorchOffsetY", -0.35},							--"-0.5"; Torch source, + above, -below top of character head, in u
								{"TorchOffsetZ", -0.75},							--"-0.75"; Torch source, + behind, - in front of centerline of character, in u
								{"TorchRotation", 0.0},								--0.0; 
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "TorchColour",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"R", 0.95},										--0.95; torch red saturation percent
								{"G", 0.993},										--0.993; torch green saturation percent
								{"B", 0.994},										--0.994; torch blue saturation percent
								{"A", 1}											--1; torch alpha?
							},
						},
					},
				},
			}
		}
	}
}