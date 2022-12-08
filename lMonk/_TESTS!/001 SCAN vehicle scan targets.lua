------------------------------------------------------------------------------------------
local desc = [[
  Add planetary archive, base computer, minor settlement, trading post,
  ancient plaque, remote terminal, secure facility, distress signals
  and underwater targets to the exocraft scanner.
]]----------------------------------------------------------------------------------------

local scan_table = {
	{
		name  = 'VEHICLE_BUILDING_DEPOT',
		scan  = {'DEPOT', 'TERMINAL'},
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BUILDING.DDS'
	},{
		name  = 'VEHICLE_BUILDING_DAMAGEDMACHINE',
		scan  = {'DROPPOD'},
		tech  = {'VEHICLE_SCAN1'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POD.DDS'
	},{
		name  = 'VEHICLE_BUILDING_ABANDONED',
		scan  = {'ABANDONED', 'UW_ABANDONED'},
		tech  = {'VEHICLE_SCAN1'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS'
	},{
		name  = 'VEHICLE_BUILDING_RUIN',
		scan  = {'RUIN', 'UW_RUIN'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS'
	},{
		name  = 'VEHICLE_BUILDING_NPC',
		scan  = {'MONOLITH', 'PLAQUE'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},{
		name  = 'SUB_RADAR_SCAN_ABANDON',
		scan  = {'UW_ABANDONED'},
		tech  = {'SUB_BINOCS'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS'
	},{
		name  = 'SUB_RADAR_SCAN_RUIN',
		scan  = {'UW_RUIN'},
		tech  = {'SUB_BINOCS'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS'
	},{
		name  = 'SUB_RADAR_SCAN_CRASH',
		scan  = {'UW_SHIPCRASH'},
		tech  = {'SUB_BINOCS'},
		icon  = 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.SHIP.DDS'
	},{
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		scan  = {'UW_FREIGHTCRASH'},
		tech  = {'SUB_BINOCS'},
		icon  = 'TEXTURES/UI/HUD/ICONS/WIKI/TRADE10.DDS'
	},{
		name  = 'VEHICLE_BUILDING_OUTPOST',
		scan  = {'SHOP', 'OUTPOST'},
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OUTPOST.DDS'
	},{
		name  = 'BUILDING_RADIOTOWER_L',
		scan  = {'RADIOTOWER', 'OBSERVATORY'},
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SIGNAL.DDS'
	},{
		name  = 'MECH_SCAN_FACT',
		scan  = {'HARVESTER', 'FACTORY'},
		tech  = {'VEHICLE_SCAN1'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.FACTORY.DDS'
	},{
		name  = 'MECH_SCAN_CRASH',
		scan  = {'DISTRESS', 'DISTRESS_NPC', 'UW_SHIPCRASH'},
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.SHIP.DDS'
	},{
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		scan  = {'CRASHED_FREIGHTER', 'UW_FREIGHTCRASH'},
		tech  = {'VEHICLE_SCAN1'},
		icon  = 'TEXTURES/UI/HUD/ICONS/WIKI/TRADE10.DDS'
	},{
		name  = 'UI_LIBRARY_ENTRANCE_DESC',
		scan  = {'LIBRARY'},
		tech  = {'VEHICLE_SCAN1'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LIBRARY.DDS'
	},{
		name  = 'UI_RECOVER_BASE_MARKER',
		scan  = {'BASE'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BASE.DDS'
	},{
		name  = 'UI_SENTINEL_HIVE_NAME',
		scan  = {'DRONE_HIVE'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS'
	},{
		name  = 'UI_SETTLEMENT_LABEL',
		scan  = {'SETTLEMENT'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SETTLEMENT.DDS'
	}
}
function scan_table:GetEntry(ste)
	local function getScanList(lst)
		local exml = ''
		for _,trg in pairs(lst) do
			exml = exml..[[
				<Property value="NMSString0x20.xml">
					<Property name="Value" value="]]..trg..[["/>
				</Property>]]
		end
		return '<Property name="ScanList">'..exml..'</Property>'
	end
	local exml = ''
	for _,tech in pairs(ste.tech) do
		exml = exml..[[
			<Property value="GcVehicleScanTableEntry.xml">
				]]..getScanList(ste.scan)..[[
				<Property name="Name" value="]]..ste.name..[["/>
				<Property name="RequiredTech" value="]]..tech..[["/>
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="]]..ste.icon..[["/>
				</Property>
			</Property>]]
	end
	return exml
end

local function BuildVehicleScanTable()
	local exml = ''
	for _,v in ipairs(scan_table) do
		exml = exml..scan_table:GetEntry(v)
	end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="GcVehicleScanTable"><Property name="VehicleScanTable">]]
		..exml..
		[[</Property></Data>]]
end

local scan_events = {
	{
		event = 'TERMINAL',
		class = 'Terminal',
		osd	  = 'SIGNAL_TERMINAL',
		tip   = 'TIP_TERMINAL',
	},{
		event = 'PLAQUE',
		class = 'Plaque',
		osd   = 'SIGNAL_PLAQUE',
		tip   = 'TIP_PLAQUE',
	},{
		event = 'DRONE_HIVE',
		class = 'DroneHive',
		osd   = 'UI_DRONEHIVE_LOCATED_OSD',
		mlbl  = 'UI_SENTINEL_HIVE_NAME',
		tip   = 'UI_DRONEHIVE_LOCATED',
	},{
		event = 'SETTLEMENT',
		blocal= 'Random',
		btype = 'UnownedSettlement',
		class = 'Settlement_Hub',
		osd   = 'UI_SETTLEMENT_LOCATED_OSD',
		tip   = 'UI_SETTLEMENT_LOCATED',
	},{
		event = 'BASE',
		class = 'Base',
		osd   = 'SIGNAL_BASE',
		tip   = 'TIP_BASE',
	},{
		event = 'LIBRARY',
		class = 'LargeBuilding',
		osd   = 'SIGNAL_LIBRARY',
		tip   = 'TIP_LIBRARY',
	}
}

local function InsertNewScanEvents(saved_event)
	local T = {}
	for _,ev in ipairs(scan_events) do
		table.insert(T, {
			SECTION_EDIT 		= saved_event,
			VALUE_CHANGE_TABLE 	= {
				{'Name',				ev.event},
				{'BuildingLocation',	ev.blocal or 'Nearest'},
				{'BuildingType',		ev.btype or 'BuildingClass'},
				{'MarkerLabel',			ev.mlbl or ''},
				{'OSDMessage',			ev.osd},
				{'TooltipMessage',		ev.tip},
			}
		})
		table.insert(T, {
			SECTION_EDIT 		= saved_event,
			PRECEDING_KEY_WORDS = 'BuildingClass',
			VALUE_MATCH			= 'Monolith',
			VALUE_CHANGE_TABLE 	= {
				{'BuildingClass',	ev.class or 'None'}
			}
		})
		table.insert(T, {
			PRECEDING_KEY_WORDS = 'Events',
			SECTION_ADD_NAMED 	= saved_event,
		})
	end
	return T
end

-- replace icons of found target to match
-- the new ones in the targets list
local function UpdateScanEventIcons()
	local T = {}
	for _,st in ipairs(scan_table) do
		for _,scn in ipairs(st.scan) do
			table.insert(T, {
				SPECIAL_KEY_WORDS	= {'Name', scn},
				PRECEDING_KEY_WORDS	 = 'MarkerIcon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', st.icon}
				}
			})
		end
	end
	return T
end

local vehicle_scans_events = 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST v4 vehicle scan targets.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	ADD_FILES = {
		{
			FILE_DESTINATION = 'METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.EXML',
			FILE_CONTENT	 = BuildVehicleScanTable()
		}
	},
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= vehicle_scans_events,
		EXML_CHANGE_TABLE	= {
			{
				-- old bug fix
				SPECIAL_KEY_WORDS	= {'Name', 'RUIN'},
				VALUE_CHANGE_TABLE 	= {
					{'OSDMessage', 'UI_SIGNAL_TREASURERUIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MONOLITH'},
				SECTION_SAVE_TO		= 'gc_scan_event_data',
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= vehicle_scans_events,
		EXML_CHANGE_TABLE	= InsertNewScanEvents('gc_scan_event_data')
	},
	{
		MBIN_FILE_SOURCE	= vehicle_scans_events,
		EXML_CHANGE_TABLE	= UpdateScanEventIcons()
	}
}}}}
