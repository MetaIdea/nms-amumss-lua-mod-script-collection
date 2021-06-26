Author = "Gumsk"
ModName = "GTech"
ModNameSub = "Transfer Range"
BaseDescription = "Increase to ship transfer range"
GameVersion = "352"
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
	ShipTransferRange = 9999										--How much distance does the Teleport Receiver tech add, in u? Original value "150"
	
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
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"]	= {

--Starship
	{ --Starship Transfer Range
	["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", ShipTransferRange}}},
			
}}}}}}