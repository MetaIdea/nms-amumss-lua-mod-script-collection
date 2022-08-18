------------------------------------------------------------------------------------------
local desc = [[
  Add planetary settlement, archive, base computer, minor settlement, trading post,
  ancient plaque, remote terminal, secure facility, distress signals, sentinel pillar, 
  and underwater targets to the exocraft scanner.
]]----------------------------------------------------------------------------------------

local scan_table = {
	{
		name  = 'VEHICLE_BUILDING_OUTPOST',
		scan  = {'SHOP', 'OUTPOST'},
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OUTPOST.DDS'
	},{
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
		name  = 'SHIPWRECK',
		scan  = {'DEBRIS_NPC'},
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.COG.DDS'
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
		name  = 'UI_RECOVER_BASE_MARKER',
		scan  = {'BASE'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BASE.DDS'
	},{
		name  = 'UI_LIBRARY_ENTRANCE_DESC',
		scan  = {'LIBRARY'},
		tech  = {'VEHICLE_SCAN1'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LIBRARY.DDS'
	},{
		name  = 'UI_SENTINEL_HIVE_NAME',
		scan  = {'DRONE_HIVE'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS'
	},{
	--- doesn't work
		name  = 'BUILDING_PORTAL_L',
		scan  = {'PORTAL'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.PORTAL.DDS'
	},{
		name  = 'UI_SETTLEMENT_LABEL',
		scan  = {'SETTLEMENT'},
		tech  = {'VEHICLE_SCAN2'},
		icon  = 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SETTLEMENT.DDS'
	}
}
function scan_table:GetEntry(entry)
	local function GetScanList(scans)
		local exml = ''
		for _,scn in ipairs(scans) do
			exml = exml..[[
				<Property value="NMSString0x20.xml">
					<Property name="Value" value="]]..scn..[["/>
				</Property>]]
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
			</Property>]]
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
		event	= 'PORTAL',
		start	= 'Special',
		ende	= 'Interact',
		priority= 'High',
		blocal	= 'AllNearest',
		class	= 'Portal',
		osd		= 'SIGNAL_PORTAL',
		tip		= 'TIP_PORTAL',
	}
}

local function NewScanEvent(scn)
	return [[
	<Property value="GcScanEventData.xml">
		<Property name="Name" value="]]..scn.event..[["/>
		<Property name="ForceOverridesAll" value="True"/>
		<Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD"/>
		<Property name="EventStartType" value="]]..(scn.start or 'ObjectScan')..[["/>
		<Property name="EventEndType" value="]]..(scn.ende or 'Proximity')..[["/>
		<Property name="EventPriority" value="]]..(scn.priority or 'Regular')..[["/>
		<Property name="DisableMultiplayerSync" value="True"/>
		<Property name="BuildingLocation" value="]]..(scn.blocal or 'Nearest')..[["/>
		<Property name="BuildingType" value="]]..(scn.btype or 'BuildingClass')..[["/>
		<Property name="BuildingClass" value="GcBuildingClassification.xml">
			<Property name="BuildingClass" value="]]..(scn.class or 'None')..[["/>
		</Property>
		<Property name="AllowOverriddenBuildings" value="True"/>
		<Property name="SolarSystemLocation" value="Local"/>
		<Property name="ForceRestartInteraction" value="True"/>
		<Property name="TriggerActions" value="GcScanEventTriggers.xml">
			<Property name="Range" value="100"/>
		</Property>
		<Property name="TechShopType" value="GcTechnologyCategory.xml">
			<Property name="TechnologyCategory" value="All"/>
		</Property>
		<Property name="OSDMessage" value="]]..scn.osd..[["/>
		<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM"/>
		<Property name="MarkerLabel" value="]]..(scn.mlabel or '')..[["/>
		<Property name="MarkerIcon" value="TkTextureResource.xml">
			<Property name="Filename" value=""/>
		</Property>
		<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
			<Property name="ScannerIconHighlightType" value="Diamond"/>
		</Property>
		<Property name="MessageDisplayTime" value="4"/>
		<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
			<Property name="AkEvent" value="INVALID_EVENT"/>
		</Property>
		<Property name="IconTime" value="4"/>
		<Property name="TooltipTime" value="8"/>
		<Property name="ShowEndTooltip" value="True"/>
		<Property name="TooltipMessage" value="]]..scn.tip..[["/>
	</Property>]]
end

local function InsertNewScanEvents()
	local exml = ''
	for _,ev in ipairs(scan_events) do exml = exml..NewScanEvent(ev) end
	return exml
end

-- replace icons of found target to match those in the targets list
local function UpdateScanEventIcons()
	local T = {}
	for _,entry in ipairs(scan_table) do
		for _,scn in ipairs(entry.scan) do
			table.insert(T, {
				SPECIAL_KEY_WORDS	= {'Name', scn},
				PRECEDING_KEY_WORDS	 = 'MarkerIcon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', entry.icon}
				}
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META vehicle scan targets.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
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
