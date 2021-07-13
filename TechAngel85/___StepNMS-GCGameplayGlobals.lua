Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various gameplay elements."
FileSource01 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
-- Miscellaneous
SurveyScanMinSpeed = 2				--  | 0.75 | 262
SurveyScanMaxSpeed = 2				--  | 0.75 | 263
SurveyMaxDistance = 0.7				--  | 400 | 269
TerrainResourceScanRange = 1800		-- Rannge to scan for resources | 1200 | 394
TerrainResourceCompassRange = 180	--  | 120 | 395
WarpsBetweenBattles = 10			-- Number of warps since last space battle before next will occur | 5 | 605
HoursBetweenBattles = 6				-- Number of hours since last space battle before next will occur | 3 | 606
NewDiscoveryDisplayTime = 3			-- Time the new discovery message will display on the screen | 2 | 635
BuildingBeamDistance = 1600			-- Distance from player the beam for building will reach | 800 | 805
ResourceCommonReducer = 10			--  | 5 |  815
ShipInteractRadius = 500			-- Distance the player can be and still interact with ship | 50 | 827

-- Refiners
RefinerProductsMadeInTime = 20			-- Speed at which products are refined | 2 | 320
RefinerSubsMadeInTime = 2500			--  | 250 | 321
RefinerProductsMadeInTimeSurvival = 10	-- Speed at which products are refined for Survival Mode | 1 | 322
RefinerSubsMadeInTimeSurvival = 1000	--  | 100 | 323

-- Scanners
BinocTimeBeforeScan = 0.25			-- Delay time before a scan starts | 0.5 | 399
BinocMinScanTime = 1.3				-- Minimum time to scan | 3.9 | 400
BinocScanTime = 1.3					-- Time it takes to scan | 3.9 | 401
BinocCreatureScanTime = 1.3			-- Time it takes to scan creatures | 3.2 | 402
CreatureMinScanTime = 0.4			-- Minimum time to scan a creature | 0.8 | 633

ToolScanRange = 300					-- Range the default scanner will reach | 200 | 846
ToolScanCharge = 15					-- Time it takes for another scanner pulse to be ready | 30 | 849
ToolScanRangeHM = 200				-- Range the default scanner will reach in Survival | 150 | 853
ToolScanChargeHM = 45				-- Time it takes for another scanner pulse to be ready in Survival | 90 | 856
WaypointScanRange = 7500			-- Range the waypoint scanner will reach | 5000 | 860
WaypointScanCharge = 2				-- Time it takes for another scanner pulse to be ready | 4 | 863
BeaconScanRange = 7500				-- Range the beacon scanner will reach | 5000 | 867
BeaconScanTime = 4					-- Time it take to complete the scan | 8 | 868
BeaconScanCharge = 2				-- Time it takes for another scanner pulse to be ready | 4 | 870
RadioTowerScanRange = 150000		-- Range the tower scanner will reach | 100000 |  874
RadioTowerScanTime = 4				-- Time it take to complete the scan | 8 | 875
RadioTowerScanCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 877
ObservatoryScanRange = 150000		-- Range the tower scanner will reach | 100000 |  881
ObservatoryScanTime = 4				-- Time it take to complete the scan | 8 | 882
ObservatoryScanCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 884
DistressSignalScanRange = 150000	-- Range the tower scanner will reach | 100000 |  888
DistressSignalScanTime = 4			-- Time it take to complete the scan | 8 | 889
DistressSignalScanCharge = 2		-- Time it takes for another scanner pulse to be ready | 4 | 891
DebugScanPlanetRange = 150000		-- Range the tower scanner will reach | 100000 |  895
DebugScanPlanetTime = 4				-- Time it take to complete the scan | 8 | 896
DebugScanPlanetCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 898
DebugScanSpaceRange = 150000		-- Range the tower scanner will reach | 100000 |  902
DebugScanSpaceTime = 4				-- Time it take to complete the scan | 8 | 903
DebugScanSpaceCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 905
ShipScanRange = 15000				-- Range the tower scanner will reach | 10000 |  909
ShipScanCharge = 2					-- Time it takes for another scanner pulse to be ready | 10 | 912
VisualScanTime = 4					-- Time it take to complete the scan | 8 | 917
VisualScanCharge = 1				-- Time it takes for another scanner pulse to be ready | 4 | 919

-- Binocular Zooms
ZoomNoneMaxDistance = 15	-- Max distance able to scan without zoom | 10 | 933
ZoomFarMaxDistance = 33		-- Max distance able to scan | 25 | 942
ZoomMidFOV = 50				-- FOV of mid zoom | 40 | 949
ZoomMidMinDistance = 2		-- Minimum distance able to scan | 5 | 950
ZoomMidMaxDistance = 100	-- Max distance able to scan | 70 | 951
ZoomCloseFOV = 30			-- FOV of mid zoom | 20 | 958
ZoomCloseMinDistance = 5	-- Minimum distance able to scan | 20 | 959
ZoomCloseMaxDistance = 750	-- Max distance able to scan | 500 | 960

-- Torch/Flashlight
TorchFoV = 100				-- FOV/angle at which the torch/flashlight will illuminate | 120 | 1603
TorchStrength = 3			-- instensity of the torch/flashlight light | 3.5 | 1604
UndergroundTorchFoV = 90	-- FOV/angle at which the torch/flashlight will illuminate while underground | 70 | 1611
TorchOffsetY = 2			-- torch/flashlight Y offset from player | -0.5 | 1613
TorchOffsetZ = -1			-- torch/flashlight Z offset from player | -0.75 | 1614


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ ["PRECEDING_KEY_WORDS"] = "",
					["VALUE_CHANGE_TABLE"] = {
						{"SurveyScanMinSpeed", SurveyScanMinSpeed}, 
						{"SurveyScanMaxSpeed", SurveyScanMaxSpeed}, 
						{"SurveyMaxDistance", SurveyMaxDistance}, 
						{"RefinerProductsMadeInTime", RefinerProductsMadeInTime}, 
						{"RefinerSubsMadeInTime", RefinerSubsMadeInTime}, 
						{"RefinerProductsMadeInTimeSurvival", RefinerProductsMadeInTimeSurvival}, 
						{"RefinerSubsMadeInTimeSurvival", RefinerSubsMadeInTimeSurvival}, 
						{"TerrainResourceScanRange", TerrainResourceScanRange}, 
						{"TerrainResourceCompassRange", TerrainResourceCompassRange}, 
						{"BinocTimeBeforeScan", BinocTimeBeforeScan}, 
						{"BinocMinScanTime", BinocMinScanTime}, 
						{"BinocScanTime", BinocScanTime}, 
						{"BinocCreatureScanTime", BinocCreatureScanTime}, 
						{"WarpsBetweenBattles", WarpsBetweenBattles}, 
						{"HoursBetweenBattles", HoursBetweenBattles}, 
						{"CreatureMinScanTime", CreatureMinScanTime}, 
						{"NewDiscoveryDisplayTime", NewDiscoveryDisplayTime}, 
						{"BuildingBeamDistance", BuildingBeamDistance}, 
						{"ResourceCommonReducer", ResourceCommonReducer}, 
						{"ShipInteractRadius", ShipInteractRadius}, 
						{"TorchFoV", TorchFoV}, 
						{"TorchStrength", TorchStrength}, 
						{"UndergroundTorchFoV", UndergroundTorchFoV}, 
						{"TorchOffsetY", TorchOffsetY}, 
						{"TorchOffsetZ", TorchOffsetZ}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToolScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanRange}, {"ChargeTime", ToolScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToolScanHardMode",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanRangeHM}, {"ChargeTime", ToolScanChargeHM}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaypointScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", WaypointScanRange}, {"ChargeTime", WaypointScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"BeaconScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", BeaconScanRange}, {"PulseTime", BeaconScanTime}, {"ChargeTime", BeaconScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RadioTowerScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", RadioTowerScanRange}, {"PulseTime", RadioTowerScanTime}, {"ChargeTime", RadioTowerScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ObservatoryScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ObservatoryScanRange}, {"PulseTime", ObservatoryScanTime}, {"ChargeTime", ObservatoryScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DistressSignalScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DistressSignalScanRange}, {"PulseTime", DistressSignalScanTime}, {"ChargeTime", DistressSignalScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DebugScanPlanet",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DebugScanPlanetRange}, {"PulseTime", DebugScanPlanetTime}, {"ChargeTime", DebugScanPlanetCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DebugScanSpace",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DebugScanSpaceRange}, {"PulseTime", DebugScanSpaceTime}, {"ChargeTime", DebugScanSpaceCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ShipScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ShipScanRange}, {"ChargeTime", ShipScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"VisualScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseTime", VisualScanTime}, {"ChargeTime", VisualScanCharge}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "None",},
					["VALUE_CHANGE_TABLE"] = {
						{"MaxScanDistance", ZoomNoneMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far",},
					["VALUE_CHANGE_TABLE"] = {
						{"MaxScanDistance", ZoomFarMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid",},
					["VALUE_CHANGE_TABLE"] = {
						{"FoV", ZoomMidFOV}, {"MinScanDistance", ZoomMidMinDistance}, {"MaxScanDistance", ZoomMidMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close",},
					["VALUE_CHANGE_TABLE"] = {
						{"FoV", ZoomCloseFOV}, {"MinScanDistance", ZoomCloseMinDistance}, {"MaxScanDistance", ZoomCloseMaxDistance}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE