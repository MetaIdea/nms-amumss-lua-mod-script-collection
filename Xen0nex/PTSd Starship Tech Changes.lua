-----------------------------------------------------------------------------
ModName = 'PTSd Starship Tech Changes'
ModAuthor = 'Xen0nex and lMonk'		--Edited by Xen0nex
Version = '6_04'
local desc = [[
  Changes to various aspects of starship speeds and charging.
  Includes improvements to Living Ships and related quest timers from "Living Ship Upgrades" by lMonk
]]---------------------------------------------------------------------------

--These changes originally by lMonk
ShipTeleportDist = 750.000000							--100.000000			a value of 750 expands the range to ~800u range	
TeleportAndScannerStatus = 'AllShips'					--'AllShipsExceptAlien'	determines if only metallic ships or also Living Ships & Sentinel Interceptors can install Ship Teleport ( Economy/Combat Scanners no longer needed as Living ships now have a dedicated upgrade for those)
LivingShipQuestTimers = 28800							--79200 seconds = 22 hours in vanilla

	--These sections includes additions by Xen0nex
LivingShipTeleportDist = 765.000000						--300.000000			For the Grasping Tendrils Living Ship tech. Stacks additively with Teleport Receiver if both are installed
--Multipliers to apply to the base attributes of all ships
EngSpdMult = 0.667										--	Multiplier to apply to the base speed for all starship Pulse Engines (or Living Ship equivalent)
EngManMult = 1											--	Multiplier to apply to the base Maneuverability for all starship Pulse Engines (or lIving Ship equivalent)
--BaseShieldStrength = 0.65								--0.65 	(NOTE: Changing this value seems to cause issues, negative shield values displayed in UI, etc.)	The base Ship_Armour_Shield_Strength for all starship default Shields (0.65 by default, results in 165 core shields without any bonuses)

--Multipliers for specific ship tech / upgrade modules
--RechargeTechRate = 0.5									--1				From the special purchasable Tech		(default rate is 14sec per 1% recharged)	Changing these values doesn't affect the charge rate
--RechargeLivingModuleRate = 0.5							--1				From S Class Living Ship Launcher upgrade Module
--RechargeSolarRate = 1									--1				On all Solar ships

LnchModSpdMult = 0.333*0.5								--	Multiplier to apply to the bonus boost speed from regular ship Launcher upgrade modules
LnchModLSSpdMult = 0.333*0.5*1.2						--	Multiplier to apply to the bonus boost speed from Living ship Launcher upgrade modules	(By default this mod gives Living ship Launcher modules the same boost speed bonus that regular ship Launcher modules have, instead of no speed boost)

LnchModCstMult = 0.75									--	Multiplier to apply to the launch cost discount from regular ship Launcher upgrade modules (Not the Efficient Thrusters tech)
LnchModLSCstMult = 0.75									--	Multiplier to apply to the launch cost discount from Living ship Launcher upgrade modules

EngModSpdMult = 0.333*0.5								--	Multiplier to apply to the bonus boost speed from regular ship Pulse Engine upgrade modules (And also the Photonix Core and the bobblehead bonus)
EngModLSSpdMult = 0.333*0.5*1.2							--	Multiplier to apply to the bonus boost speed from Living ship Pulse Engine upgrade modules

EngModPEffMult = 0.5									--	Multiplier to apply to the pulse jump fuel discount from regular ship Pulse Engine upgrade modules
EngModLSPEffMult = 0.5									--	Multiplier to apply to the pulse jump fuel discount from Living ship Pulse Engine upgrade modules

EngModManMult = 0.5										--	Multiplier to apply to the bonus maneuverability from regular ship Pulse Engine upgrade modules 
EngModLSManMult = 0.5									--	Multiplier to apply to the bonus maneuverability from Living ship Pulse Engine upgrade modules

EngModBstManMult = 0.25									--	Multiplier to apply to the bonus boost maneuverability from regular ship Pulse Engine upgrade modules 
EngModLSBstManMult = 0.25								--	Multiplier to apply to the bonus boost maneuverability from Living ship Pulse Engine upgrade modules

ShieldModMult = 1										--	Multiplier to apply to the bonus shield from regular ship Shield upgrade modules	NOTE, the game increases this by 50%
ShieldLSModMult = 1										--	Multiplier to apply to the bonus shield from Living ship Shield upgrade modules	NOTE, the game increases this by 50%

AblativeArmourMult = 2.668								--	Multiplier to apply to the bonus shield from the crafted Ablative Armour tech (vanilla 0.05)	NOTE, the game increases this by 50%

--Multipliers for the Pulse Jump Speed of various types of starship engines
SublightBonus = 1.25									--1.3		Changes the bonus Pulse Jump speed for Sub-Light Amplifier, since it is greatly increased when supercharged.
LivingPulseBonus = 1.2									--1			Changes the bonus Pulse Jump speed for Living Ship's Pulsing Heart, since they cannot install Sub-Light Amplifier.
SolarPulseBonus = 1.5									--1			Changes the bonus Pulse Jump speed for Solar Ships's Vesper Sail
RoboPulseBonus = 1.2									--1.1		Changes the bonus Pulse Jump speed for Interceptor engine (only applies if RemoveRoboJumpSpeed is set to false)

--Changes the bonus for Starship Trail techs
TrailStat = "Ship_Hyperdrive_JumpDistance"				--"Ship_Boost"
TrailBonus = 10											--1.01

--Removes all Maneuverability stats from the Vesper Sail tech so it no longer provides Maneuverability adjacency/supercharge bonuses
RemoveVesperManeuver = true								--false

--Removes the Auto-Recharging effect from the Vesper Sail tech, replaces it with a -34% Takeoff discount like Shuttles
RemoveVesperAutoCharge = true							--false

--Set to true to remove the Auto-Recharging effect for Living Ship S-Class Launcher upgrade modules (Living Ships now have a dedicated tech for that)
RemoveLivingAutoCharge = true							--false

--Changes to using items to recharge starship tech
ShipLaunchRechargeMult = 6								--	Multiplier to apply to the cost of Uranium on recharging ship launchers										40 to fully charge
LivingShipLaunchRechargeMult = 1.5						--	Multiplier to apply to the cost of Mordite / Oxygen / Cond. Carbon on recharging Living ship launchers		200 / 100 / 67 to fully charge
ShipPulseRechargeMult = 2.5								--	Multiplier to apply to the cost of Tritium / Pyrite on recharging ship Pulse engine							200 / 40 to fully charge
LivingShipPulseRechargeMult = 2							--	Multiplier to apply to the cost of Silver / Carbon / Viscous Fluids on recharging Living ship Pulse engine	200 / 200 / 200 to fully charge
InterceptorPulseRechargeMult = 2.5						--	Multiplier to apply to the cost of Tritium on recharging Interceptor Pulse engine							200 to fully charge
LivingShipWarpRechargeMult = 2							--	Multiplier to apply to the cost of Chromatic Metal / Processed Meat / Living Slime on recharging Living ship Hyperdive		60 / ??? / 120 to fully charge
ShipShieldRechargeMult = 1.5							--	Multiplier to apply to the cost of Sodium / Sodium Nitrate on recharging ship shields						100 / 40 to fully charge
LivingShipShieldRechargeMult = 0.75						--	Multiplier to apply to the cost of Pugneum / Mordite / Di-Hydrogen recharging Living ship shields			200 / 200 / 200 to fully charge
InterceptorShieldRechargeMult = 1.5						--	Multiplier to apply to the cost of Sodium / Sodium Nitrate on recharging Interceptor shields				100 / 40 to fully charge

TritiumChargeValue =2									--1		Replacer for much "charge" each unit of Tritium restores for starship Pulse engine							(vanilla needs 200 to fully recharge)
PyriteChargeValue =	1									--5		Replacer for much "charge" each unit of Pyrite restores for starship Pulse engine							(vanilla needs 40 to fully recharge)
MorditeChargeValue =2									--1		Replacer for much "charge" each unit of Mordite restores for Living Ship launchers and shields				(vanilla needs 200 to fully recharge either)
PugneumChargeValue =2									--1		Replacer for much "charge" each unit of Pugneum restores for Living Ship shields and Interceptor launchers	(vanilla needs 200 to fully recharge either)
DiHydrogenChargeValue =	2								--1		Replacer for much "charge" each unit of Di-Hydrogen restores for Living Ship shields and Animus Beam		(vanilla needs 200 to fully recharge either)
ChromaticMetalChargeValue =	2							--2		Replacer for much "charge" each unit of Chromatic Metal restores for Living Ship hyperdrive					(vanilla needs 60 to fully recharge)
SilverChargeValue =			2							--1		Replacer for much "charge" each unit of Silver restores for Living Ship pulse drive							(vanilla needs 200 to fully recharge)
ViscousFluidsChargeValue =	2							--1		Replacer for much "charge" each unit of Viscous Fluids restores for Living Ship pulse drive					(vanilla needs 200 to fully recharge)
ProcessedMeatChargeValue =	3							--0		Replacer for much "charge" each unit of Processed Meat restores for Living Ship hyperdrive					(vanilla needs ??? to fully recharge)

StarshieldBattMult = 2									--	Multiplier to apply to the effectiveness of Starshield Battery. In vanilla it only refills half of your starship's shield
RadiantShardMult = 1.5									--	Multiplier to apply to the effectiveness of Radiant Shard on all Interceptor techs. In vanilla it restores 200 charge.
LivingShipUseBatt = true								--false		Allows Living Ships to use Starshield Batteries to recharge shields in addition to Pugneum / Mordite / Di-Hydrogen
RoboUseBattNotSodium = true								--false		Allows Sentinel Interceptors to use Starshield Batteries to recharge shields INSTEAD OF Sodium

--Price to buy an additional Living Ship aftering completing the Starbirth missionline
LivingNanitePrice = 8000								--10000

--Sets the Consciousness Bridge item used at the start of the Living Ship Starbirth mission to require Emeril instead of Pugneum
ConBridgeSubstance = "GREEN2"							--"ROBOT1"

--Multipliers to apply to the "Approximate Location" distance for missions in the "Starbith" mission line.
DistanceMultLong = 4									--Multiplier to apply to distances greater than 650
DistanceMultShort = 10									--Multiplier to apply to distances 650 or lower

--Changes for procedural Hyperdrive upgrade modules
HyperEffBonusMin = 0.5									--1		Minimum efficiency bonus for A, S, X Class Hyperdrive upgrade modules for all starships & freighters (also affects any relevant Corvette modules). Vanilla value of 1 = 100% more efficient (double)
HyperEffBonusMax = 0.5									--1		Maximum efficiency bonus for A, S, X Class Hyperdrive upgrade modules for all starships & freighters (also affects any relevant Corvette modules). Vanilla value of 1 = 100% more efficient (double)
HyperDistBonusMult = 1.1								--1		Multiplier to apply to the strength of the distance bonus on all starships & freighters hyperdrive upgrades (also affects any relevant Corvette modules)

--Changes some attributes of the special tech that Sentinel Interceptors start with
RemoveRoboAutoCharge = true								--false		Set to true to remove the Sentinel Interceptor's innate Launch Thruster autocharge ability
RemoveRoboJumpSpeed = false								--false		Set to true to remove the Sentinel Interceptor's bonus to Pulse Jump speed so it no longer provides adjacency/supercharge bonuses
RoboJumpDist = 600										--600		How many lightyears the Sentinel Interceptor can jump at base level	(Other ships = 100)
RoboWarpsPerCell = 1									--2			How many times the Sentinel Interceptor can warp from the fuel in a single Warp Cell (24 units of fuel per cell, fuel tank size is 120) (Other ships = 1, IE they use 24 units of fuel, or 20% of a full hyperdrive tank per warp) 
RoboWarpTankSize = 48									--120		How much fuel the Crimson Core can hold when full. By default each warp consumes 24 units of fuel, so the default tank holds enough for 5 warps
RoboPulseTankSize = 80									--200		How much fuel the Luminence Engine can hold when full. 

--Replacers for attributes of all ships be adjusting specific pre-installed tech, or other tech adjustments
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
				"Ship_BoostManeuverability",		1								-- N/A
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
			"SHIPJUMP_ALIEN"		--Living Ship Pulse Engine equivalent
		},
		{
			{
				"Ship_Boost",						72*EngSpdMult					--100
			},
			{
				"Ship_Maneuverability",				1*EngManMult					--1
			},
			--[[{
				"Ship_BoostManeuverability",		1								-- N/A
			},]]
			{
				"Ship_PulseDrive_MiniJumpSpeed",	LivingPulseBonus				--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		1						--1
			}
		}
	},
	{
		{
			"SHIPJUMP_SPEC"			--Waveform Engine
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
				"Ship_Boost",						0.85							--1.15
			},
			{
				"Ship_Maneuverability",				1								--1
			},
			{
				"Ship_BoostManeuverability",		1								--1.1
			},
			{
				"Ship_PulseDrive_MiniJumpSpeed",	SolarPulseBonus					--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		0.75					--0.2
			}
		}
	},
	{
		{
			"UT_PULSESPEED"			--Sub-Light Amplifier, increases Pulse Jump speed
		},
		{
			{
				"Ship_PulseDrive_MiniJumpSpeed",	SublightBonus					--1.3
			},
		}
	},
	{
		{
			"SHIPJUMP_ROBO"			--Sentinel Interceptor Pulse Engine equivalent			(PTSd gives it its own custom engine speed & handling in "PTSd Starship Speed Rebalance.lua")
		},
		{
			{
				"Ship_Boost",						60*EngSpdMult					--120
			},
			{
				"Ship_Maneuverability",				1*EngManMult					--1
			},
			{
				"Ship_BoostManeuverability",		1.25							--1.5
			},
			{
				"Ship_PulseDrive_MiniJumpSpeed",	RoboPulseBonus					--1.1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		0.9						--1
			}
		}
	},
	{
		{
			"HYPERDRIVE_ROBO"			--Sentinel Interceptor Hyperdrive equivalent
		},
		{
			{
				"Ship_Hyperdrive_JumpDistance",		RoboJumpDist					--600		(Other ships 100)
			},
			{
				"Ship_Hyperdrive_JumpsPerCell",		RoboWarpsPerCell				--2			(Other ships 1)
			},
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
[[<Property name="StatBonuses" value="GcStatsBonus">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="]]..StatsType..[[" />
          </Property>
          <Property name="Bonus" value="1.000000" />
          <Property name="Level" value="1" />
        </Property>]]
end

--S Class (1.08, 1.1)		A Class (1.05, 1.08)		B Class (1.02, 1.05)		C Class (1.01, 1.01)
function LauncherClassSpeed (ValueMin, ValueMax)
    return
[[<Property name="StatLevels" value="GcProceduralTechnologyStatLevel">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Ship_Boost" />
          </Property>
          <Property name="ValueMin" value="]]..ValueMin..[[" />
          <Property name="ValueMax" value="]]..ValueMax..[[" />
          <Property name="WeightingCurve" value="GcWeightingCurve">
            <Property name="WeightingCurve" value="MaxIsUncommon" />
          </Property>
          <Property name="AlwaysChoose" value="false" />
        </Property>]]
end

AddLaunchDiscount =
[[<Property name="StatBonuses" value="GcStatsBonus">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Ship_Launcher_TakeOffCost" />
          </Property>
          <Property name="Bonus" value="0.750000" />
          <Property name="Level" value="2" />
        </Property>]]

AddStarShieldBatt =
[[<Property name="ChargeBy" value="SHIPCHARGE" />]]

ShipTrailTechs =
{"T_SHIP_DARK", "T_SHIP_GOLD", "T_SHIP_GREEN", "T_SHIP_PIRATE", "T_SHIP_RAINBOW", "T_SHIP_RED", "T_SHIP_ROGUE", "T_SHIP_PLASMA"}

ShipLaunchMods =
{"UP_LAUN0", "UP_LAUN1", "UP_LAUN2", "UP_LAUN3", "UP_LAUN4", "UP_LAUNX"}

LivingShipLaunchMods =
{"UA_LAUN1", "UA_LAUN2", "UA_LAUN3", "UA_LAUN4"}

ShipPulseMods =
{"UP_PULSE0", "UP_PULSE1", "UP_PULSE2", "UP_PULSE3", "UP_PULSE4", "UP_PULSEX"}

LivingShipPulseMods =
{"UA_PULSE1", "UA_PULSE2", "UA_PULSE3", "UA_PULSE4"}

HyperdriveDistUpgrades =
{"UP_HYP1", "UP_HYP2", "UP_HYP3", "UP_HYP4", "UP_HYPX", "UP_HYP0", "UA_HYP1", "UA_HYP2", "UA_HYP3", "UA_HYP4",}

FreiHyperdriveDistUpgrades =
{"UP_FRHYP1", "UP_FRHYP2", "UP_FRHYP3", "UP_FRHYP4",}

HyperdriveEffUpgrades =
{"UP_HYP3", "UP_HYP4", "UP_HYPX", "UA_HYP3", "UA_HYP4",}

FreiHyperdriveEffUpgrades =
{"UP_FRHYP3", "UP_FRHYP4",}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= ModName..Version..".pak",
	MOD_AUTHOR			= ModAuthor,
	NMS_VERSION			= Version,
	["EXML_CREATE"] = "FALSE",
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT'},
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',			ShipTeleportDist}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT', 'TechnologyCategory', 'AllShipsExceptAlien'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', TeleportAndScannerStatus}
				}
			},
			--[[
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_COMBAT', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', TeleportAndScannerStatus}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_ECON', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', TeleportAndScannerStatus}
				}
			},
			]]
			--The following sections added by Xen0nex
			{
				SPECIAL_KEY_WORDS	= {'ID', 'TELEPORT_ALIEN'},
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',			LivingShipTeleportDist}
				}
			},
			--[[{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPJUMP_ALIEN',		'StatBonuses', 'GcStatsBonus'},			--Living ship unique tech
				ADD_OPTION  = 'ADDafterSECTION',
				Add = AddedStat ("Ship_BoostManeuverability")
			},]]
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SOLAR_SAIL',		'StatBonuses', 'GcStatsBonus'},				--Solar ship unique tech
				ADD_OPTION  = 'ADDafterSECTION',
				ADD = AddedStat ("Ship_Maneuverability")
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SOLAR_SAIL',		'StatBonuses', 'GcStatsBonus'},				--Solar ship unique tech
				ADD_OPTION  = 'ADDafterSECTION',
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
				SPECIAL_KEY_WORDS	= {"ID", "LAUNCHER_SPEC"},
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
				SPECIAL_KEY_WORDS	= {"ID", "SHIPJUMP_SPEC"},
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
				SPECIAL_KEY_WORDS	= {"ID", "SHIPJUMP_ROBO"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (InterceptorPulseRechargeMult)}
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
				SPECIAL_KEY_WORDS	= {"ID", "SHIPSHIELD_ROBO"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeMultiplier', Invert (InterceptorShieldRechargeMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "PHOTONIX_CORE", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.15, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_BOBBLE_ART", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.05, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "HYPERDRIVE_ROBO"},
				VALUE_CHANGE_TABLE 	= {
					{'ChargeAmount', RoboWarpTankSize}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SHIPJUMP_ROBO"},
				VALUE_CHANGE_TABLE 	= {
					{'ChargeAmount', RoboPulseTankSize}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UT_SHIPSHIELD", "StatsType", "Ship_Armour_Shield_Strength"},
				MATH_OPERATION 		= '*',
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', AblativeArmourMult}		--0.05
				}
			},
			--[[
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_RAINBOW", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_DARK", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_RED", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_GREEN", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_GOLD", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "T_SHIP_PIRATE", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusMult (1.01, EngModSpdMult)},
				}
			},
			]]
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				SPECIAL_KEY_WORDS	= {"ID", "LAUNCHFUEL"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'PRESERVE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeValue', ShipLaunchRechargeMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SHIPCHARGE"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'PRESERVE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeValue', StarshieldBattMult*ShipShieldRechargeMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "DRONE_SHARD"},
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'PRESERVE',
				VALUE_CHANGE_TABLE 	= {
					{'ChargeValue', RadiantShardMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "FOOD_R_MEAT"},
				VALUE_CHANGE_TABLE 	= {
					{'ChargeValue', ProcessedMeatChargeValue}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			--Intentionally left blank to be filled by the function below
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			--[[{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN4", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', RechargeLivingModuleRate},
					{'ValueMax', RechargeLivingModuleRate},
				}
			},]]
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN1',	'StatLevels', 'GcProceduralTechnologyStatLevel'},
				ADD_OPTION  = 'ADDafterSECTION',
				ADD = LauncherClassSpeed(1.010000, 1.010000)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN2',	'StatLevels', 'GcProceduralTechnologyStatLevel'},
				ADD_OPTION  = 'ADDafterSECTION',
				ADD = LauncherClassSpeed(1.020000, 1.050000)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN3',	'StatLevels', 'GcProceduralTechnologyStatLevel'},
				ADD_OPTION  = 'ADDafterSECTION',
				ADD = LauncherClassSpeed(1.050000, 1.080000)
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'UA_LAUN4',	'StatLevels', 'GcProceduralTechnologyStatLevel'},
				ADD_OPTION  = 'ADDafterSECTION',
				ADD = LauncherClassSpeed(1.080000, 1.10000)
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN4"},
				VALUE_CHANGE_TABLE 	= {
					{'NumStatsMin', 3},
					{'NumStatsMax', 3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_SLASR2"},
				VALUE_CHANGE_TABLE 	= {
					{'NumStatsMin', 2},		--1
					{'NumStatsMax', 2}		--2
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_SLASR3"},
				VALUE_CHANGE_TABLE 	= {
					{'NumStatsMin', 2},		--2
					{'NumStatsMax', 3}		--2
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_SLASR4"},
				VALUE_CHANGE_TABLE 	= {
					{'NumStatsMin', 3},		--2
					{'NumStatsMax', 3}		--2
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN0", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.003, LnchModSpdMult)},	--1.01
					{'ValueMax', BonusMult (1.009, LnchModSpdMult)}		--1.05
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN1", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.01, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN2", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.02, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.05, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN3", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.08, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUN4", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.08, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.1, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_LAUNX", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, LnchModSpdMult)},
					{'ValueMax', BonusMult (1.1, LnchModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN1", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.01, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN2", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.02, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.05, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN3", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.05, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.08, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_LAUN4", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.08, LnchModLSSpdMult)},
					{'ValueMax', BonusMult (1.1, LnchModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE0", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModSpdMult)},
					{'ValueMax', BonusMult (1.05, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE1", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModSpdMult)},
					{'ValueMax', BonusMult (1.1, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE2", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModSpdMult)},
					{'ValueMax', BonusMult (1.15, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE3", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModSpdMult)},
					{'ValueMax', BonusMult (1.2, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSE4", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModSpdMult)},
					{'ValueMax', BonusMult (1.25, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_PULSEX", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModSpdMult)},
					{'ValueMax', BonusMult (1.3, EngModSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE1", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.01, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.1, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE2", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.15, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE3", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.2, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_PULSE4", "StatsType", "Ship_Boost"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', BonusMult (1.1, EngModLSSpdMult)},
					{'ValueMax', BonusMult (1.25, EngModLSSpdMult)}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL0", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.01*ShieldModMult},
					{'ValueMax', 0.05*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL1", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldModMult},
					{'ValueMax', 0.1*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL2", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldModMult},
					{'ValueMax', 0.1*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL3", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.1*ShieldModMult},
					{'ValueMax', 0.2*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHL4", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.2*ShieldModMult},
					{'ValueMax', 0.2*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UP_S_SHLX", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldModMult},
					{'ValueMax', 0.25*ShieldModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL1", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldLSModMult},
					{'ValueMax', 0.1*ShieldLSModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL2", "StatsType", "Ship_Armour_Shield_Strength"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin', 0.05*ShieldLSModMult},
					{'ValueMax', 0.1*ShieldLSModMult}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UA_S_SHL3", "StatsType", "Ship_Armour_Shield_Strength"},
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
		MXML_CHANGE_TABLE	= {
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
		MBIN_FILE_SOURCE	= 'METADATA/\SIMULATION/\MISSIONS/TABLES\SPACEPOIMISSIONTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				VALUE_MATCH 		= 'ROBOT1',
				VALUE_MATCH_OPTIONS = '=',
				REPLACE_TYPE 		= 'ALL',	
				VALUE_CHANGE_TABLE 	= {
					{'Substance',		ConBridgeSubstance}
				}
			},
			{
				VALUE_MATCH 		= '10000',
				VALUE_MATCH_OPTIONS = '=',
				VALUE_CHANGE_TABLE 	= {
					{'Cost',		LivingNanitePrice}
				}
			},
			{
				VALUE_MATCH 		= '79200',
				VALUE_MATCH_OPTIONS = '=',
				REPLACE_TYPE 		= 'ALL',	
				VALUE_CHANGE_TABLE 	= {
					{'Time',		LivingShipQuestTimers}
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
	{
		MBIN_FILE_SOURCE	= 'METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "BIOSHIP_COMP1",		"ID", "ROBOT1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID", ConBridgeSubstance}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "ROCKETSUB"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", TritiumChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "DUSTY1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", PyriteChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CREATURE1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", MorditeChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "ROBOT1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", PugneumChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHSUB"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", DiHydrogenChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "STELLAR2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", ChromaticMetalChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", SilverChargeValue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK5"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeValue", ViscousFluidsChargeValue}
				}
			},
		}
	},
}}}}

local ChangesToShipTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]

for i = 1, #ShipTechChanges do
	local TechID = ShipTechChanges[i][1][1]
	local Stats = ShipTechChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatRep = Stats[j][2]

			ChangesToShipTech[#ChangesToShipTech+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {"ID", TechID, "StatsType", StatID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
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
				["SPECIAL_KEY_WORDS"] = {"ID", "SHIELD_ALIEN"},
				["PRECEDING_KEY_WORDS"] = {"ChargeBy"},
				["ADD_OPTION"]  = "ADDafterLINE",
				["ADD"] = AddStarShieldBatt
			}
end
if RoboUseBattNotSodium then
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHIELD_ROBO",	"ChargeBy", "CATALYST1"},
				["REMOVE"] = "LINE"
			}
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHIELD_ROBO"},
				["PRECEDING_KEY_WORDS"] = {"ChargeBy"},
				["ADD_OPTION"]  = "ADDafterLINE",
				["ADD"] = AddStarShieldBatt
			}

end
for i = 1, #ShipTrailTechs do
	local TrailID = ShipTrailTechs[i]

			ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", TrailID},
				["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"StatsType", TrailStat},
					{"Bonus", TrailBonus}
				}
			}
end
if RemoveVesperManeuver then
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL",	"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL",	"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end
if RemoveVesperAutoCharge then
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL",	"StatsType", "Ship_Launcher_AutoCharge"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL",	"StatBonuses", "GcStatsBonus"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddLaunchDiscount
			}
end
if RemoveRoboAutoCharge then
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO",	"StatsType", "Ship_Launcher_AutoCharge"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end
if RemoveRoboJumpSpeed then
ChangesToShipTech[#ChangesToShipTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO",	"StatsType", "Ship_PulseDrive_MiniJumpSpeed"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end

local ChangesToProcTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]

if RemoveLivingAutoCharge then
ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN4",	"StatsType", "Ship_Launcher_AutoCharge"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end

for i = 1, #ShipLaunchMods do
	local ModID = ShipLaunchMods[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Launcher_TakeOffCost"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Launcher_TakeOffCost"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", LnchModCstMult},
					{"ValueMax", LnchModCstMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Launcher_TakeOffCost"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
end
for i = 1, #LivingShipLaunchMods do
	local ModID = LivingShipLaunchMods[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Launcher_TakeOffCost"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Launcher_TakeOffCost"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", LnchModLSCstMult},
					{"ValueMax", LnchModLSCstMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Launcher_TakeOffCost"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
end

for i = 1, #ShipPulseMods do
	local ModID = ShipPulseMods[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", EngModBstManMult},
					{"ValueMax", EngModBstManMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", EngModManMult},
					{"ValueMax", EngModManMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", EngModPEffMult},
					{"ValueMax", EngModPEffMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
end
for i = 1, #LivingShipPulseMods do
	local ModID = LivingShipPulseMods[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", EngModLSBstManMult},
					{"ValueMax", EngModLSBstManMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", EngModLSManMult},
					{"ValueMax", EngModLSManMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "-",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", EngModLSPEffMult},
					{"ValueMax", EngModLSPEffMult}
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "+",
				["SPECIAL_KEY_WORDS"] = {"ID", ModID,		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", 1},
					{"ValueMax", 1}
				}
			}
end
for i = 1, #HyperdriveDistUpgrades do
	local HypID = HyperdriveDistUpgrades[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", HypID,		"StatsType", "Ship_Hyperdrive_JumpDistance"},
				["MATH_OPERATION"] = "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", HyperDistBonusMult},
					{"ValueMax", HyperDistBonusMult}
				}
			}
end
for i = 1, #FreiHyperdriveDistUpgrades do
	local HypID = FreiHyperdriveDistUpgrades[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", HypID,		"StatsType", "Freighter_Hyperdrive_JumpDistance"},
				["MATH_OPERATION"] = "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", HyperDistBonusMult},
					{"ValueMax", HyperDistBonusMult}
				}
			}
end
for i = 1, #HyperdriveEffUpgrades do
	local HypID = HyperdriveEffUpgrades[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", HypID,		"StatsType", "Ship_Hyperdrive_JumpsPerCell"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", HyperEffBonusMin},
					{"ValueMax", HyperEffBonusMax}
				}
			}
end
for i = 1, #FreiHyperdriveEffUpgrades do
	local HypID = FreiHyperdriveEffUpgrades[i]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", HypID,		"StatsType", "Freighter_Hyperdrive_JumpsPerCell"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", HyperEffBonusMin},
					{"ValueMax", HyperEffBonusMax}
				}
			}
end