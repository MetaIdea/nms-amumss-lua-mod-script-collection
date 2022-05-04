--------------------------------------------------------------------------
local desc = [[
  Increase Charge Amounts for selected items
  edit / add / remove stats
  Enable ship-tech for bioship _ share tech between vehicle & mech
  Set powercell & life support gel as the default recharge choice
  changes to weapon upgrades projectile color
  Change mech terrain editor fuel to metal - same as the multitool
]]------------------------------------------------------------------------

local Charge_Capacity = {
	{'SHIPJUMP1',		1.5},
	{'SHIPJUMP_SPEC',	1.5},
	{'SHIPJUMP_ALIEN',	1.5},
	{'LAUNCHER',		1.5},
	{'LAUNCHER_ALIEN',	1.5},
	{'F_HYPERDRIVE',	4},
	{'LASER',			2},
	{'TERRAINEDITOR',	3},
	{'RAILGUN',			4},
	{'GRENADE',			1.5},
	{'STUN_GREN',		1.5},
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
	{'MECH_MINER',		3},
	{'MECH_GUN',		1.4},
	{'CANNON',			0.6},
	{'STEALTH',			6}
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
	{'CARGOSHIELD',		'Ship',		'AllShips'},
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

local RBG_Colors = {
	{'UT_BOLT', 		'UpgradeColour',	0.88,	0.94,	0.2},
	{'UT_RAIL',			'UpgradeColour',	0.74,	0.1,	0.16},
	{'UT_SHIPLAS',		'UpgradeColour',	0.12,	0.1,	0.62},
	{'UT_SHIPGUN',		'UpgradeColour',	0.01,	0.88,	0.1},
	{'UT_SMG',			'UpgradeColour',	0.92,	0.12,	0.82},
	{'SHIPJUMP_SPEC',	'Colour',			0.035,	0.36,	0.467},
}
function RBG_Colors:Get(x)
	return {
		INTEGER_TO_FLOAT	= 'FORCE',
		SPECIAL_KEY_WORDS	= {'ID', x[1]},
		PRECEDING_KEY_WORDS	= x[2],
		VALUE_CHANGE_TABLE 	= { {'R', x[3]}, {'G', x[4]}, {'B', x[5]} }
	}
end

local Uncore_Remove_Tech = {
	'PROTECT',
	'JET1',
	'SHIPJUMP1',
	'SHIPJUMP_SPEC',
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
}
function Uncore_Remove_Tech:Get(x)
	return {
		SPECIAL_KEY_WORDS	= {'ID', x},
		VALUE_CHANGE_TABLE 	= { {'Core', false} }
	}
end

local Edit_Stat_Bonus = {
	{'UT_SCAN',			'Weapon_Scan_Radius',					'*',	1.6},		-- 1.1
	{'UT_ROCKETS',		'Ship_Weapons_Guns_CoolTime',			'*',	0.5},		-- 0.8
	{'UT_PROTECT',		'Suit_Protection',						'+',	0.1,	2},	-- 0.2
	{'SHIP_TELEPORT',	'Ship_Teleport',						'*',	32,		2},	-- 100
	{'SHIPROCKETS',		'Ship_Weapons_Guns_Damage',				'*',	1.5},		-- 6500
	{'VEHICLE_GRIP1',	'Vehicle_Grip',							'+',	-0.4},		-- 3
	{'VEHICLE_GRIP1',	'Vehicle_SkidGrip',						'+',	0.22},		-- 0.66
	{'VEHICLE_ENGINE',	'Vehicle_Grip',							'+',	1.5},		-- 1
	{'VEHICLE_ENGINE',	'Vehicle_SkidGrip',						'+',	-0.15},		-- 1
	{'MECH_GUN',		'Vehicle_GunDamage',					'+',	80},		-- 340
	{'MECH_GUN',		'Vehicle_GunRate',						'+',	0.35},		-- 0.35
	{'MECH_ENGINE',		'Vehicle_EngineFuelUse',				'+',	0.5},		-- 0.5
	{'MECH_FUEL',		'Vehicle_EngineFuelUse',				'+',	0.07},		-- 0.8
	{'F_HYPERDRIVE',	'Freighter_Hyperdrive_JumpDistance',	'*',	10},		-- 100
	{'F_HDRIVEBOOST1',	'Freighter_Hyperdrive_JumpDistance',	'*',	8},			-- 200
	{'F_HDRIVEBOOST2',	'Freighter_Hyperdrive_JumpDistance',	'*',	6},			-- 300
	{'F_HDRIVEBOOST3',	'Freighter_Hyperdrive_JumpDistance',	'*',	4},			-- 800
	{'SOLAR_SAIL',		'Ship_PulseDrive_MiniJumpFuelSpending',	'+',	0.4},		-- 0.2
	{'SHIPJUMP_SPEC',	'Ship_BoostManeuverability',			'+',	-0.15},		-- 1.25
	{'SHIPJUMP_SPEC',	'Ship_Boost',							'+',	-10},		-- 120

	{'MECH_ENGINE',		'Vehicle_FuelRegen',					3,		1},
	{'VEHICLE_ENGINE',	'Vehicle_FuelRegen',					3,		1},
	{'SUB_ENGINE',		'Vehicle_FuelRegen',					3,		1},
	{'STRONGLASER',		'Weapon_Laser_Damage',					3,		0},
	{'UT_MINER',		'Weapon_Laser_Damage',					4,		0},
	{'UT_ROCKETS',		'Ship_Weapons_Guns_Damage',				5000,	0},
	{'PHOTONIX_CORE',	'Ship_Launcher_AutoCharge',				1,		1},
	{'SOLAR_SAIL',		'Ship_Maneuverability',					1.1,	3},
	{'SOLAR_SAIL',		'Ship_PulseDrive_MiniJumpSpeed',		1.2,	3},
	{'PHOTONIX_CORE',	'Ship_PulseDrive_MiniJumpSpeed',		1.3,	3},
	{'UT_SHIPGUN',		'Ship_Weapons_ShieldLeech',				0.2,	3},
	{'SHIPLAS_ALIEN',	'Ship_Weapons_ShieldLeech',				0.22,	1},
}
function Edit_Stat_Bonus:Get(x)
	local T = {}
	if x[3] then
		if tonumber(x[3]) ~= nil then
			-- add new
			local GcStats = [[
				<Property value="GcStatsBonus.xml">
					<Property name="Stat" value="GcStatsTypes.xml">
						<Property name="StatsType" value="]]..x[2]..[[" />
					</Property>
					<Property name="Bonus" value="]]..x[3]..[[" />
					<Property name="Level" value="]]..x[4]..[[" />
				</Property>
			]]
			T.SPECIAL_KEY_WORDS		= {'ID', x[1]}
			T.PRECEDING_KEY_WORDS	= 'StatBonuses'
			T.ADD					= GcStats
		else
			-- edit
			T.MATH_OPERATION 		= x[3]
			T.INTEGER_TO_FLOAT		= 'FORCE'
			T.SPECIAL_KEY_WORDS		= {'ID', x[1], 'StatsType', x[2]}
			T.SECTION_UP			= 1
			T.SECTION_ACTIVE		= x[5] or 0
			T.VALUE_CHANGE_TABLE 	= { {'Bonus', x[4]} }
		end		
	else
		-- remove
		T.SPECIAL_KEY_WORDS		= {'ID', x[1], 'StatsType', x[2]}
		T.SECTION_UP			= 1
		T.REMOVE				= 'SECTION'		
	end
	return T
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
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SOLAR_SAIL'},
				VALUE_CHANGE_TABLE 	= {
					{'FragmentCost', 480}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'PHOTONIX_CORE'},
				VALUE_CHANGE_TABLE 	= {
					{'FragmentCost', 480}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPJUMP_SPEC'},
				VALUE_CHANGE_TABLE 	= {
					{'FragmentCost', 520}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'PHOTONIX_CORE'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PULSEPHOTONIX.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPJUMP_SPEC'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PULSESPEC.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UT_MINER'},
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.RAILGUN1MOD.DDS'}
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
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(RBG_Colors)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Edit_Stat_Bonus)
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
