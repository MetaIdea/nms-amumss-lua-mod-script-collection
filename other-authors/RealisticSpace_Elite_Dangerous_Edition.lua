NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_RealisticSpace_ED.pak",
["MOD_DESCRIPTION"]		= "Realistic Space Combat, NPC and players deal same damage",
["MOD_AUTHOR"]			= "ChristianWidjaya",
["NMS_VERSION"]			= "3.87+",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {		
		{ --Rocket Launcher Damage Tweak
		["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","StatsType","Ship_Weapons_Guns_Damage"},
			["SECTION_UP"] = 1,
			["VALUE_CHANGE_TABLE"] = {
			{"Bonus","10000"}}},
		{ --Rocket Launcher Cooldown Tweak
		["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","StatsType","Ship_Weapons_Guns_CoolTime"},
			["SECTION_UP"] = 1,
			["VALUE_CHANGE_TABLE"] = {
			{"Bonus","5"}}},
	}},

{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {		
		{ --SHIPLASER
		["SPECIAL_KEY_WORDS"] = {"Id","SHIPLASER"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","15"}}},
		{ --BOUNTYLASER1
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER1"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","15"}}},
		-- { --BOUNTYLASER2
		-- ["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER2"},
			-- ["VALUE_CHANGE_TABLE"] = {
			-- {"Damage","15"}}},
		{ --BOUNTYLASER3
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","15"}}},
		{ --POLICELASER
		["SPECIAL_KEY_WORDS"] = {"Id","POLICELASER"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","15"}}},
		{ --SMALLASTEROID
		["SPECIAL_KEY_WOR	DS"] = {"Id","SMALLASTEROID"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","50"}}},
		{ --MEDIUMASTEROID
		["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","100"}}},
		{ --LARGEASTEROID
		["SPECIAL_KEY_WORDS"] = {"Id","LARGEASTEROID"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","150"}}},
		{ --FREIGHTERGUN
		["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERGUN"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","150"}}},
		{ --FREIGHTERLASER
		["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLASER"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","75"}}},
		{ --IMPACTGROUND
		["SPECIAL_KEY_WORDS"] = {"Id","IMPACTGROUND"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","150"}}},
		{ --IMPACTINSTANCE
		["SPECIAL_KEY_WORDS"] = {"Id","IMPACTINSTANCE"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","150"}}},
		{ --MPSHIPROCKET (rocket from other players, double damage now)
		["SPECIAL_KEY_WORDS"] = {"Id","MPSHIPROCKET"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","500"}}},
	}},
	
	{["MBIN_FILE_SOURCE"]	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Nerf Player Ship's Regeneration, Tweaks Spawning, forces avoidance to 0
		["VALUE_CHANGE_TABLE"] = {
			{"ShieldRechargeMinHitTime","10"},
			{"ShieldRechargeRate","5"},
			{"WarpNexusRotation","0"},
			{"WarpNexusPitch","0"},
			{"HitAsteroidDamage","100000"},
			{"LootAttractDistance","1000"}
		}},
	}},

	{["MBIN_FILE_SOURCE"]	= "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		--OUTLAW and later: Force specific NPC Shield REGEN
		{--STANDARD SHIELD
		["SPECIAL_KEY_WORDS"] = {"Id","STANDARD"},
		["VALUE_CHANGE_TABLE"] = {
			{"Health","100000"},
			{"LevelledExtraHealth","100000"},
			{"RechargeTime","100"},
			{"RechargeDelayTime","10"}},
		},
		{--STRONG SHIELD
		["SPECIAL_KEY_WORDS"] = {"Id","STRONG"},
		["VALUE_CHANGE_TABLE"] = {
			{"Health","100000"},
			{"LevelledExtraHealth","100000"},
			{"RechargeTime","100"},
			{"RechargeDelayTime","10"}},
		},
		{--FAST SHIELD
		["SPECIAL_KEY_WORDS"] = {"Id","FAST"},
		["VALUE_CHANGE_TABLE"] = {
			{"Health","100000"},
			{"LevelledExtraHealth","100000"},
			{"RechargeTime","100"},
			{"RechargeDelayTime","10"}},
		},
		{--FAST_STRONG SHIELD
		["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG"},
		["VALUE_CHANGE_TABLE"] = {
			{"Health","100000"},
			{"LevelledExtraHealth","100000"},
			{"RechargeTime","100"},
			{"RechargeDelayTime","10"}},
		},
		{ --Buffs Photon Cannon RPM to 0.14
		["VALUE_CHANGE_TABLE"] = {
			{"GunFireRate","0.14"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --Allows NPC to keep shooting without stopping for a min straight and allow them to use laser at full hp.
		["VALUE_CHANGE_TABLE"] = {
			{"AttackShootTimeMax","60"},
			{"AttackMaxTime","60"},
			{"LaserHealthPoint","1000"}},
			["REPLACE_TYPE"] = "ALL"},
		{--Forces Raid Pirates not to use lasers when on planet
		["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
		["VALUE_CHANGE_TABLE"]={
			{"LaserHealthPoint","0"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --Disallow NPC to retreat and just tank the damage until certain value
		["VALUE_CHANGE_TABLE"] = {
			{"NumHitsBeforeBail","30000"},
			{"NumHitsBeforeReposition","10000"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --NPC reposition logic
		["VALUE_CHANGE_TABLE"] = {
			{"AttackShootWaitTime","0"},
			{"AttackApproachOffset","200"},
			{"AttackApproachMinRange","100"},
			{"AttackApproachMaxRange","800"},
			{"AttackTooCloseRange","50"},
			{"AttackBoostRange","800"},
			{"AttackBoostTimeToRange","0"},
			{"FleeBoost","250"},
			{"FleeUrgentBoost","350"},
			{"FleeBrakeTime","1"},
			{"FleeUrgentBrakeTime","1"},
			{"FleeRepositionTime","3"},
			{"FleeRepositionUrgentTime","3"},
			{"FleeMaxTime","5"},
			{"TurnMin","1.5"},
			{"TurnMax","1.5"},
			{"FleeRange","800"},
			{"AttackTargetMinRange","100"}},
			["REPLACE_TYPE"] = "ALL"},	
		{ --PIRATE_EASY Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_EASY"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --PIRATE_MEDIUM Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --PIRATE_HARD Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_HARD"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --POLICE Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},
			["VALUE_CHANGE_TABLE"] = {
			{"Reward","TRADER_LOOT"},
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --TRADER Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","TRADER"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --TRADER ESCORT Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","TRADER_ESCORT"},
			["VALUE_CHANGE_TABLE"] = {{"Reward","PIRAT_LOOT_HARD"},
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --RAIDERS(BUILDING) Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --RAIDERS(DOGFIGHT) Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","RAID_DOGFIGHT"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		 --PLAYER_SQUADRON Behaviour
		{--C
		["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_C"},
			["VALUE_CHANGE_TABLE"] = {
			{"Behaviour","SQUADRON_STRONG"},
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SQUADRON_FAST"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{--B
		["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_B"},
			["VALUE_CHANGE_TABLE"] = {
			{"Behaviour","SQUADRON_STRONG"},
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SQUADRON_FAST"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{--A
		["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_A"},
			["VALUE_CHANGE_TABLE"] = {
			{"Behaviour","SQUADRON_STRONG"},
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SQUADRON_FAST"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{--S
		["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_S"},
			["VALUE_CHANGE_TABLE"] = {
			{"Behaviour","SQUADRON_STRONG"},
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SQUADRON_FAST"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{--Alien
		["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_HOSTILE"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
		{ --PLANET_FLYBY Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","PLANET_FLYBY"},
			["VALUE_CHANGE_TABLE"] = {
			{"RewardCount","3"},
			{"Health","250000"},
			{"LevelledExtraHealth","0"},
			{"Engine","SPACE_HARD"},
			{"PlanetEngine","PLANET_HARD"},
			{"Shield","FAST_STRONG"}}},
	}},
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {	
		--Buffs NPC damage againsts each other, just like player would have done.
		-- Photon Cannons
		{ --SQUADRON GUN
		["SPECIAL_KEY_WORDS"] = {"Id","SQUADGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --PIRATE RAID GUN
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATERAIDGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --AISHIPGUN
		["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --TRADERGUN
		["SPECIAL_KEY_WORDS"] = {"Id","TRADERGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --POLICEGUN
		["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --BOUNTYGUN1
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --BOUNTYGUN2
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --BOUNTYGUN3
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","3000"}}},
		{ --FREIGHTGUN
		["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","15000"}}},
		{ --COP_FREIGHTGUN
		["SPECIAL_KEY_WORDS"] = {"Id","COP_FREIGHTGUN"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","15000"}}},
		{ --BASE_TURRET_M
		["SPECIAL_KEY_WORDS"] = {"Id","BASE_TURRET_M"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","15000"}}},
		{ --BASE_TURRET_L
		["SPECIAL_KEY_WORDS"] = {"Id","BASE_TURRET_L"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","15000"}}},
		-- Lasers
		{ --AI_SHIP 
		["SPECIAL_KEY_WORDS"] = {"Id","AI_SHIP"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","1500"}}},
		{--AI_FREIGHTER 
		["SPECIAL_KEY_WORDS"] = {"Id","AI_FREIGHTER"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","7500"}}},
		{--COP_FREIGHTER 
		["SPECIAL_KEY_WORDS"] = {"Id","COP_FREIGHTER"},
			["VALUE_CHANGE_TABLE"] = {{"DefaultDamage","7500"}}},
	}},
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Capital freighters spawns instead of normal ones for motherships, sentinel only.
		["SPECIAL_KEY_WORDS"] = {"MinRange","2200"}, --sentinel use this minrange, and only this in the file, stupid but works
		["VALUE_CHANGE_TABLE"] = {
			{"AIShipRole","CapitalFreighter"}}},
		{ --Capital freighters spawns instead of normal ones for motherships, battle only.
		["SPECIAL_KEY_WORDS"] = {"MinRange","8000"}, --attacked trader use this minrange, and only this in the file, stupid but works
		["VALUE_CHANGE_TABLE"] = {
			{"AIShipRole","CapitalFreighter"}}},	
		{ --FlybySpawns
		["PRECEDING_KEY_WORDS"] = {"FlybySpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --OutpostSpawns
		["PRECEDING_KEY_WORDS"] = {"OutpostSpawns","Count"},
		["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --SpaceFlybySpawns
		["PRECEDING_KEY_WORDS"] = {"SpaceFlybySpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --PirateSpawns
		["PRECEDING_KEY_WORDS"] = {"PirateSpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"PirateSpawns","Count","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --PirateBattleSpawns
		["PRECEDING_KEY_WORDS"] = {"PirateBattleSpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --BattleInitialPirateSpawns
		["PRECEDING_KEY_WORDS"] = {"BattleInitialPirateSpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"BattleInitialPirateSpawns","Count","Count",},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"BattleInitialPirateSpawns","Count","Count","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","0"},
				{"y","0"}}},
		{ --BattleSecondaryPirateSpawns
		["PRECEDING_KEY_WORDS"] = {"BattleSecondaryPirateSpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"BattleSecondaryPirateSpawns","Count","Count",},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"BattleSecondaryPirateSpawns","Count","Count","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","0"},
				{"y","0"}}},
		{ --BattleInitialStandardSpawns
		["PRECEDING_KEY_WORDS"] = {"BattleInitialStandardSpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"BattleInitialStandardSpawns","Count","Count",},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"BattleInitialStandardSpawns","Count","Count","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","0"},
				{"y","0"}}},
		{ --TraderSpawns
		["PRECEDING_KEY_WORDS"] = {"TraderSpawns","Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --BOUNTY1 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY1"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --BOUNTY1 Count
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY1"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","1"},
				{"y","1"}}},
		{ --BOUNTY2 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY2"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --BOUNTY2 Count
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY2"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","3"},
				{"y","3"}}},
		{ --BOUNTY3 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY3"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --BOUNTY3 Count
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY3"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --EASYBOUNTY1 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","EASYBOUNTY1"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --EASYBOUNTY1 Count
		["SPECIAL_KEY_WORDS"] = {"Id","EASYBOUNTY1"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","1"},
				{"y","1"}}},
		{ --EASYBOUNTY2 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","EASYBOUNTY2"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --EASYBOUNTY2 Count
		["SPECIAL_KEY_WORDS"] = {"Id","EASYBOUNTY2"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","1"},
				{"y","1"}}},
		{ --MEDBOUNTY1 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","MEDBOUNTY1"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --MEDBOUNTY1 Count
		["SPECIAL_KEY_WORDS"] = {"Id","MEDBOUNTY1"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","3"},
				{"y","3"}}},
		{ --MEDBOUNTY2 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","MEDBOUNTY2"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --MEDBOUNTY2 Count
		["SPECIAL_KEY_WORDS"] = {"Id","MEDBOUNTY2"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","3"},
				{"y","3"}}},
		{ --HARDBOUNTY1 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY1"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --HARDBOUNTY1 Count
		["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY1"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --HARDBOUNTY2 Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY2"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --HARDBOUNTY2 Count
		["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY2"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --WEAPGUY_BOUNTY Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","WEAPGUY_BOUNTY"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --WEAPGUY_BOUNTY Count
		["SPECIAL_KEY_WORDS"] = {"Id","WEAPGUY_BOUNTY"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --PIRATE_SQUAD Difficulty
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_SQUAD"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --PIRATE_SQUAD Count
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_SQUAD"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --PP_BOUNTY Difficulty
			["SPECIAL_KEY_WORDS"] = {"Id","PP_BOUNTY"},
			["VALUE_CHANGE_TABLE"] = {{"AttackData","AI_HARD"}}},
		{ --PP_BOUNTY Count
		["SPECIAL_KEY_WORDS"] = {"Id","PP_BOUNTY"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},		
	}},
}}}}