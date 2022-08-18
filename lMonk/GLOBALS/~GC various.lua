------------------------------------------------------------
local desc = [[
  disable ladder auto-grab; disable falling camera-view
  same (dark mode) warp tunnel in teleports
  lower water level to avoid invisible water at shoreline
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|GC AISPACESHIP|
		MBIN_FILE_SOURCE	= 'GCAISPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'MinimumCircleTimeBeforeLanding',		3},		-- 5
					{'MinimumTimeBetweenOutpostLandings',	1},		-- 3
					{'DockWaitMinTime',						5},		-- 20
					{'FlybyHeight',							60},	-- 120
					{'FlybyOffset',							40},	-- 320
					{'FlybyCloseOdds',						-15},	-- 20
					{'FreighterSpawnRate',					-20},	-- 40
					{'TradeRouteFlickerFreq',				-10},
					{'TradeRouteFlickerAmp',				-0.01},
					{'WarpInTimeFreighter',					1.4},	-- 0.6
					{'MaxNumFreighters',					-5},	-- 12
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
					{'FriendlyDroneBeepReplaceChatChance',	0.1},	-- 0.3
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
