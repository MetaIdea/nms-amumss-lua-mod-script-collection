-- Rarity used when multiplying {C, B, A, S, X} in that order
-- CHANGE THESE VALUES
RANK_MULTIPLIERS = {1.1, 1.2, 1.3, 1.4, 1.5}



-- List of qualities
QUALITY = {"Normal","Rare","Epic","Legendary","Illegal"}

-- Values that range from ~0.05 and up
MOD_MULT = {"Suit_Energy","Suit_Armour_Shield_Strength","Ship_Armour_Shield_Strength","Vehicle_BoostSpeed","Suit_Stamina_Strength","Vehicle_BoostTanks","Vehicle_SubBoostSpeed"}

-- Flat values
MOD_FLAT = {"Weapon_Projectile_Damage","Weapon_Grenade_Damage","Weapon_Laser_Damage","Suit_Underwater","Suit_Protection_Radiation","Vehicle_GunDamage",
	"Suit_Protection_Toxic","Suit_Protection_Cold","Suit_Protection_Heat","Ship_Hyperdrive_JumpDistance","Ship_Weapons_Guns_Damage","Freighter_Hyperdrive_JumpDistance",
	"Vehicle_LaserDamage","Ship_Weapons_Lasers_Damage","Suit_Armour_Health","Weapon_Grenade_Bounce","Weapon_Scan_Discovery_Creature","Weapon_ChargedProjectile_ExtraSpeed",
	"Weapon_Grenade_Speed","Weapon_Projectile_ClipSize","Weapon_Scan_Discovery_Flora","Weapon_Projectile_BurstCap"}

-- Values that are ~0.99 and below
MOD_DIV = {"Weapon_Laser_Mining_Speed","Ship_PulseDrive_MiniJumpFuelSpending","Ship_Launcher_TakeOffCost","Vehicle_EngineFuelUse","Freighter_Fleet_Fuel","Suit_DamageReduce_Heat",
	"Suit_DamageReduce_Cold","Suit_DamageReduce_Radiation","Suit_DamageReduce_Toxic","Vehicle_GunHeatTime","Vehicle_GunRate","Vehicle_LaserHeatTime","Weapon_Laser_ChargeTime",
	"Weapon_Projectile_ReloadTime","Suit_Jetpack_Drain","Weapon_ChargedProjectile_ChargeTime","Weapon_Laser_ReloadTime","Weapon_Projectile_BurstCooldown"}

-- Valuesa that are 1.0 and up (NEEDS -1 for calculations)
MOD_COMP = {"Weapon_Scan_Radius","Suit_Protection_HeatDrain","Suit_Jetpack_Tank","Ship_Weapons_Lasers_HeatTime","Freighter_Fleet_Speed","Freighter_Fleet_Combat",
	"Freighter_Fleet_Trade","Freighter_Fleet_Explore","Freighter_Fleet_Mine","Ship_Boost","Ship_Weapons_Guns_Rate","Suit_Energy_Regen","Suit_Protection_ColdDrain",
	"Vehicle_EngineTopSpeed","Weapon_Grenade_Radius","Weapon_Laser_HeatTime","Weapon_Projectile_Rate","Ship_BoostManeuverability","Ship_Weapons_Guns_HeatTime",
	"Suit_Stamina_Recovery","Weapon_Laser_Drain","Ship_Maneuverability","Suit_Protection_ToxDrain","Suit_Jetpack_Refill","Suit_Jetpack_Ignition"}

local function multiplierTable(quality, stat, value)
	return {
		["SPECIAL_KEY_WORDS"] = {"Quality", quality,   "StatsType", stat},
		["REPLACE_TYPE"] = "ALL",
		["SECTION_UP"] = 1,
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["MATH_OPERATION"] = "*",
		["VALUE_CHANGE_TABLE"] = {	{"ValueMax", value}	}	
	}
end

-- The only way I could concieve doing a "semi" complex math (one that involved more than one arithemtic function)
-- To achieve yx -x + 1
local function compTable_mult(quality, stat, value)
	return {
		["SPECIAL_KEY_WORDS"] = {"Quality", quality,   "StatsType", stat},
		["REPLACE_TYPE"] = "ALL",
		["SECTION_UP"] = 1,
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["MATH_OPERATION"] = "*",
		["VALUE_CHANGE_TABLE"] = {	{"ValueMax", value}	}	
	}
end

local function compTable_sub(quality, stat, value)
	return {
		["SPECIAL_KEY_WORDS"] = {"Quality", quality,   "StatsType", stat},
		["REPLACE_TYPE"] = "ALL",
		["SECTION_UP"] = 1,
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["MATH_OPERATION"] = "-",
		["VALUE_CHANGE_TABLE"] = {	{"ValueMax", value}	}	
	}
end

local function compTable_add(quality, stat, value)
	return {
		["SPECIAL_KEY_WORDS"] = {"Quality", quality,   "StatsType", stat},
		["REPLACE_TYPE"] = "ALL",
		["SECTION_UP"] = 1,
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["MATH_OPERATION"] = "+",
		["VALUE_CHANGE_TABLE"] = {	{"ValueMax", value}	}	
	}
end

local function tableChanges()
	local OUTPUT = {}
	for qual_index, qual_value in ipairs(QUALITY) do
		-- MOD_MULT list
		for index, value in ipairs(MOD_MULT) do
			OUTPUT[#OUTPUT+1] = multiplierTable(qual_value, value, RANK_MULTIPLIERS[qual_index])
		end
		-- MOD_FLAT list
		for index, value in ipairs(MOD_FLAT) do
			OUTPUT[#OUTPUT+1] = multiplierTable(qual_value, value, RANK_MULTIPLIERS[qual_index])
		end
		-- MOD_DIV
		for index, value in ipairs(MOD_DIV) do
			OUTPUT[#OUTPUT+1] = compTable_mult(qual_value, value, RANK_MULTIPLIERS[qual_index])
			OUTPUT[#OUTPUT+1] = compTable_sub(qual_value, value, RANK_MULTIPLIERS[qual_index])
			OUTPUT[#OUTPUT+1] = compTable_add(qual_value, value, 1)
		end
		-- MOD_COMP
		for index, value in ipairs(MOD_COMP) do
			OUTPUT[#OUTPUT+1] = compTable_mult(qual_value, value, RANK_MULTIPLIERS[qual_index])
			OUTPUT[#OUTPUT+1] = compTable_sub(qual_value, value, RANK_MULTIPLIERS[qual_index])
			OUTPUT[#OUTPUT+1] = compTable_add(qual_value, value, 1)
		end
	end
	return OUTPUT
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	= "UpgradeD_power.pak",
["MOD_DESCRIPTION"]	= "Increases the peak power of some of the modules excluding Sentinel Modules and 1 or 2 specific ones (that were all at 1 I believe).",
["MOD_AUTHOR"]		= "Bean-Bon",
["NMS_VERSION"]		= "3.88",
["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = tableChanges()
				}
			}
		}
	}
}