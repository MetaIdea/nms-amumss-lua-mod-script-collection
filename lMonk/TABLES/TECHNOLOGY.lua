--------------------------------------------------------------------------
local desc = [[
  Edit / add / remove stats
  Increase Charge Amounts for selected items
  Enable ship-tech for bioship _ share tech between vehicle & mech
  Set powercell & life support gel as the default recharge choice
  changes to weapon upgrades projectile color
  Change mech terrain editor fuel to metal - same as the multitool
]]------------------------------------------------------------------------

local t_all = {}
--- edit stat bonus
t_all[7] = {
	{'VEHICLE_GRIP1',	'Vehicle_Grip',							'+',	-0.4},		-- 3
	{'VEHICLE_GRIP1',	'Vehicle_SkidGrip',						'+',	0.22},		-- 0.66
	{'VEHICLE_ENGINE',	'Vehicle_Grip',							'+',	1.5},		-- 1
	{'VEHICLE_ENGINE',	'Vehicle_SkidGrip',						'+',	-0.15},		-- 1
	{'MECH_GUN',		'Vehicle_GunDamage',					'+',	80},		-- 340
	{'MECH_GUN',		'Vehicle_GunRate',						'+',	0.35},		-- 0.35
	{'MECH_ENGINE',		'Vehicle_EngineFuelUse',				'+',	0.2},		-- 0.5
	{'MECH_SENT_L_ARM',	'Vehicle_LaserDamage',					'+',	40},		-- 50
	{'BOLT',			'Weapon_Projectile_Recoil',				'+',	-20},		-- 200
	{'UT_BOLT',			'Weapon_Projectile_Recoil',				'+',	-0.1},		-- 0.7
	{'F_HYPERDRIVE',	'Freighter_Hyperdrive_JumpDistance',	'*',	10},		-- 100
	{'F_HDRIVEBOOST1',	'Freighter_Hyperdrive_JumpDistance',	'*',	8},			-- 200
	{'F_HDRIVEBOOST2',	'Freighter_Hyperdrive_JumpDistance',	'*',	6},			-- 300
	{'F_HDRIVEBOOST3',	'Freighter_Hyperdrive_JumpDistance',	'*',	4},			-- 800
	{'SHIPROCKETS',		'Ship_Weapons_Guns_Damage',				'+',	2000},		-- 6500
	{'SHIPROCKETS',		'Ship_Weapons_Guns_Rate',				'+',	-0.5},		-- 1
	{'SHIPROCKETS',		'Ship_Weapons_Guns_CoolTime',			'+',	-2},		-- 10
	{'SHIPROCKETS',		'Ship_Weapons_Guns_HeatTime',			'+',	1},			-- 0
	{'UT_ROCKETS',		'Ship_Weapons_Guns_CoolTime',			'+',	-0.3},		-- 0.8
	{'UT_SHIPSHOT',		'Ship_Weapons_Guns_Dispersion',			'+',	-0.2},		-- 0.8
	{'SHIP_TELEPORT',	'Ship_Teleport',						'*',	32,		2},	-- 100
	{'SHIPJUMP_SPEC',	'Ship_Maneuverability',					1},					-- remove
	{'SHIPJUMP_SPEC',	'Ship_Maneuverability',					'+',	0.05},		-- bug fix
	{'SHIPJUMP_SPEC',	'Ship_BoostManeuverability',			'+',	-0.2},		-- 1.25
	{'SHIPJUMP_SPEC',	'Ship_Boost',							'+',	-10},		-- 120
	{'SHIPJUMP_SPEC',	'Ship_PulseDrive_MiniJumpSpeed',		'+',	0.24},		-- 1
	{'PHOTONIX_CORE',	'Ship_Maneuverability'},
	{'SOLAR_SAIL',		'Ship_PulseDrive_MiniJumpFuelSpending',	'+',	0.4},		-- 0.2
	{'SHIPMINIGUN',		'Ship_Weapons_Guns_Damage_Radius',		'+',	1},			-- 3

	{'UT_JUMP',			'Suit_Jetpack_WaterEfficiency',			1,		0},
	{'UT_SHOT',			'Weapon_FireDOT_Duration',				4,		1},
	{'UT_SHOT',			'Weapon_FireDOT_DPS',					200,	1},
	{'UT_SHOT',			'Weapon_FireDOT',						1,		4},
	{'STRONGLASER',		'Weapon_Laser_Damage',					3,		0},
	{'UT_MINER',		'Weapon_Laser_Damage',					4,		0},
	{'UT_RAIL_STUN',	'Weapon_Laser_Damage',					200,	0},
	{'VEHICLE_ENGINE',	'Vehicle_FuelRegen',					3,		1},
	{'SUB_ENGINE',		'Vehicle_FuelRegen',					3,		1},
	{'MECH_ENGINE',		'Vehicle_FuelRegen',					3,		1},
	{'MECH_SENT_L_ARM',	'Vehicle_LaserStrongLaser',				1,		0},
	{'PHOTONIX_CORE',	'Ship_Launcher_AutoCharge',				1,		1},
	{'PHOTONIX_CORE',	'Ship_PulseDrive_MiniJumpSpeed',		1.3,	3},
	{'SOLAR_SAIL',		'Ship_PulseDrive_MiniJumpSpeed',		1.22,	0},
	{'SHIPSCAN_ECON',	'Ship_Scan_ConflictFilter',				1,		1},
	{'UT_ROCKETS',		'Ship_Weapons_Guns_Damage',				3200,	2},
	{'UT_ROCKETS',		'Ship_Weapons_Guns_Range',				1.1,	1},
	{'UT_ROCKETS',		'Ship_Weapons_Guns_HeatTime',			1.2,	0},
	{'SHIPGUN1',		'Ship_Weapons_ShieldLeech',				0.18,	1},
	{'UT_SHIPGUN',		'Ship_Weapons_ShieldLeech',				0.08,	3},
	{'F_MEGAWARP',		'Freighter_Hyperdrive',					1,		1},
	{'F_MEGAWARP',		'Freighter_Hyperdrive_JumpDistance',	1000,	1},
	Get = function(x)
		local T = {}
		if type(x[3]) == 'string' then
			--- edit ---
			T.MATH_OPERATION 		= x[3]
			T.INTEGER_TO_FLOAT		= 'Force'
			T.SPECIAL_KEY_WORDS		= {'ID', x[1], 'StatsType', x[2]}
			T.SECTION_UP			= 1
			T.SECTION_ACTIVE		= x[5] or 0
			T.VALUE_CHANGE_TABLE 	= { {'Bonus', x[4]} }
		elseif x[4] then
			--- add new ---
			T.ADD = [[
				<Property value="GcStatsBonus.xml">
					<Property name="Stat" value="GcStatsTypes.xml">
						<Property name="StatsType" value="]]..x[2]..[["/>
					</Property>
					<Property name="Bonus" value="]]..x[3]..[["/>
					<Property name="Level" value="]]..x[4]..[["/>
				</Property>
			]]
			T.SPECIAL_KEY_WORDS		= {'ID', x[1]}
			T.PRECEDING_KEY_WORDS	= 'StatBonuses'
		else
			--- remove ---
			T.SPECIAL_KEY_WORDS		= {'ID', x[1], 'StatsType', x[2]}
			T.SECTION_UP			= 1
			T.SECTION_ACTIVE		= x[3] or 0
			T.REMOVE				= 'Section'
		end
		return T
	end
}

--- charge capacity
t_all[1] = {
	{'SHIPJUMP1',		1.5},
	{'SHIPJUMP_SPEC',	1.5},
	{'SHIPJUMP_ALIEN',	1.5},
	{'LAUNCHER',		1.5},
	{'LAUNCHER_SPEC',	1.5},
	{'LAUNCHER_ALIEN',	1.5},
	{'F_HYPERDRIVE',	4},
	{'LASER',			2},
	{'TERRAINEDITOR',	3},
	{'RAILGUN',			4},
	{'GRENADE',			1.5},
	{'STUN_GREN',		1.5},
	{'SUN_LASER',		8},
	{'CANNON',			0.6},
	{'STEALTH',			6},
	{'T_UNW',			4},
	{'T_RAD',			3},
	{'T_TOX',			3},
	{'T_COLDPROT',		3},
	{'T_HOTPROT',		3},
	{'VEHICLE_ENGINE',	1.2},
	{'VEHICLE_LASER',	1.4},
	{'SUB_ENGINE',		2},
	{'SUB_LASER',		1.4},
	{'MECH_LASER',		2},
	{'MECH_MINER',		8},
	{'MECH_GUN',		1.4},
	Get = function(x)
		return {
			INTEGER_TO_FLOAT	= 'Preserve',
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= { {'ChargeAmount', x[2]} }
		}
	end
}

--- include in category
t_all[4] = {
	{'SHIP_TELEPORT',	'Ship',		'AllShips'},
	-- {'SHIPSCAN_COMBAT',	'Ship',		'AllShips'},
	-- {'SHIPSCAN_ECON',	'Ship',		'AllShips'},
	-- {'CARGOSHIELD',		'Ship',		'AllShips'},
	{'VEHICLE_SCAN1',	'Exocraft',	'AllVehicles'},
	{'VEHICLE_SCAN2',	'Exocraft',	'AllVehicles'},
	{'MECH_PROT',		'Mech',		'AllVehicles'},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x[1], 'TechnologyCategory', x[2]},
			VALUE_CHANGE_TABLE 	= { {'TechnologyCategory', x[3]} }
		}
	end
}

--- upgrade projectile color, and icon bg
t_all[2] = {
	{'UT_BOLT', 		0.88,	0.94,	0.2,	'Upgrade'},
	{'UT_RAIL',			0.74,	0.1,	0.16,	'Upgrade'},
	{'UT_SHIPLAS',		0.12,	0.1,	0.62,	'Upgrade'},
	{'UT_SHIPGUN',		0.01,	0.88,	0.1,	'Upgrade'},
	{'UT_SMG',			0.92,	0.12,	0.82,	'Upgrade'},
	{'SHIPJUMP_SPEC'},
	{'HYPERDRIVE_SPEC'},
	{'LAUNCHER_SPEC'},
	{'T_BOBBLE_APOLLO'},
	{'T_BOBBLE_ART'},
	{'T_BOBBLE_ATLAS'},
	{'T_BOBBLE_NADA'},
	{'T_BOBBLE_NULL'},
	{'T_BOBBLE_POLO'},
	{'T_SHIP_RAINBOW'},
	{'T_SHIP_DARK'},
	{'T_SHIP_RED'},
	{'T_SHIP_GREEN'},
	{'T_SHIP_GOLD'},
	{'T_SHIP_PIRATE'},
	Get = function(x)
		return {
			INTEGER_TO_FLOAT	= 'Force',
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			PRECEDING_KEY_WORDS	= (x[5] or '')..'Colour',
			VALUE_CHANGE_TABLE 	= {
				{'R', x[2] or 0.0353}, {'G', x[3] or 0.361}, {'B', x[4] or 0.467}
			}
		}
	end
}

--- uncore remove tech
t_all[3] = {
	'PROTECT',
	'JET1',
	'SHIPJUMP1',
	'LASER',
	'LAUNCHER',
	'HYPERDRIVE',
	'SHIPSHIELD',
	'SHIPGUN1',
	'F_HYPERDRIVE',
	'SHIPJUMP_ALIEN',
	'WARP_ALIEN',
	'LAUNCHER_ALIEN',
	'SHIELD_ALIEN',
	'SHIPGUN_ALIEN',
	'SHIPLAS_ALIEN',
	'MECH_FUEL',
	'SHIPJUMP_SPEC',
	'LAUNCHER_SPEC',
	'HYPERDRIVE_SPEC',
	'SHIP_LIFESUP',
	'SHIPJUMP_ALIEN',
	'LAUNCHER_ALIEN',
	'WARP_ALIEN',
	'SHIELD_ALIEN',
	'SHIPGUN_ALIEN',
	'SHIPLAS_ALIEN',
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x},
			VALUE_CHANGE_TABLE 	= { {'Core', false} }
		}
	end
}

--- fragment cost
t_all[5] = {
	{'FLAME',			420},
	{'SOLAR_SAIL',		780},
	{'PHOTONIX_CORE',	780},
	{'SHIP_LIFESUP',	580},
	{'SHIPJUMP_SPEC',	980},
	{'LAUNCHER_SPEC',	980},
	{'HYPERDRIVE_SPEC',	980},
	{'SHIPJUMP_ALIEN',	160},
	{'LAUNCHER_ALIEN',	160},
	{'WARP_ALIEN',		160},
	{'SHIELD_ALIEN',	160},
	{'SHIPGUN_ALIEN',	160},
	{'SHIPLAS_ALIEN',	160},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= { {'FragmentCost', x[2]} }
		}
	end
}

--- tech icons
t_all[6] = {
	{'PHOTONIX_CORE',	'RENDER.PULSEPHOTONIX.DDS'},
	{'SHIPJUMP_SPEC',	'RENDER.PULSESPEC.DDS'},
	{'LAUNCHER_SPEC',	'RENDER.LANDINGSPEC.DDS'},
	{'HYPERDRIVE_SPEC',	'RENDER.HYPERSPEC.DDS'},
	{'UT_MINER',		'RENDER.RAILGUN1MOD.DDS'},
	-- {'CARGO_S_ALIEN',	'BIO.CARGO.DDS'},
	-- {'SHIPSCAN_ALIEN',	'BIO.SCAN.DDS'},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= {
				{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/'..x[2]}
			}
		}
	end
}

--- move charge to top
t_all[8] = {
	{'PROTECT',		'POWERCELL'},
	{'ENERGY',		'PRODFUEL2'},
	{'T_RAD',		'POWERCELL'},
	{'T_TOX',		'POWERCELL'},
	{'T_COLDPROT',	'POWERCELL'},
	{'T_HOTPROT',	'POWERCELL'},
	{'T_UNW',		'PRODFUEL2'},
	{'SHIPSHIELD',	'SHIPCHARGE'},
	multi = true,
	Get = function(x)
		return {{
			SPECIAL_KEY_WORDS	= {'ID', x[1], 'Value', x[2]},
			REMOVE				= 'Section'
		},{
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			PRECEDING_KEY_WORDS = 'ChargeBy',
			ADD					= [[
				<Property value="NMSString0x10.xml">
					<Property name="Value" value="]]..x[2]..[["/>
				</Property>]]
		}}
	end
}

--- replace requirements
t_all[9] = {
	{
	---	environment control unit
		id = 'MECH_PROT',
		{'COMPUTER',	2,	'P'},
		{'SHIPCHARGE',	2,	'P'},
		{'TECH_COMP',	2,	'P'},
	},{
	---	pulsing heart
		id = 'SHIPJUMP_ALIEN',
		{'GRAVBALL',	2,	'P'},
		{'SPACEGUNK5',	50,	'S'},
	},{
	---	neural shielding
		id = 'CARGO_S_ALIEN',
		{'FIENDCORE',	2,	'P'},
		{'SPACEGUNK5',	50,	'S'},
	},{
	---	chloroplast membrane
		id	= 'CHARGER_ALIEN',
		{'FISHCORE',	2,	'P'},
		{'SPACEGUNK5',	50,	'S'},
	},{
	---	wormhole brain
		id = 'SHIPSCAN_ALIEN',
		{'EYEBALL',		2,	'P'},
		{'SPACEGUNK5',	50,	'S'},
	},
	multi = true,
	Get = function(x)
		local function BuildReqs()
			local exml = ''
			local requirement = [[
				<Property value="GcTechnologyRequirement.xml">
					<Property name="ID" value="%s"/>
					<Property name="Amount" value="%s"/>
					<Property name="InventoryType" value="GcInventoryType.xml">
						<Property name="InventoryType" value="%s"/>
					</Property>
				</Property>]]
			for _,p in ipairs(x) do
				exml = exml..string.format(requirement, p[1], p[2],
					(p[3] == 'S' and 'Substance' or 'Product')
				)
			end
			return '<Property name="Requirements">'..exml..'</Property>'
		end
		return {
			{
				SPECIAL_KEY_WORDS	= {'ID', x.id},
				PRECEDING_KEY_WORDS	= 'Requirements',
				REMOVE				= 'Section'
			},{
				SPECIAL_KEY_WORDS	= {'ID', x.id},
				ADD					= BuildReqs()
			}
 		}
	end
}

local function BuildExmlChangeTable()
	local T = {}
	for _,tbl in ipairs(t_all) do
		if tbl.multi then
			for _,v in ipairs(tbl) do
				for _,w in ipairs(tbl.Get(v)) do table.insert(T, w) end
			end
		else
			for _,v in ipairs(tbl) do table.insert(T, tbl.Get(v)) end
		end
	end
	return T
end

local source_table_tech = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE TECHNOLOGY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_tech,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'MECH_MINER'},
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceCategory', 'Metal'}	-- Fuel
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SUN_LASER'},
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceCategory', 'Metal'}	-- Fuel
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= source_table_tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable()
	}
}}}}
