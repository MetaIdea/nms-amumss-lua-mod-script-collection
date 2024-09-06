--Environmental Tech Upgrade Adjustments
--EnvironmentalRecharge = "False"		--Do environmental protection mods need to be recharged? Vanilla is "True"
-- testtext = 	[[
			-- <Property name="StatBonuses">
			-- <Property value="GcStatsBonus.xml">
				-- <Property name="StatsTypes" value="GcStatsTypes.xml">
				-- <Property name="StatsType" value="Suit_Protection_HeatDrain" />
			-- </Property>
			-- <Property name="Bonus" value="1.2" />
			-- <Property name="Level" value="1" />
			-- </Property>
		-- </Property>
		-- ]] 	
-- testtext2 = [[<Property name="ChargeBy" />]]

--Multitool Adjustments
	--Mining Laser Adjustments (LASER)
	--Weapon_Laser_Mining_Speed
	--Terrain Editor Adjustments (TERRAINEDITOR)	
	--Geology Cannon Adjustments (TERRAIN_GREN)

--Life Support (PROTECT) Adjustments
	ProtectChargeAmount = 99999				--80
	ProtectChargeMultiplier = 99999				--1
	ProtectSuitAmount = 99999					--1
	ProtectSuitLevel =	4					--1
	ProtectRad = 99999						--1
	ProtectTox = 99999							--1
	ProtectCold = 99999							--1
	ProtectHeat = 99999							--1
	ProtectRefill = 99999						--1

--Suit shields
	ShieldChargeAmount = 99999				--100
	ShieldChargeMultiplier = 99999				--1
	ShieldStrength = 99999						--1
	ShieldRefill = 99999						--1

--Underwater


--Jetpack Adjustments
	JetpackSuit = 20							--??? Original value "1"
	JetpackTank = 99999							--How big is the jetpack tank? 2=1s burn? Original value "2.75"
	JetpackDrain = 1						--No effect. How quickly does the jetpack tank drain? Original value "1"
	JetpackIgnition = 99999					--No apparent effect. What even is this? Original value "1"
	JetpackRefill = 99999						--How quickly does the jetpack tank refill? 7x tank size = instant. Original value "1"
	--RocketBootsSpeed = 4					--Boost to speed granted by Rocket Boots. My addition. Inactive

--LandExo Adjustments
	--LandExo Engine Adjustments
	LandExoEngineChargeAmount = 500			--?? Original value "300"
	LandExoEngineChargeMultiplier = 5		--How many charge units is each resource unit worth? Original value "1"
	LandExoEngine = 1						--?? Original value "1"
	LandExoEngineDrain = 1					--How quickly does the LandExo engine drain fuel? Original value "1"
	
	--LandExo Movement Adjustments
		--LandExoAcceleration = 1			--How quickly does the LandExo vroom, in u/s? Original value ""
		LandExoMaxSpeed = 8					--How much can the LandExo vroom, in u/s? Original value "1"
		LandExoBoostSpeed = 11				-- Original value "1"
		LandExoBoostTanks = 3				-- Original value "1"
		LandExoGrip = 2						--How sticky-icky is the LandExo? Ice Cube = xxx, Snoop Dogg = xxx. Original value "1"
		LandExoSkidGrip = 1					--?? Original value "1"
		--LandExoTurn = 1					--How easy is it to turn the LandExo? Ballerina = xxx, The Blob = xxx. Original value ""
	--LandExo Grip Mod 1 (VEHICLE_GRIP1) Adjustments
		LandExoGripMod1 = 3
		LandExoSkidGripMod1 = 0.66
	--LandExo Grip Mod 2 (VEHICLE_GRIP1) Adjustments
		LandExoGripMod2 = 0.5
		LandExoSkidGripMod2 = 2.1	
	--LandExo Grip Mod 3 (VEHICLE_GRIP1) Adjustments
		LandExoGripMod3 = 0.5
		LandExoSkidGripMod3 = 0.66

	--LandExo Mining Laser Adjustments
		LandExoLaserChargeAmount = 400			--?? Original value "200"
		LandExoLaserChargeMultiplier = 5		--How many charge units is each resource unit worth? Original value "1"
		LandExoLaserDamage = 400				--How much damage does the LandExo laser do? Original value "240"
		LandExoLaserHeatTime = 1				-- Original value "1"
		--LandExoLaserDrain = 0					--How quickly does the LandExo mining laser drain fuel? Original value ""
		LandExoLaserUpgradeDamage = 100			-- Original value "50"
	
	--LandExo Cannon Adjustments
		LandExoCannonChargeAmount = 400			--Original value "200"
		LandExoCannonChargeMultiplier = 5		--How many charge units is each resource unit worth? Original value "1"
		LandExoCannonDamage = 800				--How much damage does the LandExo cannon do? Original value "220"
		LandExoCannonHeatTime = 1				-- Original value "1"
		LandExoCannonFireRate = 0.5				-- Original value "0.5"
		--LandExoCannonDrain = 0				--How quickly does the LandExo cannon drain fuel? Original value ""

--Nautilon Adjustments
	--Nautilon Engine Adjustments
		NautilonEngineChargeAmount = 1600		--?? Original value "400"
		NautilonEngineChargeMultiplier = 4		--How many charge units is each resource unit worth? Original value "1"
		NautilonEngine = 1						--?? Original value "1"
		NautilonEngineDrain = 1					--How quickly does the Nautilon engine drain fuel? If set to 0, you will not need to recharge it. Original value ""

	--Nautilon Movement Adjustments
		--NautilonAcceleration = 1				--How quickly does the Nautilon vroom, in u/s? Original value ""
		NautilonMaxSpeed = 350					--How much can the Nautilon vroom, in u/s? Original value ""
		--NautilonBoostSpeed = 10				--No such thing. How can the Nautilon vroom vroom vroom? Original value "1"
	
	--Nautilon Mining Laser Adjustments
		--NautilonLaserDrain = 0				--How quickly does the Nautilon mining laser drain fuel? If set to 0, you will not need to recharge it. Original value ""
		NautilonLaserChargeAmount = 1000		--How many charge units can the tank hold?
		NautilonLaserChargeMultiplier = 5		--How many charge units is each resource unit worth? Original value "1"
		NautilonLaserDamage = 500				--How much damage does the Nautilon laser do? Original value ""
		NautilonLaserDamageLevel = 3
		NautilonLaserHeatTime = 1				--How quickly does the laser drain? Original value "1"
	
	--Nautilon Cannon Adjustments
		--NautilonCannonDrain = 0				--How quickly does the Nautilon cannon drain fuel? If set to 0, you will not need to recharge it. Original value ""
		NautilonCannonDamage = 1000				--How much damage does the Nautilon cannon do? Original value ""
		NautilonCannonChargeAmount = 1000		--Original value ""
		NautilonCannonChargeMultiplier = 5		--How many charge units is each resource unit worth? Original value "1"
		NautilonCannonHeatTime = 1				-- Original value "1"
		NautilonCannonFireRate = 0.5			-- Original value "0.5"
	
--Starship Adjustments
	ShipTransferRange = 8000					--How much distance does the Teleport Receiver tech add, in u? Original value "150"
	
	--Ship Movement Adjustments
		ShipAtmoAcceleration = 10				--How quickly does the starship vroom in the atmosphere, in u/s? Original value "1"
		ShipSpaceAcceleration = 10				--How quickly does the starship vroom in space, in u/s? Original value "1"
		ShipAtmoMaxSpeed = 10					--How much can the starship vroom in the atmosphere, in u/s? Original value "1"
		ShipSpaceMaxSpeed = 10					--How much can the starship vroom in space, in u/s? Original value "1"
		ShipAtmoMinSpeed = 0					--How little can the starship vroom in the atmosphere, in u/s? Original value "20"

	--Starship Basic Launcher (LAUNCHER)
		ShipLaunchCost = 20						--Original value "50"

	--Starship Efficient Thrusters (UT_LAUNCHER)
		ShipEfficientRate = 0.6					--Original value "0.8" 
		ShipEfficientAutoCharge = 1				--Original value "0"

	--Starship Launch Recharger (UT_LAUNCHCHARGE)
		ShipUTAutoCharge = 3					--Original value "1"

	--Weapon_TerrainEdit
	--Weapon_TerrainGren


--Translator Adjustments
	SimpleTranslatorWords = 2				--How many words does the Simple Translator translate? Original value "1"
	SuperiorTranslatorWords	= 4				--How many words does the Superior Translator translate? Original value "2"
	AdvancedTranslatorWords	= 6				--How many words does the Advanced Translator translate? Original value "3"
	ArtemisTranslatorWords = 4				--How many words does the Story/Artemis Translator translate? Original value "1"

--Deuterium Adjustments
	--DeuteriumReplacement = "Tritium"	--What element should replace Deuterium requirements?


NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GTT 224d.pak",
MOD_DESCRIPTION	= "All my changes to the Technology Table",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.24",
MODIFICATIONS	=
{
{
["PAK_FILE_SOURCE"] = "",
MBIN_CHANGE_TABLE = 
{
{
MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
EXML_CHANGE_TABLE = 
{
--Life Support
	{ --Life Support general
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},
	PRECEDING_KEY_WORDS = {""},
	VALUE_CHANGE_TABLE = 
		{
			{"Level", ProtectSuitLevel},
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
		}},
	{ --Life Support general damage reduction
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},	
	PRECEDING_KEY_WORDS = {"Suit_Protection"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ProtectSuitAmount},
			{"Level", ProtectSuitLevel}
		}},
	{ --Life support protection for radiation
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},
	PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Radiation"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", ProtectRad}
		}},
	{ --Life support protection for toxins
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},	
	PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Toxic"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ProtectTox}
		}},
	{ --Life support protection for cold
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},
	PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Cold"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", ProtectCold}
		}},
	{ --Life support protection for heat
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},	
	PRECEDING_KEY_WORDS = {"Suit_DamageReduce_Heat"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ProtectHeat}
		}},
	{ --Life support recovery
	SPECIAL_KEY_WORDS = {"ID", "PROTECT"},	
	PRECEDING_KEY_WORDS = {"Suit_Stamina_Recovery"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ProtectRefill}
		}},

--Suit shields
	{ --Suit shields general
	SPECIAL_KEY_WORDS = {"ID", "ENERGY"},
	PRECEDING_KEY_WORDS = {""},
	VALUE_CHANGE_TABLE = 
		{
			{"Chargeable", ShieldChargeAmount},
			{"ChargeMultiplier", ShieldChargeMultiplier},
		}},
	{ --Suit shields strength
	SPECIAL_KEY_WORDS = {"ID", "ENERGY"},	
	PRECEDING_KEY_WORDS = {"Suit_Energy"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ShieldStrength}
		}},
	{ --Suit shields refill
	SPECIAL_KEY_WORDS = {"ID", "ENERGY"},
	PRECEDING_KEY_WORDS = {"Suit_Energy_Regen"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", ShieldRefill}
		}},

	--Jetpack
	{ --Jetpack..Suit?
	SPECIAL_KEY_WORDS = {"ID", "JET1"},
	PRECEDING_KEY_WORDS = {"StatBonuses"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", JetpackSuit}
		}},
	{ --JetpackTank
	SPECIAL_KEY_WORDS = {"ID", "JET1"},	
	PRECEDING_KEY_WORDS = {"Suit_Jetpack_Tank"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", JetpackTank}
		}},
	-- { --JetpackDrain No Effect
	-- SPECIAL_KEY_WORDS = {"ID", "JET1"},
	-- PRECEDING_KEY_WORDS = {"Suit_Jetpack_Drain"},
	-- VALUE_CHANGE_TABLE =
		-- {
			-- {"Bonus", JetpackDrain}
		-- }
	-- },
	-- { --JetpackIgnition
	-- SPECIAL_KEY_WORDS = {"ID", "JET1"},
	-- PRECEDING_KEY_WORDS = {"Suit_Jetpack_Ignition"},
	-- VALUE_CHANGE_TABLE =
		-- {
			-- {"Bonus", JetpackIgnition}
		-- }
	-- },
	{ --JetpackRefill
	SPECIAL_KEY_WORDS = {"ID", "JET1"},
	PRECEDING_KEY_WORDS = {"Suit_Jetpack_Refill"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", JetpackRefill}
		}},

	-- { --Rocket Boots
	
	-- SPECIAL_KEY_WORDS = {"ID", "UT_JUMP"},
	-- PRECEDING_KEY_WORDS = {""},
	-- LINE_OFFSET = "+64",
	-- VALUE_CHANGE_TABLE 	= {{"IGNORE",	"IGNORE"}},
	-- ADD = 
		-- [[        <Property value="GcStatsBonus.xml">
			  -- <Property name="StatsTypes" value="GcStatsTypes.xml">
				-- <Property name="StatsType" value="Suit_Stamina_Strength" />
			  -- </Property>
			  -- <Property name="Bonus" value="10" />
			-- </Property>]]
	-- },


--LandExo
	{ --LandExo Engine
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
	VALUE_CHANGE_TABLE =
		{
			{"ChargeAmount", LandExoEngineChargeAmount},
			{"ChargeMultiplier", LandExoEngineChargeMultiplier},
		}},
	{ --LandExo Vehicle_Engine?
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_Engine"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoEngine}
		}},
	{ --LandExo Engine Drain
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_EngineFuelUse"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoEngineDrain}
		}},
	{ --LandExo Max Speed
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_EngineTopSpeed"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoMaxSpeed}
		}},
	{ --LandExo Grip
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_Grip"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoGrip}
		}},
	{ --LandExo Skid Grip
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_SkidGrip"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoSkidGrip}
		}},
	{ --LandExo Boost Speed
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_BOOST"},
	PRECEDING_KEY_WORDS = {"Vehicle_BoostSpeed"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoBoostSpeed}
		}},
	{ --LandExo Boost Tanks
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_BOOST"},
	PRECEDING_KEY_WORDS = {"Vehicle_BoostTanks"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoBoostTanks}
		}},
	
	{ --LandExo Mining Laser
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_LASER"},
	VALUE_CHANGE_TABLE =
		{
			{"ChargeAmount", LandExoLaserChargeAmount},
			{"ChargeMultiplier", LandExoLaserChargeMultiplier}
		}},	
	{ --LandExo Mining Laser Damage
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_LASER"},
	PRECEDING_KEY_WORDS = {"Vehicle_LaserDamage"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoLaserDamage}
		}},
	{ --LandExo Mining Laser Heat Time
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_LASER"},
	PRECEDING_KEY_WORDS = {"Vehicle_LaserHeatTime"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoLaserHeatTime}
		}},
	{ --LandExo Cannon
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},
	VALUE_CHANGE_TABLE =
		{
			{"ChargeAmount", LandExoCannonChargeAmount},
			{"ChargeMultiplier", LandExoCannonChargeMultiplier}
		}},
	{ --LandExo Cannon Damage
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},
	PRECEDING_KEY_WORDS = {"Vehicle_GunDamage"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoCannonDamage}
		}},
	{ --LandExo Cannon Heat Time
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},
	PRECEDING_KEY_WORDS = {"Vehicle_GunHeatTime"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoCannonHeatTime}
		}},
	{ --LandExo Cannon Fire Rate
	SPECIAL_KEY_WORDS = {"ID", "VEHICLE_GUN"},
	PRECEDING_KEY_WORDS = {"Vehicle_GunRate"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", LandExoCannonFireRate}
		}},

--Nautilon
	{ --Nautilon Engine
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},
	VALUE_CHANGE_TABLE =
		{
			{"ChargeAmount", NautilonEngineChargeAmount},
			{"ChargeMultiplier", NautilonEngineChargeMultiplier},
		}},
	{ --Nautilon Vehicle_Engine?
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_Engine"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonEngine}
		}},
	{ --Nautilon Engine Drain
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_EngineFuelUse"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonEngineDrain}
		}},
	{ --Nautilon Max Speed
	SPECIAL_KEY_WORDS = {"ID", "SUB_ENGINE"},
	PRECEDING_KEY_WORDS = {"Vehicle_EngineTopSpeed"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonMaxSpeed}
		}},
	{ --Nautilon Cannon
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},
	VALUE_CHANGE_TABLE =
		{
			{"ChargeAmount", NautilonCannonChargeAmount},
			{"ChargeMultiplier", NautilonCannonChargeMultiplier}
		}},
	{ --Nautilon Cannon Damage
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},
	PRECEDING_KEY_WORDS = {"Vehicle_GunDamage"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonCannonDamage}
		}},
	{ --Nautilon Cannon Heat Time
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},
	PRECEDING_KEY_WORDS = {"Vehicle_GunHeatTime"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonCannonHeatTime}
		}},
	{ --Nautilon Cannon Fire Rate
	SPECIAL_KEY_WORDS = {"ID", "SUB_GUN"},
	PRECEDING_KEY_WORDS = {"Vehicle_GunRate"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonCannonFireRate}
		}},
	
	-- { --Nautilon Mining Laser
	-- SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},
	-- VALUE_CHANGE_TABLE =
		-- {"Level", 3},
		-- {"ChargeAmount", NautilonLaserChargeAmount},
		-- {"ChargeMultiplier", NautilonLaserChargeMultiplier}
	-- },
	
	{ --Nautilon Laser Heat Time
	SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},
	PRECEDING_KEY_WORDS = {"Vehicle_LaserHeatTime"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonLaserHeatTime},
		}},
	{ --Nautilon Mining Laser Damage
	SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},
	PRECEDING_KEY_WORDS = {"Vehicle_LaserDamage"},
	VALUE_CHANGE_TABLE = 
		{
			{"Bonus", NautilonLaserDamage},
			{"Level", NautilonLaserDamageLevel},
			{"StatsType", "Weapon_Laser_Damage"},
		}},

	-- { 
	-- SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},
	-- PRECEDING_KEY_WORDS = {"Vehicle_LaserStrongLaser"},
	-- VALUE_CHANGE_TABLE =
		-- {
			-- {"StatsType", "Weapon_Laser_StrongLaser"},
			-- {"Level", 3},
		-- }
	-- },
	
	-- -- {--Add Weapon_Laser_StrongLaser
	-- -- SPECIAL_KEY_WORDS = {"ID", "SUB_LASER"},
	-- -- PRECEDING_KEY_WORDS = {""},
	-- -- LINE_OFFSET = "+92",
	-- -- VALUE_CHANGE_TABLE 	= {{"IGNORE",	"IGNORE"}},
	-- -- ADD = 
        -- -- [[	     <Property value="GcStatsBonus.xml">
          -- -- <Property name="StatsTypes" value="GcStatsTypes.xml">
            -- -- <Property name="StatsType" value="Weapon_Laser_StrongLaser" />
          -- -- </Property>
          -- -- <Property name="Bonus" value="1" />
          -- -- <Property name="Level" value="3" />
        -- -- </Property>]]
	-- -- },

--Starship
	{ --Starship Transfer Range
	SPECIAL_KEY_WORDS = {"ID", "SHIP_TELEPORT"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ShipTransferRange}
		}},
	{ --Starship Launcher
	SPECIAL_KEY_WORDS = {"ID", "LAUNCHER"},
	PRECEDING_KEY_WORDS = {"Ship_Launcher"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ShipLaunchCost}
		}},
	{ --Starship Efficient Thrusters
	SPECIAL_KEY_WORDS = {"ID", "UT_LAUNCHER"},
	PRECEDING_KEY_WORDS = {"Ship_Launcher_TakeOffCost"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ShipEfficientRate}
		}},	
	{
	SPECIAL_KEY_WORDS = {"ID", "UT_LAUNCHER"},
	PRECEDING_KEY_WORDS = {""},
	LINE_OFFSET = "+71",
	VALUE_CHANGE_TABLE 	= {{"IGNORE",	"IGNORE"}},
	ADD = 
        [[		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Launcher_AutoCharge" />
          </Property>
          <Property name="Bonus" value="0.5" />
          <Property name="Level" value="4" />
        </Property>]]
	},
	{ --Starship Launcher Recharger
	SPECIAL_KEY_WORDS = {"ID", "UT_LAUNCHCHARGE"},
	PRECEDING_KEY_WORDS = {"Ship_Launcher_AutoCharge"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ShipUTAutoCharge}
			--Any other bonuses? Maybe small bonus to launch cost, like reverse of efficient
		}},

--Translator
	{ --Tranlsator Simple
	SPECIAL_KEY_WORDS = {"ID", "UT_TRANSLATE1"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", SimpleTranslatorWords}
		}},	
	{ --Tranlsator Superior
	SPECIAL_KEY_WORDS = {"ID", "UT_TRANSLATE2"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", SuperiorTranslatorWords}
		}},
	{ --Tranlsator Advanced
	SPECIAL_KEY_WORDS = {"ID", "UT_TRANSLATE3"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", AdvancedTranslatorWords}
		}},
	{ --Tranlsator Artemis
	SPECIAL_KEY_WORDS = {"ID", "STORY_TRANSLATE"},
	VALUE_CHANGE_TABLE =
		{
			{"Bonus", ArtemisTranslatorWords}
		}},
}}}}}}