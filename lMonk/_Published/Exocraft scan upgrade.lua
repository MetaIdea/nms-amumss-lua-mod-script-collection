--------------------------------------------------------------------------
local desc = [[
  Add planetary archive, base computer, minor settlement, trading post,
  ancient plaque, remote terminal, secure facility, distress signals,
  sentinel pillar and underwater targets to the exocraft scanner.
  Re-arrange scanner icons grouping for improved target selection.
  Make exocraft scanner tech available to the mech.
]]------------------------------------------------------------------------
Mod_Version = 1.55

local Scan_Table = {
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
		tech  = {'VEHICLE_SCAN2'},
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
	}
}
function Scan_Table:GetEntry(ste)
	local function getScanList(lst)
		local exml = ''
		for _,trg in pairs(lst) do
			exml = exml..[[
				<Property value="NMSString0x20.xml">
					<Property name="Value" value="]]..trg..[[" />
				</Property>]]
		end
		return '<Property name="ScanList">'..exml..'</Property>'
	end
	local exml = ''
	for _,tech in pairs(ste.tech) do
		exml = exml..[[
			<Property value="GcVehicleScanTableEntry.xml">
				]]..getScanList(ste.scan)..[[
				<Property name="Name" value="]]..ste.name..[[" />
				<Property name="RequiredTech" value="]]..tech..[[" />
				<Property name="Icon" value="TkTextureResource.xml">
					<Property name="Filename" value="]]..ste.icon..[[" />
				</Property>
			</Property>]]
	end
	return exml
end

local function BuildVehicleScanTable()
	local exml = ''
	for _,v in ipairs(Scan_Table) do
		exml = exml..Scan_Table:GetEntry(v)
	end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="GcVehicleScanTable"><Property name="VehicleScanTable">]]
		..exml..
		[[</Property></Data>]]
end

local Scan_Events = {
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

local function NewScanEvent(scn)
	return string.format([[
		<Property value="GcScanEventData.xml">
			<Property name="Name" value="%s"/>
			<Property name="ForceInteraction" value=""/>
			<Property name="ForceInteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="None"/>
			</Property>
			<Property name="ForceBroken" value="False"/>
			<Property name="ForceFixed" value="False"/>
			<Property name="ForceOverridesAll" value="True"/>
			<Property name="ForceOverrideEncounter" value=""/>
			<Property name="IsCommunityPortalOverride" value="False"/>
			<Property name="ClearForcedInteractionOnCompletion" value="False"/>
			<Property name="BuildingPreventionRadius" value="0"/>
			<Property name="AlwaysShow" value="False"/>
			<Property name="NeverShow" value="False"/>
			<Property name="PlanetLabelText" value=""/>
			<Property name="SurveyDistance" value="0"/>
			<Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD"/>
			<Property name="EventStartType" value="ObjectScan"/>
			<Property name="EventEndType" value="Proximity"/>
			<Property name="EventPriority" value="Regular"/>
			<Property name="CanEndFromOutsideMission" value="False"/>
			<Property name="DisableMultiplayerSync" value="True"/>
			<Property name="ReplaceEventIfAlreadyActive" value="False"/>
			<Property name="BuildingLocation" value="%s"/>
			<Property name="BuildingType" value="%s"/>
			<Property name="BuildingClass" value="GcBuildingClassification.xml">
				<Property name="BuildingClass" value="%s"/>
			</Property>
			<Property name="AllowFriendsBases" value="False"/>
			<Property name="ForceWideRandom" value="False"/>
			<Property name="MustFindSystem" value="False"/>
			<Property name="AllowOverriddenBuildings" value="True"/>
			<Property name="SolarSystemLocation" value="Local"/>
			<Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False"/>
				<Property name="UseWealth" value="False"/>
				<Property name="UseTrading" value="False"/>
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None"/>
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None"/>
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default"/>
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow"/>
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average"/>
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining"/>
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False"/>
				<Property name="NeverAllowEmpty" value="False"/>
				<Property name="NeverAllowAbandoned" value="False"/>
				<Property name="RequireUndiscovered" value="False"/>
				<Property name="NeedsWaterPlanet" value="False"/>
				<Property name="NeedsExtremeSentinelPlanet" value="False"/>
				<Property name="NeverAllowExtremeSentinelPlanet" value="False"/>
				<Property name="NeedsExtremeWeatherPlanet" value="False"/>
				<Property name="NeedsExtremeHazardPlanet" value="False"/>
				<Property name="AnyBiomeNotWeirdOrDead" value="False"/>
				<Property name="AnyRGBBiome" value="False"/>
				<Property name="NeedsBiome" value="False"/>
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush"/>
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None"/>
				</Property>
				<Property name="NeedsEmptySystem" value="False"/>
				<Property name="NeedsAbandonedSystem" value="False"/>
				<Property name="NeedsResourceHint" value=""/>
				<Property name="SuitableForCreatureDiscovery" value="False"/>
				<Property name="SuitableForCreatureTaming" value="False"/>
				<Property name="SamePlanetAsEvent" value=""/>
			</Property>
			<Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
				<Property name="UseStarType" value="False"/>
				<Property name="UseWealth" value="False"/>
				<Property name="UseTrading" value="False"/>
				<Property name="UseRace" value="GcAlienRace.xml">
					<Property name="AlienRace" value="None"/>
				</Property>
				<Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
					<Property name="GalaxyStarAnomaly" value="None"/>
				</Property>
				<Property name="UseConflict" value="GcPlayerConflictData.xml">
					<Property name="ConflictLevel" value="Default"/>
				</Property>
				<Property name="StarType" value="GcGalaxyStarTypes.xml">
					<Property name="GalaxyStarType" value="Yellow"/>
				</Property>
				<Property name="TradingData" value="GcPlanetTradingData.xml">
					<Property name="WealthClass" value="GcWealthClass.xml">
						<Property name="WealthClass" value="Average"/>
					</Property>
					<Property name="TradingClass" value="GcTradingClass.xml">
						<Property name="TradingClass" value="Mining"/>
					</Property>
				</Property>
				<Property name="AllowUnsafeMatches" value="False"/>
				<Property name="NeverAllowEmpty" value="False"/>
				<Property name="NeverAllowAbandoned" value="False"/>
				<Property name="RequireUndiscovered" value="False"/>
				<Property name="NeedsWaterPlanet" value="False"/>
				<Property name="NeedsExtremeSentinelPlanet" value="False"/>
				<Property name="NeverAllowExtremeSentinelPlanet" value="False"/>
				<Property name="NeedsExtremeWeatherPlanet" value="False"/>
				<Property name="NeedsExtremeHazardPlanet" value="False"/>
				<Property name="AnyBiomeNotWeirdOrDead" value="False"/>
				<Property name="AnyRGBBiome" value="False"/>
				<Property name="NeedsBiome" value="False"/>
				<Property name="NeedsBiomeType" value="GcBiomeType.xml">
					<Property name="Biome" value="Lush"/>
				</Property>
				<Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
					<Property name="BiomeSubType" value="None"/>
				</Property>
				<Property name="NeedsEmptySystem" value="False"/>
				<Property name="NeedsAbandonedSystem" value="False"/>
				<Property name="NeedsResourceHint" value=""/>
				<Property name="SuitableForCreatureDiscovery" value="False"/>
				<Property name="SuitableForCreatureTaming" value="False"/>
				<Property name="SamePlanetAsEvent" value=""/>
			</Property>
			<Property name="ForceRestartInteraction" value="True"/>
			<Property name="HasReward" value=""/>
			<Property name="NextOption" value=""/>
			<Property name="TriggerActions" value="GcScanEventTriggers.xml">
				<Property name="Range" value="100"/>
				<Property name="Triggers"/>
				<Property name="AllowRetrigger" value="False"/>
			</Property>
			<Property name="UAsList"/>
			<Property name="TechShopType" value="GcTechnologyCategory.xml">
				<Property name="TechnologyCategory" value="All"/>
			</Property>
			<Property name="OSDMessage" value="%s"/>
			<Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM"/>
			<Property name="MarkerLabel" value="%s"/>
			<Property name="MarkerIcon" value="TkTextureResource.xml">
				<Property name="Filename" value=""/>
			</Property>
			<Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
				<Property name="ScannerIconHighlightType" value="Diamond"/>
			</Property>
			<Property name="StartTime" value="0"/>
			<Property name="MessageTime" value="0"/>
			<Property name="MessageDisplayTime" value="4"/>
			<Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="INVALID_EVENT"/>
			</Property>
			<Property name="IconTime" value="4"/>
			<Property name="TooltipTime" value="10"/>
			<Property name="TooltipRepeats" value="False"/>
			<Property name="ShowEndTooltip" value="True"/>
			<Property name="TooltipMessage" value="%s"/>
			<Property name="ResourceOverride" value="GcResourceElement.xml">
				<Property name="Filename" value=""/>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0"/>
					<Property name="UseSeedValue" value="False"/>
				</Property>
				<Property name="AltId" value=""/>
				<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers"/>
				</Property>
			</Property>
		</Property>]],
		scn.event,						-- Name
		scn.blocal or 'Nearest',		-- BuildingLocation
		scn.btype or 'BuildingClass',	-- BuildingType
		scn.class or 'None', 			-- BuildingClass
		scn.osd, 						-- OSDMessage
		scn.mlbl or '',					-- MarkerLabel
		scn.tip							-- TooltipMessage
	)
end

local function InsertNewScanEvents()
	local exml = ''
	for _,v in ipairs(Scan_Events) do exml = exml..NewScanEvent(v) end
	return exml
end

-- replace icons of found target to match
-- the new ones in the targets list
local function UpdateScanEventIcons()
	local T = {}
	for _,st in ipairs(Scan_Table) do
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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.exocraft scan upgrade.'..Mod_Version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.84,
	MOD_DESCRIPTION		= desc,
	ADD_FILES = {
		{
			EXTERNAL_FILE_SOURCE= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/MenuIcons/QUICKMENU/VEHICLESCAN.DDS',
			FILE_DESTINATION	= 'TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/VEHICLESCAN.DDS'
		},
		{
			FILE_DESTINATION 	= 'METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.EXML',
			FILE_CONTENT		= BuildVehicleScanTable()
		},
	},
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
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
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'VEHICLE_SCAN', 'TechnologyCategory', 'Exocraft'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllVehicles'}
				}
			},
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
