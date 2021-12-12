--------------------------------------------------------------------------
local desc = [[
  Increase Charge Amounts for selected items
  Enable ship-tech for bioship _ share tech between vehicle & mech
  Increase stat value (bonus) for selected items
  Set powercell & life support gel as the default recharge choice
  changes to weapon upgrades projectile color
  Change mech terrain editor fuel to metal - same as the multitool
]]------------------------------------------------------------------------

local Charge_Capacity = {
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
}
function Charge_Capacity:Get(x)
	return {
		INTEGER_TO_FLOAT	= 'PRESERVE',
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {'ID', x[1]},
		VALUE_CHANGE_TABLE 	= { {'ChargeAmount', x[2]} }
	}
end

local Include_In_Category = {
	{'SHIP_TELEPORT',	'Ship',		'AllShips'},
	{'SHIPSCAN_COMBAT',	'Ship',		'AllShips'},
	{'SHIPSCAN_ECON',	'Ship',		'AllShips'},
	{'VEHICLE_SCAN1',	'Exocraft',	'AllVehicles'},
	{'VEHICLE_SCAN2',	'Exocraft',	'AllVehicles'},
	{'VEHICLE_LASER1',	'Exocraft',	'AllVehicles'},
	{'MECH_PROT',		'Mech',		'AllVehicles'}
}
function Include_In_Category:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x[1], 'TechnologyCategory', x[2]},
		VALUE_CHANGE_TABLE 	= { {'TechnologyCategory', x[3]} }
	}
end

local Projectile_Upgrade_Colour = {
	{'UT_BOLT', 	0.88,	0.94,	0.2},
	{'UT_MINER',	0.92,	0.25,	0.82},
	{'UT_RAIL',		0.74,	0.1,	0.16},
	{'UT_SHIPLAS',	0.12,	0.1,	0.62},
	{'UT_SHIPGUN',	0.01,	0.88,	0.1},
	{'UT_SMG',		0.92,	0.12,	0.82}
}
function Projectile_Upgrade_Colour:Get(x)
	return {
		INTEGER_TO_FLOAT	= 'FORCE',
		SPECIAL_KEY_WORDS	= {'ID', x[1],},
		PRECEDING_KEY_WORDS	= 'UpgradeColour',
		VALUE_CHANGE_TABLE 	= { {'R', x[2]}, {'G', x[3]}, {'B', x[4]} }
	}
end

local Uncore_Remove_Tech = {
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
}
function Uncore_Remove_Tech:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x},
		VALUE_CHANGE_TABLE 	= { {'Core', false} }
	}
end

local Stat_Bonus = {
	{'UT_SCAN',			'Weapon_Scan_Radius',					'*',	1.6},		-- 1.1
	{'UT_ROCKETS',		'Ship_Weapons_Guns_CoolTime',			'*',	0.5},		-- 0.8
	{'UT_PROTECT',		'Suit_Protection',						'+',	0.1,	2},	-- 0.2
	{'SHIP_TELEPORT',	'Ship_Teleport',						'*',	32,		2},	-- 100
	{'SHIPROCKETS',		'Ship_Weapons_Guns_Damage',				'*',	1.5},		-- 6500
	{'VEHICLE_GRIP1',	'Vehicle_Grip',							'+',	-0.4},		-- 3
	{'VEHICLE_GRIP1',	'Vehicle_SkidGrip',						'+',	0.22},		-- 0.66
	{'MECH_GUN',		'Vehicle_GunDamage',					'+',	80},		-- 340
	{'MECH_GUN',		'Vehicle_GunRate',						'+',	0.45},		-- 0.35
	{'MECH_ENGINE',		'Vehicle_EngineFuelUse',				'+',	0.5},		-- 0.5
	{'MECH_FUEL',		'Vehicle_EngineFuelUse',				'+',	0.07},		-- 0.8
	{'F_HYPERDRIVE',	'Freighter_Hyperdrive_JumpDistance',	'*',	10},		-- 100
	{'F_HDRIVEBOOST1',	'Freighter_Hyperdrive_JumpDistance',	'*',	8},			-- 200
	{'F_HDRIVEBOOST2',	'Freighter_Hyperdrive_JumpDistance',	'*',	6},			-- 300
	{'F_HDRIVEBOOST3',	'Freighter_Hyperdrive_JumpDistance',	'*',	4}			-- 800
}
function Stat_Bonus:Get(x)
	local T = {
		MATH_OPERATION 		= x[3],
		INTEGER_TO_FLOAT	= 'FORCE',
		SPECIAL_KEY_WORDS	= {'ID', x[1], 'StatsType', x[2]},
		SECTION_UP			= 1,
		VALUE_CHANGE_TABLE 	= { {'Bonus', x[4]} }
	}
	if x[5] then T.SECTION_ACTIVE	= x[5] end
	return T
end
function Stat_Bonus.AddNew(stat, bonus, level)
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

local Move_Charge_To_Top = {
	{'PROTECT',		'POWERCELL'},
	{'ENERGY',		'PRODFUEL2'},
	{'T_RAD',		'POWERCELL'},
	{'T_TOX',		'POWERCELL'},
	{'T_COLDPROT',	'POWERCELL'},
	{'T_HOTPROT',	'POWERCELL'},
	{'T_UNW',		'PRODFUEL2'},
	{'SHIPSHIELD',	'SHIPCHARGE'},
	multi = true
}
function Move_Charge_To_Top:Get(x)
	local newcharge = [[
		<Property value="NMSString0x10.xml">
			<Property name="Value" value="]]..x[2]..[["/>
		</Property>]]
	return { {
		SPECIAL_KEY_WORDS	= {'ID', x[1], 'Value', x[2]},
		REMOVE				= 'SECTION'
	}, {
		SPECIAL_KEY_WORDS	= {'ID', x[1]},
		PRECEDING_KEY_WORDS = 'ChargeBy',
		ADD					= newcharge
	} }
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	if tbl.multi or false then
		for _,v in ipairs(tbl) do
			for _,w in ipairs(tbl:Get(v)) do table.insert(T, w) end
		end
	else
		for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	end
	return T
end

local Source_Table_Tech = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE TECHNOLOGY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'STRONGLASER'},
				PRECEDING_KEY_WORDS	= 'StatBonuses',
				ADD 				= Stat_Bonus.AddNew('Weapon_Laser_Damage', 3, 0)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UT_MINER'},
				PRECEDING_KEY_WORDS	= 'StatBonuses',
				ADD 				= Stat_Bonus.AddNew('Weapon_Laser_Damage', 4, 0)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UT_MINER'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.RAILGUN1MOD.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID','UT_ROCKETS'},
				PRECEDING_KEY_WORDS	= 'StatBonuses',
				ADD 				= Stat_Bonus.AddNew('Ship_Weapons_Guns_Damage', 4600, 0)
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
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Uncore_Remove_Tech)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Move_Charge_To_Top)
	}
}}}}
