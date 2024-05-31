
UnknownInt0x10 = 40000					--20000 ; NOT the global base item limit

--Tech Grouping Bonus Adjustments
MaxNumSameGroupTech = 9					--3 ; Maximum grouping of same tech type
BonusSameTypeAdd = 0.045				--0.06 ; 
BonusSameTypeMult = 0.03				--0.04 ; 
BonusChildAdd = 0.035					--0.05 ; 
BonusChildMult = 0.025					--0.03 ; 

--Torch Adjustments
TorchFoV = 181							--Torch arc width, in degrees. 181+=360 degrees. Original value "100"
TorchStrength = 4.7						--Torch brightness. Original value "4.0"
TorchOffsetX = -0.1						--Torch source, + right, -left of centerline of character, in u. Original value "0"
TorchOffsetY = -0.45					--Torch source, + above, -below top of character head, in u. Original value "0.5"
TorchOffsetZ = -0.14					--Torch source, + behind, - in front of centerline of character, in u. Original value "0"
TorchRotation = 0						--???
TorchColourRed = 0.6					--Torch color red saturation percent. Original value "0.95"
TorchColourGreen = 0.6					--Torch color green saturation percent. Original value "0.993"
TorchColourBlue = 1.0					--Torch color blue saturation percent. Original value "0.944"
TorchColourA = 1						--???? Original value "1"

--Scanner Adjustments
TerrainResourceScanTime = 30			--30 ; ???
TerrainResourceScanRange = 2000			--1200 ; ???
Unknown0x528 = 120						--120 ; ???
BinocsDisplayUnknownCreatures = "False"	--False ; ???
BinocularScanTargetMinHeight = 5		--5 ; ???
BinocularScanTargetHeightRange = 0		--0 ; ???
BinocTimeBeforeScan = 0.5				--0.5 ; ???
BinocMinScanTime = 2					--3.9 ; ???
BinocScanTime = 2						--3.9 ; ???
BinocCreatureScanTime = 2				--3.9 ; How long to scan a new creature, in seconds
ScanStartTimeDelayMinDist = 30			--30 ; 
ScanStartTimeDelayRange = 100			--100 ; 
ScanStartTimeDistanceDelayTime = 1		--1 ; 
ScanStickyDecay = 3						--3 ; 
CreatureScanStickyDecay = 0.8			--0.8 ; 
CreatureScanAngle = 0.08				--0.08 ; 
CreatureMinScanTime = 0.8				--0.8 ; 
ScanAngle = 0.04						--0.04 ; 
NewDiscoveryDisplayTime = 2				--2 ; 

ToolScanPulseRangeEasy	= 500			--Multitool scan range, in u, easy mode. Original value "200"	
ToolScanRechargeEasy = 5				--Multitool scan recharge time, in seconds, easy mode. Original value "30"
ToolScanPulseRangeHard = 250			--Multitool scan range, in u, hard mode. Original value "150"
ToolScanRechargeHard = 10				--Multitool scan recharge time, in seconds, hard mode. Original value "90"
ShipScanPulseRange = 30000				--Ship scan range, in u. Original value "10000"
ShipScanRecharge = 2					--Ship scan recharge time, in seconds. Original value "10"
HotspotScanRange = 2000					--? How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable. Original value "400"
HotspotScanSweepTime = -2.4				--0.4 ; Frequency for sweeps or pings of the hotspot scanner. Lower is slower

-- Waypoint, beacon, radio tower, observatory, and distress signal scanner adjustments also available.
-- There are also debug scanners that can be enabled that see a lot more.
-- VisualScan? PassiveScan? What are these?
-- ScannerColour2 v Unknown at end?
--Missile Adjustments

--Trading Adjustments
UseTradingCostTable = "False"			--??? Original value "False"
ChangePricesLocally = "False"			--?? Original value "False"
TradeProdcutDecay = 60					--?Original value "60"
TradeProductRestock = 60				--?Original value "60"
TradeSubstanceDecay = 2					--?Original value "2"
TradeSubstanceRestock = 2				--?Original value "2"

--Misc Adjustments
CookingSpeedMultiplier = 20				--2 ; 
RefiningSpeedMultiplier = 400			--250 ; 
AggressiveSentinelProbability = 0.1		--0.13 ; 
SentinelsHigh = 7						--10 ; 
SentinelsLow = 40						--30 ; 
ShipInteractRadius = 200				--80 ; How close you need to be to your ship to interact with it, in u
LightStrength = 2.2						--1 ; Seems to be all lights, but still has a really fast dropoff. 4 is blinding in small areas or up close
AirLockDoorRange = 3.5					--3 ; 
FourthRaceSpawnPercentage = 2			--3 ; How likely are you to see another Traveller on stations, in percent
ViciousSentinelProbability = 0.15		--0.25 ; 
ViciousStormProbability = 0.25			--0.5 ; 
ViciousWeatherProbability = 0.25		--0.5 ; 
Unknown0x8C4 = 0.13						--0.13 ; some sort of probability, not sure what
Unknown0x8C8 = 0.55						--0.55 ; some sort of probability, not sure what
Unknown0x8CC = 0.25						--0.25 ; some sort of probability, not sure what
Unknown0x8D0 = 0.5						--0.5 ; some sort of probability, not sure what


NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GGame 232b Tech Scan.pak",
MOD_DESCRIPTION	= "GCGAMEPLAYGLOBALS",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.3.2",
MODIFICATIONS	=
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			MBIN_CHANGE_TABLE = 
			{
				{
					MBIN_FILE_SOURCE = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = 
					{
						{
							PRECEDING_KEY_WORDS = "",
							VALUE_CHANGE_TABLE =
							{
								{"MaxNumSameGroupTech", MaxNumSameGroupTech},
								{"BonusSameTypeElementsAdd", BonusSameTypeAdd},
								{"BonusSameTypeElementsMultiply", BonusSameTypeMult},
								{"BonusChildTypeElementsAdd", BonusChildAdd},
								{"BonusChildTypeElementsMultiply", BonusChildMult},
								-- {"TorchFoV", TorchFoV},
								-- {"TorchStrength", TorchStrength},
								-- {"TorchOffsetX", TorchOffsetX},
								-- {"TorchOffsetY", TorchOffsetY},
								-- {"TorchOffsetZ", TorchOffsetZ},
								-- {"TorchRotation", TorchRotation},
								
								{"TerrainResourceScanTime", TerrainResourceScanTime},
								{"TerrainResourceScanRange", TerrainResourceScanRange},
								{"Unknown0x528", Unknown0x528},
								{"BinocsDisplayUnknownCreatures", BinocsDisplayUnknownCreatures},
								{"BinocularScanTargetMinHeight", BinocularScanTargetMinHeight},
								{"BinocularScanTargetHeightRange", BinocularScanTargetHeightRange},
								{"BinocTimeBeforeScan", BinocTimeBeforeScan},
								{"BinocMinScanTime", BinocMinScanTime},
								{"BinocScanTime", BinocScanTime},
								{"BinocCreatureScanTime", BinocCreatureScanTime},
								{"ScanStartTimeDelayMinDist", ScanStartTimeDelayMinDist},
								{"ScanStartTimeDelayRange", ScanStartTimeDelayRange},
								{"ScanStartTimeDistanceDelayTime", ScanStartTimeDistanceDelayTime},
								{"ScanStickyDecay", ScanStickyDecay},
								{"CreatureScanStickyDecay", CreatureScanStickyDecay},
								{"CreatureScanAngle", CreatureScanAngle},
								{"CreatureMinScanTime", CreatureMinScanTime},
								{"ScanAngle", ScanAngle},
								{"NewDiscoveryDisplayTime", NewDiscoveryDisplayTime},
								{"HotspotScanRange", HotspotScanRange},
								{"HotspotScanSweepTime", HotspotScanSweepTime},

								-- {"ShipInteractRadius", ShipInteractRadius},
								-- {"LightStrength", LightStrength},
								-- {"AirLockDoorRange", AirLockDoorRange},
								-- {"UseTradingCostTable", UseTradingCostTable},
								-- {"ChangePricesLocally", ChangePricesLocally},
								-- {"ProductItemStockDecayTime", TradeProdcutDecay},
								-- {"ProductItemStockReplenishTime", TradeProductRestock},
								-- {"SubstanceItemStockDecayTime", TradeSubstanceDecay},
								-- {"SubstanceItemStockReplenishTime", TradeSubstanceRestock},
								-- {"FourthRaceSpawnPercentage", FourthRaceSpawnPercentage},
								-- {"ViciousSentinelProbability", ViciousSentinelProbability},
								-- {"ViciousStormProbability", ViciousStormProbability},
								-- {"ViciousWeatherProbability", ViciousWeatherProbability}
							}
						},
						-- {
							-- PRECEDING_KEY_WORDS = "TorchColour",
							-- VALUE_CHANGE_TABLE =
							-- {
								-- {"R", TorchColourRed},
								-- {"G", TorchColourGreen},
								-- {"B", TorchColourBlue},
								-- {"A", TorchColourA}
							-- }
						-- },
						{
							PRECEDING_KEY_WORDS = "ToolScan",
							VALUE_CHANGE_TABLE =
							{
								{"PulseRange", ToolScanPulseRangeEasy},
								{"ChargeTime", ToolScanRechargeEasy}
							}
						},
						{
							PRECEDING_KEY_WORDS = "ToolScanHardMode",
							VALUE_CHANGE_TABLE =
							{
								{"PulseRange", ToolScanPulseRangeHard},
								{"ChargeTime", ToolScanRechargeHard}
							}
						},
						{
							PRECEDING_KEY_WORDS = "ShipScan",
							VALUE_CHANGE_TABLE =
							{
								{"PulseRange", ShipScanPulseRange},
								{"ChargeTime", ShipScanRecharge}
							}
						},
					}
				},
			}
		},
	}
}