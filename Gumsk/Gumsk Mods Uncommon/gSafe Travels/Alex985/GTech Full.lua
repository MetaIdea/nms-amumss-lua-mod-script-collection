Author = "Gumsk"
ModName = "GTech"
ModNameSub = ""
BaseDescription = "All my changes to the Technology Table"
GameVersion = "5.2.2.0"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

--Life support (PROTECT)
	ProtectChargeAmount = 80									--80
	ProtectChargeMultiplier = 1									--1
	ProtectRad = 1												--1
	ProtectTox = 1												--1
	ProtectCold = 1												--1
	ProtectHeat = 1												--1
	ProtectRegen = 1											--1

--Life Support main upgrade (UT_PROTECT)
	UT_ProtectSuitAmount = 0.2									--0.2
	UT_ProtectRad = 1											--0
	UT_ProtectTox = 1											--0
	UT_ProtectCold = 1											--0
	UT_ProtectHeat = 1											--0
	UT_ProtectRegen = 1.1										--1.1

--Suit shields (ENERGY)
	ShieldChargeAmount = 100									--100
	ShieldChargeMultiplier = 1									--1
	ShieldStrength = 1											--1
	ShieldRegen = 1												--1

--Suit shields main upgrade (UT_ENERGY)
	UT_ShieldStrength = 1										--1
--	UT_ShieldRegen = 1											--1
--	Protect bonuses?

--Jetpack
	JetpackTank = 9999											--2.75 ; Jetpack tank size
	JetpackDrain = 1											--1 ; No effect.
	JetpackIgnition = 9999										--1 ; No effect?
	JetpackRegen = 9999											--1 ; 7x tank size = instant refill.
	--RocketBootsSpeed = 4										--Boost to speed granted by Rocket Boots. My addition. Inactive

--Jetpack main upgrade (UT_JET)
	-- JetpackDrain = 1											--0 ; No effect?
	-- JetpackIgnition = 10										--0 ; No effect?
	UT_JetpackTank = 0.4										--0.2 ; Jetpack tank size
	UT_JetpackRegen = 1.4										--1.1 ; 7x tank size = instant refill.
	UT_JetpackStamina = 0.1										--0.1
	UT_JetpackStaminaRegen = 1.2								--1.2

--rocket boots
--midair refill

--Environmental
--hot
--cold
--tox
--rad
--water

--Translator Adjustments
	SimpleTranslatorWords = 2									--1
	SuperiorTranslatorWords	= 4									--2
	AdvancedTranslatorWords	= 6									--3
	ArtemisTranslatorWords = 4									--1

--Starship Basic Launcher (LAUNCHER)
	ShipLaunchCost = 30											--50
	-- ShipAutoCharge = 1										--0

--Starship Efficient Thrusters (UT_LAUNCHER)
	ShipEfficientLaunch = 0.5									--0.8 
	-- ShipEfficientAutoCharge = 1								--0

--Starship Launch Recharger (UT_LAUNCHCHARGE)
	-- ShipUTAutoCharge = 1										--1

--Starship Adjustments
	ShipTransferRange = 800										--How much distance does the Teleport Receiver tech add, in u? Original value "150"
	
	--Ship Movement Adjustments
		-- ShipAtmoAcceleration = 10							--How quickly does the starship vroom in the atmosphere, in u/s? Original value "1"
		-- ShipSpaceAcceleration = 10							--How quickly does the starship vroom in space, in u/s? Original value "1"
		-- ShipAtmoMaxSpeed = 10								--How much can the starship vroom in the atmosphere, in u/s? Original value "1"
		-- ShipSpaceMaxSpeed = 10								--How much can the starship vroom in space, in u/s? Original value "1"
		-- ShipAtmoMinSpeed = 0									--How little can the starship vroom in the atmosphere, in u/s? Original value "20"

--Multitool Adjustments
	--Mining Laser Adjustments (LASER)
	--Weapon_Laser_Mining_Speed
	--Terrain Editor Adjustments (TERRAINEDITOR)
	--Geology Cannon Adjustments (TERRAIN_GREN)
	AdvancedLaserSpeed = 0.8									--0.85
	UT_MinerBonus = 2.0											--1.5

--LandExo
	--LandExo Engine
	LandExoEngineChargeAmount = 500								--300 ; ???
	LandExoEngineChargeMultiplier = 5							--1 ; How many charge units is each resource unit worth?
	LandExoFuelUse = 1											--1
	
	--LandExo Movement Adjustments
		LandExoMaxSpeed = 3									--1 ; -1 for percent bonus (1.1 = 10%)
		LandExoBoostSpeed = 5									--1 ; percentage bonus as fraction of 1 (0.1 = 10%)
		LandExoBoostTanks = 3									--1 ; percentage bonus as fraction of 1 (0.1 = 10%)
		LandExoGrip = 2											--1
		LandExoSkidGrip = 1										--1
		--LandExoTurn = 1										--How easy is it to turn the LandExo?
	--LandExo Grip Mod 1 (VEHICLE_GRIP1) Adjustments
		LandExoGripMod1 = 3										--3 ; -1 for percent bonus (1.1 = 10%)
		LandExoSkidGripMod1 = 0.66								--0.66 ; -1 for percent bonus (1.1 = 10%)
	--LandExo Grip Mod 2 (VEHICLE_GRIP1) Adjustments
		LandExoGripMod2 = 0.5									--0.5 ; -1 for percent bonus (1.1 = 10%)
		LandExoSkidGripMod2 = 2.1								--2.1 ; -1 for percent bonus (1.1 = 10%)
	--LandExo Grip Mod 3 (VEHICLE_GRIP1) Adjustments
		LandExoGripMod3 = 0.5									--0.5 ; -1 for percent bonus (1.1 = 10%)
		LandExoSkidGripMod3 = 0.66								--0.66 ; -1 for percent bonus (1.1 = 10%)

	--LandExo Mining Laser Adjustments
		LandExoLaserChargeAmount = 400							--200
		LandExoLaserChargeMultiplier = 5						--1 ; How many charge units is each resource unit worth?
		LandExoLaserDamage = 400								--240
		LandExoLaserHeatTime = 1								--1
		--LandExoLaserDrain = 0									--
		LandExoLaserUpgradeDamage = 100							--50
	
	--LandExo Cannon Adjustments
		LandExoCannonChargeAmount = 400							--200
		LandExoCannonChargeMultiplier = 5						--1 ; How many charge units is each resource unit worth?
		LandExoCannonDamage = 800								--220
		LandExoCannonHeatTime = 1								--1
		LandExoCannonFireRate = 0.5								--0.5
		--LandExoCannonDrain = 0								--

--Nautilon Adjustments
	--Nautilon Engine Adjustments
		NautilonEngineChargeAmount = 1600						--400
		NautilonEngineChargeMultiplier = 4						--1 ; How many charge units is each resource unit worth?
		NautilonFuelUse = 1										--1

	--Nautilon Movement Adjustments
		NautilonMaxSpeed = 350									--1
		NautilonBoostSpeed = 10									--No such thing. How can the Nautilon vroom vroom vroom? Original value "1"
	
	--Nautilon Mining Laser Adjustments
		--NautilonLaserDrain = 0								--How quickly does the Nautilon mining laser drain fuel? If set to 0, you will not need to recharge it. Original value ""
		NautilonLaserChargeAmount = 1000						--200 ; How many charge units can the tank hold?
		NautilonLaserChargeMultiplier = 5						--1 ; How many charge units is each resource unit worth?
		NautilonLaserDamage = 500								--240
		NautilonLaserHeatTime = 1								--1
	
	--Nautilon Cannon Adjustments
		--NautilonCannonDrain = 0								--How quickly does the Nautilon cannon drain fuel? If set to 0, you will not need to recharge it
		NautilonCannonChargeAmount = 1000						--200
		NautilonCannonChargeMultiplier = 5						--1 ; How many charge units is each resource unit worth?
		NautilonCannonDamage = 1000								--220
		NautilonCannonHeatTime = 1								--1
		NautilonCannonFireRate = 0.5							--0.5
	
--Mech Adjustments
	--Mech Suit Protectioni
		MechSuit_Protection_Heat = 1							--0/1
		MechSuit_Protection_Cold = 1							--0/1
		MechSuit_Protection_Radiation = 1						--0/1
		MechSuit_Protection_Toxic = 1							--0/1
		MechSuit_Protection_Water = 1							--N/A

	--Mech Engine
		MechVehicle_Engine = 1									--0/1
		MechVehicle_EngineFuelUse = 0.01						--0.5
		MechVehicle_EngineTopSpeed = 999						--1
		MechVehicle_Grip = 1									--1
		MechVehicle_SkidGrip = 1								--1

	--Mech Jetpack
		MechVehicle_Boost = 999									--No Effect
		MechVehicle_BoostSpeed = 999							--No Effect
		MechVehicle_BoostTanks = 9999							--1 - Infinite
		
	--Mech Laser
		MechVehicle_Laser = 1									--0/1
		MechVehicle_LaserDamage = 100							--100
		MechVehicle_LaserHeatTime = 1							--1
		MechVehicle_StrongLaser = 1								--0/1
		MechVehicle_TerrainEdit = 1								--0/1
	
	--Mech Gun
		MechVehicle_Gun = 1										--0/1
		MechVehicle_GunDamage = 340								--340
		MechVehicle_GunHeatTime = 1								--1
		MechVehicle_GunRate = 0.35								--.35

	--Weapon_TerrainEdit
	--Weapon_TerrainGren

--Deuterium Adjustments
	--DeuteriumReplacement = "Tritium"	--What element should replace Deuterium requirements?

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {{
MBIN_FILE_SOURCE = FileSource,
EXML_CHANGE_TABLE	= {
--Life Support
	{ --Life Support general
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier}}},
	{ --Life support protection for radiation
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ProtectRad}}},
	{ --Life support protection for toxins
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE ={
			{"Bonus", ProtectTox}}},
	{ --Life support protection for cold
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ProtectCold}}},
	{ --Life support protection for heat
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ProtectHeat}}},
	{ --Life support recovery
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ProtectRegen}}},

--Life Support
	{ --Life Support general damage reduction
	SPECIAL_KEY_WORDS = {"ID", "UT_PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", UT_ProtectSuitAmount}}},
	-- { --Life support protection for radiation
	-- SPECIAL_KEY_WORDS = {"ID", "UT_PROTECT"},
	-- PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Radiation"},
	-- VALUE_CHANGE_TABLE = 
		-- {
			-- {"Bonus", UT_ProtectRad}
		-- }},
	-- { --Life support protection for toxins
	-- SPECIAL_KEY_WORDS = {"ID", "UT_PROTECT"},	
	-- PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Toxic"},
	-- VALUE_CHANGE_TABLE =
		-- {
			-- {"Bonus", UT_ProtectTox}
		-- }},
	-- { --Life support protection for cold
	-- SPECIAL_KEY_WORDS = {"ID", "UT_PROTECT"},
	-- PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Cold"},
	-- VALUE_CHANGE_TABLE = 
		-- {
			-- {"Bonus", UT_ProtectCold}
		-- }},
	-- { --Life support protection for heat
	-- SPECIAL_KEY_WORDS = {"ID", "UT_PROTECT"},	
	-- PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Heat"},
	-- VALUE_CHANGE_TABLE =
		-- {
			-- {"Bonus", UT_ProtectHeat}
		-- }},
	-- { --Life support recovery
	-- SPECIAL_KEY_WORDS = {"ID", "UT_PROTECT"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		-- VALUE_CHANGE_TABLE = {
			-- {"Bonus", UT_ProtectRegen}}},

--Suit shields
	{ --Suit shields general
	SPECIAL_KEY_WORDS = {"ID", "ENERGY"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", ShieldChargeAmount},
			{"ChargeMultiplier", ShieldChargeMultiplier},
		}},
	{ --Suit shields strength
	SPECIAL_KEY_WORDS = {"ID", "ENERGY"},	
		PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ShieldStrength}}},
	{ --Suit shields Regen
	SPECIAL_KEY_WORDS = {"ID", "ENERGY"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ShieldRegen}}},

--Suit shields main upgrade (UT_ENERGY)
	{ --Suit shields strength
	SPECIAL_KEY_WORDS = {"ID", "UT_ENERGY"},	
		PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", UT_ShieldStrength}}},
	{ --JetpackTank
	SPECIAL_KEY_WORDS = {"ID", "JET1"},	
		PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", JetpackTank}}},
	{ --JetpackDrain No Effect
	SPECIAL_KEY_WORDS = {"ID", "JET1"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", JetpackDrain}}},
	{ --JetpackIgnition
	SPECIAL_KEY_WORDS = {"ID", "JET1"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", JetpackIgnition}}},
	{ --JetpackRegen
	SPECIAL_KEY_WORDS = {"ID", "JET1"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", JetpackRegen}}},
	{ --JetpackTank
	SPECIAL_KEY_WORDS = {"ID", "UT_JET"},	
		PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", UT_JetpackTank}}},
	{ --JetpackRegen
	SPECIAL_KEY_WORDS = {"ID", "UT_JET"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", UT_JetpackRegen}}},
	{ --JetpackRegen
	SPECIAL_KEY_WORDS = {"ID", "UT_JET"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", UT_JetpackStamina}}},
	{ --JetpackRegen
	SPECIAL_KEY_WORDS = {"ID", "UT_JET"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", UT_JetpackStaminaRegen}}},

--Translator
	{ --Tranlsator Simple
	SPECIAL_KEY_WORDS = {"ID", "UT_TRANSLATE1"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", SimpleTranslatorWords}}},	
	{ --Tranlsator Superior
	SPECIAL_KEY_WORDS = {"ID", "UT_TRANSLATE2"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", SuperiorTranslatorWords}}},
	{ --Tranlsator Advanced
	SPECIAL_KEY_WORDS = {"ID", "UT_TRANSLATE3"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", AdvancedTranslatorWords}}},
	{ --Tranlsator Artemis
	SPECIAL_KEY_WORDS = {"ID", "STORY_TRANSLATE"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ArtemisTranslatorWords}}},

	{ --Starship Launcher
	SPECIAL_KEY_WORDS = {"ID", "LAUNCHER"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ShipLaunchCost}}},
		
	{ --Starship Efficient Thrusters
	SPECIAL_KEY_WORDS = {"ID", "UT_LAUNCHER"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ShipEfficientLaunch}}},

--Starship
	{ --Starship Transfer Range
	SPECIAL_KEY_WORDS = {"ID", "SHIP_TELEPORT"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", ShipTransferRange}}},

--Mining
	{--Advanced Mining Laser (STRONGLASER)
	SPECIAL_KEY_WORDS = {"ID", "STRONGLASER"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", AdvancedLaserSpeed}}},
	{--Optical Drill (UT_MINER))
	SPECIAL_KEY_WORDS = {"ID", "UT_MINER"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", UT_MinerBonus}}},

--LandExo
	{ --LandExo Engine
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", LandExoEngineChargeAmount},
			{"ChargeMultiplier", LandExoEngineChargeMultiplier},
		}},
	{ --LandExo Engine Drain
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoFuelUse}}},
	{ --LandExo Max Speed
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoMaxSpeed}}},
	{ --LandExo Grip
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoGrip}}},
	{ --LandExo Skid Grip
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoSkidGrip}}},
	{ --LandExo Boost Speed
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_BOOST"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoBoostSpeed}}},
	{ --LandExo Boost Tanks
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_BOOST"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoBoostTanks}}},
	
	{ --LandExo Mining Laser
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_LASER"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", LandExoLaserChargeAmount},
			{"ChargeMultiplier", LandExoLaserChargeMultiplier}}},	
	{ --LandExo Mining Laser Damage
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_LASER"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoLaserDamage}}},
	{ --LandExo Mining Laser Heat Time
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_LASER"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoLaserHeatTime}}},
	{ --LandExo Cannon
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", LandExoCannonChargeAmount},
			{"ChargeMultiplier", LandExoCannonChargeMultiplier}}},
	{ --LandExo Cannon Damage
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoCannonDamage}}},
	{ --LandExo Cannon Heat Time
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoCannonHeatTime}}},
	{ --LandExo Cannon Fire Rate
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", LandExoCannonFireRate}}},

--Nautilon
	{ --Nautilon Engine
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", NautilonEngineChargeAmount},
			{"ChargeMultiplier", NautilonEngineChargeMultiplier},
		}},
	{ --Nautilon Engine Drain
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonFuelUse}}},
	{ --Nautilon Max Speed
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonMaxSpeed}}},
	{ --Nautilon Cannon
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},
		VALUE_CHANGE_TABLE = {
			{"ChargeAmount", NautilonCannonChargeAmount},
			{"ChargeMultiplier", NautilonCannonChargeMultiplier}}},
	{ --Nautilon Cannon Damage
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonCannonDamage}}},
	{ --Nautilon Cannon Heat Time
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonCannonHeatTime}}},
	{ --Nautilon Cannon Fire Rate
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonCannonFireRate}}},
	{ --Nautilon Mining Laser Damage
	SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonLaserDamage}}},
	{ --Nautilon Laser Heat Time
	SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", NautilonLaserHeatTime}}},


	{ -- Mech Initial Boost
	SPECIAL_KEY_WORDS = {"ID", "MECH_BOOST"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", MechVehicle_Boost}}},
	{ -- Mech Boost Speed
	SPECIAL_KEY_WORDS = {"ID", "MECH_BOOST"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", MechVehicle_BoostSpeed}}},

	{ --Mech Boost Tanks
	SPECIAL_KEY_WORDS = {"ID", "MECH_BOOST"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", MechVehicle_BoostTanks}}},

	{ --Mech Top Speed
	SPECIAL_KEY_WORDS = {"ID", "MECH_ENGINE"},PRECEDING_KEY_WORDS = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		VALUE_CHANGE_TABLE = {
			{"Bonus", MechVehicle_EngineTopSpeed}}},

	{ --Photon Cannon Deletable
	SPECIAL_KEY_WORDS = {"ID", "SHIPGUN1"},
		VALUE_CHANGE_TABLE = {
			{"Core", "False"}}},

	{ --Multitool Mining Laser Deletable
	SPECIAL_KEY_WORDS = {"ID", "LASER"},
		VALUE_CHANGE_TABLE = {
			{"Core", "False"}}},

	{ --Add Economy Scanner
	SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_ECON","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Conflict Scanner
	SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_COMBAT","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},
	
	{ --Emergency Warp
	SPECIAL_KEY_WORDS = {"ID","UT_QUICKWARP","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Teleport Receiver
	SPECIAL_KEY_WORDS = {"ID","SHIP_TELEPORT","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Rocket Launcher
	SPECIAL_KEY_WORDS = {"ID","SHIPROCKETS","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Rockets Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_ROCKETS","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Photonix Core
	SPECIAL_KEY_WORDS = {"ID","PHOTONIX_CORE","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Shotgun
	SPECIAL_KEY_WORDS = {"ID","SHIPSHOTGUN","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Shotgun Upgrade
	SPECIAL_KEY_WORDS = {"ID","T_SHIPSHOT","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Shotgun Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_SHIPSHOT","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Minigun
	SPECIAL_KEY_WORDS = {"ID","SHIPMINIGUN","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Minigun Upgrade
	SPECIAL_KEY_WORDS = {"ID","T_SHIPMINI","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Minigun Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_SHIPMINI","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Infra-Knife
	SPECIAL_KEY_WORDS = {"ID","SHIPPLASMA","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Infra-Knife Upgrade
	SPECIAL_KEY_WORDS = {"ID","T_SHIPBLOB","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Infra-Knife Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_SHIPBLOB","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllShips"}}},
		
	{ --Exocraft combined hazard protection
	SPECIAL_KEY_WORDS = {"ID","MECH_PROT","Category","GcTechnologyCategory.xml"},
		VALUE_CHANGE_TABLE = {{"TechnologyCategory","AllVehicles"}}},

	-- { --Hide old exocraft protection
	-- SPECIAL_KEY_WORDS = {"ID","EXO_PROT_HOT","Category","GcTechnologyCategory.xml"},
		-- VALUE_CHANGE_TABLE = {{"TechnologyCategory","99"}}},

	-- { --Hide old exocraft protection
	-- SPECIAL_KEY_WORDS = {"ID","EXO_PROT_COLD","Category","GcTechnologyCategory.xml"},
		-- VALUE_CHANGE_TABLE = {{"TechnologyCategory","99"}}},

	-- { --Hide old exocraft protection
	-- SPECIAL_KEY_WORDS = {"ID","EXO_PROT_TOX","Category","GcTechnologyCategory.xml"},
		-- VALUE_CHANGE_TABLE = {{"TechnologyCategory","99"}}},
		
	-- { --Hide old exocraft protection
	-- SPECIAL_KEY_WORDS = {"ID","EXO_PROT_RAD","Category","GcTechnologyCategory.xml"},
		-- VALUE_CHANGE_TABLE = {{"TechnologyCategory","99"}}},
		
	{ --Incinerator
	SPECIAL_KEY_WORDS = {"ID","FLAME","StatsType","Weapon_Projectile_Dispersion"},
		SECTION_UP = 1,
		VALUE_CHANGE_TABLE = {
		{"Bonus","70"}}},
	{SPECIAL_KEY_WORDS = {"ID","FLAME","StatsType","Weapon_Projectile_Range"},
		SECTION_UP = 1,
		VALUE_CHANGE_TABLE = {
		{"Bonus","20"}}},
	{SPECIAL_KEY_WORDS = {"ID","FLAME","StatsType","Weapon_Projectile_BulletsPerShot"},
		SECTION_UP = 1,
		VALUE_CHANGE_TABLE = {
		{"Bonus","4"}}},	
	
	
}}}}}}