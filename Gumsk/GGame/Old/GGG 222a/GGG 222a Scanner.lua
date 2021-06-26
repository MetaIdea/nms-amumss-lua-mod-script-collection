
--Scanner Adjustments
TerrainScan = 4							--???. Original value "30"
BinocMinScan = 2						--???. Original value "3.9"
BinocScan = 2							--??. Original value "3.9"
CreatureScan = 2						--How long to scan a new creature, in seconds. Original value "3.9"
CreatureMinScan = 0.8					--???. Original value "0.8"
ToolScanPulseRangeEasy	= 500			--Multitool scan range, in u, easy mode. Original value "200"	
ToolScanRechargeEasy = 5				--Multitool scan recharge time, in seconds, easy mode. Original value "30"
ToolScanPulseRangeHard = 250			--Multitool scan range, in u, hard mode. Original value "150"
ToolScanRechargeHard = 10				--Multitool scan recharge time, in seconds, hard mode. Original value "90"
ShipScanPulseRange = 30000				--Ship scan range, in u. Original value "10000"
ShipScanRecharge = 2					--Ship scan recharge time, in seconds. Original value "10"
HotspotScanRange = 1300					--? How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable. Original value "400"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GGG 222a Scanner.pak",
["MOD_DESCRIPTION"]	= "Scanner improvements",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.22.a",
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
								{"TerrainResourceScanTime", TerrainScan},
								{"BinocMinScanTime", BinocMinScan},
								{"BinocScanTime", BinocScan},
								{"BinocCreatureScanTime", CreatureScan},
								{"CreatureMinScanTime", CreatureMinScan}
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