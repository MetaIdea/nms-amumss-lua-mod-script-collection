----------------------------------------------------------------------------------------
local mod_desc = [[
  Adds observatory settlement, drone-hive, ship debris, sentinel pillar, claimable base site,
  minor settlement, secure facility, ancient plaque, remote terminal, treasure ruin,
  traveler grave, distress signals and underwater locations to exocraft scanner.
  Re-arrange scanner icons grouping for improved target selection.
  Make exocraft scanner tech available to the mech.
]]--------------------------------------------------------------------------------------
local mod_version = '1.99.5'

local scan_event = {
	termimal =	{-- trade termimal
		event	= 'TERMINAL',
		class	= 'Terminal',
		osd		= 'SIGNAL_TERMINAL',
		tip		= 'TIP_TERMINAL',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/TRADE3.DDS'
	},
	truin =		{-- locked chest ruin
		event	= 'T_RUIN',
		class	= 'TreasureRuins',
		osd		= 'UI_SIGNAL_TREASURERUIN',
		tip		= 'UI_TIP_TREASURERUIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.COLLECT.MSHOP.DDS'
	},
	debris =	{-- damaged machine
		event	= 'DEBRIS',
		class	= 'Debris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.COG.DDS'
	},
	beacon =	{-- shop beacon
		event	= 'BEACON',
		class	= 'Beacon',
		osd		= 'SIGNAL_BEACON',
		tip		= 'TIP_BEACON',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BEACON.DDS'
	},
	crash_npc =	{-- NPC in distress
		event	= 'DEBRIS_NPC',
		class	= 'NPCDebris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	plaque =	{-- plaque (mionor monolith)
		event	= 'PLAQUE',
		class	= 'Plaque',
		osd		= 'SIGNAL_PLAQUE',
		tip		= 'TIP_PLAQUE',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},
	base =		{-- unclaimed base site
		event	= 'NEW_BASE',
		class	= 'Base',
		osd		= 'SIGNAL_BASE',
		tip		= 'TIP_BASE',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/BASE1.DDS'
	},
	library =	{-- library building
		event	= 'LIBRARY',
		class	= 'LargeBuilding',
		osd		= 'SIGNAL_LIBRARY',
		tip		= 'TIP_LIBRARY',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LIBRARY.DDS'
	},
	settlement ={-- unclaimed settlement
		event	= 'SETTLEMENT',
		evprior	= 'High',
		blocal	= 'AllNearest',
		btype	= 'UnownedSettlement',
		class	= 'Settlement_Hub',
		osd		= 'UI_SETTLEMENT_LOCATED_OSD',
		tip		= 'UI_SETTLEMENT_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/WIKI.SETTLEMENT.DDS'
	},
	glitch =	{-- glitched planet building
		name	= 'BUILDING_GLITCHYSTORYBOX_L',
		event	= 'BOUND_GLITCH',
		class	= 'StoryGlitch',
		osd		= 'UI_MP_PORTALQUEST_RIFT_OSD',
		tip		= 'TUT_BASEBUILD_SURVEY_OSD',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.HIDE_N_SEEK.MSHOP.DDS'
	},
	grave =		{-- traveller grave
		name	= 'SCAN_GRAVE',
		event	= 'TRAVEL_GRAVE',
		class	= 'GraveInCave',
		osd		= 'UI_BIOSHIP5_SURVEY_OSD',
		tip		= 'UI_MP_PLANTKILL_GRAVE_SURV_OSD2',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ATLASPATH.MSHOP.DDS'
	},
	holohub =	{-- holographic hub comms tower
		name	= 'UI_CORE_HOLOHUB_MARKER',
		event	= 'HOLO_TOWER',
		class	= 'MissionTower',
		osd		= 'UI_CORE_A1S4_SURVEY_OSD',
		tip		= 'UI_CORE_HOLOHUB_OSD1',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.HOLOHUB.DDS'
	},
	dronehive =	{-- drone hive pillar
		event	= 'DRONE_HIVE',
		class	= 'DroneHive',
		osd		= 'UI_DRONEHIVE_LOCATED_OSD',
		mlabel	= 'UI_SENTINEL_HIVE_NAME',
		tip		= 'UI_DRONEHIVE_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS'
	},
	sentcrash =	{-- crashed sentinel ship
		event	= 'SENT_CRASH_CORRUPT',
		replace	= true,
		class	= 'SentinelDistressSignal',
		osd		= 'UI_CRASH_REVEAL_OSD',
		mlabel	= 'UI_CRASH_REVEAL_MARKER',
		tip		= 'UI_CRASH_REVEAL_MSG',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SENTINELCRASH.MSHOP.DDS'
	},
	robotcamp =	{-- autophage camp
		event	= 'ROBOT_CAMP',
		replace	= true,
		class	= 'AbandonedRobotCamp',
		osd		= 'UI_CAMP_REVEAL_OSD',
		mlabel	= 'UI_CAMP_REVEAL_MARKER',
		tip		= 'UI_CAMP_REVEAL_MSG',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ROBOTHEAD.ON.DDS'
	},
	monolith =	{--	ORG: monolith
		event	= 'MONOLITH',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},
	radio =		{--	ORG: radiotower
		event	= 'RADIOTOWER',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SIGNAL.DDS'
	},
	factory =	{--	ORG: factory
		event	= 'FACTORY',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/BASE4.DDS'
	},
	abandoned =	{--	ORG: abandoned
		event	= 'ABANDONED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS'
	},
	outpost =	{--	ORG: trading post
		event	= 'OUTPOST',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OUTPOST.DDS'
	},
	shop =		{--	ORG: shop
		event	= 'SHOP',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SMALLBUILDING.DDS'
	},
	observe =	{-- ORG: observatory
		event	= 'OBSERVATORY',
		icon	= 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.PLANET.DDS'
	},
	crash =		{--	ORG: crashed ship
		event	= 'DISTRESS',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.MSHOP.DDS'
	},
	freighter =	{--	ORG: crashed freighter
		event	= 'CRASHED_FREIGHTER',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.MSHOP.DDS'
	},
	npc =		{--	ORG: NPC in distress
		event	= 'DISTRESS_NPC',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.MSHOP.DDS'
	},
	harvester =	{--	ORG: harvester
		event	= 'HARVESTER',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCIENCEMISSIONS.MSHOP.DDS'
	},
	depot =		{--	ORG: sentinel depot
		event	= 'DEPOT',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.DEPOTRAID.MSHOP.DDS'
	},
	ruin =		{-- ORG: ruin
		event	= 'RUIN',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS'
	},
	droppod =	{-- ORG: drop pod
		event	= 'DROPPOD',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POD.DDS'
	},
	wcrash =	{--	ORG: underwater crashed ship
		event	= 'UW_SHIPCRASH',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.MSHOP.DDS'
	},
	wfreight =	{--	ORG: underwater crashed freighter
		event	= 'UW_FREIGHTCRASH',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.MSHOP.DDS'
	},
	wabandon =	{--	ORG: underwater building
		event	= 'UW_ABANDONED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS'
	},
	wruin =		{--	ORG: underwater ruin
		event	= 'UW_RUIN',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS'
	}
}

local scan_menu_table = {
	{--	all possible targets
		name  = 'SHIP_CLOSESTTARGET',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.glitch.icon,
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
		icon  = scan_event.outpost.icon,
		scan  = {
			'OUTPOST',
			'SHOP'
		}
	},
	{--	sentinel depot / store terminal
		name  = 'VEHICLE_BUILDING_DEPOT',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.depot.icon,
		scan  = {
			'DEPOT',
			'TERMINAL',
		}
	},
	{--	drop pod
		name  = 'VEHICLE_BUILDING_DAMAGEDMACHINE',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.droppod.icon,
		scan  = { 'DROPPOD' }
	},
	{--	abandoned building
		name  = 'VEHICLE_BUILDING_ABANDONED',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.abandoned.icon,
		scan  = {
			'ABANDONED',
			'UW_ABANDONED',
		}
	},
	{--	treasure / underwater / regular ruin
		name  = 'VEHICLE_BUILDING_RUIN',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.ruin.icon,
		scan  = {
			'RUIN',
			'T_RUIN',
			'UW_RUIN'
		}
	},
	{--	monolith / plaque
		name  = 'VEHICLE_BUILDING_NPC',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.plaque.icon,
		scan  = {
			'MONOLITH',
			'PLAQUE'
		}
	},
	{--	radio / observatory
		name  = 'BUILDING_RADIOTOWER_L',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.radio.icon,
		scan  = {
			'RADIOTOWER',
			'OBSERVATORY',
		}
	},
	{--	factory / harvester
		name  = 'MECH_SCAN_FACT',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.factory.icon,
		scan  = {
			'FACTORY',
			'HARVESTER'
		}
	},
	{--	crashed ship / sentinel / NPC / underwater ship
		name  = 'MECH_SCAN_CRASH',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = scan_event.crash.icon,
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
		icon  = scan_event.freighter.icon,
		scan  = {
			'CRASHED_FREIGHTER',
			'UW_FREIGHTCRASH'
		}
	},
	{--	sentinel hive pillar / autophage camp
		name  = 'UI_SENTINEL_HIVE_NAME',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.dronehive.icon,
		scan  = {
			'DRONE_HIVE',
			'ROBOT_CAMP'
		}
	},
	{--	unclaimed base site
		name  = 'UI_RECOVER_BASE_MARKER',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.base.icon,
		scan  = { 'NEW_BASE' }
	},
	{--	library / glitched building
		name  = 'UI_LIBRARY_ENTRANCE_DESC',
		tech  = {'VEHICLE_SCAN1'},
		icon  = scan_event.library.icon,
		scan  = {
			'LIBRARY',
			'BOUND_GLITCH'
		}
	},
	{--	unclaimed settlement
		name  = 'UI_SETTLEMENT_LABEL',
		tech  = {'VEHICLE_SCAN2'},
		icon  = scan_event.settlement.icon,
		scan  = { 'SETTLEMENT' }
	},
	{--	submarine: underwater building
		name  = 'SUB_RADAR_SCAN_ABANDON',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.wabandon.icon,
		scan  = { 'UW_ABANDONED' }
	},
	{--	submarine: underwater ruin
		name  = 'SUB_RADAR_SCAN_RUIN',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.wruin.icon,
		scan  = { 'UW_RUIN' }
	},
	{--	submarine: underwater crashed ship
		name  = 'SUB_RADAR_SCAN_CRASH',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.wcrash.icon,
		scan  = { 'UW_SHIPCRASH' }
	},
	{--	submarine: underwater crashed freighter
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'SUB_BINOCS'},
		icon  = scan_event.wfreight.icon,
		scan  = { 'UW_FREIGHTCRASH' }
	}
}
function scan_menu_table:GetEntry(entry)
	local function GetScanList(scans)
		local exml = ''
		for _,scn in ipairs(scans) do
			exml = exml..[[
				<Property value="NMSString0x20.xml">
					<Property name="Value" value="]]..scn..[["/>
				</Property>
			]]
		end
		return '<Property name="ScanList">'..exml..'</Property>'
	end
	local exml = ''
	for _,tech in ipairs(entry.tech) do
		exml = exml..[[
			<Property value="GcVehicleScanTableEntry.xml">
				]]..GetScanList(entry.scan)..[[
				<Property name="Name" value="]]..entry.name..[["/>
				<Property name="RequiredTech" value="]]..tech..[["/>
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="]]..entry.icon..[["/>
				</Property>
			</Property>
		]]
	end
	return exml
end

local function BuildVehicleScanMenuTable()
	local exml = ''
	for _,entry in ipairs(scan_menu_table) do
		exml = exml..scan_menu_table:GetEntry(entry)
	end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="GcVehicleScanTable"><Property name="VehicleScanTable">]]
		..exml..
		[[</Property></Data>]]
end

local function VehicleScanEventsChangeTable()
	local T = {
		{
			PRECEDING_KEY_WORDS		= 'GcScanEventData.xml',
			SECTION_SAVE_TO			= 'gc_scan_event'
		}
	}
	for _,ev in pairs(scan_event) do
		if ev.class then
			T[#T+1] = {
				SECTION_EDIT 			= 'gc_scan_event',
				VALUE_CHANGE_TABLE 		= {
					{'Name',						ev.event},
					{'EventPriority',				ev.evprior	or 'Regular'},
					{'BuildingLocation',			ev.blocal	or 'Nearest'},
					{'ReplaceEventIfAlreadyActive',	ev.replace	or false},
					{'BuildingType',				ev.btype	or 'BuildingClass'},
					{'MarkerLabel',					ev.mlabel	or ''},
					{'OSDMessage',					ev.osd},
					{'TooltipMessage',				ev.tip}
				}
			}
			T[#T+1] = {
				SECTION_EDIT 			= 'gc_scan_event',
				PRECEDING_KEY_WORDS		= 'BuildingClass',
				VALUE_MATCH				= 'GcBuildingClassification.xml',
				VALUE_MATCH_OPTIONS 	= '~=',
				VALUE_CHANGE_TABLE 		= {
					{'BuildingClass', ev.class}
				}
			}
			T[#T+1] = {
				PRECEDING_KEY_WORDS 	= 'Events',
				SECTION_ADD_NAMED 		= 'gc_scan_event'
			}
		end
	end
-- add/replace marker icon for found targets
	for _,ev in pairs(scan_event) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'Name', ev.event},
			PRECEDING_KEY_WORDS	= 'MarkerIcon',
			VALUE_CHANGE_TABLE	= {
				{'Filename',	ev.icon}
			}
		}
	end
	-- ancient bug fix
	T[#T+1] = {
		SPECIAL_KEY_WORDS	= {'Name', 'RUIN'},
		VALUE_CHANGE_TABLE 	= {
			{'OSDMessage', 'UI_SIGNAL_TREASURERUIN'}
		}
	}
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.exocraft scan upgrade.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES = {
		{
			FILE_DESTINATION 	= 'METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.EXML',
			FILE_CONTENT		= BuildVehicleScanMenuTable()
		}
	},
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
		EXML_CHANGE_TABLE	= VehicleScanEventsChangeTable()
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'VEHICLE_SCAN1', 'TechnologyCategory', 'Exocraft'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllVehicles'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'VEHICLE_SCAN2', 'TechnologyCategory', 'Exocraft'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllVehicles'}
				}
			}
		}
	}
}}}}
