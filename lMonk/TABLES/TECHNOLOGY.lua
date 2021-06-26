--[[┎────────────────────────────────────────────────────────────────────
	┃ Increase Charge Amounts for selected items
	┃ Enable ship-tech for bioship _ share tech between vehicle & mech
	┃ Increase stat value (bonus) for selected items
	┃ changes to weapon upgrades projectile color
	┃ Change mech terrain editor fuel to metal - same as the multitool
────┸────────────────────────────────────────────────────────────────--]]
Charge_Capacity = {
	dat = {
		{'SHIPJUMP1',		1.2},
		{'SHIPJUMP_ALIEN',	1.2},
		{'LAUNCHER',		1.2},
		{'LAUNCHER_ALIEN',	1.2},
		{'F_HYPERDRIVE',	4},
		{'LASER',			2},
		{'TERRAINEDITOR',	3},
		{'RAILGUN',			4},
		{'GRENADE',			1.5},
		{'VEHICLE_ENGINE',	1.2},
		{'VEHICLE_LASER',	1.4},
		{'SUB_ENGINE',		2},
		{'SUB_LASER',		1.4},
		{'T_UNW',			4},
		{'T_RAD',			3},
		{'T_TOX',			3},
		{'T_COLDPROT',		3},
		{'T_HOTPROT',		3},
		{'MECH_LASER',		2},
		{'MECH_MINER',		4},
		{'MECH_GUN',		1.4}
	},
	Get = function(x)
		return {
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= { {'ChargeAmount', x[2]} }
		}
	end
}

Include_In_Category = {
	dat = {
		{'SHIP_TELEPORT',	'Ship',		'AllShips'},
		{'SHIPSCAN_COMBAT',	'Ship',		'AllShips'},
		{'SHIPSCAN_ECON',	'Ship',		'AllShips'},
		{'VEHICLE_SCAN1',	'Exocraft',	'AllVehicles'},
		{'VEHICLE_SCAN2',	'Exocraft',	'AllVehicles'},
		{'MECH_PROT',		'Mech',		'AllVehicles'}
	},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x[1], 'TechnologyCategory', x[2]},
			VALUE_CHANGE_TABLE 	= { {'TechnologyCategory', x[3]} }
		}
	end
}

Projectile_Upgrade_Colour = {
	dat = {
		{'UT_BOLT', 	0.88,	0.94,	0.2},
		{'UT_MINER',	0.95,	0.25,	0.72},
		{'UT_RAIL',		0.74,	0.1,	0.16},
		{'UT_SHIPLAS',	0.12,	0.1,	0.62},
		{'UT_SHIPGUN',	0.01,	0.88,	0.1},
		{'UT_SMG',		0.92,	0.12,	0.82}
	},
	Get = function(x)
		return {
			INTEGER_TO_FLOAT	= 'FORCE',
			SPECIAL_KEY_WORDS	= {'ID', x[1],},
			PRECEDING_KEY_WORDS	= 'UpgradeColour',
			VALUE_CHANGE_TABLE 	= { {'R', x[2]}, {'G', x[3]}, {'B', x[4]} }
		}
	end
}

Not_Core = {
	dat = {
		'PROTECT',
		'JET1',
		'SHIPJUMP1',
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
		'LASER'
	},
	Get = function(x)
		return {
			SPECIAL_KEY_WORDS	= {'ID', x},
			VALUE_CHANGE_TABLE 	= { {'Core', false} }
		}
	end
}

Stat_Bonus = {
	dat = {
		{'UT_SCAN',			'Weapon_Scan_Radius',					'*',	1.6},	-- 1.1
		{'SHIP_TELEPORT',	'Ship_Teleport',						'*',	32},	-- 100
		{'SHIPROCKETS',		'Ship_Weapons_Guns_Damage',				'*',	1.6},	-- 4500
		{'UT_ROCKETS',		'Ship_Weapons_Guns_CoolTime',			'*',	0.6},	-- 0.8
		{'UT_PROTECT',		'Suit_Protection',						'+',	0.1},	-- 0.2
		{'VEHICLE_GRIP1',	'Vehicle_Grip',							'+',	-0.4},	-- 3
		{'VEHICLE_GRIP1',	'Vehicle_SkidGrip',						'+',	0.22},	-- 0.66
		{'MECH_GUN',		'Vehicle_GunDamage',					'+',	260},	-- 340
		{'MECH_ENGINE',		'Vehicle_EngineFuelUse',				'+',	0.5},	-- 0.5
		{'MECH_FUEL',		'Vehicle_EngineFuelUse',				'+',	0.07},	-- 0.8
		{'F_HYPERDRIVE',	'Freighter_Hyperdrive_JumpDistance',	'*',	10},	-- 100
		{'F_HDRIVEBOOST1',	'Freighter_Hyperdrive_JumpDistance',	'*',	8},		-- 200
		{'F_HDRIVEBOOST2',	'Freighter_Hyperdrive_JumpDistance',	'*',	6},		-- 300
		{'F_HDRIVEBOOST3',	'Freighter_Hyperdrive_JumpDistance',	'*',	4}		-- 800
	},
	Get = function(x)
		return {
			MATH_OPERATION 		= x[3],
			INTEGER_TO_FLOAT	= 'FORCE',
			SPECIAL_KEY_WORDS	= {'ID', x[1], 'StatsType', x[2]},
			SECTION_UP			= 1,
			VALUE_CHANGE_TABLE 	= { {'Bonus', x[4]} }
		}
	end,
	AddNew = function(stat, bonus, level)
		return [[
			<Property value="GcStatsBonus.xml">
				<Property name="StatsTypes" value="GcStatsTypes.xml">
					<Property name="StatsType" value="]]..stat..[[" />
				</Property>
				<Property name="Bonus" value="]]..bonus..[[" />
				<Property name="Level" value="]]..level..[[" />
			</Property>
		]]
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i = 1, #tbl.dat do table.insert(T, tbl.Get(tbl.dat[i])) end
	return T
end

Source_Table_Tech = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE TECHNOLOGY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'STRONGLASER'},
				PRECEDING_KEY_WORDS	= 'StatBonuses',
				ADD 				= Stat_Bonus.AddNew('Weapon_Laser_Damage', 4, 0)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID','UT_ROCKETS'},
				PRECEDING_KEY_WORDS	= 'StatBonuses',
				ADD 				= Stat_Bonus.AddNew('Ship_Weapons_Guns_Damage', 3800, 3)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'ENERGY', 'Value', 'COLD1'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FOOD_P_HOTFARM'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'MECH_MINER'},
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceCategory', 'Metal'}	-- Fuel
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'MECH_FUEL'},
				VALUE_CHANGE_TABLE 	= {
					{'Chargeable',	false},
					{'Core',		false}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Charge_Capacity)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Include_In_Category)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Projectile_Upgrade_Colour)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Stat_Bonus)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Not_Core)
	}
}}}}
