--------------------------------------------------------------------------
local desc = [[
  Increase SMG hit damage and reduce its fire rate
  Delete grenade bounce property upgrade
  Increase hyperdrive distance and reduce efficiency bonuses
  Increase suit jetpack tank size and refill rate
  Increase damage and reduce firing rate for the mech cannon
  Increase bioship pulse upgrades - higher speed and maneuverability
]]------------------------------------------------------------------------

local edit_stats = {
	{'UP_SMG',			'Weapon_Projectile_Damage',			'+',	1,		1},		-- 2, 	3
	{'UP_SMG',			'Weapon_Projectile_Rate',			'+',	-0.15,	-0.15},	-- 1.1, 1.15
	{'UP_GREN',			'Weapon_Grenade_Bounce'},
	{'UP_JETBOOST',		'Suit_Jetpack_Tank',				'*',	1.5,	1.5},
	{'UP_JETBOOST',		'Suit_Jetpack_Drain',				'+',	-0.3,	-0.3},
	{'UP_JETBOOST',		'Suit_Jetpack_Refill',				'+',	0.6,	0.6},
	{'UP_JETBOOST',		'Suit_Jetpack_Ignition',			'+',	0.03,	0.03},
	{'UP_MCENG',		'Vehicle_EngineFuelUse',			'+',	0.1,	0.1},
	{'UP_MCENG',		'Vehicle_BoostTanks',				'+',	8,		8},		-- 0.1,	0.3
	{'UP_MCGUN',		'Vehicle_GunDamage',				'*',	2.5,	2.5},
	{'UP_MCGUN',		'Vehicle_GunRate'},
	{'UP_HYPERDRIVE',	'Ship_Hyperdrive_JumpDistance',		'*',	3.6,	3.6},
	{'UP_HYPERDRIVE',	'Ship_Hyperdrive_JumpsPerCell',		'*',	0.4,	0.6},
	{'AP_HYPERDRIVE',	'Ship_Hyperdrive_JumpDistance',		'*',	3.6,	3.6},
	{'AP_HYPERDRIVE',	'Ship_Hyperdrive_JumpsPerCell',		'*',	0.4,	0.6},
	{'UT_FR_HYP_NAME',	'Freighter_Hyperdrive_JumpDistance','*',	12,		12},
	{'UT_FR_HYP_NAME',	'Freighter_Hyperdrive_JumpsPerCell','*',	0.4,	0.6},
	{'AP_PULSEDRIVE', 	'Ship_Boost',						'+',	0.11,	0.11},	-- 1.05, 1.15
	{'AP_PULSEDRIVE', 	'Ship_BoostManeuverability',		'+',	0.13,	0.11},	-- 1.05, 1.12
	{'AP_PULSEDRIVE', 	'Ship_Maneuverability',				'+',	0.048,	0.05},	-- 1.005
	{'UP_LASER', 		'Weapon_Laser_Mining_Speed'},
	{'UP_LASER', 		'Weapon_Laser_Damage',				1,		1},
	{'UP_UNW', 			'Suit_Protection_WaterDrain',		0.1,	0.2,	'MaxIsUncommon',true},
}
function edit_stats:Get(x)
	local T = {}
	T.REPLACE_TYPE = 'All'
	if type(x[3]) == 'string' then
		--- edit ---
		T.MATH_OPERATION		= x[3]
		T.INTEGER_TO_FLOAT		= 'Force'
		T.SPECIAL_KEY_WORDS		= {'Name', x[1], 'StatsType', x[2]}
		T.SECTION_UP			= 1
		T.VALUE_CHANGE_TABLE	= { {'ValueMin', x[4]}, {'ValueMax', x[5]} }
	elseif x[3] then
		--- add new ---
		T.ADD = [[
			<Property value="GcProceduralTechnologyStatLevel.xml">
				<Property name="Stat" value="GcStatsTypes.xml">
					<Property name="StatsType" value="]]..x[2]..[["/>
				</Property>
				<Property name="ValueMin" value="]]..x[3]..[["/>
				<Property name="ValueMax" value="]]..x[4]..[["/>
				<Property name="WeightingCurve" value="GcWeightingCurve.xml">
					<Property name="WeightingCurve" value="]]..(x[5] or 'NoWeighting')..[["/>
				</Property>
				<Property name="AlwaysChoose" value="]]..(x[6] and 'True' or 'False')..[["/>
			</Property>
		]]
		T.SPECIAL_KEY_WORDS		= {'Name', x[1]}
		T.PRECEDING_KEY_WORDS	= 'StatLevels'
	else
		--- remove ---
		T.SPECIAL_KEY_WORDS		= {'Name', x[1], 'StatsType', x[2]}
		T.SECTION_UP			= 1
		T.REMOVE				= 'Section'
	end
	return T
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE PROC TECH.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(edit_stats)
	}
}}}}
