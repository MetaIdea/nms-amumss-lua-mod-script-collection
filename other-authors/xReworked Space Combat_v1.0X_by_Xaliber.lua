Author = "Xaliber"
LuaAuthor = "DeathWrench and Babscoole, updated by Xen0nex"
ModName = "Reworked Space Combat"
BaseDescription = "Adaptation of part(s) of Xaliber's Space Combat Reworked"
GameVersion = "4.21"
ModVersion = "1.0X"

--The following functions allow to add new custom ship Behaviours / Shields (Basically to allow for some Easy/Med/Hard variations of Behaviours as in pre-v3.85 NMS)
function AddPlanetBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5" />
      <Property name="GunFireRate" value="0.15" />
      <Property name="LaserHealthPoint" value="50" />
      <Property name="AttackWeaponRange" value="500" />
      <Property name="AttackAngle" value="30" />
      <Property name="AttackShootWaitTime" value="0.1" />
      <Property name="AttackShootTimeMin" value="2.5" />
      <Property name="AttackShootTimeMax" value="5" />
      <Property name="AttackReadyTime" value="0.3" />
      <Property name="AttackMaxTime" value="6" />
      <Property name="AttackApproachOffset" value="150" />
      <Property name="AttackApproachMinRange" value="300" />
      <Property name="AttackApproachMaxRange" value="650" />
      <Property name="AttackTooCloseRange" value="150" />
      <Property name="AttackFlybyOffset" value="150" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="550" />
      <Property name="AttackBoostAngle" value="40" />
      <Property name="AttackTurnMultiplier" value="1" />
      <Property name="AttackMaxPlanetHeight" value="1000" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="3" />
      <Property name="AttackTurnMaxTimeRange" value="6" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="1000" />
      <Property name="FleeBrake" value="0.8" />
      <Property name="FleeBoost" value="3" />
      <Property name="FleeBrakeTime" value="0.5" />
      <Property name="FleeRepositionTime" value="5" />
      <Property name="FleeRepositionAngleMin" value="35" />
      <Property name="FleeRepositionAngleMax" value="100" />
      <Property name="FleeUrgentBrake" value="0.8" />
      <Property name="FleeUrgentBoost" value="1.8" />
      <Property name="FleeUrgentBrakeTime" value="0.4" />
      <Property name="FleeRepositionUrgentTime" value="2" />
      <Property name="FleeRepositionUrgentAngleMin" value="50" />
      <Property name="FleeRepositionUrgentAngleMax" value="145" />
      <Property name="FleeRange" value="400" />
      <Property name="FleeMinTime" value="4" />
      <Property name="FleeMaxTime" value="8" />
      <Property name="FleeUrgentRange" value="75" />
      <Property name="PlanetFleeHeightExtra" value="240" />
      <Property name="AttackTargetMinRange" value="200" />
      <Property name="AttackTargetMaxRange" value="1000" />
      <Property name="AttackTargetOffsetMin" value="-200" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddSpaceBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.5" />
      <Property name="GunFireRate" value="0.15" />
      <Property name="LaserHealthPoint" value="50" />
      <Property name="AttackWeaponRange" value="700" />
      <Property name="AttackAngle" value="30" />
      <Property name="AttackShootWaitTime" value="1" />
      <Property name="AttackShootTimeMin" value="1" />
      <Property name="AttackShootTimeMax" value="3" />
      <Property name="AttackReadyTime" value="0.5" />
      <Property name="AttackMaxTime" value="10" />
      <Property name="AttackApproachOffset" value="180" />
      <Property name="AttackApproachMinRange" value="300" />
      <Property name="AttackApproachMaxRange" value="800" />
      <Property name="AttackTooCloseRange" value="90" />
      <Property name="AttackFlybyOffset" value="50" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="2000" />
      <Property name="AttackBoostAngle" value="15" />
      <Property name="AttackTurnMultiplier" value="1.15" />
      <Property name="AttackMaxPlanetHeight" value="100" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="1" />
      <Property name="AttackTurnMaxTimeRange" value="5" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="2000" />
      <Property name="FleeBrake" value="1" />
      <Property name="FleeBoost" value="8" />
      <Property name="FleeBrakeTime" value="3" />
      <Property name="FleeRepositionTime" value="3.5" />
      <Property name="FleeRepositionAngleMin" value="140" />
      <Property name="FleeRepositionAngleMax" value="180" />
      <Property name="FleeUrgentBrake" value="2" />
      <Property name="FleeUrgentBoost" value="2" />
      <Property name="FleeUrgentBrakeTime" value="3" />
      <Property name="FleeRepositionUrgentTime" value="1" />
      <Property name="FleeRepositionUrgentAngleMin" value="180" />
      <Property name="FleeRepositionUrgentAngleMax" value="180" />
      <Property name="FleeRange" value="650" />
      <Property name="FleeMinTime" value="0.5" />
      <Property name="FleeMaxTime" value="10" />
      <Property name="FleeUrgentRange" value="100" />
      <Property name="PlanetFleeHeightExtra" value="200" />
      <Property name="AttackTargetMinRange" value="250" />
      <Property name="AttackTargetMaxRange" value="600" />
      <Property name="AttackTargetOffsetMin" value="100" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddSquadronBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="4" />
      <Property name="GunFireRate" value="0.2" />
      <Property name="LaserHealthPoint" value="15" />
      <Property name="AttackWeaponRange" value="850" />
      <Property name="AttackAngle" value="40" />
      <Property name="AttackShootWaitTime" value="2" />
      <Property name="AttackShootTimeMin" value="1.5" />
      <Property name="AttackShootTimeMax" value="2.5" />
      <Property name="AttackReadyTime" value="1" />
      <Property name="AttackMaxTime" value="8" />
      <Property name="AttackApproachOffset" value="200" />
      <Property name="AttackApproachMinRange" value="350" />
      <Property name="AttackApproachMaxRange" value="600" />
      <Property name="AttackTooCloseRange" value="200" />
      <Property name="AttackFlybyOffset" value="-200" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="2250" />
      <Property name="AttackBoostAngle" value="10" />
      <Property name="AttackTurnMultiplier" value="1.25" />
      <Property name="AttackMaxPlanetHeight" value="100" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="1" />
      <Property name="AttackTurnMaxTimeRange" value="4" />
      <Property name="NumHitsBeforeBail" value="800" />
      <Property name="NumHitsBeforeReposition" value="1100" />
      <Property name="FleeBrake" value="1" />
      <Property name="FleeBoost" value="6" />
      <Property name="FleeBrakeTime" value="15" />
      <Property name="FleeRepositionTime" value="10" />
      <Property name="FleeRepositionAngleMin" value="90" />
      <Property name="FleeRepositionAngleMax" value="180" />
      <Property name="FleeUrgentBrake" value="1.5" />
      <Property name="FleeUrgentBoost" value="1.5" />
      <Property name="FleeUrgentBrakeTime" value="3" />
      <Property name="FleeRepositionUrgentTime" value="3" />
      <Property name="FleeRepositionUrgentAngleMin" value="180" />
      <Property name="FleeRepositionUrgentAngleMax" value="180" />
      <Property name="FleeRange" value="600" />
      <Property name="FleeMinTime" value="1.5" />
      <Property name="FleeMaxTime" value="8" />
      <Property name="FleeUrgentRange" value="100" />
      <Property name="PlanetFleeHeightExtra" value="200" />
      <Property name="AttackTargetMinRange" value="300" />
      <Property name="AttackTargetMaxRange" value="600" />
      <Property name="AttackTargetOffsetMin" value="100" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddShield (ShieldID)
    return
[[<Property value="GcSpaceshipShieldData.xml">
      <Property name="Id" value="]]..ShieldID..[[" />
      <Property name="Health" value="5600" />
      <Property name="LevelledExtraHealth" value="19000" />
      <Property name="RechargeTime" value="5" />
      <Property name="RechargeDelayTime" value="6" />
    </Property>]]
end


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]				= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]				= BaseDescription,
["MOD_AUTHOR"]					= Author,
["LUA_AUTHOR"]              	= LuaAuthor,
["NMS_VERSION"]					= GameVersion,
["MODIFICATIONS"]             	=
    {
        {
            ["MBIN_CHANGE_TABLE"]     =
            {
{["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
["EXML_CHANGE_TABLE"] = {
	--Adding new custom Behaviours and Shields
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_EZ")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_HRD")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_EZ")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_HRD")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSquadronBehaviour ("SQUADRON_MED")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"ShieldTable",	"GcSpaceshipShieldData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("SLOW_STRONG")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"ShieldTable",	"GcSpaceshipShieldData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("HUGE")
	},
	
	--Definitions
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_EASY"},				--Used in vanilla for BOUNTY1 (wandering easy), EASYBOUNTY1 & EASYBOUNTY2 (space station mission),	PIRATE_SQUAD (Possibly the additional enemy pirates in the space station missions?),	& Base Armourer unique mission
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"			
		{"Health", 5200},					--default 5200
		{"LevelledExtraHealth", 14000},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},					--Used in vanilla for BOUNTY2 (wandering medium), MEDBOUNTY1, MEDBOUNTY2, & HARDBOUNTY2 (space station mission), & PP_BOUNTY (planet procedural mission)
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", 7500},					--default 5200
		{"LevelledExtraHealth", 21000},		--default 14000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_HARD"},				--Used in vanilla for BOUNTY3 (wandering hard), HARDBOUNTY1  (space station mission)
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_HRD"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"			(Custom Lootpool)
		{"Health", 10000},					--default 6500
		{"LevelledExtraHealth", 24000},	--default 14000
		{"Shield", "SLOW_STRONG"},			--default "FAST_STRONG"
		{"LaserDamageLevel", 3},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},					--Sentinel Interceptors, presumably?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		Probably maps to "POLICELOOT" somehow
		{"Health", 21000},					--default 11500
		{"LevelledExtraHealth", 50000},	--default 34000
		{"Shield", "FAST_STRONG"},			--default "FAST"
		{"LaserDamageLevel", 3},			--default 1
		}},	
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "TRADERLOOT"},			--default "TRADERLOOT"
		{"Health", 13500},					--default 9000
		{"LevelledExtraHealth", 24000},		--default 16000
		{"Shield", "HUGE"},					--default "STANDARD"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER_ESCORT"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "TRADERLOOT"},			--default "TRADERLOOT"
		{"Health", 21000},					--default 14000
		{"LevelledExtraHealth", 54000},	--default 36000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},				--Planetary Pirate raids on buildings, presumably?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "RAID_BUILDING"},	--default "RAID_BUILDING"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", 13500},					--default 9000
		{"LevelledExtraHealth", 24000},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_DOGFIGHT"},				--Unsure, some kind of pirate attack, maybe in space?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", 13500},					--default 9000
		{"LevelledExtraHealth", 24000},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_FLYBY"},				--Unsure, some kind of pirate attack, maybe on planets?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", 7500},					--default 5200
		{"LevelledExtraHealth", 21000},		--default 14000
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
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", 4500},					--default 3000
		{"LevelledExtraHealth", 4500},		--default 3000
		{"Shield", "NULL"},					--default "NULL"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_B"},				--Wingmen in the player's squadron, Class B
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", 6000},					--default 5000
		{"LevelledExtraHealth", 6000},		--default 5000
		{"Shield", "STANDARD"},				--default "STRONG"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_A"},				--Wingmen in the player's squadron, Class A
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", 7500},					--default 5000
		{"LevelledExtraHealth", 7500},		--default 5000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_S"},				--Wingmen in the player's squadron, Class S
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_STRONG"},	--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET_HRD"},	--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", 9000},					--default 6000
		{"LevelledExtraHealth", 9000},		--default 6000
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
		{"Health", 39000},					--default 13000
		{"LevelledExtraHealth", 72000},		--default 24000
		{"Shield", "NULL"},					--default "NULL"
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
		{"Health", 160000},					--default 105000
		{"LevelledExtraHealth", 1500000},	--default 995000
		{"Shield", "STRONG"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	--[[	Deprecated as of NMS v3.85
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 25000},			--default 6200
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_MEDIUM"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 32000},			--default 8000
		{"LaserDamageLevel",2},		--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 56000},			--default 14000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_SOLO"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 120000},			--default 30000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},			--Note, this does not seem to control the pirates in the Frieghter-pirate battles, at least not the ones with Capital Freighters
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 18000},			--default 3600
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 24000},			--default 6000
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_MED"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 32000},			--default 8000
		{"LaserDamageLevel",2},		--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 56000},			--default 14000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 800000},			--default 20000
		{"LaserDamageLevel", 3},	--default 1
		}},]]
	
	--PLANET_EZ
	--Behaviours
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},						
		{"GunFireRate", 0.08},							
		{"LaserHealthPoint", 35},
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_WEAK"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	--[[	Deprecated as of NMS v3.85
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
	["PRECEDING_FIRST"] = "True",
	--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.8},						--X
		{"GunFireRate", 0.075},								--X 0.07
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 120},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 1200},						--600
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --EASY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3.5},						--X
		{"GunFireRate", 0.085},								--X	0.12
		{"LaserHealthPoint", 0},
		{"AttackWeaponRange", 1000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 150},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 900},							--600
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --MEDIUM
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.8},						--X
		{"GunFireRate", 0.07},							--X	0.1
		{"LaserHealthPoint", 25},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 120},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 2000},						--1000
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --HARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.06},							--X	0.05
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 100},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 2500},						--1000
		}},			
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.04},	--0.05
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 100},						--50	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 3000},						--2000
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.05},						--X	0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 2000},							--600
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --TRADER		(added by Xen0nex)
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.05},						--X	0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 900},							--600
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},						--X
		{"GunFireRate", 0.04},						--X 0.05
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 1500},							--600
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --PIRATE_FREIGHT
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},
		{"GunFireRate", 0.06},	--0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackAngle", 50},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(150)
		{"AttackFlybyOffset", -200},
		{"NumHitsBeforeBail", 900},							--600
		}},]]
	
	--Engines
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 140},									--60
		{"BoostSpeed", 1067},								--900		NOTE: Often you can still outrun enemy ships even if your ship's "CombatEngine" 's "BoostMaxSpeed" is only ~75% of this value, presumably due to how the enemy ships occassionally stop boosting when pursuing the player
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 4},								--5
		{"Roll", 2},										--1
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--20
		{"MaxSpeed", 200},									--90
		{"BoostSpeed", 1400},								--1200		(e.g. a value of 1600 means in practice you can generally outrun them with ~1200u/s space combat speed)
		{"TurnMin", 0.7},									--0.7
		{"DirectionBrake", 2.5},							--3
		{"Roll", 1.2},										--0.6
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--50
		{"MaxSpeed", 100},									--80
		{"BoostSpeed", 120},								--180
		{"TurnMin", 0.6},									--0.4
		{"DirectionBrake", 2.5},							--3
		{"Roll", 2},										--1
		{"MinHeight", 25},									--50
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 15},									--60
		{"MaxSpeed", 160},									--130
		{"BoostSpeed", 180},								--180
		{"TurnMin", 1.2},									--0.8
		{"DirectionBrake", 1},								--1.2
		{"Roll", 2},										--1
		{"MinHeight", 12},									--25
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 60},									--60
		{"BoostSpeed", 120},								--120
		{"TurnMin", 1},										--1
		{"DirectionBrake", 20},								--20
		{"Roll", 2},										--1
		{"MinHeight", 20},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	["INTEGER_TO_FLOAT"] = "FORCE",
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
	--[[	Deprecated as of NMS v3.85
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml"}, --STANDARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 200},
		{"BoostSpeed", 1200},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 120},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 15},
		{"Hovering", "True"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 2.5},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 120},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 15},
		{"Hovering", "False"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 3},
		{"MinHeight", 50},
		{"Hovering", "False"},
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 4},
		{"MinHeight", 30},
		{"Hovering", "False"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 400},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 30},
		{"Hovering", "False"},
		}},]]
	
	--Shields
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STANDARD"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 7500},											--5600
		{"LevelledExtraHealth", 28000},								--19000
		{"RechargeTime", 7.5},										--5
		{"RechargeDelayTime", 6},									--6
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 15000},											--10000
		{"LevelledExtraHealth", 52500},								--35000
		{"RechargeTime", 12},										--8
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 3000},											--2000
		{"LevelledExtraHealth", 15000},								--10000
		{"RechargeTime", 1.5},										--1
		{"RechargeDelayTime", 3},									--3
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 15000},											--10000
		{"LevelledExtraHealth", 37500},								--25000
		{"RechargeTime", 4.5},										--3
		{"RechargeDelayTime", 4},									--4
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","NULL"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 0},												--0
		{"LevelledExtraHealth", 0},									--0
		{"RechargeTime", 5},										--5
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SLOW_STRONG"},					--Custom Shield
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 30000},											--Custom	[60000]
		{"LevelledExtraHealth", 75000},							--Custom	[150000]
		{"RechargeTime", 24},										--Custom	[48]
		{"RechargeDelayTime", 4},									--Custom	[4]
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","HUGE"},							--Custom Shield
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 75000},											--Custom	[90000]
		{"LevelledExtraHealth", 110000},							--Custom	[220000]
		{"RechargeTime", 48},										--Custom	[96]
		{"RechargeDelayTime", 12},									--Custom	[12]
		}},
	}}
}}}}