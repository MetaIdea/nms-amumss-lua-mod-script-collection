--Uncertainty based on number of ?.
-- ? = I know what it does but need to test it.
-- ?? = I think I know what it probably does, but need to find out.
-- ??? = There's something major I don't understand
-- ???? = #ifdef _F11_ALPHACUTOUT

--Tech Grouping Bonus Adjustments
TechGroup = 9							--Maximum grouping of same tech type. Original value "3"
BonusSameTypeAdd = 0.05					--?? Original value "0.06"
BonusSameTypeMult = 0.03				--?? Original value "0.04"
BonusChildAdd = 0.04					--?? Original value "0.05"
BonusChildMult = 0.02					--?? Original value "0.03"

--Torch Adjustments
TorchFoV = 181							--Torch arc width, in degrees. 181+=360 degrees. Original value "100"
TorchStrength = 4.12					--Torch brightness. Original value "4.0"
TorchOffsetX = 0						--Torch source, + right, -left of centerline of character, in u. Original value "0"
TorchOffsetY = -0.55					--Torch source, + above, -below top of character head, in u. Original value "0.5"
TorchOffsetZ = -0.12					--Torch source, + behind, - in front of centerline of character, in u. Original value "0"
TorchRotation = 0						--???
TorchColourRed = 0.6						--Torch color red saturation percent. Original value "0.95"
TorchColourGreen = 0.0					--Torch color green saturation percent. Original value "0.993"
TorchColourBlue = 0.7					--Torch color blue saturation percent. Original value "0.944"
TorchColourA = 1						--???? Original value "1"

--Scanner Adjustments
TerrainScanTime = 2						--???. Original value "30"
TerrainScanRange = 2000					--???. Original value "1200"
BinocMinScan = 1						--???. Original value "3.9"
BinocScan = 1							--??. Original value "3.9"
CreatureScan = 1						--How long to scan a new creature, in seconds. Original value "3.9"
CreatureMinScan = 0.4					--???. Original value "0.8"
ToolScanPulseRangeEasy	= 500			--Multitool scan range, in u, easy mode. Original value "200"	
ToolScanRechargeEasy = 5				--Multitool scan recharge time, in seconds, easy mode. Original value "30"
ToolScanPulseRangeHard = 250			--Multitool scan range, in u, hard mode. Original value "150"
ToolScanRechargeHard = 10				--Multitool scan recharge time, in seconds, hard mode. Original value "90"
ShipScanPulseRange = 30000				--Ship scan range, in u. Original value "10000"
ShipScanRecharge = 2					--Ship scan recharge time, in seconds. Original value "10"
-- Waypoint, beacon, radio tower, observatory, and distress signal scanner adjustments also available.
-- There are also debug scanners that can be enabled that see a lot more.
-- VisualScan? PassiveScan? What are these?
-- ScannerColour2 v Unknown at end?
HotspotScanRange = 1300					--? How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable. Original value "400"

--Missile Adjustments


--Trading Adjustments
UseTradingCostTable = "False"			--??? Original value "False"
ChangePricesLocally = "False"			--?? Original value "False"
TradeProdcutDecay = 60					--?Original value "60"
TradeProductRestock = 60				--?Original value "60"
TradeSubstanceDecay = 2					--?Original value "2"
TradeSubstanceRestock = 2				--?Original value "2"

--Misc Adjustments
CookingSpeedMultiplier = 2				--? Original value "2"
RefiningSpeedMultiplier = 250			--? Original value "250"
AggressiveSentinelProbability = 0.13	--?? Original Value "0.13"
SentinelsHigh = 10						--??? Original value "10"
SentinelsLow = 30						--??? Original value "30"
ShipInteractRadius = 200				--How close you need to be to your ship to interact with it, in u. Original value "50"
LightStrength = 1						--??? What light? Original value "1"
AirLockDoorRange = 3					--??? Original value "3"
FourthRaceSpawnPercentage = 2			--? How likely are you to see another Traveller on stations, in percent. Original value "3"
ViciousSentinelProbability = 0.25		--? Original value "0.25"
ViciousStormProbability = 0.5			--? Original value "0.5"
ViciousWeatherProbability = 0.5			--? Original value "0.5"


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GGG 223b Full.pak",
["MOD_DESCRIPTION"]	= "Combination of MaxTech and QuickScan by Saelath, Just a Little TORCH by glacki, then a bunch of my own changes",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.2",
["MODIFICATIONS"]	=
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Unknown0x394", HotspotScanRange},
								{"MaxNumSameGroupTech", TechGroup},
								{"TerrainResourceScanTime", TerrainScanTime},
								{"TerrainResourceScanRange", TerrainScanRange},
								{"BinocMinScanTime", BinocMinScan},
								{"BinocScanTime", BinocScan},
								{"BinocCreatureScanTime", CreatureScan},
								{"CreatureMinScanTime", CreatureMinScan},
								{"TorchFoV", TorchFoV},
								{"TorchStrength", TorchStrength},
								{"TorchOffsetX", TorchOffsetX},
								{"TorchOffsetY", TorchOffsetY},
								{"TorchOffsetZ", TorchOffsetZ},
								{"TorchRotation", TorchRotation},
								{"BonusSameTypeElementsAdd", BonusSameTypeAdd},
								{"BonusSameTypeElementsMultiply", BonusSameTypeMult},
								{"BonusChildTypeElementsAdd", BonusChildAdd},
								{"BonusChildTypeElementsMultiply", BonusChildMult},
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
								{"ViciousSentinelProbability", ViciousSentinelProbability},
								{"ViciousStormProbability", ViciousStormProbability},
								{"ViciousWeatherProbability", ViciousWeatherProbability}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "TorchColour",
							["VALUE_CHANGE_TABLE"] =
							{
								{"R", TorchColourRed},
								{"G", TorchColourGreen},
								{"B", TorchColourBlue},
								{"A", TorchColourA}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["VALUE_CHANGE_TABLE"] =
							{
								{"PulseRange", ToolScanPulseRangeEasy},
								{"ChargeTime", ToolScanRechargeEasy}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["VALUE_CHANGE_TABLE"] =
							{
								{"PulseRange", ToolScanPulseRangeHard},
								{"ChargeTime", ToolScanRechargeHard}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["VALUE_CHANGE_TABLE"] =
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