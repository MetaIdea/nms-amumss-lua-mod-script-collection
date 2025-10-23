Author = "Xaliber"
LuaAuthor = "DeathWrench and Babscoole, updated by Xen0nex"
ModName = "Reworked Space Combat"
BaseDescription = "Adaptation of part(s) of Xaliber's Space Combat Reworked"
GameVersion = "6.10"
ModVersion = "1.16X"

--Multipliers to apply to the hull & shields of all AI-controlled starships & some freighters (individual ships have additonal multipliers applied)
	--Note that "SpaceCombatDifficultyMultipliers" values in GCGAMEPLAYGLOBALS.GLOBAL.MBIN control additional (or subtract) Hull & Shields for enemy starships depending on Space Combat difficulty setting
ShipHull =				1.5						--Starting AI Hull health for all starships & freighters (except for CIV_LEADER )
ShipHullPerLevel =		1.5						--Additional AI Hull health added per level for all starships & freighters (except for CIV_LEADER )
ShipShield =			1.5						--Starting AI Shield health for all starships, not freighters
ShipShieldPerLevel =	1.5						--Additional AI Shield health added per level for all starships, not freighters
BossFreighterParts =	1.5						--Starting AI health for enemy freighter parts (and the Dreadnought hull itself) & Pirate Frigates in "boss" freighter battles (Sentinel or Pirate Dreadnought) during Sentinel 5 star / Pirate Dreadnought encounters
BossFreighterPartsPerLevel =1.5					--Additional AI health added per level for enemy freighter parts (and the Dreadnought hull itself) & Pirate Frigates in "boss" freighter battles
CargoPods =				1						--Both Starting & Additional health for all types of Cargo Pods, both atteched or standalone near freighters

--Adjusts health, damage multipliers, and possible loot for freighter parts in "boss" freighter battles
BossFreighterPartsChanges =
{
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/LARGECANNONTURRET/ENTITIES/LARGECANNONTURRET.ENTITY.MBIN",	--Anti-Freighter Cannons during Pirate Dreadnought battles
		math.floor(BossFreighterParts*17000*1),	math.floor(BossFreighterPartsPerLevel*56000*1),	"FREIGHT_HULL",				--17000 Health,		56000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/PIRATEFREIGHTERTHRUSTER0/ENTITIES/DATA.ENTITY.MBIN",		--Freighter Warp Drives during Pirate Dreadnought battles
		math.floor(BossFreighterParts*4100*1),	math.floor(BossFreighterPartsPerLevel*32000*1),	"CARGO",					--4100 Health,		32000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/ANTISHIPTURRET/ENTITIES/ANTISHIPTURRET.ENTITY.MBIN",		--Anti-Ship Turrets during Pirate Dreadnought battles
		math.floor(BossFreighterParts*4100*1),	math.floor(BossFreighterPartsPerLevel*28000*1),	"FREIGHT_HULL",				--4100 Health,		28000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/SHIELDGENERATOR0/ENTITIES/SHIELDGENERATOR.ENTITY.MBIN",	--Freighter Shield Generators during Pirate Dreadnought battles
		math.floor(BossFreighterParts*1500*1),	math.floor(BossFreighterPartsPerLevel*8000*1),	"FREIGHT_HULL",				--1500 Health,		8000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/FUELROD/ENTITIES/ROD.ENTITY.MBIN",							--Exposed Fuel Rods during Pirate Dreadnought battles
		math.floor(BossFreighterParts*2000*1),	math.floor(BossFreighterPartsPerLevel*8000*1),	"FREIGHT_HULL",				--2000 Health,		8000 LevelledExtraHealth,		"FREIGHT_HULL" DamageMultiplier
		"" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/PIRATECRUISER/ENTITIES/PIRATECRUISERDATA.ENTITY.MBIN",						--Pirate Frigates during Pirate Dreadnought battles
		"10",									"0",									"SHIP_HULL",						--10 Health,	0 LevelledExtraHealth,		"SHIP_HULL" DamageMultiplier		This is a placeholder, actual health contrilled by PIRATE_FRIG Definition below
		"" }				--""	Replace with a reward from REWARDTABLE.EXML or leave as "" for no reward
	},
}

HiddenCargo =		"false"			--"false"	Hides the reward for Cargo Pods so it is not displayed before you open / destroy them, to make it harder to collect the specific reward you are looking for.

--Adjusts health, damage multipliers, and possible loot for various attached and standalone "Cargo Pods" on or near freighters
CargoPodChanges =
{
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERA/ENTITIES/CONTAINER_A.ENTITY.MBIN",	--Attached Freighter Cargo Pod type A
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*16000*1),	"CARGO",						--4000 Health,		16000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERB/ENTITIES/CONTAINER_B.ENTITY.MBIN",	--Attached Freighter Cargo Pod type B
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*16000*1),	"CARGO",						--4000 Health,		16000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERC/ENTITIES/CONTAINER_C.ENTITY.MBIN",	--Attached Freighter Cargo Pod type C
		math.floor(CargoPods*2000*2),	math.floor(CargoPods*9000*1.33),"CARGO",						--2000 Health,		9000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERE/ENTITIES/CONTAINER_E.ENTITY.MBIN",	--Attached Freighter Cargo Pod type E
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*14000*1),	"CARGO",						--4000 Health,		14000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERF/ENTITIES/CONTAINER_F.ENTITY.MBIN",	--Attached Freighter Cargo Pod type F
		math.floor(CargoPods*4000*1),	math.floor(CargoPods*14000*1),	"CARGO",						--4000 Health,		14000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERG/ENTITIES/CONTAINER_G.ENTITY.MBIN",	--Attached Freighter Cargo Pod type G
		math.floor(CargoPods*2000*2),	math.floor(CargoPods*9000*1.33),"CARGO",						--2000 Health,		9000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CONTAINER/CONTAINERH/ENTITIES/CONTAINER_H.ENTITY.MBIN",	--Attached Freighter Cargo Pod type H
		math.floor(CargoPods*2000*2),	math.floor(CargoPods*9000*1.33),"CARGO",						--2000 Health,		9000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	--The health values for the two standalone Cargo Pods below don't seem to actually be changed by the values set here, nor does adjusting the "CARGO" multiplier in "PTSd Weapons Rebalance.lua" affect them
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC/ENTITIES/SMALLFREIGHTER.ENTITY.MBIN",--Small standalone Cargo Pod near freighters
		math.floor(CargoPods*4000*1.25),	math.floor(CargoPods*14000*1),	"CARGO",					--4000 Health,		0 LevelledExtraHealth,			"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
	{
		{ "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC/ENTITIES/_TINY_FREIGHTER.ENTITY.MBIN",--Tiny standalone Cargo Pod near freighters
		math.floor(CargoPods*2000*2.5),		math.floor(CargoPods*14000*1),	"CARGO",					--2000 Health,		14000 LevelledExtraHealth,		"CARGO" DamageMultiplier
		"FREIGHTERLOOT",		"SMUGGLELOOT"}				--"FREIGHTERLOOT",		"SMUGGLELOOT"		Rewards in Regular, Outlaw systems
	},
}

--The following functions allow to add new custom ship Behaviours / Shields (Basically to allow for some Easy/Med/Hard variations of Behaviours as in pre-v3.85 NMS)
function AddPlanetBehaviour (BehaviourID)
    return
[[<Property name="BehaviourTable" value="GcShipAIAttackData">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.000000" />
      <Property name="GunFireRate" value="0.150000" />
      <Property name="LaserHealthPoint" value="50.000000" />
      <Property name="AttackWeaponRange" value="500.000000" />
      <Property name="AttackAngle" value="30.000000" />
      <Property name="AttackShootWaitTime" value="0.100000" />
      <Property name="AttackShootTimeMin" value="2.500000" />
      <Property name="AttackShootTimeMax" value="5.000000" />
      <Property name="AttackReadyTime" value="0.300000" />
      <Property name="AttackMaxTime" value="6.000000" />
      <Property name="AttackApproachOffset" value="150.000000" />
      <Property name="AttackApproachMinRange" value="300.000000" />
      <Property name="AttackApproachMaxRange" value="650.000000" />
      <Property name="AttackTooCloseRange" value="150.000000" />
      <Property name="AttackFlybyOffset" value="150.000000" />
      <Property name="AttackBoostTimeToRange" value="1.500000" />
      <Property name="AttackBoostRange" value="550.000000" />
      <Property name="AttackBoostAngle" value="40.000000" />
      <Property name="AttackTurnMultiplier" value="1.000000" />
      <Property name="AttackMaxPlanetHeight" value="1000.000000" />
      <Property name="AttackTurnMultiplierMax" value="1.000000" />
      <Property name="AttackTurnMaxMinTime" value="3.000000" />
      <Property name="AttackTurnMaxTimeRange" value="6.000000" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="1000" />
      <Property name="FleeBrake" value="0.800000" />
      <Property name="FleeBoost" value="3.000000" />
      <Property name="FleeBrakeTime" value="0.500000" />
      <Property name="FleeRepositionTime" value="5.000000" />
      <Property name="FleeRepositionAngleMin" value="35.000000" />
      <Property name="FleeRepositionAngleMax" value="100.000000" />
      <Property name="FleeUrgentBrake" value="0.800000" />
      <Property name="FleeUrgentBoost" value="1.800000" />
      <Property name="FleeUrgentBrakeTime" value="0.400000" />
      <Property name="FleeRepositionUrgentTime" value="2.000000" />
      <Property name="FleeRepositionUrgentAngleMin" value="50.000000" />
      <Property name="FleeRepositionUrgentAngleMax" value="145.000000" />
      <Property name="FleeRange" value="400.000000" />
      <Property name="FleeMinTime" value="4.000000" />
      <Property name="FleeMaxTime" value="8.000000" />
      <Property name="FleeUrgentRange" value="75.000000" />
      <Property name="PlanetFleeHeightExtra" value="240.000000" />
      <Property name="AttackTargetMinRange" value="200.000000" />
      <Property name="AttackTargetMaxRange" value="1000.000000" />
      <Property name="AttackTargetOffsetMin" value="-200.000000" />
      <Property name="AttackTargetOffsetMax" value="500.000000" />
      <Property name="AttackTargetSwitchTargetTime" value="10.000000" />
    </Property>]]
end

function AddSpaceBehaviour (BehaviourID)
    return
[[<Property name="BehaviourTable" value="GcShipAIAttackData">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.500000" />
      <Property name="GunFireRate" value="0.150000" />
      <Property name="LaserHealthPoint" value="50.000000" />
      <Property name="AttackWeaponRange" value="700.000000" />
      <Property name="AttackAngle" value="30.000000" />
      <Property name="AttackShootWaitTime" value="1.000000" />
      <Property name="AttackShootTimeMin" value="1.000000" />
      <Property name="AttackShootTimeMax" value="3.000000" />
      <Property name="AttackReadyTime" value="0.500000" />
      <Property name="AttackMaxTime" value="10.000000" />
      <Property name="AttackApproachOffset" value="180.000000" />
      <Property name="AttackApproachMinRange" value="300.000000" />
      <Property name="AttackApproachMaxRange" value="800.000000" />
      <Property name="AttackTooCloseRange" value="90.000000" />
      <Property name="AttackFlybyOffset" value="50.000000" />
      <Property name="AttackBoostTimeToRange" value="1.500000" />
      <Property name="AttackBoostRange" value="2000.000000" />
      <Property name="AttackBoostAngle" value="15.000000" />
      <Property name="AttackTurnMultiplier" value="1.150000" />
      <Property name="AttackMaxPlanetHeight" value="100.000000" />
      <Property name="AttackTurnMultiplierMax" value="1.000000" />
      <Property name="AttackTurnMaxMinTime" value="1.000000" />
      <Property name="AttackTurnMaxTimeRange" value="5.000000" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="2000" />
      <Property name="FleeBrake" value="1.000000" />
      <Property name="FleeBoost" value="8.000000" />
      <Property name="FleeBrakeTime" value="3.000000" />
      <Property name="FleeRepositionTime" value="3.500000" />
      <Property name="FleeRepositionAngleMin" value="140.000000" />
      <Property name="FleeRepositionAngleMax" value="180.000000" />
      <Property name="FleeUrgentBrake" value="2.000000" />
      <Property name="FleeUrgentBoost" value="2.000000" />
      <Property name="FleeUrgentBrakeTime" value="3.000000" />
      <Property name="FleeRepositionUrgentTime" value="1.000000" />
      <Property name="FleeRepositionUrgentAngleMin" value="180.000000" />
      <Property name="FleeRepositionUrgentAngleMax" value="180.000000" />
      <Property name="FleeRange" value="650.000000" />
      <Property name="FleeMinTime" value="0.500000" />
      <Property name="FleeMaxTime" value="10.000000" />
      <Property name="FleeUrgentRange" value="100.000000" />
      <Property name="PlanetFleeHeightExtra" value="200.000000" />
      <Property name="AttackTargetMinRange" value="250.000000" />
      <Property name="AttackTargetMaxRange" value="600.000000" />
      <Property name="AttackTargetOffsetMin" value="100.000000" />
      <Property name="AttackTargetOffsetMax" value="500.000000" />
      <Property name="AttackTargetSwitchTargetTime" value="10.000000" />
    </Property>]]
end

function AddSquadronBehaviour (BehaviourID)
    return
[[<Property name="BehaviourTable" value="GcShipAIAttackData">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="4.000000" />
      <Property name="GunFireRate" value="0.200000" />
      <Property name="LaserHealthPoint" value="15.000000" />
      <Property name="AttackWeaponRange" value="850.000000" />
      <Property name="AttackAngle" value="40.000000" />
      <Property name="AttackShootWaitTime" value="2.000000" />
      <Property name="AttackShootTimeMin" value="1.500000" />
      <Property name="AttackShootTimeMax" value="2.500000" />
      <Property name="AttackReadyTime" value="1.000000" />
      <Property name="AttackMaxTime" value="8.000000" />
      <Property name="AttackApproachOffset" value="200.000000" />
      <Property name="AttackApproachMinRange" value="350.000000" />
      <Property name="AttackApproachMaxRange" value="600.000000" />
      <Property name="AttackTooCloseRange" value="200.000000" />
      <Property name="AttackFlybyOffset" value="-200.000000" />
      <Property name="AttackBoostTimeToRange" value="1.500000" />
      <Property name="AttackBoostRange" value="2250.000000" />
      <Property name="AttackBoostAngle" value="10.000000" />
      <Property name="AttackTurnMultiplier" value="1.250000" />
      <Property name="AttackMaxPlanetHeight" value="100.000000" />
      <Property name="AttackTurnMultiplierMax" value="1.000000" />
      <Property name="AttackTurnMaxMinTime" value="1.000000" />
      <Property name="AttackTurnMaxTimeRange" value="4.000000" />
      <Property name="NumHitsBeforeBail" value="800" />
      <Property name="NumHitsBeforeReposition" value="1100" />
      <Property name="FleeBrake" value="1.000000" />
      <Property name="FleeBoost" value="6.000000" />
      <Property name="FleeBrakeTime" value="15.000000" />
      <Property name="FleeRepositionTime" value="10.000000" />
      <Property name="FleeRepositionAngleMin" value="90.000000" />
      <Property name="FleeRepositionAngleMax" value="180.000000" />
      <Property name="FleeUrgentBrake" value="1.500000" />
      <Property name="FleeUrgentBoost" value="1.500000" />
      <Property name="FleeUrgentBrakeTime" value="3.000000" />
      <Property name="FleeRepositionUrgentTime" value="3.000000" />
      <Property name="FleeRepositionUrgentAngleMin" value="180.000000" />
      <Property name="FleeRepositionUrgentAngleMax" value="180.000000" />
      <Property name="FleeRange" value="600.000000" />
      <Property name="FleeMinTime" value="1.500000" />
      <Property name="FleeMaxTime" value="8.000000" />
      <Property name="FleeUrgentRange" value="100.000000" />
      <Property name="PlanetFleeHeightExtra" value="200.000000" />
      <Property name="AttackTargetMinRange" value="300.000000" />
      <Property name="AttackTargetMaxRange" value="600.000000" />
      <Property name="AttackTargetOffsetMin" value="100.000000" />
      <Property name="AttackTargetOffsetMax" value="500.000000" />
      <Property name="AttackTargetSwitchTargetTime" value="10.000000" />
    </Property>]]
end

function AddShield (ShieldID)
    return
[[<Property name="ShieldTable" value="GcSpaceshipShieldData">
      <Property name="Id" value="]]..ShieldID..[[" />
      <Property name="Health" value="5600" />
      <Property name="LevelledExtraHealth" value="19000" />
      <Property name="RechargeTime" value="5.000000" />
      <Property name="RechargeDelayTime" value="6.000000" />
	  <Property name="StartDepletedWhenEnabled" value="false" />
      <Property name="DamageMulOverride" value="" />
    </Property>]]
end


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]				= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]				= BaseDescription,
["MOD_AUTHOR"]					= Author,
["LUA_AUTHOR"]              	= LuaAuthor,
["NMS_VERSION"]					= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]             	=
    {
        {
            ["MBIN_CHANGE_TABLE"]     =
            {
{["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
["MXML_CHANGE_TABLE"] = {
	--Adding new custom Behaviours and Shields
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_EZ")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_HRD")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("P_FLYBY")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_EZ")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_HRD")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"BehaviourTable","GcShipAIAttackData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSquadronBehaviour ("SQUADRON_MED")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ShieldTable","GcSpaceshipShieldData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("SLOW_STRONG")
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ShieldTable","GcSpaceshipShieldData"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("HUGE")
	},
	
	--Definitions
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_NOSHIELD"},				--Added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*4100/1.5)},				--default 4100
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*15000/1.5)},		--default 15000
		{"Shield", "WEAK"},					--default "WEAK"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_EASY"},				--Used in vanilla for BOUNTY1 (wandering easy), EASYBOUNTY1 & EASYBOUNTY2 (space station mission),	PIRATE_SQUAD (Possibly the additional enemy pirates in the space station missions?),	& Base Armourer unique mission
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*5200/1.5)},				--default 5200
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000/1.5)},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},					--Used in vanilla for BOUNTY2 (wandering medium), MEDBOUNTY1, MEDBOUNTY2, & HARDBOUNTY2 (space station mission), & PP_BOUNTY (planet procedural mission)
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*5200)},				--default 5200
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000)},		--default 14000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_HARD"},				--Used in vanilla for BOUNTY3 (wandering hard), HARDBOUNTY1  (space station mission)
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_HRD"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*6500)},			--default 6500
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000)},	--default 14000
		{"Shield", "SLOW_STRONG"},			--default "FAST_STRONG"
		{"LaserDamageLevel", 3},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},					--Sentinel Interceptors, presumably?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		Probably maps to "POLICELOOT" somehow
		{"Health", math.floor(ShipHull*11500*0.8)},			--default 11500
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*34000*0.8)},	--default 34000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel", 2},			--default 1
		}},	
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "TRADERLOOT"},			--default "TRADERLOOT"
		{"Health", math.floor(ShipHull*9000*0.25)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*16000*0.25)},		--default 16000
		{"Shield", "HUGE"},					--default "STANDARD"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER_ESCORT"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SPACE_HARD"},			--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", "ESCORTLOOT"},			--default "TRADERLOOT"			(Custom Lootpool)
		{"Health", math.floor(ShipHull*14000)},			--default 14000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*36000)},	--default 36000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},				--Planetary Pirate raids on buildings, while the player is still on the ground. HOWEVER, vanilla seems bugged where at Planetary Archives, pirates use a "normal" behaviour instead of RAID_BUILDING
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "RAID_BUILDING"},	--default "RAID_BUILDING"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "RAID_BUILDING"},	--default "RAID_BUILDING"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*9000)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*16000)},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_DOGFIGHT"},				--Planetary Pirate raids on buildings, once the player is in the air in their starship the pirates swap to using this behaviour
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*9000)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*16000)},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_FLYBY"},				--Unsure, some kind of pirate attack, maybe on planets?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "P_FLYBY"},		--default "PLANET"
		{"Engine", "SPACE_EASY"},			--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*5200*2)},			--default 5200
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*14000*2)},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
			--(Wingmen use SQUADGUN in METADATA\PROJECTILES\PROJECTILETABLE.MBIN for damage purposes)
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_C"},				--Wingmen in the player's squadron, Class C
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_WEAK"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"Engine", "SQUADRON_SLOW"},		--default "SQUADRON_SLOW"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*3000*0.75)},			--default 3000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*3000*0.75)},		--default 3000
		{"Shield", "NULL"},					--default "NULL"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_B"},				--Wingmen in the player's squadron, Class B
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SQUADRON_SLOW"},		--default "SQUADRON_SLOW"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*5000*0.75)},			--default 5000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*5000*0.75)},		--default 5000
		{"Shield", "STANDARD"},				--default "STRONG"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_A"},				--Wingmen in the player's squadron, Class A
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"Engine", "SQUADRON_FAST"},		--default "SQUADRON_FAST"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*5000)},			--default 5000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*5000)},		--default 5000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_S"},				--Wingmen in the player's squadron, Class S
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_STRONG"},	--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET_HRD"},	--default "PLANET"
		{"Engine", "SQUADRON_FAST"},		--default "SQUADRON_FAST"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*6000*1.25)},			--default 6000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*6000*1.25)},		--default 6000
		{"Shield", "FAST_STRONG"},			--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_HOSTILE"},				--ALIEN_PIRATES, possibly part of a Season?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*13000)},			--default 13000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*24000)},		--default 24000
		{"Shield", "NULL"},			--default "NULL"
		{"LaserDamageLevel", 1},			--default 0
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICEFREIGHTER"},				--Sentinel Freighters fought at wanted level 5
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*66000)},					--default 66000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*605000)},	--default 605000
		{"Shield", "PIRATE_FREIGHT"},				--default "PIRATE_FREIGHT"
		{"LaserDamageLevel", 2},			--default 1
		}},
	--The following were added in NMS v4.4:
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER"},					--Neutral Freighters?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*40000)},					--default 40000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*220000)},	--default 220000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_TINY"},					--Neutral Tiny Freighters?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*2000)},					--default 2000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*9000)},	--default 9000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SMALL"},					--Neutral Small Freighters?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*4000)},					--default 4000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*12000)},	--default 12000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FRIGATE"},					--Neutral Frigates?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*7000)},					--default 7000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*18000)},	--default 18000
		{"Shield", ""},				--default ""
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_CAP"},					--Neutral Capital Freighters?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*105000)},					--default 105000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*3200000)},	--default 3200000
		{"Shield", "FREIGHTER"},				--default "FREIGHTER"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},					--Pirate Freighters?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_HARD"},		--default "SPACE_HARD"
		{"PlanetEngine", "PLANET_HARD"},	--default "PLANET_HARD"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*105000)},					--default 105000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*995000)},	--default 995000
		{"Shield", "PIRATE_FREIGHT"},				--default "PIRATE_FREIGHT"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FRIG"},					--Pirate Frigates?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},		--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*13125)},					--default 13125
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*124375)},	--default 124375
		{"Shield", ""},				--default ""
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","CIV_LEADER"},					--Civilian freighter fighting pirate freighter?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},	--default "SPACE"
		{"PlanetBehaviour", "PLANET"},	--default "PLANET"
		{"Engine", "SPACE_EASY"},		--default "SPACE_EASY"
		{"PlanetEngine", "PLANET_EASY"},	--default "PLANET_EASY"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""
		{"Health", math.floor(ShipHull*5000000)},					--default 5000000
		{"LevelledExtraHealth", math.floor(ShipHullPerLevel*0)},	--default 0
		{"Shield", "CIVLEAD_SHIELD"},				--default "CIVLEAD_SHIELD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	
	--Behaviours
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},						
		{"GunFireRate", 0.08},							
		{"LaserHealthPoint", 35},							--LaserHealthPoint determines at what % of remaining health the enemy starship will start using their lasers instead of only their "photon cannon"
		{"AttackWeaponRange", 1200},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 40},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						
		{"AttackTooCloseRange", 150},						
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 3000},						
		{"NumHitsBeforeReposition", 2000},					
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--5.5
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--50
		{"AttackWeaponRange", 1600},						--700
		{"AttackShootWaitTime", 0.1},						--1
		{"AttackShootTimeMin", 5},							--1
		{"AttackShootTimeMax", 20},							--3
		{"AttackMaxTime", 50},								--10
		{"AttackApproachOffset", 300},						--180
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--800
		{"AttackFlybyOffset", 50},							--50
		{"AttackBoostAngle", 10},							--15
		{"NumHitsBeforeBail", 4500},						--3000
		{"NumHitsBeforeReposition", 3000},					--2000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HRD"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.04},								
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 10},
		{"AttackShootTimeMax", 40},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						
		{"AttackTooCloseRange", 100},						
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 6000},						
		{"NumHitsBeforeReposition", 4000},					
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.7},
		{"GunFireRate", 0.08},
		{"LaserHealthPoint", 35},
		{"AttackWeaponRange", 800},
		{"AttackShootWaitTime", 0},
		{"AttackShootTimeMin", 5},
		{"AttackShootTimeMax", 15},
		{"AttackMaxTime", 20},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 150},
		{"AttackFlybyOffset", -150},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 3000},
		{"NumHitsBeforeReposition", 1000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.35},						--5
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--50
		{"AttackWeaponRange", 1100},						--500
		{"AttackShootWaitTime", 0},							--0.1
		{"AttackShootTimeMin", 10},							--2.5
		{"AttackShootTimeMax", 30},							--5
		{"AttackMaxTime", 30},								--6
		{"AttackApproachOffset", 250},						--150
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--650
		{"AttackFlybyOffset", 50},							--150
		{"AttackBoostAngle", 210},							--40
		{"NumHitsBeforeBail", 4500},						--3000
		{"NumHitsBeforeReposition", 1500},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HRD"},			--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 0.9},
		{"GunFireRate", 0.04},
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 1400},
		{"AttackShootWaitTime", 0},
		{"AttackShootTimeMin", 20},
		{"AttackShootTimeMax", 40},
		{"AttackMaxTime", 40},
		{"AttackApproachOffset", 300},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 100},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 6000},
		{"NumHitsBeforeReposition", 2000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 0.9},						--3
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--0
		{"AttackWeaponRange", 1100},						--500
		{"AttackShootWaitTime", 0},							--0.1
		{"AttackShootTimeMin", 10},							--2.5
		{"AttackShootTimeMax", 45},							--5
		{"AttackMaxTime", 60},								--6
		{"AttackApproachOffset", 250},						--150
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--650
		{"AttackFlybyOffset", 50},							--150
		{"AttackBoostAngle", 210},							--40
		{"NumHitsBeforeBail", 5000},						--3000
		{"NumHitsBeforeReposition", 1750},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","P_FLYBY"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "true",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 6},
		{"GunFireRate", 1.8},
		{"LaserHealthPoint", 80},
		{"AttackWeaponRange", 600},
		{"AttackShootWaitTime", 0.1},						--N/A			(0)
		{"AttackShootTimeMin", 5},
		{"AttackShootTimeMax", 15},
		{"AttackMaxTime", 20},
		{"AttackApproachOffset", 150},
		{"AttackApproachMinRange", 300},
		{"AttackTooCloseRange", 150},
		{"AttackFlybyOffset", 150},
		{"AttackBoostAngle", 40},
		{"NumHitsBeforeBail", 3000},
		{"NumHitsBeforeReposition", 1000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_WEAK"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 5},							--6
		{"GunFireRate", 0.3},								--0.3
		{"LaserHealthPoint", 10},							--0
		{"AttackWeaponRange", 700},							--700
		{"AttackShootWaitTime", 3},							--4
		{"AttackShootTimeMin", 1},							--1
		{"AttackShootTimeMax", 1.5},						--1.5
		{"AttackMaxTime", 7},								--10
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 350},					--400
		{"AttackTooCloseRange", 225},						--250
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 700	},						--600
		{"NumHitsBeforeReposition", 1100},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_MED"},			--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},							--4
		{"GunFireRate", 0.2},								--0.2
		{"LaserHealthPoint", 15},							--15
		{"AttackWeaponRange", 850},							--850
		{"AttackShootWaitTime", 2},							--2
		{"AttackShootTimeMin", 1.5},						--1.5
		{"AttackShootTimeMax", 2.5},						--2.5
		{"AttackMaxTime", 8.5},								--8
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 300},					--350
		{"AttackTooCloseRange", 200},						--200
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 800	},						--800
		{"NumHitsBeforeReposition", 1300},					--1100
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--2
		{"GunFireRate", 0.1},								--0.1
		{"LaserHealthPoint", 20},							--0
		{"AttackWeaponRange", 1000},						--1000
		{"AttackShootWaitTime", 1},							--2
		{"AttackShootTimeMin", 2},							--2
		{"AttackShootTimeMax", 3},							--3
		{"AttackMaxTime", 10},								--10
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 250},					--300
		{"AttackTooCloseRange", 175},						--200
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 900	},						--600
		{"NumHitsBeforeReposition", 1500},					--1000
		}},
	
	--Engines
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 140},									--60
		{"BoostSpeed", 1067*1.33},							--900		NOTE: Often you can still outrun enemy ships even if your ship's "CombatEngine" 's "BoostMaxSpeed" is only ~75% of this value, presumably due to how the enemy ships occassionally stop boosting when pursuing the player
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 4},								--5
		{"Roll", 2},										--1
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--20
		{"MaxSpeed", 200},									--90
		{"BoostSpeed", 1400*1.33},							--1200		(e.g. a value of 1600 means in practice you can generally outrun them with ~1200u/s space combat speed)
		{"TurnMin", 0.7},									--0.7
		{"DirectionBrake", 2.5},							--3
		{"Roll", 1.2},										--0.6
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--50
		{"MaxSpeed", 100},									--80
		{"BoostSpeed", 120*1.33},							--180		NOTE: All enemy engine BoostSpeed is multiplied by 1.33x to compensate for how the player can now divert power to engines, increasing Boosting Speed by 1.33x
		{"TurnMin", 0.6},									--0.4
		{"DirectionBrake", 2.5},							--3
		{"Roll", 2},										--1
		{"MinHeight", 25},									--50
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 15},									--60
		{"MaxSpeed", 160},									--130
		{"BoostSpeed", 180*1.33},							--180
		{"TurnMin", 1.2},									--0.8
		{"DirectionBrake", 1},								--1.2
		{"Roll", 2},										--1
		{"MinHeight", 12},									--25
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 60},									--60
		{"BoostSpeed", 120*1.33},								--120
		{"TurnMin", 1},										--1
		{"DirectionBrake", 20},								--20
		{"Roll", 2},										--1
		{"MinHeight", 20},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 200},									--200
		{"BoostSpeed", 1200},								--1000
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 8},								--8
		{"Roll", 1},										--1
		{"MinHeight", 30},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_FAST"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 300},									--300
		{"BoostSpeed", 1800},								--1500
		{"TurnMin", 0.8},									--0.8
		{"DirectionBrake", 10},								--10
		{"Roll", 1.5},										--1.5
		{"MinHeight", 15},									--15
		{"Hovering", "False"},								--"False"
		}},
	
	--Shields
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER"},			--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*25000*1)},								--25000
		{"LevelledExtraHealth", math.floor(1*120000*1)},					--120000
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","CIVLEAD_SHIELD"},		--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*5000000*1)},								--5000000
		{"LevelledExtraHealth", math.floor(1*19000*1)},					--19000
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},		--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(1*10000000*1)},								--10000000
		{"LevelledExtraHealth", math.floor(1*0*1)},					--0
		{"RechargeTime", 0},										--0
		{"RechargeDelayTime", 0},									--0
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","WEAK"},					--added in NMS v4.4
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*1200*0.75)},								--1200
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*12000*0.75)},					--12000
		{"RechargeTime", 18},										--10
		{"RechargeDelayTime", 10},									--12
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STANDARD"},
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*5600*0.667)},								--5600
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*19000*0.667)},					--19000
		{"RechargeTime", 11},										--5
		{"RechargeDelayTime", 6},									--6
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STRONG"},
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*10000*0.75)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*35000*0.667)},					--35000
		{"RechargeTime", 18},										--8
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST"},
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*2000)},								--2000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*10000*0.667)},					--10000
		{"RechargeTime", 4},										--1
		{"RechargeDelayTime", 4},									--3
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG"},
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*10000*0.75)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*25000*0.75)},					--25000
		{"RechargeTime", 8},										--3
		{"RechargeDelayTime", 5},									--4
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","NULL"},
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*0)},									--0		A value of 0 makes the shield invincible
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*0)},						--0
		{"RechargeTime", 5},										--5
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SLOW_STRONG"},					--Custom Shield
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*15000)},										--Custom	[60000]
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*38000)},					--Custom	[150000]
		{"RechargeTime", 54},										--Custom	[48]
		{"RechargeDelayTime", 6},									--Custom	[4]
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","HUGE"},							--Custom Shield
	["PRECEDING_FIRST"] = "True",
	----["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*23000)},								--Custom	[90000]
		{"LevelledExtraHealth", math.floor(ShipShieldPerLevel*55000)},					--Custom	[220000]
		{"RechargeTime", 72},										--Custom	[96]
		{"RechargeDelayTime", 12},									--Custom	[12]
		}},
	}}
}}}}

local ChangesToMBINChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

for i = 1, #BossFreighterPartsChanges do
	local FilePath = BossFreighterPartsChanges[i][1][1]
	local Health = BossFreighterPartsChanges[i][1][2]
	local LevelledExtraHealth = BossFreighterPartsChanges[i][1][3]
	local DamageMultiplier = BossFreighterPartsChanges[i][1][4]
	local GivesReward = BossFreighterPartsChanges[i][1][5]
			
			ChangesToMBINChangeTable[#ChangesToMBINChangeTable+1] =
			{
				["MBIN_FILE_SOURCE"] 	= {FilePath},
				["MXML_CHANGE_TABLE"] 	= 
				{
					{
						["INTEGER_TO_FLOAT"] = "PRESERVE",
						["VALUE_CHANGE_TABLE"] 	=
						{
							{"Health", 	Health},
							{"LevelledExtraHealth", 	LevelledExtraHealth},
							{"DamageMultiplier", 	DamageMultiplier},
							{"GivesReward", 	GivesReward},
							--{"HideReward", 	"true"},	--"false"
						}
					}
				}
			}
end

for i = 1, #CargoPodChanges do
	local FilePath = CargoPodChanges[i][1][1]
	local Health = CargoPodChanges[i][1][2]
	local LevelledExtraHealth = CargoPodChanges[i][1][3]
	local DamageMultiplier = CargoPodChanges[i][1][4]
	local GivesReward = CargoPodChanges[i][1][5]
	local OutLawReward = CargoPodChanges[i][1][6]
			
			ChangesToMBINChangeTable[#ChangesToMBINChangeTable+1] =
			{
				["MBIN_FILE_SOURCE"] 	= {FilePath},
				["MXML_CHANGE_TABLE"] 	= 
				{
					{
						["INTEGER_TO_FLOAT"] = "PRESERVE",
						["VALUE_CHANGE_TABLE"] 	=
						{
							{"Health", 	Health},
							{"LevelledExtraHealth", 	LevelledExtraHealth},
							{"DamageMultiplier", 	DamageMultiplier},
							{"GivesReward", 	GivesReward},
							{"PirateSystemAltReward", 	OutLawReward},
							{"HideReward", 	HiddenCargo},	--"false"
						}
					}
				}
			}
end