-----------------------------------------------------------------------
local mod_desc = [[
  - Adds all possible building sites to the exocraft scanner.
  - Adds custom icons to found scan targets.

  * DDS files import is skipped SILENTLY if file paths are not found!
]]---------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.08
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	-- local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite', '_remove'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					-- for _,at in ipairs(at_ord) do
					-- -- Just for readability. The compiler doesn't need the ordering
						-- if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					-- end
					for k, v in pairs(cls.meta) do
						if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate consecutive (instead of nested) sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	=> Builds a 'name' type array of strings
--	@param t: an ordered (non-keyed) table of strings
--	@param s_arr_name: class name
local function StringArray(t, s_arr_name)
	if not t then return nil end
	local T = { meta = {name=s_arr_name} }
	for _,s in ipairs(t) do
		T[#T+1] = { meta = {name=s_arr_name, value=s, _index=#T} }
	end
	return T
end
---------------------------------------------------------------------------------

local events_data = {
	{-- monolith
		org		= true,	-- existing item in SCANEVENTTABLEVEHICLE
		id		= 'MONOLITH',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},
	{-- radiotower
		org		= true,
		id		= 'RADIOTOWER',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SIGNAL.DDS'
	},
	{-- factory
		org		= true,
		id		= 'FACTORY',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.FACTORY.DDS'
	},
	{-- abandoned
		org		= true,
		id		= 'ABANDONED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ABANDONED.DDS'
	},
	{-- trading post
		org		= true,
		id		= 'OUTPOST',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OUTPOST.DDS'
	},
	{-- shop
		org		= true,
		id		= 'SHOP',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SMALLBUILDING.DDS'
	},
	{-- observatory
		org		= true,
		id		= 'OBSERVATORY',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OBSERVATORY.DDS'
	},
	{-- crashed ship
		org		= true,
		id		= 'DISTRESS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	{-- crashed freighter
		org		= true,
		id		= 'CRASHED_FREIGHTER',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.MSHOP.DDS'
	},
	{-- NPC in distress
		org		= true,
		id		= 'DISTRESS_NPC',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	{-- harvester
		org		= true,
		id		= 'HARVESTER',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCIENCEMISSIONS.MSHOP.DDS'
	},
	{-- sentinel depot
		org		= true,
		id		= 'DEPOT',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.DEPOTRAID.MSHOP.DDS'
	},
	{-- ruin
		org		= true,
		id		= 'RUIN',
		osd		= 'UI_SIGNAL_TREASURERUIN',
		tip		= 'UI_SIGNAL_RUIN_TIP', -- UI_TIP_TREASURERUIN
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUINS.DDS'
	},
	{-- drop pod
		org		= true,
		id		= 'DROPPOD',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POD.DDS'
	},
	{-- scrapyard
		org		= true,
		id		= 'SCRAPYARD',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCRAPYARD.MSHOP.DDS'
	},
	{-- cargo drop
		org		= true,
		id		= 'CARGODROP',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LANDFILL.DDS'
	},
	{-- crashed swarm
		org		= true,
		id		= 'CRASHED_SWARM',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SWARM.MSHOP.DDS'
	},
	{-- expedition only (but needs a placeholder)
		org		= true,
		id		= 'S22_GRAVE'
	},
	{-- underwater crashed ship
		org		= true,
		id		= 'UW_SHIPCRASH',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.SHIP.DDS'
	},
	{-- underwater crashed freighter
		org		= true,
		id		= 'UW_FREIGHTCRASH',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.FREIGHTER.DDS'
	},
	{-- underwater building
		org		= true,
		id		= 'UW_ABANDONED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.ABANDONED.DDS'
	},
	{-- underwater ruin
		org		= true,
		id		= 'UW_RUIN',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.W.RUIN.DDS'
	},
	{-- trade terminal
		id		= 'TERMINAL',
		class	= 'Terminal',
		osd		= 'SIGNAL_TERMINAL',
		tip		= 'TIP_TERMINAL',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/TRADE3.DDS'
	},
	{-- locked chest ruin
		id		= 'T_RUIN',
		class	= 'TreasureRuins',
		osd		= 'UI_SIGNAL_TREASURERUIN',
		tip		= 'UI_TIP_TREASURERUIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.COLLECT.MSHOP.DDS'
	},
	{-- damaged machine
		id		= 'DEBRIS',
		class	= 'Debris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.COG.DDS'
	},
	{-- NPC in distress
		id		= 'DEBRIS_NPC',
		class	= 'NPCDebris',
		osd		= 'SIGNAL_DEBRIS',
		tip		= 'TIP_DEBRIS',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SHIP.DDS'
	},
	{-- shop beacon
		id		= 'BEACON',
		class	= 'Beacon',
		osd		= 'SIGNAL_BEACON',
		tip		= 'TIP_BEACON',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.BEACON.DDS'
	},
	{-- plaque (mionor monolith)
		id		= 'PLAQUE',
		class	= 'Plaque',
		osd		= 'SIGNAL_PLAQUE',
		tip		= 'TIP_PLAQUE',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS'
	},
	{-- unclaimed base site
		id		= 'NEW_BASE',
		class	= 'Base',
		osd		= 'SIGNAL_BASE',
		tip		= 'TIP_BASE',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/BASE1.DDS'
	},
	{-- library building
		id		= 'LIBRARY',
		class	= 'LargeBuilding',
		osd		= 'SIGNAL_LIBRARY',
		tip		= 'TIP_LIBRARY',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.LIBRARY.DDS'
	},
	{-- unowned settlement
		id		= 'SETTLEMENT',
		search	= 'UnownedSettlement',
		blocal	= 'PlanetSearch',
		class	= 'Settlement_Hub',
		wider	= true,
		osd		= 'UI_SETTLEMENT_LOCATED_OSD',
		tip		= 'UI_SETTLEMENT_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/WIKI.SETTLEMENT.DDS'
	},
	{-- unowned builder settlement
		id		= 'SETTLEMENT_BUILDERS',
		search	= 'UnownedSettlement_Builders',
		blocal	= 'PlanetSearch',
		class	= 'Settlement_Hub_Builders',
		wider	= true,
		osd		= 'UI_SETTLEMENT_BUI_LOCATED_OSD',
		mlabel	= 'UI_SETTLEMENT_BUI_LABEL',
		tip		= 'UI_SETTLEMENT_BUI_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/WIKI/WIKI.SETTLEMENT.DDS'
	},
	{-- glitched (Boundary Failure)
		id		= 'BOUND_GLITCH',
		class	= 'StoryGlitch',
		osd		= 'UI_EXPED13_GRAVE_OSD',
		tip		= 'UI_EXPED13_GRAVE_MSG6',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.GLITCH.DDS'
	},
	{-- traveler grave
		id		= 'GRAVE',
		class	= 'GraveInCave',
		osd		= 'UI_SIGNAL_GRAVE',
		tip		= 'UI_SIGNAL_GRAVE_TIP',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ATLASPATH.MSHOP.DDS'
	},
	{-- holo terminus
		id		= 'HOLO_TOWER',
		class	= 'MissionTower',
		osd		= 'UI_CORE_A1S4_SURVEY_OSD',
		tip		= 'UI_EXPED_VISIT_TOWER_MSG6',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.HOLOHUB.DDS'
	},
	{-- drone hive pillar
		id		= 'DRONE_HIVE',
		class	= 'DroneHive',
		osd		= 'UI_DRONEHIVE_LOCATED_OSD',
		mlabel	= 'UI_SENTINEL_HIVE_NAME',
		tip		= 'UI_DRONEHIVE_LOCATED',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS'
	},
	{-- crashed sentinel ship
		id		= 'SENT_CRASH',
		revent	= true,
		class	= 'SentinelDistressSignal',
		osd		= 'UI_CRASH_REVEAL_OSD',
		mlabel	= 'UI_CRASH_REVEAL_MARKER',
		tip		= 'UI_CRASH_REVEAL_MSG',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SENTINELCRASH.MSHOP.DDS'
	},
	{-- autophage camp
		id		= 'ROBOT_CAMP',
		revent	= true,
		class	= 'AbandonedRobotCamp',
		osd		= 'UI_CAMP_REVEAL_OSD',
		mlabel	= 'UI_CAMP_REVEAL_MARKER',
		tip		= 'UI_CAMP_REVEAL_MSG',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ROBOTHEAD.DDS'
	},
	{-- palaeontological digsite
		id		= 'DIGSITE',
		class	= 'DigSite',
		osd		= 'SIGNAL_DIGSITE',
		tip		= 'UI_SIGNAL_DIGSITE_TIP', -- UI_MP_DIGSITE_NPC_OSD
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FOSSIL.MSHOP.DDS'
	},
	{-- ancient guardian (stone effigy)
		id		= 'OLDGUARD',
		class	= 'AncientGuardian',
		osd		= 'UI_SIGNAL_OLDGUARD',
		tip		= 'UI_SIGNAL_OLDGUARD_TIP',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.OLDGUARD.DDS'
	},
	{-- planetary portal
		id		= 'PORTAL',
		blocal	= 'PlanetSearch',
		class	= 'Portal',
		wider	= true,
		osd		= 'SIGNAL_PORTAL',
		tip		= 'TIP_PORTAL',
		icon	= 'TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.PORTAL.DDS'
	}
}

local scan_menu_table = {
	{--	all possible targets
		name  = 'SHIP_CLOSESTTARGET',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			'BOUND_GLITCH',
			'MONOLITH',
			'RADIOTOWER',
			'FACTORY',
			'ABANDONED',
			'OUTPOST',
			'SHOP',
			'OBSERVATORY',
			'DISTRESS',
			'CRASHED_FREIGHTER',
			'DISTRESS_NPC',
			'HARVESTER',
			'DEPOT',
			'RUIN',
			'DROPPOD',
			'SCRAPYARD',
			'CARGODROP',
			'CRASHED_SWARM',
			'UW_SHIPCRASH',
			'UW_FREIGHTCRASH',
			'UW_ABANDONED',
			'UW_RUIN',
			'TERMINAL',
			'T_RUIN',
			'DEBRIS',
			'DEBRIS_NPC',
			'BEACON',
			'PLAQUE',
			'NEW_BASE',
			'LIBRARY',
			'SETTLEMENT',
			'SETTLEMENT_BUILDERS',
			'GRAVE',
			'HOLO_TOWER',
			'DRONE_HIVE',
			'SENT_CRASH',
			'ROBOT_CAMP',
			'DIGSITE',
			'OLDGUARD',
		}
	},
	{--	shop / trading post
		name  = 'VEHICLE_BUILDING_OUTPOST',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			'OUTPOST',
			'SHOP'
		}
	},
	{--	scrapyard
		name  = 'UI_VEHICLE_BUILDING_SCRAPYARD',
		tech  = {'VEHICLE_SCAN'},
		vhcl  = 'Truck',
		scan  = { 'SCRAPYARD' }
	},
	{--	cargo drop
		name  = 'UI_VEHICLE_BUILDING_CARGODROP',
		tech  = {'VEHICLE_SCAN1'},
		vhcl  = 'Truck',
		scan  = { 'CARGODROP' }
	},
	{--	sentinel depot / store terminal
		name  = 'VEHICLE_BUILDING_DEPOT',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			'DEPOT',
			'TERMINAL'
		}
	},
	{--	drop pod
		name  = 'VEHICLE_BUILDING_DAMAGEDMACHINE',
		tech  = {'VEHICLE_SCAN1'},
		scan  = { 'DROPPOD' }
	},
	{--	swarm wreckage
		name  = 'UI_VEHICLE_BUILDING_SWARM',
		tech  = {'VEHICLE_SCAN2'},
		scan  = { 'CRASHED_SWARM' }
	},
	{--	abandoned building
		name  = 'VEHICLE_BUILDING_ABANDONED',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			'ABANDONED',
			'UW_ABANDONED'
		}
	},
	{--	regular ruin / treasure / underwater
		name  = 'VEHICLE_BUILDING_RUIN',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {
			'RUIN',
			'RUIN', -- not a bug
			'T_RUIN',
			'UW_RUIN'
		}
	},
	{--	monolith / plaque
		name  = 'VEHICLE_BUILDING_NPC',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {
			'MONOLITH',
			'PLAQUE'
		}
	},
	{--	radio / observatory
		name  = 'BUILDING_RADIOTOWER_L',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			'RADIOTOWER',
			'OBSERVATORY'
		}
	},
	{--	factory / harvester
		name  = 'MECH_SCAN_FACT',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			'FACTORY',
			'HARVESTER'
		}
	},
	{--	crashed ship / sentinel / NPC / underwater ship
		name  = 'MECH_SCAN_CRASH',
		tech  = {'VEHICLE_SCAN', 'MECH_SCAN'},
		scan  = {
			'DISTRESS',
			'DISTRESS_NPC',
			'DEBRIS_NPC',
			'SENT_CRASH',
			'UW_SHIPCRASH'
		}
	},
	{--	crashed freighter / underwater freighter
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			'CRASHED_FREIGHTER',
			'UW_FREIGHTCRASH'
		}
	},
	{--	sentinel hive pillar
		name  = 'UI_SENTINEL_HIVE_NAME',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {
			'DRONE_HIVE',
			'ROBOT_CAMP'
		}
	},
	{--	palaeontological dig
		name  = 'UI_DIGSITE_NAME',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			'DIGSITE',
			'DIGSITE', -- not a bug
			'OLDGUARD'
		}
	},
	{--	unclaimed base site
		name  = 'UI_RECOVER_BASE_MARKER',
		tech  = {'VEHICLE_SCAN2'},
		scan  = { 'NEW_BASE' }
	},
	{--	library / glitched building
		name  = 'UI_LIBRARY_ENTRANCE_DESC',
		tech  = {'VEHICLE_SCAN1'},
		scan  = {
			'LIBRARY',
			'BOUND_GLITCH'
		}
	},
	{--	unowned settlement
		name  = 'UI_SETTLEMENT_LABEL',
		tech  = {'VEHICLE_SCAN2'},
		scan  = {
			'SETTLEMENT',
			'SETTLEMENT', -- not a bug
			'SETTLEMENT_BUILDERS'
		}
	},
	{--	planetary portal
		name  = 'BUILDING_PORTAL_L',
		tech  = {'VEHICLE_SCAN1'},
		scan  = { 'PORTAL' }
	},
	{--	submarine: underwater building
		name  = 'SUB_RADAR_SCAN_ABANDON',
		tech  = {'SUB_BINOCS'},
		vhcl  = 'Submarine',
		scan  = { 'UW_ABANDONED' }
	},
	{--	submarine: underwater ruin
		name  = 'SUB_RADAR_SCAN_RUIN',
		tech  = {'SUB_BINOCS'},
		vhcl  = 'Submarine',
		scan  = { 'UW_RUIN' }
	},
	{--	submarine: underwater crashed ship
		name  = 'SUB_RADAR_SCAN_CRASH',
		tech  = {'SUB_BINOCS'},
		vhcl  = 'Submarine',
		scan  = { 'UW_SHIPCRASH' }
	},
	{--	submarine: underwater crashed freighter
		name  = 'SUB_RADAR_SCAN_FREIGHTER',
		tech  = {'SUB_BINOCS'},
		vhcl  = 'Submarine',
		scan  = { 'UW_FREIGHTCRASH' }
	}
}

local sve_ct = {{
	SPECIAL_KEY_WORDS	= {'Events', 'GcScanEventData'},
	SEC_SAVE_TO			= 'gc_scan_event'
}}
for _,evnt in ipairs(events_data) do
	if not evnt.org then
		sve_ct[#sve_ct+1] = {
			SEC_EDIT 			= 'gc_scan_event',
			VALUE_CHANGE_TABLE 	= {
				{'Name',						evnt.id},
				{'ReplaceEventIfAlreadyActive',	evnt.revent	or false},
				{'BuildingLocation',			evnt.blocal	or 'Nearest'},
				{'SearchType',					evnt.search	or 'FindBuildingClass'},
				{'BuildingClass',				evnt.class	or 'None'},
				{'ForceWideRandom',				evnt.wider	or false},
				{'Filename',					evnt.icon},
				{'OSDMessage',					evnt.osd},
				{'MarkerLabel',					evnt.mlabel	or ''},
				{'TooltipMessage',				evnt.tip}
			}
		}
		sve_ct[#sve_ct+1] = {
			PRECEDING_KEY_WORDS	= 'Events',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'gc_scan_event'
		}
	else
	--	changes/fixes to original events
		sve_ct[#sve_ct+1] = {
			SPECIAL_KEY_WORDS	= {'Name', evnt.id},
			VALUE_CHANGE_TABLE	= {
				{'Filename',					evnt.icon	or 'IGNORE'},
				{'OSDMessage',					evnt.osd	or 'IGNORE'},
				{'TooltipMessage',				evnt.tip	or 'IGNORE'}
			}
		}
	end
	-- add events_data key access
	events_data[evnt.id] = evnt
end

local scan_menu = {meta = {name='VehicleScanTable'}}
for _,entry in ipairs(scan_menu_table) do
	for _,tech in ipairs(entry.tech) do
		scan_menu[#scan_menu+1] = {
			meta				= {name='VehicleScanTable', value='GcVehicleScanTableEntry'},
			Name				= entry.name,
			ScanList			= StringArray(entry.scan, 'ScanList'),
			RequiredTech		= tech,
			Icon				= {
				meta	= {name='Icon', value='TkTextureResource'},
				Filename	= events_data[entry.scan[1]].icon
			},
			PreferClosest		= true,
			UseRequiredVehicle	= entry.vhcl ~= nil,
			RequiredVehicle		= entry.vhcl and {
				meta	= {name='RequiredVehicle', value='GcVehicleType'},
				VehicleType	= entry.vhcl
			} or nil
		}
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.exocraft scan upgrade',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.44',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
		MBIN_CHANGE_TABLE	= {
			{
				MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
				MXML_CHANGE_TABLE	= sve_ct
			},
			{
				MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.MBIN',
				MXML_CHANGE_TABLE	= {
					{
						PRECEDING_KEY_WORDS = 'VehicleScanTable',
						ADD_OPTION			= 'ReplaceWholeSection',
						ADD 				= ToMxml(scan_menu)
					}
				}
			},
			{
				MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
				MXML_CHANGE_TABLE	= {
					{
						SPECIAL_KEY_WORDS	= {'ID', 'VEHICLE_SCAN[12]', 'TechnologyCategory', 'Exocraft'},
						VALUE_CHANGE_TABLE 	= {
							{'TechnologyCategory', 'AllVehicles'}
						}
					}		
				}
			}
		}
	}},
	ADD_FILES	= (
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/ui/hud/icons/buildings/'
			if lfs.attributes(tex_path) then
				return {{
					EXTERNAL_FILE_SOURCE = tex_path..'*.DDS',
					FILE_DESTINATION	 = 'TEXTURES/UI/HUD/ICONS/BUILDINGS'
				}}
			end
			return nil
		end
	)()
}