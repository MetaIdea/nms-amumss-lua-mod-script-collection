Author = "Gumsk"		--Edited by Xenonex
ModName = "gGame"
ModNameSub = "Misc Changes X"
BaseDescription = "Various modifications to gameplay globals"
GameVersion = "5_55"
ModVersion = "b"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

--Tech Grouping Bonus Adjustments
MaxNumSameGroupTech = 5							--3 ; Maximum installed number of upgrade modules for a given base tech before overloading
BonusSameTypeAdd = 0.06							--0.06 ; 
BonusSameTypeMult = 0.04						--0.04 ; 
BonusChildAdd = 0.05							--0.05 ; 
BonusChildMult = 0.03							--0.03 ; 


--Torch Adjustments
TorchFoV = 110									--Torch arc width, in degrees. 181+=360 degrees. Original value "110" (120)
TorchStrength = 4.2								--Torch brightness. Original value "4" (3.5)
TorchCookieIndex = 0							--0
TorchDimFoV = 65								--65 Derelict Freighter FOV
TorchDimStrength = 2.2							--1.5 Derelict Freighter Strength
InteractionTorchFoV = 120						--120
InteractionTorchStrength = 1.5					--2
UndergroundTorchFoV = 90						--90
UndergroundTorchStrength = 3.5					--3.5
--UndergroundTorchFoVFar = 100					--100	Deprecated in NMS v5.5
--UndergroundTorchStrengthFar = 7.5				--6.5	Deprecated in NMS v5.5
TorchOffsetX = 0								--Torch source, + right, -left of centerline of character, in u. Original value "0"
TorchOffsetY = -0.35							--Torch source, + above, -below top of character head, in u. Original value "-0.5"
TorchOffsetZ = -1.0								--Torch source, + behind, - in front of centerline of character, in u. Original value "-1.2" (-0.75)
TorchRotation = 0.0								--???
TorchColourRed = 0.95							--Torch color red saturation percent. Original value "0.95"
TorchColourGreen = 0.993						--Torch color green saturation percent. Original value "0.993"
TorchColourBlue = 0.944							--Torch color blue saturation percent. Original value "0.944"
TorchColourA = 1								--???? Original value "1"

--Scanner Adjustments
--[[
TerrainResourceScanTime = 30					--30 ; ???
TerrainResourceScanRange = 2000					--1200 ; ???
BinocsDisplayUnknownCreatures = "false"			--False ; ???
BinocularScanTargetMinHeight = 5				--5 ; ???
BinocularScanTargetHeightRange = 0				--0 ; ???
]]
BinocTimeBeforeScan = 0.3						--0.5 ; ???		(0.2)
BinocMinScanTime = 1.2							--2.2 ; ???		(0.2)
BinocScanTime = 1.2								--2.2 ; ???		(0.2)
BinocCreatureScanTime = 1.1						--1.9 ; How long to scan a new creature, in seconds		(0.2)
	--Added by Xenonex
BinocularScanTargetInitialFadeTime = 0.3		--0.5 ; 
BinocularScanTargetFadeTime = 0.3				--0.5 ; 

--[[
ScanStartTimeDelayMinDist = 30					--30 ; 
ScanStartTimeDelayRange = 100					--100 ; 
ScanStartTimeDistanceDelayTime = 1				--1 ; 
ScanStickyDecay = 3								--3 ; 
CreatureScanStickyDecay = 0.8					--0.8 ; 
CreatureScanAngle = 0.08						--0.08 ; 
CreatureMinScanTime = 0.8						--0.8 ; 
ScanAngle = 0.04								--0.04 ; 
]]
NewDiscoveryDisplayTime = 1						--2 ;		(0.5)


--[[
BinocularSelectedColourIntensity = 2.0			--0.4
BinocularSelectedScanlines = 5					--5
BinocularSelectedFresnel = -10					--"-10"
BinocularSelectedGlow = 1						--0
BinocularFadeInTime = 0							--0.1
BinocularFadeOutTime = 0.35						--0.2
BinocularSelectedKnownRed = 0					--0.588
BinocularSelectedKnownGreen = 1					--1
BinocularSelectedKnownBlue = 0					--0.639
BinocularSelectedKnownAlpha = 0.7				--1
BinocularSelectedUnknownRed = 1					--0.926
BinocularSelectedUnknownGreen = 0				--0.539
BinocularSelectedUnknownBlue = 0				--1
BinocularSelectedUnknownAlpha = 1				--1

ToolScanPulseRangeEasy	= 500					--Multitool scan range, in u, easy mode. Original value "200"	
ToolScanRechargeEasy = 1						--Multitool scan recharge time, in seconds, easy mode. Original value "30"
ToolScanPulseRangeHard = 500					--Multitool scan range, in u, hard mode. Original value "150"
ToolScanRechargeHard = 1						--Multitool scan recharge time, in seconds, hard mode. Original value "90"
ShipScanPulseRange = 30000						--10000; Ship scan range, in u
ShipScanRecharge = 1							--Ship scan recharge time, in seconds. Original value "10"
]]
SurveyMaxDistance = 1000						--How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable. Original value "400"
--SurveySonarMinPulseSpeed = -2.4					--0.4 ; Frequency for sweeps or pings of the hotspot scanner. Lower is slower

-- Waypoint, beacon, radio tower, observatory, and distress signal scanner adjustments also available.
-- There are also debug scanners that can be enabled that see a lot more.
-- VisualScan? PassiveScan? What are these?
-- ScannerColour2 v Unknown at end?

--Trading Adjustments
--[[
UseTradingCostTable = "false"					--??? Original value "false"
ChangePricesLocally = "false"					--?? Original value "false"
TradeProdcutDecay = 60							--?Original value "60"
TradeProductRestock = 60						--?Original value "60"
TradeSubstanceDecay = 2							--?Original value "2"
TradeSubstanceRestock = 2						--?Original value "2"
]]

--Sentinels
AggressiveSentinelProbability = 0.13			--0.13 ;
AggressiveSentinelProbabilitySurvival = 0.13	--0.13 ;
LowSentinelProbability = 0.25					--0.55 ;
LowSentinelProbabilitySurvival = 0.25			--0.25 ;
NonAggressiveLushSurvivalProbability = 0.5		--0.5 ;
MaxDronesLow = 1								--0
MaxDronesLowSurvival = 1						--1
MaxDronesNormal = 3								--2
MaxDronesNormalSurvival = 3						--2
MaxDronesAggressive = 2							--1
MaxDronesAggressiveSurvival = 2					--1
--SentinelsHigh = 10							--10 ; 
--SentinelsLow = 30								--30 ; 
ViciousSentinelProbability = 0.25				--0.25 ; 

--Misc Adjustments

RefinerProductsMadeInTime = 1					--2 ; 
RefinerSubsMadeInTime = 100						--250 ; 
RefinerProductsMadeInTimeSurvival = 1			--1 ; 
RefinerSubsMadeInTimeSurvival = 100				--100 ; 
--[[
AtmosphereEntryTime = 1.0						--1.5
ShipInteractRadius = 300						--80 ; How close you need to be to your ship to interact with it, in u
LightStrength = 1.1								--1 ; All lights. 4 is blinding in small areas or up close
AirLockDoorRange = 3							--3 ;
FourthRaceSpawnPercentage = 3					--3 ; How likely are you to see a Traveller on stations, in percent
NonDominantRaceSpawnPercentage = 30				--30
ViciousStormProbability = 0.5					--0.5 ; 
ViciousWeatherProbability = 0.5					--0.5 ; 
-- BuildingBeamDistance = 800					--800
-- HardModeTechDamageMidNum = 5					--5
-- HardModeTechDamageMidPercent = 50			--50
-- HardModeTechDamageHighPercent = 20			--20
WarpsBetweenBattles = 3							--5
HoursBetweenBattles = 1							--3
DeadPlanetGravityFactor = 0.4					--0.6
]]


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["MXML_CHANGE_TABLE"] = {

--Scanning
				--[[
				{
					["PRECEDING_KEY_WORDS"] = "ToolScan",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanPulseRangeEasy},
						{"ChargeTime", ToolScanRechargeEasy}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanPulseRangeHard},
						{"ChargeTime", ToolScanRechargeHard}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "ShipScan",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ShipScanPulseRange},
						{"ChargeTime", ShipScanRecharge}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "BinocularSelectedEffect",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BasecolourIntensity", BinocularSelectedColourIntensity},
						{"ScanlinesSeparation", BinocularSelectedScanlines},
						{"FresnelIntensity", BinocularSelectedFresnel},
						{"GlowIntensity", BinocularSelectedGlow},
						{"FadeInTime", BinocularFadeInTime},
						{"FadeOutTime", BinocularFadeOutTime}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "BinocularSelectedColour",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", BinocularSelectedKnownRed},
						{"G", BinocularSelectedKnownGreen},
						{"B", BinocularSelectedKnownBlue},
						{"A", BinocularSelectedKnownAlpha}
					}
				},	
				{
					["PRECEDING_KEY_WORDS"] = "BinocularSelectedUnknownColour",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", BinocularSelectedUnknownRed},
						{"G", BinocularSelectedUnknownGreen},
						{"B", BinocularSelectedUnknownBlue},
						{"A", BinocularSelectedUnknownAlpha}
					}
				},					
				]]
				{
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						--[[
						{"TerrainResourceScanTime", TerrainResourceScanTime},
						{"TerrainResourceScanRange", TerrainResourceScanRange},
						{"BinocsDisplayUnknownCreatures", BinocsDisplayUnknownCreatures},
						{"BinocularScanTargetMinHeight", BinocularScanTargetMinHeight},
						{"BinocularScanTargetHeightRange", BinocularScanTargetHeightRange},
						]]
						{"BinocTimeBeforeScan", BinocTimeBeforeScan},
						{"BinocMinScanTime", BinocMinScanTime},
						{"BinocScanTime", BinocScanTime},
						{"BinocCreatureScanTime", BinocCreatureScanTime},
						--Added by Xenonex
						{"BinocularScanTargetInitialFadeTime",	BinocularScanTargetInitialFadeTime},
						{"BinocularScanTargetFadeTime",			BinocularScanTargetFadeTime},
						
						--[[
						{"ScanStartTimeDelayMinDist", ScanStartTimeDelayMinDist},
						{"ScanStartTimeDelayRange", ScanStartTimeDelayRange},
						{"ScanStartTimeDistanceDelayTime", ScanStartTimeDistanceDelayTime},
						{"ScanStickyDecay", ScanStickyDecay},
						{"CreatureScanStickyDecay", CreatureScanStickyDecay},
						{"CreatureScanAngle", CreatureScanAngle},
						{"CreatureMinScanTime", CreatureMinScanTime},
						{"ScanAngle", ScanAngle},
						]]
						{"NewDiscoveryDisplayTime", NewDiscoveryDisplayTime},
						{"SurveyMaxDistance", SurveyMaxDistance},
						--{"SurveySonarMinPulseSpeed", SurveySonarMinPulseSpeed},

				--Grouping
						{"BonusSameTypeElementsAdd", BonusSameTypeAdd},
						{"BonusSameTypeElementsMultiply", BonusSameTypeMult},
						{"BonusChildTypeElementsAdd", BonusChildAdd},
						{"BonusChildTypeElementsMultiply", BonusChildMult},

				--Random
						--[[
						{"AtmosphereEntryTime", AtmosphereEntryTime},
						{"ShipInteractRadius", ShipInteractRadius},
						{"LightStrength", LightStrength},
						{"AirLockDoorRange", AirLockDoorRange},
						{"UseTradingCostTable", UseTradingCostTable},
						{"ChangePricesLocally", ChangePricesLocally},
						{"ProductItemStockDecayTime", TradeProdcutDecay},
						{"ProductItemStockReplenishTime", TradeProductRestock},
						{"SubstanceItemStockDecayTime", TradeSubstanceDecay},
						{"SubstanceItemStockReplenishTime", TradeSubstanceRestock},
						{"FourthRaceSpawnPercentage", FourthRaceSpawnPercentage},
						{"NonDominantRaceSpawnPercentage", NonDominantRaceSpawnPercentage},
						{"ViciousStormProbability", ViciousStormProbability},
						{"ViciousWeatherProbability", ViciousWeatherProbability},
						{"WarpsBetweenBattles", WarpsBetweenBattles},
						{"HoursBetweenBattles", HoursBetweenBattles},
						{"DeadPlanetGravityFactor", DeadPlanetGravityFactor},
						]]

				--Sentinels
						{"ViciousSentinelProbability", ViciousSentinelProbability},
						{"AggressiveSentinelProbability", AggressiveSentinelProbability},
						{"AggressiveSentinelProbabilitySurvival", AggressiveSentinelProbabilitySurvival},
						{"LowSentinelProbability", LowSentinelProbability},
						{"LowSentinelProbabilitySurvival", LowSentinelProbabilitySurvival},
						{"NonAggressiveLushSurvivalProbabability", NonAggressiveLushSurvivalProbability},

				--Torch
						{"TorchFoV", TorchFoV},
						{"TorchStrength", TorchStrength},
						{"TorchDimFoV", TorchDimFoV},
						{"TorchDimStrength", TorchDimStrength},
						{"InteractionTorchFoV", InteractionTorchFoV},
						{"InteractionTorchStrength", InteractionTorchStrength},
						{"UndergroundTorchFoV", UndergroundTorchFoV},
						{"UndergroundTorchStrength", UndergroundTorchStrength},
						--{"UndergroundTorchFoVFar", UndergroundTorchFoVFar},	Deprecated in NMS v5.5
						--{"UndergroundTorchStrengthFar", UndergroundTorchStrengthFar},	Deprecated in NMS v5.5
						{"TorchOffsetX", TorchOffsetX},
						{"TorchOffsetY", TorchOffsetY},
						{"TorchOffsetZ", TorchOffsetZ},
						{"TorchRotation", TorchRotation},
					}
				},
				{
					["INTEGER_TO_FLOAT"] = "PRESERVE",
					["VALUE_CHANGE_TABLE"] = {
				--Grouping
						{"MaxNumSameGroupTech", MaxNumSameGroupTech},

				--Random
						{"RefinerProductsMadeInTime", RefinerProductsMadeInTime},
						{"RefinerSubsMadeInTime", RefinerSubsMadeInTime},
						{"RefinerProductsMadeInTimeSurvival", RefinerProductsMadeInTimeSurvival},
						{"RefinerSubsMadeInTimeSurvival", RefinerSubsMadeInTimeSurvival},

				--Sentinels
						{"MaxDronesLow", MaxDronesLow},
						{"MaxDronesLowSurvival", MaxDronesLowSurvival},
						{"MaxDronesNormal", MaxDronesNormal},
						{"MaxDronesNormalSurvival", MaxDronesNormalSurvival},
						{"MaxDronesAggressive", MaxDronesAggressive},
						{"MaxDronesAggressiveSurvival", MaxDronesAggressiveSurvival},

				--Torch
						{"TorchCookieIndex", TorchCookieIndex},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "TorchColour",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", TorchColourRed},
						{"G", TorchColourGreen},
						{"B", TorchColourBlue},
						{"A", TorchColourA}
					}
				},
			}
		},
	}
},
}}