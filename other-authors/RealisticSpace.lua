RemoveChildText = [[	<Property name="ChildSpawns" />
      </Property>
      <Property name="AttackData" value="AI_HARD" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PIRATE.SKULL.DDS" />
      </Property>
      <Property name="Label" value="BOUNTY_MARKER" />
    </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_RealisticSpace.pak",
["MOD_DESCRIPTION"]		= "Realistic Space Combat, NPC and players deal same damage",
["MOD_AUTHOR"]			= "ChristianWidjaya",
["NMS_VERSION"]			= "261",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {		
		{ --Rocket Launcher Damage Tweak
		["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","StatsType","Ship_Weapons_Guns_Damage"},
			["SECTION_UP"] = 1,
			["VALUE_CHANGE_TABLE"] = {
			{"Bonus","15000"}}},
		{ --Rocket Launcher Cooldown Tweak
		["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","StatsType","Ship_Weapons_Guns_CoolTime"},
			["SECTION_UP"] = 1,
			["VALUE_CHANGE_TABLE"] = {
			{"Bonus","5"}}},
	}},

	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {		
		{ --AISHIPGUN
		["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","35"}}},
		{ --SHIPLASER
		["SPECIAL_KEY_WORDS"] = {"Id","SHIPLASER"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","25"}}},
		{ --BOUNTYGUN1
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","35"}}},
		{ --BOUNTYGUN2
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","35"}}},
		{ --BOUNTYGUN3
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","35"}}},
		{ --BOUNTYLASER1
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER1"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","25"}}},
		-- { --BOUNTYLASER2
		-- ["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER2"},
			-- ["VALUE_CHANGE_TABLE"] = {
			-- {"Damage","25"}}},
		{ --BOUNTYLASER3
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","25"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --POLICEGUN
		["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","35"}}},
		{ --POLICELASER
		["SPECIAL_KEY_WORDS"] = {"Id","POLICELASER"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","25"}}},
		{ --SMALLASTEROID
		["SPECIAL_KEY_WORDS"] = {"Id","SMALLASTEROID"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","100"}}},
		{ --MEDIUMASTEROID
		["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","200"}}},
		{ --LARGEASTEROID
		["SPECIAL_KEY_WORDS"] = {"Id","LARGEASTEROID"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","300"}}},
		{ --FREIGHTERGUN
		["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERGUN"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","250"}}},
		{ --FREIGHTERLASER
		["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLASER"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","50"}}},
		{ --IMPACTGROUND
		["SPECIAL_KEY_WORDS"] = {"Id","IMPACTGROUND"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","100"}}},
		{ --IMPACTINSTANCE
		["SPECIAL_KEY_WORDS"] = {"Id","IMPACTINSTANCE"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","100"}}},
		{ --MPSHIPROCKET (rocket from other players, double damage now)
		["SPECIAL_KEY_WORDS"] = {"Id","MPSHIPROCKET"},
			["VALUE_CHANGE_TABLE"] = {
			{"Damage","500"}}},
	}},

	{["MBIN_FILE_SOURCE"]	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]    = {
        { --Balances enemy speed to match players
        ["VALUE_CHANGE_TABLE"] = {
            {"MinSpeed","80"},
            {"MaxSpeed","250"}},
        ["REPLACE_TYPE"] = "ALL"},
		{ --100% freighter spawn chance
        ["VALUE_CHANGE_TABLE"] = {
            {"FreighterSpawnRate","100"}}},
    }},

	{["MBIN_FILE_SOURCE"]	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= {	
		{ --Nerf Player Ship's Regeneration and Tweaks Spawning
		["VALUE_CHANGE_TABLE"] = {
			{"ShieldRechargeMinHitTime","10"},
			{"ShieldRechargeRate","1"},
			{"WarpNexusRotation","0"},
			{"WarpNexusPitch","0"},
			{"HitAsteroidDamage","100000"},
			{"LootAttractDistance","1000"},
			{"BoostNoAsteroidRadius","1"}}}
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
		{ --PoliceSpawn Wave 3
		["SPECIAL_KEY_WORDS"] = {"MinRange","1400","Count","Vector2f.xml"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","4"},
				{"y","4"}}},
		{ --PoliceSpawn Wave 4
		["SPECIAL_KEY_WORDS"] = {"MinRange","1500"},
		["PRECEDING_KEY_WORDS"] = {"Count"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","6"},
				{"y","6"}}},
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
		{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY3"},
			["PRECEDING_KEY_WORDS"] = {"ChildSpawns"},
			["REMOVE"] = "SECTION",
			},
		{["SPECIAL_KEY_WORDS"] = {"Id","EASYBOUNTY1"},
			["LINE_OFFSET"] = "-2",
			["ADD"] = RemoveChildText,
			},
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
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {	
		{ --Buffs Photon Cannon RPM to 0.14
		["VALUE_CHANGE_TABLE"] = {
			{"GunFireRate","0.14"},
			{"LaserHealthPoint","10000"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --Allows NPC to keep shooting without stopping for a min straight
		["VALUE_CHANGE_TABLE"] = {
			{"AttackShootTimeMax","60"},
			{"AttackMaxTime","60"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --Disallow NPC to retreat and just tank the damage
		["VALUE_CHANGE_TABLE"] = {
			{"NumHitsBeforeBail","10000"},
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
		{ --PIRATE_FREIGHT Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},			
		{ --AI_EASY Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","AI_EASY"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --AI_MEDIUM Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","AI_MEDIUM"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --AI_HARD Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","AI_HARD"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --AI_SOLO Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","AI_SOLO"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --PIRATE Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --POLICE Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","PIRAT_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --TRADE_EASY Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","TRADE_EASY"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","TRAD_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --TRADE_MED Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","TRADE_MED"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","TRAD_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --TRADE_HARD Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","TRADE_HARD"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","TRAD_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
		{ --BOUNTY Behaviour
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY"},
			["VALUE_CHANGE_TABLE"] = {{"Behaviour","HARD"},{"Reward","TRAD_LOOT_HARD"},{"RewardCount","10"},{"Health","30000"}}},
	}},
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {	
		--Buffs NPC damage againsts each other, just like player would have done.
		-- Photon Cannons
		{ --AISHIPGUN
		["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{ --TRADERGUN
		["SPECIAL_KEY_WORDS"] = {"Id","TRADERGUN"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{ --POLICEGUN
		["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{ --BOUNTYGUN1
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{ --BOUNTYGUN2
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{ --BOUNTYGUN3
		["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{ --FREIGHTGUN
		["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTGUN"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","15000"}}},
		{ --COP_FREIGHTGUN
		["SPECIAL_KEY_WORDS"] = {"Id","COP_FREIGHTGUN"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","15000"}}},
		{ --BASE_TURRET_M
		["SPECIAL_KEY_WORDS"] = {"Id","BASE_TURRET_M"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","15000"}}},
		{ --BASE_TURRET_L
		["SPECIAL_KEY_WORDS"] = {"Id","BASE_TURRET_L"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","25000"}}},
		-- Lasers
		{ --AI_SHIP 
		["SPECIAL_KEY_WORDS"] = {"Id","AI_SHIP"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","1500"}}},
		{--AI_FREIGHTER 
		["SPECIAL_KEY_WORDS"] = {"Id","AI_FREIGHTER"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
		{--COP_FREIGHTER 
		["SPECIAL_KEY_WORDS"] = {"Id","COP_FREIGHTER"},
			["VALUE_CHANGE_TABLE"] = {{"Damage","5000"}}},
	}},
}}}}