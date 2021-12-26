--------------------------------------------------------------------------
local desc = [[
  Increase SMG hit damage and reduce its fire rate
  Delete grenade bounce property upgrade
  Increase hyperdrive distance and reduce efficiency bonuses
  Increase suit jetpack tank size and refill rate
  Increase damage and reduce firing rate for the mech cannon
  Increase bioship pulse upgrades - higher speed and maneuverability
  Increase chance for better -and more stats in X-class upgrades
]]------------------------------------------------------------------------

local Upgrade_Stats = {
	{'UP_SMG',			'Weapon_Projectile_Damage',			'+',	1,		1},		-- 2, 	3
	{'UP_SMG',			'Weapon_Projectile_Rate',			'+',	-0.15,	-0.15},	-- 1.1, 1.15
	{'UP_GREN',			'Weapon_Grenade_Bounce'},
	{'UP_LASER',		'Weapon_Laser_Mining_Speed',		'+',	-1,		-1},
	{'UP_LASER',		'Weapon_Laser_Mining_Speed',		'*',	20,		20},
	{'UP_JETBOOST',		'Suit_Jetpack_Tank',				'*',	1.4,	1.4},
	{'UP_JETBOOST',		'Suit_Jetpack_Refill',				'*',	1.6,	1.6},
	{'UP_MCENG',		'Vehicle_BoostTanks',				'*',	20,		20},	-- 0.25, 0.3
	{'UP_MCGUN',		'Vehicle_GunDamage',				'*',	2.5,	2.5},
	{'UP_MCGUN',		'Vehicle_GunRate'},
	{'UP_HYPERDRIVE',	'Ship_Hyperdrive_JumpDistance',		'*',	4,		4},
	{'UP_HYPERDRIVE',	'Ship_Hyperdrive_JumpsPerCell',		'*',	0.4,	0.6},
	{'AP_HYPERDRIVE',	'Ship_Hyperdrive_JumpDistance',		'*',	4,		4},
	{'AP_HYPERDRIVE',	'Ship_Hyperdrive_JumpsPerCell',		'*',	0.4,	0.6},
	{'UT_FR_HYP_NAME',	'Freighter_Hyperdrive_JumpDistance','*',	16,		16},
	{'UT_FR_HYP_NAME',	'Freighter_Hyperdrive_JumpsPerCell','*',	0.4,	0.6},
	{'AP_PULSEDRIVE', 	'Ship_Boost',						'+',	0.11,	0.11},	-- 1.05, 1.15
	{'AP_PULSEDRIVE', 	'Ship_BoostManeuverability',		'+',	0.13,	0.11},	-- 1.05, 1.12
	{'AP_PULSEDRIVE', 	'Ship_Maneuverability',				'+',	0.048,	0.05},	-- 1.005
}
function Upgrade_Stats:Get(x)
	local T = {
		REPLACE_TYPE 		= 'ALL',
		SPECIAL_KEY_WORDS	= {'Name', x[1], 'StatsType', x[2]},
		SECTION_UP			= 1,
	}
	if x[3] then
		T.MATH_OPERATION	 = x[3]
		T.INTEGER_TO_FLOAT	 = 'FORCE'
		T.VALUE_CHANGE_TABLE = { {'ValueMin', x[4]}, {'ValueMax', x[5]} }
	else
		T.REMOVE = 'SECTION'
	end
	return T
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

local Source_Table_Proc_Tech = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE PROC TECH.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Proc_Tech,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				VALUE_MATCH			= 'MaxIsRare',
				SPECIAL_KEY_WORDS	= {'Quality', 'Illegal', 'WeightingCurve', 'IGNORE'},
				VALUE_CHANGE_TABLE 	= {
					{'WeightingCurve', 'MinIsSuperRare'} -- MaxIsRare
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'StatsType', 'Weapon_Laser_Mining_Speed'},
				VALUE_CHANGE_TABLE 	= {
					{'StatsType',	'Weapon_Laser_Damage'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Proc_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Upgrade_Stats)
	}
}}}}
