--Uncertainty based on number of ?.
-- ? = I know what it does but need to test it.
-- ?? = I think I know what it probably does, but need to find out.
-- ??? = There's something major I don't understand
-- ???? = #ifdef _F11_ALPHACUTOUT

--Tech Grouping Bonus Adjustments
TechGroup = 9							--Maximum grouping of same tech type. Original value "3"
BonusSameTypeAdd = 0.05					--?? Original value "0.06"
BonusSameTypeMult = 0.035				--?? Original value "0.04"
BonusChildAdd = 0.04					--?? Original value "0.05"
BonusChildMult = 0.025					--?? Original value "0.03"

--Scanner Adjustments
TerrainScanTime = 4						--???. Original value "30"
TerrainScanRange = 2000					--???. Original value "1200"
BinocMinScan = 1						--???. Original value "3.9"
BinocScan = 1							--??. Original value "3.9"
CreatureScan = 1						--How long to scan a new creature, in seconds. Original value "3.9"
CreatureMinScan = 0.8					--???. Original value "0.8"
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




NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GGG 2.23a Tech+Scan+Hot.pak",
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
								{"BonusSameTypeElementsAdd", BonusSameTypeAdd},
								{"BonusSameTypeElementsMultiply", BonusSameTypeMult},
								{"BonusChildTypeElementsAdd", BonusChildAdd},
								{"BonusChildTypeElementsMultiply", BonusChildMult},
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