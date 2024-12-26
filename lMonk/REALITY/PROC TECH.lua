--------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/table_entry.lua')
--------------------------------------------------------------------------
local mod_desc = [[
  Increase SMG hit damage and reduce its fire rate
  Delete grenade bounce property upgrade
  Increase hyperdrive distance and reduce efficiency bonuses
  Increase suit jetpack tank size and refill rate
  Increase damage and reduce firing rate for the mech cannon
  Increase bioship pulse upgrades - higher speed and maneuverability
]]------------------------------------------------------------------------

local edit_stats = {
---	suit
	UP_JETBOOST		= {
		{st='Suit_Jetpack_Tank',				op='*',					mx=1.8},
		{st='Suit_Jetpack_Drain',				op='+',		mn=-0.25,	mx=-0.3},
		{st='Suit_Jetpack_Refill',				op='+',		mn=0.5,		mx=0.55},
		{st='Suit_Jetpack_Ignition',			op='+',					mx=0.03}
	},
	UP_UNW			= {
		{st='Suit_Protection_WaterDrain',		mn=0.1,		mx=0.2,		wc='MaxIsUncommon',	ac=true}
	},
---	multitool
	UP_SMG			= {
		{st='Weapon_Projectile_Damage',			op='+',		mn=0.2,		mx=0.22},	-- 2, 	3
		{st='Weapon_Projectile_Rate',			op='+',					mx=-0.15}	-- 1.1	1.15
	},
	UP_CANNON		= {
		{st='Weapon_ChargedProjectile_ChargeTime',op='*',	mn=1.2,		mx=1.22}	-- 0.5	0.95
	},
	UP_RAIL			= {
		{st='Weapon_Laser_ChargeTime',			op='+',		mn=-0.1,	mx=-0.05}	-- 0.75	0.95
	},
	UP_GREN			= {
		{st='Weapon_Grenade_Bounce'}
	},
	UP_LASER		= {
		{st='Weapon_Laser_Damage',				mx=1},
		{st='Weapon_Laser_ReloadTime'}
	},
---	vehicle
	UP_EXGUN		= {
		{st='Vehicle_GunDamage',				op='*',					mx=2}, 		-- 30	40
		{st='Vehicle_GunRate'}
	},
	UP_EXOSUBGUN	= {
		{st='Vehicle_GunDamage',				op='*',					mx=2},		-- 30	40
		{st='Vehicle_GunRate'}
	},
	UP_MCGUN		= {
		{st='Vehicle_GunDamage',				op='*',					mx=2},		-- 30	40
		{st='Vehicle_GunRate'}
	},
	UP_MCENG		= {
		{st='Vehicle_EngineFuelUse',			op='+',		mn=0.1,		mx=0.2},
		{st='Vehicle_BoostTanks',				op='+',					mx=8}		-- 0.1	0.3
	},
---	ship
	UP_HYPERDRIVE	= {
		{st='Ship_Hyperdrive_JumpDistance',		op='*',		mn=2.2,		mx=2.4},
		{st='Ship_Hyperdrive_JumpsPerCell',		op='*',					mx=0.4}
	},
	AP_HYPERDRIVE	= {
		{st='Ship_Hyperdrive_JumpDistance',		op='*',		mn=2.2,		mx=2.4},
		{st='Ship_Hyperdrive_JumpsPerCell',		op='*',					mx=0.4}
	},
	AP_PULSEDRIVE	= {
		{st='Ship_Boost',						op='+',		mn=0.15,	mx=0.2},	-- 1.1	1.25
		{st='Ship_BoostManeuverability',		op='+',		mn=0.2,		mx=0.32},	-- 1.05	1.18
		{st='Ship_Maneuverability',				op='+',					mx=0.07}	-- 1.0065
	},
---	freighter
	UT_FR_HYP_NAME	= {
		{st='Freighter_Hyperdrive_JumpDistance',op='*',		mn=9,		mx=10},
		{st='Freighter_Hyperdrive_JumpsPerCell',op='*',		mn=0.35,	mx=0.4}
	},
}
local ECT = {{
	SKW			 = {},
	REPLACE_TYPE = 'All',
	SECTION_UP   = 1,
	REMOVE		 = 'Section'
}}
for id, stats in pairs(edit_stats) do
	for _,stat in ipairs(stats) do
		if stat.op then
			--- edit ---
			ECT[#ECT+1] = {
				REPLACE_TYPE		= 'All',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', id, 'StatsType', stat.st},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE	= {
					{'ValueMin', '@'..stat.op..(stat.mn and stat.mn or stat.mx)},
					{'ValueMax', '@'..stat.op..stat.mx}
				}
			}
		elseif stat.mx then
			--- add new ---
			ECT[#ECT+1] = {
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', id},
				PRECEDING_KEY_WORDS	= 'StatLevels',
				ADD 				= ToExml(ProcTechStatLevel(stat))
			}
		else
			--- remove ---
			ECT[1].SKW[#ECT[1].SKW + 1] = {'Name', id, 'StatsType', stat.st}
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY PROC TECH.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
