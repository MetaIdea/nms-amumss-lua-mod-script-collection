--[[┎────────────────────────────────────────────────────────────────────
	┃ Increase SMG hit damage and reduce its fire rate
	┃ Delete grenade bounce property upgrade
	┃ Increase ship hyperdrive ditance
	┃ Increase suit jetpack tank size
	┃ Increase bioship pulse upgrades - higher speed and manauverability
	┃ Increase chance for better -and more stats in X-class upgrades
────┸────────────────────────────────────────────────────────────────--]]
Upgrade_Stats = {
	dat = {
		{'UP_SMG',			'Weapon_Projectile_Damage',			'+',	1,		1},		-- 2, 	3
		{'UP_SMG',			'Weapon_Projectile_Rate',			'-',	0.1,	0.1},	-- 1.1, 1.15
		{'UP_JETBOOST',		'Suit_Jetpack_Tank',				'*',	1.4,	1.4},
		{'UP_JETBOOST',		'Suit_Jetpack_Refill',				'*',	1.6,	1.6},
		{'UP_MCENG',		'Vehicle_BoostTanks',				'*',	14,		14},	-- 0.25, 0.3
		{'UP_HYPERDRIVE',	'Ship_Hyperdrive_JumpDistance',		'*',	4,		4},
		{'AP_HYPERDRIVE',	'Ship_Hyperdrive_JumpDistance',		'*',	4,		4},
		{'UT_FR_HYP_NAME',	'Freighter_Hyperdrive_JumpDistance','*',	24,		24},
		{'AP_PULSEDRIVE', 	'Ship_Boost',						'+',	0.11,	0.11},	-- 1.05, 1.15
		{'AP_PULSEDRIVE', 	'Ship_BoostManeuverability',		'+',	0.13,	0.11},	-- 1.05, 1.12
		{'AP_PULSEDRIVE', 	'Ship_Maneuverability',				'+',	0.048,	0.05},	-- 1.005
	},
	Get = function(x)
		return {
			REPLACE_TYPE 		= 'ALL',
			MATH_OPERATION 		= x[3],
			INTEGER_TO_FLOAT	= 'FORCE',
			SPECIAL_KEY_WORDS	= {'Name', x[1], 'StatsType', x[2]},
			SECTION_UP			= 1,
			VALUE_CHANGE_TABLE 	= { {'ValueMin', x[4]}, {'ValueMax', x[5]} }
		}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i = 1, #tbl.dat do table.insert(T, tbl.Get(tbl.dat[i])) end
	return T
end

Source_Table_Proc_Tech = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE PROC TECH.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Proc_Tech,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'UP_GREN', 'StatsType','Weapon_Grenade_Bounce'},
				SECTION_UP			= 1,
				REMOVE				= 'SECTION'
			},
			{
				REPLACE_TYPE 		= 'ALL',
				VALUE_MATCH			= 'MaxIsRare',
				SPECIAL_KEY_WORDS	= {'Quality', 'Illegal', 'WeightingCurve', 'IGNORE'},
				VALUE_CHANGE_TABLE 	= {
					{'WeightingCurve', 'MinIsSuperRare'} -- MaxIsRare
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Proc_Tech,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Upgrade_Stats)
	}
}}}}
