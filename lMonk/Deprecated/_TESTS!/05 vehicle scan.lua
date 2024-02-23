------------------------------------------------------------------------------------------
local desc = [[
  Add planetary settlement, archive, base computer, minor settlement, trading post,
  ancient plaque, remote terminal, secure facility, distress signals, sentinel pillar,
  and underwater targets to the exocraft scanner.
]]----------------------------------------------------------------------------------------

local icon = {
	unknown	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.HIDE_N_SEEK.MSHOP.DDS',
	outpost	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OUTPOST.DDS',
	-- build	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BUILDING.DDS',
	home	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SMALLBUILDING.DDS',
	droppod	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POD.DDS',
	aband	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS',
	ruins	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS',
	rune	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS',
	ship	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SHIP.MSHOP.DDS',
	depot	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.DEPOTRAID.MSHOP.DDS',
	trade	= 'TEXTURES/UI/HUD/ICONS/WIKI/TRADE3.DDS',
	freight	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.MSHOP.DDS',
	cogs	= 'TEXTURES/UI/FRONTEND/ICONS/SETTLEMENT/BASICPRODUCTION.DDS',
	signal	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SIGNAL.DDS',
	planet	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ENTERORBIT.ON.DDS',  
	fact	= 'TEXTURES/UI/HUD/ICONS/WIKI/BASE4.DDS',
	tech	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCIENCEMISSIONS.MSHOP.DDS',
	base	= 'TEXTURES/UI/HUD/ICONS/WIKI/BASE1.DDS',
	lib		= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LIBRARY.DDS',
	hive	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS',
	grave	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ATLASPATH.MSHOP.DDS',
	settle	= 'TEXTURES/UI/HUD/ICONS/WIKI/WIKI.SETTLEMENT.DDS',
	water	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.WATER.ON.DDS',
	-- distrs	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/EXPEDITIONMISSIONS/MISSION.DISTRESS.ON.DDS',
	-- portal	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.PORTAL.DDS',
	-- holo	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.HOLOHUB.DDS',
	-- shield	= 'TEXTURES/UI/HUD/ICONS/WIKI/COMBAT3.DDS',
}

local scan_table = {
	{
		name  = 'SHIP_CLOSESTTARGET',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			{'BOUND_GLITCH',	icon.unknown},
			{'OUTPOST',			icon.outpost},
			{'SHOP',			icon.home},
			{'DROPPOD', 		icon.droppod},
			{'DEPOT',			icon.depot},
			{'TERMINAL',		icon.trade},
			{'ABANDONED',		icon.aband},
			{'UW_ABANDONED',	icon.water},
			{'RUIN',			icon.ruins},
			{'UW_RUIN',			icon.water},
			{'MONOLITH',		icon.rune},
			{'PLAQUE',			icon.rune},
			{'RADIOTOWER',		icon.signal},
			{'OBSERVATORY',		icon.signal},
			{'HARVESTER',		icon.tech},
			{'FACTORY',			icon.fact},
			{'DISTRESS',		icon.ship},
			{'DISTRESS_NPC',	icon.ship},
			{'DEBRIS_NPC',		icon.cogs},
			{'UW_SHIPCRASH',	icon.water},
			{'TRAVEL_GRAVE',	icon.grave},
			{'CRASHED_FREIGHTER',icon.freight},
			{'UW_FREIGHTCRASH',	icon.water},
			{'BASE',			icon.base},
			{'LIBRARY',			icon.lib},
			{'DRONE_HIVE',		icon.hive},
			{'SETTLEMENT',		icon.settle}
		}
	},{
		name  = 'VEHICLE_BUILDING_OUTPOST',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			{'OUTPOST',		icon.outpost},
			{'SHOP',		icon.home},
		}
	},{
		name  = 'VEHICLE_BUILDING_DEPOT',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			{'DEPOT',		icon.depot},
			{'TERMINAL',	icon.trade}
		}
	},{
		name  = 'VEHICLE_BUILDING_DAMAGEDMACHINE',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {{'DROPPOD', icon.droppod}}
	},{
		name  = 'VEHICLE_BUILDING_ABANDONED',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			{'ABANDONED',	icon.aband},
			{'UW_ABANDONED',icon.water}
		}
	},{
		name  = 'VEHICLE_BUILDING_RUIN',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {
			{'RUIN',		icon.ruins},
			{'UW_RUIN',		icon.water}
		}
	},{
		name  = 'VEHICLE_BUILDING_NPC',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {
			{'MONOLITH',	icon.rune},
			{'PLAQUE',		icon.rune}
		}
	},{
		name  = 'BUILDING_RADIOTOWER_L',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			{'RADIOTOWER',	icon.signal},
			{'OBSERVATORY',	icon.planet}
		}
	},{
		name  = 'MECH_SCAN_FACT',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			{'FACTORY',		icon.fact},
			{'HARVESTER',	icon.tech}
		}
	},{
		name  = 'MECH_SCAN_CRASH',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			{'DISTRESS',	icon.ship},
			{'DISTRESS_NPC',icon.ship},
			{'DEBRIS_NPC',	icon.cogs},
			{'UW_SHIPCRASH',icon.water}
		}
	},{
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			{'CRASHED_FREIGHTER',icon.freight},
			{'UW_FREIGHTCRASH',	icon.water}
		}
	},{
		name  = 'UI_RECOVER_BASE_MARKER',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {{'BASE',	icon.base}}
	},{
		name  = 'UI_LIBRARY_ENTRANCE_DESC',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			{'LIBRARY',		icon.lib},
			{'BOUND_GLITCH',icon.unknown}
		}
	},{
		name  = 'UI_SENTINEL_HIVE_NAME',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {{'DRONE_HIVE', icon.hive}}
	-- },{
	-- 	name  = 'BUILDING_PORTAL_L',
	-- 	tech  = {'VEHICLE_SCAN2'},
	-- 	scan  = {{'PORTAL', icon.portal}}
	},{
		name  = 'UI_SETTLEMENT_LABEL',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {{'SETTLEMENT', icon.settle}}
	},{
	---	submarine targets
		name  = 'SUB_RADAR_SCAN_ABANDON',
		tech  = {'SUB_BINOCS'},
		scan  = {{'UW_ABANDONED', icon.aband}}
	},{
		name  = 'SUB_RADAR_SCAN_RUIN',
		tech  = {'SUB_BINOCS'},
		scan  = {{'UW_RUIN', icon.ruins}}
	},{
		name  = 'SUB_RADAR_SCAN_CRASH',
		tech  = {'SUB_BINOCS'},
		scan  = {{'UW_SHIPCRASH', icon.ship}}
	},{
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'SUB_BINOCS'},
		scan  = {{'UW_FREIGHTCRASH', icon.freight}}
	}
}
function scan_table:GetEntry(entry)
	local function GetScanList(scans)
		local exml = ''
		for _,scn in ipairs(scans) do
			exml = exml..[[
				<Property value="NMSString0x20.xml">
					<Property name="Value" value="]]..scn[1]..[["/>
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
					<Property name="Filename" value="]]..entry.scan[1][2]..[["/>
				</Property>
			</Property>
		]]
	end
	return exml
end

local function BuildVehicleScanTable()
	local exml = ''
	for _,entry in ipairs(scan_table) do
		exml = exml..scan_table:GetEntry(entry)
	end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="GcVehicleScanTable"><Property name="VehicleScanTable">]]
		..exml..
		[[</Property></Data>]]
end

local scan_events = {
	{
		event	= 'TERMINAL',
		class	= 'Terminal',
		osd		= 'SIGNAL_TERMINAL',
		tip		= 'TIP_TERMINAL',
	},{
		event	= 'DEBRIS_NPC',
		class	= 'NPCDebris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
	},{
		event	= 'PLAQUE',
		class	= 'Plaque',
		osd		= 'SIGNAL_PLAQUE',
		tip		= 'TIP_PLAQUE',
	},{
		event	= 'BASE',
		class	= 'Base',
		osd		= 'SIGNAL_BASE',
		tip		= 'TIP_BASE',
	},{
		event	= 'LIBRARY',
		class	= 'LargeBuilding',
		osd		= 'SIGNAL_LIBRARY',
		tip		= 'TIP_LIBRARY',
	},{
		event	= 'DRONE_HIVE',
		class	= 'DroneHive',
		osd		= 'UI_DRONEHIVE_LOCATED_OSD',
		mlabel	= 'UI_SENTINEL_HIVE_NAME',
		tip		= 'UI_DRONEHIVE_LOCATED',
	},{
		event	= 'SETTLEMENT',
		blocal	= 'Random',
		btype	= 'UnownedSettlement',
		class	= 'Settlement_Hub',
		osd		= 'UI_SETTLEMENT_LOCATED_OSD',
		tip		= 'UI_SETTLEMENT_LOCATED',
	},{
		name	= 'BUILDING_GLITCHYSTORYBOX_L',
		event	= 'BOUND_GLITCH',
		class	= 'StoryGlitch',
		osd		= 'UI_MP_PORTALQUEST_RIFT_OSD',
		tip		= 'TUT_BASEBUILD_SURVEY_OSD',
	},{
		name	= 'SCAN_GRAVE',
		event	= 'TRAVEL_GRAVE',
		class	= 'GraveInCave',
		osd		= 'UI_BIOSHIP5_SURVEY_OSD',
		tip		= 'UI_MP_PLANTKILL_GRAVE_SURV_OSD2',
	-- },{
		-- event	= 'PORTAL',
		-- blocal	= 'Random',
		-- class	= 'Portal',
		-- osd		= 'SIGNAL_PORTAL',
		-- tip		= 'TIP_PORTAL',
	}
}

local function NewScanEvent(scn)
	return [[
	<Property value="GcScanEventData.xml">
		<Property name="Name" value="]]..scn.event..[["/>
		<Property name="ForceOverridesAll" value="True"/>
		<Property name="EventStartType" value="ObjectScan"/>
		<Property name="EventEndType" value="Proximity"/>
		<Property name="EventPriority" value="Regular"/>
		<Property name="DisableMultiplayerSync" value="True"/>
		<Property name="BuildingLocation" value="]]..(scn.blocal or 'Nearest')..[["/>
		<Property name="BuildingType" value="]]..(scn.btype or 'BuildingClass')..[["/>
		<Property name="BuildingClass" value="GcBuildingClassification.xml">
			<Property name="BuildingClass" value="]]..(scn.class or 'None')..[["/>
		</Property>
		<Property name="AllowOverriddenBuildings" value="True"/>
		<Property name="ForceRestartInteraction" value="True"/>
		<Property name="TriggerActions" value="GcScanEventTriggers.xml">
			<Property name="Range" value="100"/>
		</Property>
		<Property name="OSDMessage" value="]]..scn.osd..[["/>
		<Property name="MarkerLabel" value="]]..(scn.mlabel or '')..[["/>
		<Property name="MarkerIcon" value="TkTextureResource.xml">
			<Property name="Filename" value=""/>
		</Property>
		<Property name="MessageDisplayTime" value="4"/>
		<Property name="IconTime" value="4"/>
		<Property name="TooltipTime" value="8"/>
		<Property name="ShowEndTooltip" value="True"/>
		<Property name="TooltipMessage" value="]]..scn.tip..[["/>
	</Property>
	]]
end

local function InsertNewScanEvents()
	local exml = ''
	for _,ev in ipairs(scan_events) do exml = exml..NewScanEvent(ev) end
	return exml
end

-- replace icons of found target to match those in the targets list
local function UpdateScanEventIcons()
	local tmp = {}
	-- collect scan event ids to filter out duplicates
	for _,entry in ipairs(scan_table) do
		for _,scn in ipairs(entry.scan) do
			tmp[scn[1]] = scn[2]
		end
	end
	local T = {}
	for n, i in pairs(tmp) do
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'Name', n},
			PRECEDING_KEY_WORDS	= 'MarkerIcon',
			VALUE_CHANGE_TABLE	= { {'Filename', i} }
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 5 vehicle scan targets.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	ADD_FILES = {
		{
			FILE_DESTINATION = 'METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.EXML',
			FILE_CONTENT	 = BuildVehicleScanTable()
		}
	},
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				-- old bug fix
				SPECIAL_KEY_WORDS	= {'Name', 'RUIN'},
				VALUE_CHANGE_TABLE 	= {
					{'OSDMessage', 'UI_SIGNAL_TREASURERUIN'}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Events',
				ADD					= InsertNewScanEvents()
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
		EXML_CHANGE_TABLE	= UpdateScanEventIcons()
	}
}}}}
