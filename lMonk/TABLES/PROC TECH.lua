--------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
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
	{id='UP_JETBOOST',		st='Suit_Jetpack_Tank',					op='*',		mn=1.8,		mx=1.8},
	{id='UP_JETBOOST',		st='Suit_Jetpack_Drain',				op='+',		mn=-0.3,	mx=-0.3},
	{id='UP_JETBOOST',		st='Suit_Jetpack_Refill',				op='+',		mn=0.5,		mx=0.5},
	{id='UP_JETBOOST',		st='Suit_Jetpack_Ignition',				op='+',		mn=0.03,	mx=0.03},
	{id='UP_UNW', 			st='Suit_Protection_WaterDrain',		mn=0.1,		mx=0.2,		wc='MaxIsUncommon',	ac=true},
---	multitool
	{id='UP_SMG',			st='Weapon_Projectile_Damage',			op='+',		mn=0.2,		mx=0.2},	-- 2, 	3
	{id='UP_SMG',			st='Weapon_Projectile_Rate',			op='+',		mn=-0.15,	mx=-0.15},	-- 1.1	1.15
	{id='UP_CANNON', 		st='Weapon_ChargedProjectile_ChargeTime',op='*',	mn=1.2,		mx=1.2},	-- 0.5	0.95
	{id='UP_RAIL',			st='Weapon_Laser_ChargeTime',			op='+',		mn=-0.1,	mx=-0.05},	-- 0.75	0.95
	{id='UP_GREN',			st='Weapon_Grenade_Bounce'},
	{id='UP_LASER', 		st='Weapon_Laser_ReloadTime'},
	{id='UP_LASER', 		st='Weapon_Laser_Damage',				mn=1,		mx=1},
---	vehicle
	{id='UP_EXGUN',			st='Vehicle_GunDamage',					op='*',		mn=2,		mx=2}, 		-- 30	40
	{id='UP_EXGUN',			st='Vehicle_GunRate'},
	{id='UP_EXOSUBGUN',		st='Vehicle_GunDamage',					op='*',		mn=2,		mx=2},		-- 30	40
	{id='UP_EXOSUBGUN',		st='Vehicle_GunRate'},
	{id='UP_MCGUN',			st='Vehicle_GunDamage',					op='*',		mn=2,		mx=2},		-- 30	40
	{id='UP_MCGUN',			st='Vehicle_GunRate'},
	{id='UP_MCENG',			st='Vehicle_EngineFuelUse',				op='+',		mn=0.2,		mx=0.2},
	{id='UP_MCENG',			st='Vehicle_BoostTanks',				op='+',		mn=8,		mx=8},		-- 0.1	0.3
---	ship
	{id='UP_HYPERDRIVE',	st='Ship_Hyperdrive_JumpDistance',		op='*',		mn=2.4,		mx=2.4},
	{id='UP_HYPERDRIVE',	st='Ship_Hyperdrive_JumpsPerCell',		op='*',		mn=0.4,		mx=0.4},
	{id='AP_HYPERDRIVE',	st='Ship_Hyperdrive_JumpDistance',		op='*',		mn=2.4,		mx=2.4},
	{id='AP_HYPERDRIVE',	st='Ship_Hyperdrive_JumpsPerCell',		op='*',		mn=0.4,		mx=0.4},
	{id='AP_PULSEDRIVE', 	st='Ship_Boost',						op='+',		mn=0.15,	mx=0.2},	-- 1.1	1.25
	{id='AP_PULSEDRIVE', 	st='Ship_BoostManeuverability',			op='+',		mn=0.2,		mx=0.32},	-- 1.05	1.18
	{id='AP_PULSEDRIVE', 	st='Ship_Maneuverability',				op='+',		mn=0.07,	mx=0.07},	-- 1.0065
---	freighter
	{id='UT_FR_HYP_NAME',	st='Freighter_Hyperdrive_JumpDistance',	op='*',		mn=10,		mx=10},
	{id='UT_FR_HYP_NAME',	st='Freighter_Hyperdrive_JumpsPerCell',	op='*',		mn=0.4,		mx=0.4}
}
local ECT = {{
	SKW			 = {},
	REPLACE_TYPE = 'All',
	SECTION_UP   = 1,
	REMOVE		 = 'Section'
}}
for _,tch in ipairs(edit_stats) do
	if tch.op then
		--- edit ---
		ECT[#ECT+1] = {
			REPLACE_TYPE		= 'All',
			INTEGER_TO_FLOAT	= 'Force',
			SPECIAL_KEY_WORDS	= {'Name', tch.id, 'StatsType', tch.st},
			SECTION_UP			= 1,
			VALUE_CHANGE_TABLE	= {
				{'ValueMin', '@'..tch.op..tch.mn},
				{'ValueMax', '@'..tch.op..tch.mx}
			}
		}
	elseif tch.mn then
		--- add new ---
		ECT[#ECT+1] = {
			REPLACE_TYPE		= 'All',
			SPECIAL_KEY_WORDS	= {'Name', tch.id},
			PRECEDING_KEY_WORDS	= 'StatLevels',
			ADD 				= ToExml(ProcTechStatLevel(tch))
		}
	else
		--- remove ---
		ECT[1].SKW[#ECT[1].SKW + 1] = {'Name', tch.id, 'StatsType', tch.st}
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE PROC TECH.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
