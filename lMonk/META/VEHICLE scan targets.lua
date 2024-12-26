----------------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
----------------------------------------------------------------------------------
local mod_desc = [[
  - Adds all possible building sites (except the portal) to the exocraft scanner.
  - Adds custom icons to found scan targets.
]]--------------------------------------------------------------------------------

local scan_event = {
	TERMINAL =	{-- trade terminal
		class	= 'Terminal',
		osd		= 'SIGNAL_TERMINAL',
		tip		= 'TIP_TERMINAL',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/TRADE3.DDS'
	},
	T_RUIN =	{-- locked chest ruin
		class	= 'TreasureRuins',
		osd		= 'UI_SIGNAL_TREASURERUIN',
		tip		= 'UI_TIP_TREASURERUIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.COLLECT.MSHOP.DDS'
	},
	DEBRIS =	{-- damaged machine
		class	= 'Debris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.COG.DDS'
	},
	BEACON =	{-- shop beacon
		class	= 'Beacon',
		osd		= 'SIGNAL_BEACON',
		tip		= 'TIP_BEACON',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BEACON.DDS'
	},
	DEBRIS_NPC = {-- NPC in distress
		class	= 'NPCDebris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	PLAQUE =	{-- plaque (mionor monolith)
		class	= 'Plaque',
		osd		= 'SIGNAL_PLAQUE',
		tip		= 'TIP_PLAQUE',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},
	NEW_BASE =	{-- unclaimed base site
		class	= 'Base',
		osd		= 'SIGNAL_BASE',
		tip		= 'TIP_BASE',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/BASE1.DDS'
	},
	LIBRARY =	{-- library building
		class	= 'LargeBuilding',
		osd		= 'SIGNAL_LIBRARY',
		tip		= 'TIP_LIBRARY',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LIBRARY.DDS'
	},
	SETTLEMENT = {-- unclaimed settlement
		evprior	= 'High',
		blocal	= 'AllNearest',
		buildt	= 'UnownedSettlement',
		class	= 'Settlement_Hub',
		osd		= 'UI_SETTLEMENT_LOCATED_OSD',
		tip		= 'UI_SETTLEMENT_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/WIKI.SETTLEMENT.DDS'
	},
	BOUND_GLITCH = {-- glitched planet building
		name	= 'BUILDING_GLITCHYSTORYBOX_L',
		class	= 'StoryGlitch',
		osd		= 'UI_MP_PORTALQUEST_RIFT_OSD',
		tip		= 'TUT_BASEBUILD_SURVEY_OSD',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.GLITCH.DDS'
	},
	GRAVE =		{-- traveler grave
		name	= 'SCAN_GRAVE',
		class	= 'GraveInCave',
		osd		= 'UI_BIOSHIP5_SURVEY_OSD',
		tip		= 'UI_MP_PLANTKILL_GRAVE_SURV_OSD2',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ATLASPATH.MSHOP.DDS'
	},
	HOLO_TOWER = {-- holographic hub comms tower
		name	= 'UI_CORE_HOLOHUB_MARKER',
		class	= 'MissionTower',
		osd		= 'UI_CORE_A1S4_SURVEY_OSD',
		tip		= 'UI_CORE_HOLOHUB_OSD1',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.HOLOHUB.DDS'
	},
	DRONE_HIVE = {-- drone hive pillar
		class	= 'DroneHive',
		osd		= 'UI_DRONEHIVE_LOCATED_OSD',
		mlabel	= 'UI_SENTINEL_HIVE_NAME',
		tip		= 'UI_DRONEHIVE_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS'
	},
	SENT_CRASH = {-- crashed sentinel ship
		revent	= true,
		class	= 'SentinelDistressSignal',
		osd		= 'UI_CRASH_REVEAL_OSD',
		mlabel	= 'UI_CRASH_REVEAL_MARKER',
		tip		= 'UI_CRASH_REVEAL_MSG',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SENTINELCRASH.MSHOP.DDS'
	},
	ROBOT_CAMP = {-- autophage camp
		revent	= true,
		class	= 'AbandonedRobotCamp',
		osd		= 'UI_CAMP_REVEAL_OSD',
		mlabel	= 'UI_CAMP_REVEAL_MARKER',
		tip		= 'UI_CAMP_REVEAL_MSG',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ROBOTHEAD.DDS'
	},
	PORTAL = {-- planetry portal
		class	= 'Portal',
		osd		= 'SIGNAL_PORTAL',
		tip		= 'TIP_PORTAL',
		blocal	= 'PlanetSearch',
		widernd	= true,
		fportal	= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.PORTAL.DDS'
	},
	MONOLITH =	{--	monolith
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},
	RADIOTOWER = {-- radiotower
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SIGNAL.DDS'
	},
	FACTORY =	{--	factory
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.FACTORY.DDS'
	},
	ABANDONED =	{--	abandoned
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS'
	},
	OUTPOST =	{--	trading post
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OUTPOST.DDS'
	},
	SHOP =		{--	shop
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SMALLBUILDING.DDS'
	},
	OBSERVATORY = {-- observatory
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OBSERVATORY.DDS'
	},
	DISTRESS =	{--	crashed ship
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	CRASHED_FREIGHTER =	{--	crashed freighter
		org		= true,
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.MSHOP.DDS'
	},
	DISTRESS_NPC = {--	NPC in distress
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	HARVESTER =	{--	harvester
		org		= true,
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCIENCEMISSIONS.MSHOP.DDS'
	},
	DEPOT =		{--	sentinel depot
		org		= true,
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.DEPOTRAID.MSHOP.DDS'
	},
	RUIN =		{-- ruin
		-- original. ancient bug fix
		class	= 'Ruin',
		osd		= 'UI_SIGNAL_TREASURERUIN',
		tip		= 'UI_TIP_TREASURERUIN',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS'
	},
	DROPPOD =	{-- drop pod
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POD.DDS'
	},
	UW_SHIPCRASH = {-- underwater crashed ship
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.SHIP.DDS'
	},
	UW_FREIGHTCRASH = {-- underwater crashed freighter
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.FREIGHTER.DDS'
	},
	UW_ABANDONED = {-- underwater building
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.ABANDONED.DDS'
	},
	UW_RUIN =	{--	underwater ruin
		org		= true,
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.RUIN.DDS'
	}
}

local scan_menu_table = {
	{--	all possible targets
		name  = 'SHIP_CLOSESTTARGET',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.BOUND_GLITCH.icon,
		scan  = {
			'BOUND_GLITCH',
			'OUTPOST',
			'SHOP',
			'DROPPOD',
			'DEPOT',
			'TERMINAL',
			'ABANDONED',
			'UW_ABANDONED',
			'RUIN',
			'T_RUIN',
			'UW_RUIN',
			'MONOLITH',
			'PLAQUE',
			'RADIOTOWER',
			'OBSERVATORY',
			'HARVESTER',
			'FACTORY',
			'DISTRESS',
			'DISTRESS_NPC',
			'DEBRIS_NPC',
			'UW_SHIPCRASH',
			'TRAVEL_GRAVE',
			'HOLO_TOWER',
			'CRASHED_FREIGHTER',
			'UW_FREIGHTCRASH',
			'NEW_BASE',
			'LIBRARY',
			'DRONE_HIVE',
			'ROBOT_CAMP',
			'SENT_CRASH_CORRUPT',
			'SETTLEMENT',
			'DEBRIS',
			'BEACON'
		}
	},
	{--	shop / trading post
		name  = 'VEHICLE_BUILDING_OUTPOST',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.OUTPOST.icon,
		scan  = {
			'OUTPOST',
			'SHOP'
		}
	},
	{--	sentinel depot / store terminal
		name  = 'VEHICLE_BUILDING_DEPOT',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.DEPOT.icon,
		scan  = {
			'DEPOT',
			'TERMINAL'
		}
	},
	{--	drop pod
		name  = 'VEHICLE_BUILDING_DAMAGEDMACHINE',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.DROPPOD.icon,
		scan  = { 'DROPPOD' }
	},
	{--	abandoned building
		name  = 'VEHICLE_BUILDING_ABANDONED',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.ABANDONED.icon,
		scan  = {
			'ABANDONED',
			'UW_ABANDONED'
		}
	},
	{--	treasure / underwater / regular ruin
		name  = 'VEHICLE_BUILDING_RUIN',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.RUIN.icon,
		scan  = {
			'RUIN',
			'T_RUIN',
			'UW_RUIN'
		}
	},
	{--	monolith / plaque
		name  = 'VEHICLE_BUILDING_NPC',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.PLAQUE.icon,
		scan  = {
			'MONOLITH',
			'PLAQUE'
		}
	},
	{--	radio / observatory
		name  = 'BUILDING_RADIOTOWER_L',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.RADIOTOWER.icon,
		scan  = {
			'RADIOTOWER',
			'OBSERVATORY'
		}
	},
	{--	factory / harvester
		name  = 'MECH_SCAN_FACT',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.FACTORY.icon,
		scan  = {
			'FACTORY',
			'HARVESTER'
		}
	},
	{--	crashed ship / sentinel / NPC / underwater ship
		name  = 'MECH_SCAN_CRASH',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.DISTRESS.icon,
		scan  = {
			'DISTRESS',
			'DISTRESS_NPC',
			'DEBRIS_NPC',
			'SENT_CRASH_CORRUPT',
			'UW_SHIPCRASH'
		}
	},
	{--	crashed freighter / underwater freighter
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.CRASHED_FREIGHTER.icon,
		scan  = {
			'CRASHED_FREIGHTER',
			'UW_FREIGHTCRASH'
		}
	},
	{--	sentinel hive pillar
		name  = 'UI_SENTINEL_HIVE_NAME',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.DRONE_HIVE.icon,
		scan  = {
			'DRONE_HIVE',
			'ROBOT_CAMP'
		}
	},
	{--	unclaimed base site
		name  = 'UI_RECOVER_BASE_MARKER',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.NEW_BASE.icon,
		scan  = { 'NEW_BASE' }
	},
	{--	library / glitched building
		name  = 'UI_LIBRARY_ENTRANCE_DESC',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.LIBRARY.icon,
		scan  = {
			'LIBRARY',
			'BOUND_GLITCH'
		}
	},
	{--	unclaimed settlement
		name  = 'UI_SETTLEMENT_LABEL',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.SETTLEMENT.icon,
		scan  = { 'SETTLEMENT' }
	},
	{--	portal
		name  = 'BUILDING_PORTAL_L',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.PORTAL.icon,
		scan  = { 'PORTAL' }
	},
	{--	submarine: underwater building
		name  = 'SUB_RADAR_SCAN_ABANDON',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.UW_ABANDONED.icon,
		scan  = { 'UW_ABANDONED' }
	},
	{--	submarine: underwater ruin
		name  = 'SUB_RADAR_SCAN_RUIN',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.UW_RUIN.icon,
		scan  = { 'UW_RUIN' }
	},
	{--	submarine: underwater crashed ship
		name  = 'SUB_RADAR_SCAN_CRASH',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.UW_SHIPCRASH.icon,
		scan  = { 'UW_SHIPCRASH' }
	},
	{--	submarine: underwater crashed freighter
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.UW_FREIGHTCRASH.icon,
		scan  = { 'UW_FREIGHTCRASH' }
	}
}

local function BuildVehicleScanMenuTable()
	local T = {meta = {'name', 'VehicleScanTable'}}
	for _,entry in ipairs(scan_menu_table) do
		for _,tech in ipairs(entry.tech) do
			T[#T+1] = {
				meta			= {'value', 'GcVehicleScanTableEntry.xml'},
				Name			= entry.name,
				RequiredTech	= tech,
				ScanList		= StringArray(entry.scan, 'ScanList', 20),
				Icon			= {
					meta	= {'Icon', 'TkTextureResource.xml'},
					Filename	= entry.icon
				}
			}
		end
	end
	return FileWrapping(T, 'GcVehicleScanTable')
end

local function VehicleScanEventsChangeTable()
	local T = {
		{
			PRECEDING_KEY_WORDS = 'GcScanEventData.xml',
			SEC_SAVE_TO			= 'gc_scan_event'
		}
	}
	for event, prp in pairs(scan_event) do
		if not prp.org then
			T[#T+1] = {
				SEC_EDIT 			= 'gc_scan_event',
				VALUE_CHANGE_TABLE 	= {
					{'Name',						event},
					{'EventPriority',				prp.evprior	or 'Regular'},
					{'BuildingLocation',			prp.blocal	or 'Nearest'},
					{'ForceWideRandom',				prp.widernd	or false},
					{'ReplaceEventIfAlreadyActive',	prp.revent	or false},
					{'BuildingType',				prp.buildt	or 'BuildingClass'},
					{'MarkerLabel',					prp.mlabel	or ''},
					{'ForceResetPortal',			prp.fportal	or false},
					{'OSDMessage',					prp.osd},
					{'TooltipMessage',				prp.tip}
				}
			}
			T[#T+1] = {
				SEC_EDIT 			= 'gc_scan_event',
				PRECEDING_KEY_WORDS = 'BuildingClass',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'BuildingClass',				prp.class	or 'None'}
				}
			}
			T[#T+1] = {
				PRECEDING_KEY_WORDS	= 'Events',
				SEC_ADD_NAMED		= 'gc_scan_event'
			}
		end
	end
	-- add/replace marker icon for the events
	for event, prp in pairs(scan_event) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'Name', event},
			PRECEDING_KEY_WORDS	= 'MarkerIcon',
			VALUE_CHANGE_TABLE	= {
				{'Filename',	prp.icon}
			}
		}
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META vehicle scan targets.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES = {
		{
			FILE_DESTINATION = 'METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.EXML',
			FILE_CONTENT	 = BuildVehicleScanMenuTable()
		}
	},
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
		EXML_CHANGE_TABLE	= VehicleScanEventsChangeTable()
	}
}}}}
