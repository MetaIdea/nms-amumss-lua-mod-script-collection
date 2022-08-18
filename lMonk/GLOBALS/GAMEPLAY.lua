------------------------------------------------------
local desc = [[
  Decrease binoc scan and charge times
  visor focus: unknown is red / scanned is dark blue
  Change torch color and intensity
]]----------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC GAMEPLAY.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= 3.99,
	MOD_DESCRIPTION			= desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCGAMEPLAYGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					-- {'InfestedPlanetDeepSpaceFlybyMultiplier',30},	-- 3.5

					{'WarpsBetweenBattles',					8},		-- 5
					{'HoursBetweenBattles',					5},		-- 3
					{'CargoShieldStrength',					0.22},	-- 0.5
					{'ShipScanPlanetRechargeMultiplier',	-0.5},	-- 1
					{'ShipScanSpaceRechargeMultiplier',		-0.1},	-- 0.3
					{'NormalModeHeatBonus',					1},		-- 2
					{'OverheatGenerosity',					0.05},	-- 1.05
					{'SurveyMaxDistance',					200},	-- 400
					{'BinocMinScanTime',					-1.3},	-- 3.9
					{'BinocScanTime',						-1.3},	-- 3.9
					{'BinocCreatureScanTime',				-1.1},	-- 3.2
					{'RefinerProductsMadeInTimeSurvival',	1},		-- 1
					{'RefinerSubsMadeInTimeSurvival',		100},	-- 100
					{'FreighterStartPecent',				-50},	-- 60
					{'LowSentinelProbability',				0.15},	-- 0.55
					{'LowSentinelProbabilitySurvival',		0.3},	-- 0.25
					{'AggressiveSentinelProbability',		-0.08},	-- 0.13
					{'AggressiveSentinelProbabilitySurvival',-0.06},-- 0.13
					{'MaxDronesLowSurvival',				-1},	-- 1
					{'ShipInteractRadius',					800},	-- 50
					{'ZoomFindBuildingRange',				400},	-- 600
					{'TorchFoV',							-40},	-- 120
					{'TorchStrength',						1.5},	-- 3.5
					{'TorchDimFoV',							3},		-- 65
					{'TorchDimStrength',					0.7},	-- 1.5
					{'InteractionTorchStrength',			-0.7},	-- 2
					{'UndergroundTorchFoV',					-2},	-- 70
					{'UndergroundTorchStrength',			0.7},	-- 2.5
					{'TorchOffsetY',						0.1},	-- 0.5
					{'TorchOffsetZ',						-0.65},	-- -0.2
					{'TorchFollowCameraTime',				-0.08},	-- 0.15
					{'LightStrength',						0.6},	-- 1 (build selected item light)
					{'PulseEncounterCheckTimer',			1},		-- 1
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
				PRECEDING_KEY_WORDS = 'BinocularSelectedEffect',
				VALUE_CHANGE_TABLE 	= {
					{'BasecolourIntensity',	0.32},	-- 0.4
					{'FresnelIntensity',	-26},	-- -10
				}
			},
			{
				PRECEDING_KEY_WORDS = 'BinocularSelectedColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.05},	-- 0.588
					{'G',			0.12},	-- 1
					{'B',			0.28}	-- 0.639
				}
			},
			{
				PRECEDING_KEY_WORDS = 'BinocularSelectedUnknownColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.92},	-- 0.926
					{'G',			0.28},	-- 0.539
					{'B',			0.16}	-- 1
				}
			},
			{
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
				MATH_OPERATION 		= '*',
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'FreighterTimers',
				VALUE_CHANGE_TABLE 	= {
					{'x',			2},
					{'y',			2}
				}
			},
			{
				MATH_OPERATION 		= '*',
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'FlybyTimers',
				VALUE_CHANGE_TABLE 	= {
					{'x',			3},
					{'y',			3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'FrigateFlybyTimer',
				VALUE_CHANGE_TABLE 	= {
					{'x',			6},	-- 600
					{'y',			6},	-- 1200
				}
			}
		}
	}
}}}}
