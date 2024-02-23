---------------------------------------------------------------
local mod_desc = [[
  Decrease hostile predator chance
  Increase creature remain distance
  Increase pet stamina, ride speed, decrease ride turn radius
  Increase harvest yield
  Decrase pet incubation & grow times
]]-------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CRAETURES.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCCREATUREGLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					-- {'CreatureInteractionRangeBoostHuge',	3.2},	-- 1.5
					-- {'CreatureInteractionRangeBoostLarge',	2.8},	-- 1.2
					-- {'CreatureInteractionRangeBoostMedium',	2.4},	-- 1.1
					-- {'CreatureInteractionRangeBoostSmall',	1.6},	-- 1
					-- {'CreatureInteractionRangeBoostRun',	3},		-- 2
					-- {'CreatureInteractionRangeBoostSprint',	3.6},	-- 3.5
					-- {'CreatureInteractBaseRange',			120},	-- 5
					-- {'PetInteractBaseRange',				100},	-- 8
					{'RideSpeedSlow', 						1.2},	-- 0.5
					{'RideSpeedFast',						3},		-- 2
					{'WeaponRepelRange',					4},		-- 18			707
					{'WeaponRepelAmount',					1},		-- 2
					{'RepelRange',							4},		-- 5
					{'SandWormChangeDirectionTime',			2},		-- 1
					{'SandWormJumpHeight',					700},	-- 120 --> 700
					{'SandWormSubmergeDepth',				-500},	-- 100 --> 400
					{'SandWormJumpTime',					4},		-- 3
					{'SandWormSubmergeTime',				1},		-- 3
					{'SandWormMaxJumps',					8},		-- 5
					{'SandWormDespawnDist',					3600},	-- 1500
					{'SandWormSpawnTimer',					220},	-- 300
					{'SandWormSpawnChanceMin',				0.07},	-- 0.01
					{'SandWormSpawnChanceMax',				0.05},	-- 0.2
					{'SandWormSpawnChanceInfested',			-0.2},	-- 1
					{'PercentagePlayerPredators',			0.25},	-- 0.5
					{'PlayerPredatorBoredomDistance',		64},	-- 80
					{'PredatorRegainInterestTime',			20},	-- 30
					{'SpawnOnscreenDist',					0.68},	-- 0.7			982
					{'FadeDistance',						30},	-- 10
					{'MinFade',								52},	-- 30
					{'PetMaxSizeOffPlanet',					4},		-- 1
					{'PetTeleportDistOnPlanet',				165},	-- 150
					{'PetWalkAtHeelChanceDevoted',			0.5},	-- 0.9
					{'PetWalkAtHeelChanceIndependent',		0.05},	-- 0.1
					{'PetWalkAtHeelDistMin',				5},		-- 0
					{'PetWalkAtHeelDistMax',				8},		-- 4
					{'PetRunAtHeelDistMin', 				16},	-- 11
					{'PetRunAtHeelDistMax',					20},	-- 20
					{'PetFollowRunPlayerDistance',			16},	-- 4
					{'PetFollowRange',						10},	-- 2
					{'PetAnimSpeedMax',						1},		-- 1.5
					{'PetChatCooldown',						30}, 	-- 5

				}
			},
			{
				INTEGER_TO_FLOAT	= 'Force',
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
				INTEGER_TO_FLOAT	= 'Preserve',
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
