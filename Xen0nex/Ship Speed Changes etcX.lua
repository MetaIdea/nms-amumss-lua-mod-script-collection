-----------------------------------------------------------------------------
local desc = [[
  Changes to various aspects of starship speeds and charging.
  Includes improvements to Living Ships and related quest timers from "Living Ship Upgrades" by lMonk
]]---------------------------------------------------------------------------

--These changes originally by lMonk
ShipTeleportMult = 7.5									--1			a value of 7.5 expands the range to ~= 750u range	
TelportAndScannerStatus = 'AllShips'					--'Ship'	determines if only metallic ships or also Living Ships can install Ship Teleport and the Economy/Combat Scanners
LivingShipQuestTimers = 14400							--79200 seconds = 22 hours in vanilla

	--These sections includes additions by Xen0nex
--Multipliers to apply to the base attributes of all ships
EngSpdMult = 0.667										--	Multiplier to apply to the base speed for all starship Pulse Engines (or lIving Ship equivalent)
EngManMult = 1											--	Multiplier to apply to the base Maneuverability for all starship Pulse Engines (or lIving Ship equivalent)
--BaseShieldStrength = 0.65								--0.65 	(NOTE: Changing this value seems to cause issues, negative shield values displayed in UI, etc.)	The base Ship_Armour_Shield_Strength for all starship default Shields (0.65 by default, results in 165 core shields without any bonuses)

--Multipliers for specific ship tech / upgrade modules
--RechargeTechRate = 0.5									--1				From the special purchasable Tech		(default rate is 14sec per 1% recharged)	Changing these values doesn't affect the charge rate
--RechargeLivingModuleRate = 0.5							--1				From S Class Living Ship Launcher upgrade Module
--RechargeSolarRate = 1									--1				On all Solar ships

LnchModSpdMult = 0.333										--	Multiplier to apply to the bonus boost speed from regular ship Launcher upgrade modules
LnchModLSSpdMult = 0.3999									--	Multiplier to apply to the bonus boost speed from Living ship Launcher upgrade modules	(By default this mod gives Living ship Launcher modules the same boost speed bonus that regular ship Launcher modules have, instead of no speed boost)

EngModSpdMult = 0.333										--	Multiplier to apply to the bonus boost speed from regular ship Pulse Engine upgrade modules (And also the Photonix Core and the Ship Trails / bobblehead bonuses)
EngModLSSpdMult = 0.3999										--	Multiplier to apply to the bonus boost speed from Living ship Pulse Engine upgrade modules

ShieldModMult = 1										--	Multiplier to apply to the bonus shield from regular ship Shield upgrade modules	NOTE, the game increases this by 50%
ShieldLSModMult = 1										--	Multiplier to apply to the bonus shield from Living ship Shield upgrade modules	NOTE, the game increases this by 50%

--Changes to using items to recharge starship tech
ShipLaunchRechargeMult = 2								--	Multiplier to apply to the cost of Uranium on recharging ship launchers					40 to fully charge
LivingShipLaunchRechargeMult = 0.75						--	Multiplier to apply to the cost of Mordite / Oxygen on recharging Living ship launchers	200 / 200 to fully charge
ShipPulseRechargeMult = 1.25							--	Multiplier to apply to the cost of Tritium / Pyrite on recharging ship Pulse engine		100 / 40 to fully charge
LivingShipPulseRechargeMult = 1							--	Multiplier to apply to the cost of Silver / Gold on recharging Living ship Pulse engine	200 / 100 to fully charge
LivingShipWarpRechargeMult = 1.5						--	Multiplier to apply to the cost of Chromatic Metal on recharging Living ship Hyperdive		60 to fully charge

ShipShieldRechargeMult = 2								--	Multiplier to apply to the cost of Sodium / Sodium Nitrate on recharging ship shields		100 / 40 to fully charge
LivingShipShieldRechargeMult = 0.75						--	Multiplier to apply to the cost of Pugneum on recharging Living ship shields				200 to fully charge

StarshieldBattMult = 2									--	Multiplier to apply to the effectiveness of Starshield Battery. In vanilla it only refills half of your starship's shield
LivingShipUseBatt = true								--	Allows Living Ships to use Starshield Batteries to recharge shields in addition to Pugneum

--Multipliers to apply to the "Approximate Location" distance for missions in the "Starbith" mission line.
DistanceMultLong = 4									--Multiplier to apply to distances greater than 650
DistanceMultShort = 10									--Multiplier to apply to distances 650 or lower

--Replacers for attributes of all ships be adjusting specific pre-installed tech, or otehr tech adjustments
ShipTechChanges =
{
	{
		{
			"SHIPJUMP1"				--Regular ship starting Pulse Engine
		},
		{
			{
				"Ship_Boost",						60*EngSpdMult					--100
			},
			{
				"Ship_Maneuverability",				1*EngManMult					--1
			},
			--[[{
				"Ship_BoostManeuverability",		1								--1
			},]]
			{
				"Ship_PulseDrive_MiniJumpSpeed",	1								--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		1						--1
			}
		}
	},
	{
		{
			"SHIPJUMP_ALIEN"		--Living Ship starting Pulse Engine
		},
		{
			{
				"Ship_Boost",						72*EngSpdMult					--100
			},
			{
				"Ship_Maneuverability",				1.25*EngManMult					--1
			},
			--[[{
				"Ship_BoostManeuverability",		1								--1
			},]]
			{
				"Ship_PulseDrive_MiniJumpSpeed",	1								--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		1						--1
			}
		}
	},
	{
		{
			"SHIPJUMP_SPEC"			--Special Pulse Engine, perhaps an expedition reward?
		},
		{
			{
				"Ship_Boost",						72*EngSpdMult					--120
			},
			{
				"Ship_Maneuverability",				1.1*EngManMult					--1.1
			},
			{
				"Ship_BoostManeuverability",		1.25							--1.25
			},
			{
				"Ship_PulseDrive_MiniJumpSpeed",	1								--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		1						--1
			},
			{
				"Ship_Maneuverability",				1.005*EngManMult				--1.005		Duplicate stat as a mistake, perhaps???
			},
		}
	},
	{
		{
			"SOLAR_SAIL"			--Solar ship unique starting tech, should apply as multipliers to the base regular Ship engine stats
		},
		{
			{
				"Ship_Boost",						1.15							--1.15
			},
			{
				"Ship_Maneuverability",				0.75							--1
			},
			{
				"Ship_BoostManeuverability",		1.05							--1.1
			},
			{
				"Ship_PulseDrive_MiniJumpSpeed",	1.15							--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		0.4						--0.2
			}
		}
	},
	--[[{
		{
			"SHIPSHIELD"			--Regular ship default shield
		},
		{
			{
				"Ship_Armour_Shield_Strength",		BaseShieldStrength				--0.65
			},
		}
	},
	{
		{
			"SHIELD_ALIEN"			--Living Ship default shield
		},
		{
			{
				"Ship_Armour_Shield_Strength",		BaseShieldStrength				--0.65
			},
		}
	},]]
}


--Nothing below this line should need to be edited; all changes should be possible with the values above

function Invert (value)
    return
    1/value
end
--For multiplying the bonuses on existing tech / upgrades of values such as 1.1, etc.
function BonusMult (base, mult)
    return
    (base-1)*mult+1
end

--E.G.	Ship_Maneuverability	Ship_BoostManeuverability	Ship_PulseDrive_MiniJumpSpeed
function AddedStat (StatsType)
    return
[[<Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="]]..StatsType..[[" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="1" />
        </Property>]]
end

--S Class (1.08, 1.1)		A Class (1.05, 1.08)		B Class (1.02, 1.05)		C Class (1.01, 1.01)
function LauncherClassSpeed (ValueMin, ValueMax)
    return
[[<Property value="GcProceduralTechnologyStatLevel.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Boost" />
          </Property>
          <Property name="ValueMin" value="]]..ValueMin..[[" />
          <Property name="ValueMax" value="]]..ValueMax..[[" />
          <Property name="WeightingCurve" value="GcWeightingCurve.xml">
            <Property name="WeightingCurve" value="MaxIsUncommon" />
          </Property>
          <Property name="AlwaysChoose" value="False" />
        </Property>]]
end

AddStarShieldBatt =
[[<Property value="NMSString0x10.xml">
          <Property name="Value" value="SHIPCHARGE" />
        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'Starship Speed Changes etcX.pak',
	MOD_AUTHOR			= 'Xen0nex and lMonk',		--Edited by Xen0nex
	NMS_VERSION			= '3.87',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT'},
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',			ShipTeleportMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', TelportAndScannerStatus}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_COMBAT', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', TelportAndScannerStatus}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_ECON', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', TelportAndScannerStatus}
				}
			},
			--The following sections added by Xen0nex
			--[[{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPJUMP_ALIEN'},			--Living ship unique tech
				PRECEDING_KEY_WORDS = 'GcStatsBonus.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				Add = AddedStat ("Ship_BoostManeuverability")
			},]]
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SOLAR_SAIL'},				--Solar ship unique tech
				PRECEDING_KEY_WORDS = 'GcStatsBonus.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				ADD = AddedStat ("Ship_Maneuverability")
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SOLAR_SAIL'},				--Solar ship unique tech
				PRECEDING_KEY_WORDS = 'GcStatsBonus.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				ADD = AddedStat ("Ship_PulseDrive_MiniJumpSpeed")
			},
			--[[{
				SPECIAL_KEY_WORDS	= {"ID", "UT_LAUNCHCHARGE", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', RechargeTechRate}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SOLAR_SAIL", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', RechargeSolarRate}
				}
			},]]
			{
				SPECIAL_KEY_WORDS	= {"ID", "LAUNCHER"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (ShipLaunchRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "LAUNCHER_ALIEN"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (LivingShipLaunchRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SHIPJUMP1"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (ShipPulseRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SHIPJUMP_ALIEN"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (LivingShipPulseRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "WARP_ALIEN"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (LivingShipWarpRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SHIPSHIELD"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (ShipShieldRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SHIELD_ALIEN"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (LivingShipShieldRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "PHOTONIX_CORE", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.15, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_BOBBLE_ART", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.05, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_RAINBOW", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_DARK", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_RED", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_GREEN", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_GOLD", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_PIRATE", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				SPECIAL_KEY_WORDS	= {"Id", "LAUNCHFUEL"},
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeValue', ShipLaunchRechargeMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"Id", "SHIPCHARGE"},
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeValue', StarshieldBattMult*ShipShieldRechargeMult}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			--Intentionally left blank to be filled by the function below
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			--[[{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN4", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', RechargeLivingModuleRate},
					{'ValueMax', RechargeLivingModuleRate},
				}
			},]]
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN1'},
				PRECEDING_KEY_WORDS = 'GcStatsTypes.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				ADD = LauncherClassSpeed(1.01, 1.01)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN2'},
				PRECEDING_KEY_WORDS = 'GcStatsTypes.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				ADD = LauncherClassSpeed(1.02, 1.05)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN3'},
				PRECEDING_KEY_WORDS = 'GcStatsTypes.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				ADD = LauncherClassSpeed(1.05, 1.08)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN4'},
				PRECEDING_KEY_WORDS = 'GcStatsTypes.xml',
				REPLACE_TYPE = 'ADDAFTERSECTION',
				ADD = LauncherClassSpeed(1.08, 1.1)
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN4"},
				MATH_OPERATION 		= '',
				VALUE_CHANGE_TABLE 	= {
					{'NumStatsMin', 3},
					{'NumStatsMax', 3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN1", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.01, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN2", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.02, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.05, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN3", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.08, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN4", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.08, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.1, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUNX", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.1, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN1", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.01, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN2", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.02, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.05, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN3", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.08, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN4", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.08, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.1, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE1", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModSpdMult)},
					{'ValueMax', BonusMult (1.05, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE2", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, EngModSpdMult)},
					{'ValueMax', BonusMult (1.1, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE3", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, EngModSpdMult)},
					{'ValueMax', BonusMult (1.15, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE4", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModSpdMult)},
					{'ValueMax', BonusMult (1.15, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSEX", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModSpdMult)},
					{'ValueMax', BonusMult (1.2, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE1", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.05, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE2", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.1, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE3", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.15, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE4", "StatsType", "Ship_Boost"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.15, EngModLSSpdMult)}
				}
			},
			
			--ShieldModMult
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL1", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldModMult},
					{'ValueMax', 0.1*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL2", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldModMult},
					{'ValueMax', 0.1*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL3", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.1*ShieldModMult},
					{'ValueMax', 0.2*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL4", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.2*ShieldModMult},
					{'ValueMax', 0.2*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHLX", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldModMult},
					{'ValueMax', 0.25*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL1", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldLSModMult},
					{'ValueMax', 0.1*ShieldLSModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL2", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldLSModMult},
					{'ValueMax', 0.1*ShieldLSModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL3", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.1*ShieldLSModMult},
					{'ValueMax', 0.2*ShieldLSModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL4", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.2*ShieldLSModMult},
					{'ValueMax', 0.2*ShieldLSModMult}
				}
			},
		}
	},
	--Living Ship Speed and Maneuverability now handled by ShipTechChanges above
	--[[{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_Boost'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.08},	-- 1.1		(0.1)
					{'ValueMax',		0.08}	-- 1.15		(0.1)
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_BoostManeuverability'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.1},	-- 1.05		(0.12)
					{'ValueMax',		0.08}	-- 1.12		(0.1)
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_Maneuverability'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.034},	-- 1.005		(0.044)
					{'ValueMax',		0.035} 	-- 1.005		(0.045)
				}
			}
		}
	},]]
	{
		MBIN_FILE_SOURCE	= 'METADATA/\SIMULATION/\MISSIONS/SPACEPOIMISSIONTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '',
				VALUE_MATCH 		= '79200',
				VALUE_MATCH_OPTIONS = '=',
				REPLACE_TYPE 		= 'ALL',	
				VALUE_CHANGE_TABLE 	= {
					{'Time',			LivingShipQuestTimers}
				}
			},
			{
				REPLACE_TYPE = 'ALL',
				MATH_OPERATION 		= '*',
				VALUE_MATCH 	= '650',
				VALUE_MATCH_OPTIONS = '>',
				VALUE_CHANGE_TABLE 	=
				{
					{'SurveyDistance', DistanceMultLong}
				}
			},
			{
				REPLACE_TYPE = 'ALL',
				MATH_OPERATION 		= '*',
				VALUE_MATCH 	= '650',
				VALUE_MATCH_OPTIONS = '<=',
				VALUE_CHANGE_TABLE 	=
				{
					{'SurveyDistance', DistanceMultShort}
				}
			},
		}
	},
}}}}

local ChangesToShipTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #ShipTechChanges do
	local TechID = ShipTechChanges[i][1][1]
	local Stats = ShipTechChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatRep = Stats[j][2]

			ChangesToShipTech[#ChangesToShipTech+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", TechID, "StatsType", StatID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Bonus", StatRep}
				}
			}
	end
end
if LivingShipUseBatt then
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "SHIELD_ALIEN"},
				["PRECEDING_KEY_WORDS"] = {"ChargeBy",		"NMSString0x10.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddStarShieldBatt
			}
end