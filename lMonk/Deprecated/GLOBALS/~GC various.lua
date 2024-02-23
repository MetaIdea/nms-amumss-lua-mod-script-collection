------------------------------------------------------------
local desc = [[
  limit the freighter base NPC crowd
  disable ladder auto-grab; disable falling camera-view
  same (dark mode) warp tunnel in teleports
  lower water level to avoid invisible water at shoreline
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|GC FREIGHTERBASE|
		MBIN_FILE_SOURCE	= 'GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'MaxTotalNPCCount',		-12},	-- 24
					{'NPCStartSpawnDelayTime',	2},		-- 3
					{'NPCSpawnIntervalTime',	1},		-- 0.1
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'MaxTotalCapacityOfNPCTypes',
				VALUE_CHANGE_TABLE 	= {
					{'SquadronPilot',			-2},	-- 4
					{'FrigateCaptain',			-2},	-- 4
					{'WorkerBio',				-3},	-- 6
					{'WorkerTech',				-3},	-- 6
					{'WorkerIndustry',			-3},	-- 6
				}
			}
		}
	},
	{
	---	|GC GRAPHICS|
		MBIN_FILE_SOURCE	= 'GCGRAPHICSGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'LUTDistanceFlightMultiplier',			1},		-- 0
					{'SunLightIntensity',					3.2},	-- 3
					{'DOFFarStrengthWater',					0.2},	-- 0
				}
			}
		}
	},
	{
	---	|GC CHARACTER|
		MBIN_FILE_SOURCE	= 'GCCHARACTERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'LadderDistanceToAutoMount',			0},		-- 0.4
					{'LadderCooldownAfterBeforeAutoClimb',	0},		-- 0.6
					{'TimeNotOnGroundToUseFallingCamera',	88},	-- 0.2
					{'TimeFallingUntilPanic',				180},	-- 0.8
				}
			}
		}
	},
	{
	---	|GC ROBOT|
		MBIN_FILE_SOURCE	= 'GCROBOTGLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'FriendlyDroneChatCooldown',			12},	-- 5
					{'FriendlyDroneDissolveTime',			2},		-- 1
					{'FriendlyDroneChatChanceIdle',			0.15},	-- 0.33
				}
			}
		}
	},
	{
	---	|GC SIMULATION|
		MBIN_FILE_SOURCE	= 'GCSIMULATIONGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {

					{'WarpTunnelFile',			'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'TeleportTunnelFile',		'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'PortalTunnelFile',		'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'PortalStoryTunnelFile',	'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'}
				}
			}
		}
	},
	{
	---	|GC WATER|
		MBIN_FILE_SOURCE	= 'GCWATERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'WaveHeight',	-0.2}	-- 1.5
				}
			}
		}
	},
}}}}
