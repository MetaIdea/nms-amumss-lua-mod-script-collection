--[[┎────────────────────────────────────────────────────────────────
	┃ Decrease binoc scan and charge times
	┃ visor focus: unknown is red / scanned is dark blue
	┃ Change torch color and intensity
────┸────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC GAMEPLAY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCGAMEPLAYGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					-- {'WarpsBetweenBattles',				-4},	-- 5
					-- {'HoursBetweenBattles',				-3},	-- 3

					{'ShipScanPlanetRechargeMultiplier',	-0.5},	-- 1
					{'ShipScanSpaceRechargeMultiplier',		-0.1},	-- 0.3
					{'OverheatGenerosity',					0.05},	-- 1.05
					{'SurveyMaxDistance',					200},	-- 400
					-- {'MaxNumSameGroupTech',					3},		-- 3
					{'BinocMinScanTime',					-1.1},	-- 3.9
					{'BinocScanTime',						-1.1},	-- 3.9
					{'BinocCreatureScanTime',				-1},	-- 3.2
					{'RefinerProductsMadeInTimeSurvival',	1},		-- 1
					{'RefinerSubsMadeInTimeSurvival',		100},	-- 100
					{'AggressiveSentinelProbability',		-0.08},	-- 0.13
					{'AggressiveSentinelProbabilitySurvival',-0.06},-- 0.13
					{'LowSentinelProbability',				0.15},	-- 0.55
					{'LowSentinelProbabilitySurvival',		0.3},	-- 0.25
					{'MaxDronesLowSurvival',				-1},	-- 1
					{'ShipInteractRadius',					800},	-- 50
					{'ZoomFindBuildingRange',				400},	-- 600
					{'TorchFoV',							-40},	-- 120
					{'TorchStrength',						1.5},	-- 3.5
					{'TorchDimFoV',							3},		-- 65
					{'TorchDimStrength',					0.7},	-- 1.5
					{'UndergroundTorchFoV',					-2},	-- 70
					{'UndergroundTorchStrength',			0.7},	-- 2.5
					{'TorchOffsetY',						0.1},	-- 0.5
					{'TorchOffsetZ',						-0.45},	-- -0.2
					{'LightStrength',						0.8},	-- 1 (build selected item light)
				}
			},
			{
				PRECEDING_KEY_WORDS = 'TorchColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.93},	-- 0.95
					{'G',			0.97},	-- 0.993
					{'B',			0.94}	-- 0.944
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'ToolScan',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeTime',	-18}	-- 30
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'ToolScanHardMode',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeTime',	-60}	-- 90
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'BuildingScanEffect',
				VALUE_CHANGE_TABLE 	= {
					{'R',					0.12},	-- 0
					{'G',					0.36},	-- 0.7
					{'B',					0.48},	-- 1
					{'BasecolourIntensity',	0.12},	-- 0.2
					{'FresnelIntensity',	-18},	-- 3
					{'WaveActive',			false}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'BinocularSelectedEffect',
				VALUE_CHANGE_TABLE 	= {
					{'BasecolourIntensity',	0.32},	-- 0.4
					{'FresnelIntensity',	-26},	-- -10
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'BinocularSelectedColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.06},	-- 0.588
					{'G',			0.16},	-- 1
					{'B',			0.32}	-- 0.639
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'BinocularSelectedUnknownColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.98},	-- 0.926
					{'G',			0.32},	-- 0.539
					{'B',			0.18}	-- 1
				}
			}
		}
	}
}}}}
