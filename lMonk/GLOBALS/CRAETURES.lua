---------------------------------------------------------------
local desc = [[
  Decrease hostile predator chance
  Increase creature remain distance
  Increase pet stamina, ride speed, decrease ride turn radius
  Increase harvest yield
  Decrase pet incubation & grow times
]]-------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CRAETURES.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCCREATUREGLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'SandWormJumpHeight',				700},	-- 120 --> 700
					{'SandWormSubmergeDepth',			-500},	-- 100 --> 400
				}
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'RepelRange',						-3},	-- 5
					{'WeaponRepelRange',				-16},	-- 18
					{'WeaponRepelAmount',				-1},	-- 2
					{'PercentagePlayerPredators',		-0.25},	-- 0.5
					{'PlayerPredatorBoredomDistance',	-15},	-- 80
					{'PredatorRegainInterestTime',		10},	-- 30
					{'SandWormChangeDirectionTime',		1},		-- 1
					{'SandWormJumpTime',				1},		-- 3
					{'SandWormSubmergeTime',			-2},	-- 3
					{'SandWormSurfaceTime',				0},		-- 1
					{'SandWormMaxJumps',				3},		-- 5
					{'SandWormDespawnDist',				2000},	-- 1500
					{'SandWormSpawnTimer',				-120},	-- 300
					{'SandWormSpawnChanceMin',			0.07},	-- 0.01
					{'SandWormSpawnChanceMax',			0.05},	-- 0.2
					{'SpawnOnscreenDist',				20},	-- 100
					{'RidingTurnRadiusMultiplier',		-0.4},	-- 1
					{'FadeDistance',					20},	-- 10
					{'MinFade',							25},	-- 30
					-- {'CreatureRidingMedMinSize',		-2},	-- 5
					-- {'CreatureRidingLargeMinSize',		-4},	-- 12
					-- {'CreatureRidingHugeMinSize',		-8},	-- 20
					{'RideSpeedSlow', 					0.7},	-- 0.5
					{'RideSpeedFast',					1},		-- 2
					-- {'TurnRadiusMultiplier',			-0.2},	-- 1
					-- {'PetMaxTurnRad',					-0.3},	-- 1
					{'PetMaxSizeOffPlanet',				3},		-- 1
					{'PetTeleportDistOnPlanet',			-30},	-- 150
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'PetOffPlanetEffect',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.2},
					{'G',			0.2},
					{'B',			0.3},
					{'A',			0.3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'PRESERVE',
				VALUE_CHANGE_TABLE 	= {
					{'CreatureHarvestAmountSmall',		2}, 	-- 1
					{'CreatureHarvestAmountMed',		2}, 	-- 1
					{'CreatureHarvestAmountLarge',		2}, 	-- 2
					{'CreatureHarvestAmountHuge',		2},		-- 3
					{'CreatureInteractBaseRange',		5},
					{'PetGrowthTime',					0.5},	-- 1209600 (14d)
					{'PetIncubationTime',				0.33},	-- 86400 (24h)
					{'PetEggLayingInterval',			0.5},	-- 86400
					{'PetEggFirstEggDelay',				0.5}	-- 86400
				}
			}
		}
	}
}}}}
