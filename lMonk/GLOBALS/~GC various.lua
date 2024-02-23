------------------------------------------------------------
local mod_desc = [[
  settlement longer alret cycle, higher population
  longer building detection range; longer base wiring
  longer terrain edit beam
  limit the freighter base NPC crowd
  uncache terrain for better LOD
  disable ladder auto-grab; disable falling camera-view
  same (dark mode) warp tunnel in teleports
  lower water level to avoid invisible water at shoreline
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|GC SETTLEMENT|
		MBIN_FILE_SOURCE	= 'GCSETTLEMENTGLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'SettlementMiniExpeditionSuccessChance',	0.85}, 	-- 0.7
					{'MaxNPCPopulation',						40}, 	-- 30
					{'AlertCycleDurationInSeconds',				72000},	-- 2600
				}
			}
		}
	},
	{--	|GC BUILDING|
		MBIN_FILE_SOURCE	= 'GCBUILDINGGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'UnknownBuildingRange',				800},	-- 600
					{'MarkerLineWidth',						2},		-- 4
					{'MaxShipScanBuildings',				3},		-- 2

					--- normal game
					{'BaseRadiusExtension',					30},	-- 50
					{'MinRadiusForBases',					150},	-- 300
					{'BuildingPlacementMaxConnectionLength',1800},	-- 200
					{'BuildingPlacementDefaultMinDistance',	1},		-- 3

					--- Extension for basebuilding
					-- {'MaxRadiusForPlanetBases',			 	2000},	-- 1000
					-- {'BaseRadiusExtension',					80},
					-- {'MinRadiusForBases',					1100},
				}
			}
		}
	},
	{--	|GC TERRAIN|
		MBIN_FILE_SOURCE	= 'GCTERRAINGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'TerrainEditBeamMaxRange',	100}	-- 40
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'SubtractSizes',
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',					-0.2},	-- 0.8
					{'Ignore',					0.2},	-- 1.6
					{'Ignore',					0.4}	-- 3.2
				}
			}
		}
	},
	{--	|GC FREIGHTERBASE|
		MBIN_FILE_SOURCE	= 'GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'MaxTotalNPCCount',		12},	-- 24
					{'NPCStartSpawnDelayTime',	5},		-- 3
					{'NPCSpawnIntervalTime',	0.8},	-- 0.1
				}
			},
			{
				PRECEDING_KEY_WORDS = 'MaxTotalCapacityOfNPCTypes',
				VALUE_CHANGE_TABLE 	= {
					{'SquadronPilot',			2},		-- 4
					{'FrigateCaptain',			2},		-- 4
					{'WorkerBio',				3},		-- 6
					{'WorkerTech',				3},		-- 6
					{'WorkerIndustry',			3},		-- 6
				}
			}
		}
	},
	{--	|GC GRAPHICS|
		MBIN_FILE_SOURCE	= 'GCGRAPHICSGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'LUTDistanceFlightMultiplier',	1},		-- 0
					{'SunLightIntensity',			3.2},	-- 3
					{'DOFFarStrengthWater',			0.2},	-- 0
					{'ForceUncachedTerrain',		true},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Ultra', 'TkGraphicsDetailPreset.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'FFXSR2Quality',				'Quality'},
					{'MetalFXQuality',				'UltraQuality'},
					{'AnisotropyLevel',				'_16'},
					{'AntiAliasing',				'FFXSR2'},
				}
			},
		}
	},
	{--	|GC CHARACTER|
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
	{--	|GC ROBOT|
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
	{--	|GC SIMULATION|
		MBIN_FILE_SOURCE	= 'GCSIMULATIONGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					-- {'SpaceStationFile',			'MODELS/SPACE/SPACESTATION/SPACESTATIONTYPEB.SCENE.MBIN'},
					-- {'AbandonedSpaceStationFile',	'MODELS/SPACE/SPACESTATION/SPACESTATIONTYPEB.SCENE.MBIN'},
					-- {'PirateSystemSpaceStationFile','MODELS/SPACE/SPACESTATION/SPACESTATIONTYPEB.SCENE.MBIN'},

					{'WarpTunnelScale',			180},
					{'WarpTunnelFile',			'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'BlackHoleTunnelFile',		'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'TeleportTunnelFile',		'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'PortalTunnelFile',		'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'},
					{'PortalStoryTunnelFile',	'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN'}
				}
			}
		}
	},
	{--	|GC WATER|
		MBIN_FILE_SOURCE	= 'GCWATERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'WaveHeight',	-0.2}	-- 1.5
				}
			}
		}
	}
}}}}
