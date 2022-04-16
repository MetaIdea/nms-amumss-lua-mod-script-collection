Author = "Xaliber"
ModName = "gExos Challenge"
ModNameSub = "Space Combat"
BaseDescription = "Adaptation of part of Xaliber's Space Combat Reworked"
GameVersion = "370"
ModVersion = "a"


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
["EXML_CHANGE_TABLE"] = {

	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 15000},	--default 3600
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 20000},	--default 6200
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_MEDIUM"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 30000},	--default 8000
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 50000},	--default 14000
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_SOLO"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 80000},	--default 30000
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 25000},	--default 6200
		}},	
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 50000},	--default 14000
		}},		
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 65000},	--default 20000
		}},		


	{
	--["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	--["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
	--["PRECEDING_FIRST"] = "True",
	["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},
		{"GunFireRate", 0.08},
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		}},
	{
	["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --EASY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 4},
		{"GunFireRate", 0.1},
		{"LaserHealthPoint", 0},
		{"AttackWeaponRange", 1000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		}},
	{["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --MEDIUM
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},
		{"GunFireRate", 0.08},
		{"LaserHealthPoint", 25},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		}},	
	{["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --HARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},
		{"GunFireRate", 0.06},
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 4},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		}},			
	{["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.05},
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 4},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		}},		
	{["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},
		{"GunFireRate", 0.06},
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 4},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		}},		
	{["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.05},
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 4},
		{"AttackTooCloseRange", 0},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		}},	
	{["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --PIRATE_FREIGHT
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},
		{"GunFireRate", 0.06},
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackAngle", 50},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 150},
		{"AttackFlybyOffset", -200},
		}},	


	{["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml"}, --STANDARD
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
	{["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --SOLO
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
	{["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --PIRATE
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
	{["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --POLICE
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
	{["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --BOUNTY
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
		}},			
	}},

}}}}