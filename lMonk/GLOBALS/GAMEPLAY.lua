------------------------------------------------------
local desc = [[
  Decrease binoc scan and charge times
  visor focus: unknown is red / scanned is dark blue
  Change torch color and intensity
]]----------------------------------------------------

local function Hex2Rgb(hex)
	local rgb = {{'R', 1}, {'G', 1}, {'B', 1}, {'A', 1}}
	for i=1, (hex:len()/2) do
		rgb[i][2] = tonumber(hex:sub(i*2-1, i*2), 16) * 0.00392
	end
	return rgb
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC GAMEPLAY.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.08',
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
					{'WarpsBetweenBattles',					3},		-- 5
					{'HoursBetweenBattles',					2},		-- 3
					{'CargoShieldStrength',					0.22},	-- 0.5		4413
					{'TechDamageChanceShieldedMax',			-0.3},	-- 0.5
					{'TechDamageChanceShieldLevelMax',		-0.6},	-- 0.75
					{'ShipScanPlanetRechargeMultiplier',	-0.5},	-- 1
					{'ShipScanSpaceRechargeMultiplier',		-0.1},	-- 0.3
					{'NormalModeHeatBonus',					1},		-- 2
					{'OverheatGenerosity',					0.05},	-- 1.05
					{'SurveyMaxDistance',					200},	-- 400
					{'FreighterStartPecent',				-50},	-- 60
					{'LowSentinelProbability',				0.15},	-- 0.55
					{'AggressiveSentinelProbability',		-0.08},	-- 0.13
					{'MaxDronesLowSurvival',				-1},	-- 1
					{'ShipInteractRadius',					800},	-- 50
					{'ZoomFindBuildingRange',				400},	-- 600
					{'TorchFoV',							-40},	-- 120		6050
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
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'InventoryStackLimitsOptionData',
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceStackLimit',		10000},
					{'ProductStackLimit',		10000}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'InventoryStackLimitsOptionData', 'High', 'MaxSubstanceStackSizes'},
				VALUE_CHANGE_TABLE 	= {
					{'Default',					10000},
					{'Personal',				10000},
					{'PersonalCargo',			10000},
					{'Ship', 					10000},
					{'ShipCargo',				10000},
					{'Freighter', 				10000},
					{'FreighterCargo',			10000},
					{'Vehicle',					10000},
					{'Chest',					10000},
					{'BaseCapsule',				10000},
					{'MaintenanceObject',		10000},
					{'UIPopup',					10000}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'TorchColour',
				VALUE_CHANGE_TABLE 	= Hex2Rgb('edf7f0')
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
					{'FresnelIntensity',	-26}	-- -10
				}
			},
			{
				PRECEDING_KEY_WORDS = 'BinocularSelectedColour',
				VALUE_CHANGE_TABLE 	= Hex2Rgb('0f1f2b77')
			},
			{
				PRECEDING_KEY_WORDS = 'BinocularSelectedUnknownColour',
				VALUE_CHANGE_TABLE 	= Hex2Rgb('e04e4eaa')
			},
			{
				PRECEDING_KEY_WORDS = {'BuildingScanEffect', 'Colour'},
				VALUE_CHANGE_TABLE 	= Hex2Rgb('1f5c7a')
			},
			{
				PRECEDING_KEY_WORDS = 'BuildingScanEffect',
				VALUE_CHANGE_TABLE 	= {
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
