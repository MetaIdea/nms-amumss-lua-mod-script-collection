--Life support (PROTECT)
	ProtectChargeAmount = 80				--80
	ProtectChargeMultiplier = 1				--1
	ProtectSuitAmount = 1					--1
	ProtectSuitLevel =	1					--1
--	ProtectValue = 10						--10
	ProtectRad = 1							--1
	ProtectTox = 1							--1
	ProtectCold = 1							--1
	ProtectHeat = 1							--1
	ProtectRegen = 1						--1

--Life Support main upgrade (UT_PROTECT)
	UT_ProtectSuitAmount = 0.2				--0.2
	UT_ProtectSuitLevel = 2					--2
--	UT_ProtectValue = 10					--10
	UT_ProtectRad = 1						--0
	UT_ProtectTox = 1						--0
	UT_ProtectCold = 1						--0
	UT_ProtectHeat = 1						--0
	UT_ProtectRegen = 1.1					--1.1

--Suit shields (ENERGY)
	ShieldChargeAmount = 100				--100
	ShieldChargeMultiplier = 1				--1
	ShieldStrength = 1						--1
	ShieldRegen = 1							--1

--Suit shields main upgrade (UT_ENERGY)
	UT_ShieldStrength = 1					--1
--	UT_ShieldRegen = 1						--1
--	Protect bonuses?

--Jetpack
	JetpackSuit = 1							--1 . ???
	JetpackTank = 7							--2.75 . How big is the jetpack tank? 2=1s burn?
	JetpackDrain = 1						--1 . No effect. How quickly does the jetpack tank drain?
	JetpackIgnition = 10					--1 . No apparent effect. What even is this?
	JetpackRegen = 2						--1 . How quickly does the jetpack tank Regen? 7x tank size = instant.
	--RocketBootsSpeed = 4					--Boost to speed granted by Rocket Boots. My addition. Inactive

--Jetpack main upgrade (UT_JET)
	-- JetpackSuit = 1						--0 . ???
	-- JetpackDrain = 1						--0 . No effect. How quickly does the jetpack tank drain?
	-- JetpackIgnition = 10					--0 . No apparent effect. What even is this?
	UT_JetpackTank = 0.4					--0.2 . How big is the jetpack tank? 2=1s burn?
	UT_JetpackRegen = 1.4					--1.1 . How quickly does the jetpack tank Regen? 7x tank size = instant.
	UT_JetpackStamina = 0.1					--0.1
	UT_JetpackStaminaRegen = 1.2			--1.2 .

--rocket boots
--midair refill

--Environmental
--hot
--cold
--tox
--rad
--water

--Translator Adjustments
	SimpleTranslatorWords = 2				--How many words does the Simple Translator translate? Original value "1"
	SuperiorTranslatorWords	= 4				--How many words does the Superior Translator translate? Original value "2"
	AdvancedTranslatorWords	= 6				--How many words does the Advanced Translator translate? Original value "3"
	ArtemisTranslatorWords = 4				--How many words does the Story/Artemis Translator translate? Original value "1"

--Starship Basic Launcher (LAUNCHER)
	ShipLaunchCost = 20						--50
	ShipAutoCharge = 1						--0

--Starship Efficient Thrusters (UT_LAUNCHER)
	ShipEfficientLaunch = 0.6				--0.8 
	ShipEfficientAutoCharge = 2				--0

--Starship Launch Recharger (UT_LAUNCHCHARGE)
	ShipUTAutoCharge = 4					--1







--Starship Adjustments
	ShipTransferRange = 800					--How much distance does the Teleport Receiver tech add, in u? Original value "150"
	
	--Ship Movement Adjustments
		-- ShipAtmoAcceleration = 10				--How quickly does the starship vroom in the atmosphere, in u/s? Original value "1"
		-- ShipSpaceAcceleration = 10				--How quickly does the starship vroom in space, in u/s? Original value "1"
		-- ShipAtmoMaxSpeed = 10					--How much can the starship vroom in the atmosphere, in u/s? Original value "1"
		-- ShipSpaceMaxSpeed = 10					--How much can the starship vroom in space, in u/s? Original value "1"
		-- ShipAtmoMinSpeed = 0					--How little can the starship vroom in the atmosphere, in u/s? Original value "20"



--Multitool Adjustments
	--Mining Laser Adjustments (LASER)
	--Weapon_Laser_Mining_Speed
	--Terrain Editor Adjustments (TERRAINEDITOR)	
	--Geology Cannon Adjustments (TERRAIN_GREN)
	AdvancedLaserSpeed = 0.85
	UT_MinerBonus = 1.5



--LandExo
	--LandExo Engine
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
	
	--Weapon_TerrainEdit
	--Weapon_TerrainGren

--Deuterium Adjustments
	--DeuteriumReplacement = "Tritium"	--What element should replace Deuterium requirements?


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GTT 224d.pak",
["MOD_DESCRIPTION"]	= "All my changes to the Technology Table",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.24",
["MODIFICATIONS"]	=
{
{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{
{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
["EXML_CHANGE_TABLE"] = 
{
--Life Support
	{ --Life Support general
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"ChargeAmount", ProtectChargeAmount},
			{"ChargeMultiplier", ProtectChargeMultiplier},
--			{"Value", ProtectValue},
		}},
	{ --Life Support general damage reduction
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Protection"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ProtectSuitAmount},
			{"Level", ProtectSuitLevel}
		}},
	{ --Life support protection for radiation
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},
	["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Radiation"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", ProtectRad}
		}},
	{ --Life support protection for toxins
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Toxic"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ProtectTox}
		}},
	{ --Life support protection for cold
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},
	["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Cold"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", ProtectCold}
		}},
	{ --Life support protection for heat
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Heat"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ProtectHeat}
		}},
	{ --Life support recovery
	["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Recovery"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ProtectRegen}
		}},

--Life Support
	{ --Life Support general damage reduction
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Protection"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_ProtectSuitAmount},
			{"Level", UT_ProtectSuitLevel}
		}},
	-- { --Life support protection for radiation
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Radiation"},
	-- ["VALUE_CHANGE_TABLE"] = 
		-- {
			-- {"Bonus", UT_ProtectRad}
		-- }},
	-- { --Life support protection for toxins
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},	
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Toxic"},
	-- ["VALUE_CHANGE_TABLE"] =
		-- {
			-- {"Bonus", UT_ProtectTox}
		-- }},
	-- { --Life support protection for cold
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Cold"},
	-- ["VALUE_CHANGE_TABLE"] = 
		-- {
			-- {"Bonus", UT_ProtectCold}
		-- }},
	-- { --Life support protection for heat
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},	
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_DamageReduce_Heat"},
	-- ["VALUE_CHANGE_TABLE"] =
		-- {
			-- {"Bonus", UT_ProtectHeat}
		-- }},
	{ --Life support recovery
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Recovery"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_ProtectRegen}
		}},

--Suit shields
	{ --Suit shields general
	["SPECIAL_KEY_WORDS"] = {"ID", "ENERGY"},
	["PRECEDING_KEY_WORDS"] = {""},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Chargeable", ShieldChargeAmount},
			{"ChargeMultiplier", ShieldChargeMultiplier},
		}},
	{ --Suit shields strength
	["SPECIAL_KEY_WORDS"] = {"ID", "ENERGY"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Energy"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ShieldStrength}
		}},
	{ --Suit shields Regen
	["SPECIAL_KEY_WORDS"] = {"ID", "ENERGY"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Energy_Regen"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", ShieldRegen}
		}},

--Suit shields main upgrade (UT_ENERGY)
	{ --Suit shields strength
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_ENERGY"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Energy"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_ShieldStrength}
		}},
	-- { --Suit shields Regen
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_ENERGY"},
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_Energy_Regen"},
	-- ["VALUE_CHANGE_TABLE"] = 
		-- {
			-- {"Bonus", UT_ShieldRegen}
		-- }},

	--Jetpack
	{ --Jetpack..Suit?
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
	["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", JetpackSuit}
		}},
	{ --JetpackTank
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", JetpackTank}
		}},
	{ --JetpackDrain No Effect
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Drain"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", JetpackDrain}
		}},
	{ --JetpackIgnition
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Ignition"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", JetpackIgnition}
		}},
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Regen"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", JetpackRegen}
		}},

	--Jetpack main upgrade (UT_JET)
	-- { --Jetpack..Suit?
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
	-- ["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
	-- ["VALUE_CHANGE_TABLE"] = 
		-- {
			-- {"Bonus", UT_JetpackSuit}
		-- }},
	{ --JetpackTank
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},	
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_JetpackTank}
		}},
	-- { --JetpackDrain No Effect
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Drain"},
	-- ["VALUE_CHANGE_TABLE"] =
		-- {
			-- {"Bonus", UT_JetpackDrain}
		-- }
	-- },
	-- { --JetpackIgnition
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
	-- ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Ignition"},
	-- ["VALUE_CHANGE_TABLE"] =
		-- {
			-- {"Bonus", UT_JetpackIgnition}
		-- }
	-- },
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Regen"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_JetpackRegen}
		}},
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Strength"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_JetpackStamina}
		}},
		{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Recovery"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_JetpackStaminaRegen}
		}},




	-- -- { -- Jetpack rocket boots (UT_JUMP)
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JUMP"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_DoubleJump"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1},
			-- -- {"Level", 3}
		-- -- }
	-- -- },
	
	-- -- { -- Jetpack midair recharge (UT_MIDAIR)
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_MIDAIR"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_MidairRefill"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1},
			-- -- {"Level", 4}
		-- -- }
	-- -- },




	-- -- { -- Hazard main heat upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_HOT"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Protection_HeatDrain"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1.2},
			-- -- {"Level", 1}
		-- -- }
	-- -- },

	-- -- { -- Hazard main cold upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_COLD"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Protection_ColdDrain"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1.2},
			-- -- {"Level", 1}
		-- -- }
	-- -- },

	-- -- { -- Hazard main toxic upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_TOX"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Protection_ToxDrain"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1.2},
			-- -- {"Level", 1}
		-- -- }
	-- -- },

	-- -- { -- Hazard main radiation upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_RAD"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Protection_RadDrain"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1.2},
			-- -- {"Level", 1}
		-- -- }
	-- -- },

	-- -- { -- Hazard main underwater upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_WATER"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Protection_WaterDrain"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1.33},
			-- -- {"Level", 2}
		-- -- }
	-- -- },

-- --POWERGLOVE

	-- -- { -- Hazard underwater jetpack upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_WATERJET"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_WaterEfficiency"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1},
			-- -- {"Level", 3}
		-- -- }
	-- -- },

	-- -- { -- Hazard underwater life support upgrade
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "UT_WATERENERGY"},
	-- -- ["PRECEDING_KEY_WORDS"] = {"Suit_UnderwaterLifeSupport"},
	-- -- ["VALUE_CHANGE_TABLE"] =
		-- -- {
			-- -- {"Bonus", 1},
			-- -- {"Level", 3}
		-- -- }
	-- -- },

--Translator
	{ --Tranlsator Simple
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_TRANSLATE1"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", SimpleTranslatorWords}
		}},	
	{ --Tranlsator Superior
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_TRANSLATE2"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", SuperiorTranslatorWords}
		}},
	{ --Tranlsator Advanced
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_TRANSLATE3"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", AdvancedTranslatorWords}
		}},
	{ --Tranlsator Artemis
	["SPECIAL_KEY_WORDS"] = {"ID", "STORY_TRANSLATE"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ArtemisTranslatorWords}
		}},

{ --Starship Launcher
	["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
	["PRECEDING_KEY_WORDS"] = {"Ship_Launcher"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ShipLaunchCost}
		}},
	{
	["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
	["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
--	["LINE_OFFSET"] = "+1",
	["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
	["ADD"] =
        [[		<Property value="GcStatsBonus.xml">
          <Property name="StatsTypes" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Launcher_AutoCharge" />
          </Property>
          <Property name="Bonus" value="100" />
          <Property name="Level" value="4" />
        </Property>]]
		},




	{ --Starship Efficient Thrusters
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHER"},
	["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ShipEfficientLaunch}
		}},




--ShipEfficientAutoCharge



	{ --Starship Launcher Recharger
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHCHARGE"},
	["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_AutoCharge"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ShipUTAutoCharge}
			--Any other bonuses? Maybe small bonus to launch cost, like reverse of efficient
		}},




--Starship
	{ --Starship Transfer Range
	["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", ShipTransferRange}
		}},



--Mining
	{--Advanced Mining Laser (STRONGLASER)
	["SPECIAL_KEY_WORDS"] = {"ID", "STRONGLASER"},
	["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", AdvancedLaserSpeed}
		}},
	{--Optical Drill (UT_MINER))
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_MINER"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"Bonus", UT_MinerBonus}
		}},



--LandExo
	{ --LandExo Engine
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"ChargeAmount", LandExoEngineChargeAmount},
			{"ChargeMultiplier", LandExoEngineChargeMultiplier},
		}},
	{ --LandExo Vehicle_Engine?
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_Engine"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoEngine}
		}},
	{ --LandExo Engine Drain
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoEngineDrain}
		}},
	{ --LandExo Max Speed
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineTopSpeed"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoMaxSpeed}
		}},
	{ --LandExo Grip
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_Grip"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoGrip}
		}},
	{ --LandExo Skid Grip
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_SkidGrip"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoSkidGrip}
		}},
	{ --LandExo Boost Speed
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_BOOST"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostSpeed"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoBoostSpeed}
		}},
	{ --LandExo Boost Tanks
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_BOOST"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostTanks"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoBoostTanks}
		}},
	
	{ --LandExo Mining Laser
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_LASER"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"ChargeAmount", LandExoLaserChargeAmount},
			{"ChargeMultiplier", LandExoLaserChargeMultiplier}
		}},	
	{ --LandExo Mining Laser Damage
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_LASER"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_LaserDamage"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoLaserDamage}
		}},
	{ --LandExo Mining Laser Heat Time
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_LASER"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_LaserHeatTime"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoLaserHeatTime}
		}},
	{ --LandExo Cannon
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GUN"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"ChargeAmount", LandExoCannonChargeAmount},
			{"ChargeMultiplier", LandExoCannonChargeMultiplier}
		}},
	{ --LandExo Cannon Damage
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GUN"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoCannonDamage}
		}},
	{ --LandExo Cannon Heat Time
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GUN"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_GunHeatTime"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoCannonHeatTime}
		}},
	{ --LandExo Cannon Fire Rate
	["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GUN"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", LandExoCannonFireRate}
		}},

--Nautilon
	{ --Nautilon Engine
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"ChargeAmount", NautilonEngineChargeAmount},
			{"ChargeMultiplier", NautilonEngineChargeMultiplier},
		}},
	{ --Nautilon Vehicle_Engine?
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_Engine"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonEngine}
		}},
	{ --Nautilon Engine Drain
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonEngineDrain}
		}},
	{ --Nautilon Max Speed
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineTopSpeed"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonMaxSpeed}
		}},
	{ --Nautilon Cannon
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
	["VALUE_CHANGE_TABLE"] =
		{
			{"ChargeAmount", NautilonCannonChargeAmount},
			{"ChargeMultiplier", NautilonCannonChargeMultiplier}
		}},
	{ --Nautilon Cannon Damage
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonCannonDamage}
		}},
	{ --Nautilon Cannon Heat Time
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_GunHeatTime"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonCannonHeatTime}
		}},
	{ --Nautilon Cannon Fire Rate
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonCannonFireRate}
		}},
	
	-- { --Nautilon Mining Laser
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER"},
	-- ["VALUE_CHANGE_TABLE"] =
		-- {"Level", 3},
		-- {"ChargeAmount", NautilonLaserChargeAmount},
		-- {"ChargeMultiplier", NautilonLaserChargeMultiplier}
	-- },
	
	{ --Nautilon Laser Heat Time
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_LaserHeatTime"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonLaserHeatTime},
		}},
	{ --Nautilon Mining Laser Damage
	["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER"},
	["PRECEDING_KEY_WORDS"] = {"Vehicle_LaserDamage"},
	["VALUE_CHANGE_TABLE"] = 
		{
			{"Bonus", NautilonLaserDamage},
			{"Level", NautilonLaserDamageLevel},
			{"StatsType", "Weapon_Laser_Damage"},
		}},

	-- { 
	-- ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER"},
	-- ["PRECEDING_KEY_WORDS"] = {"Vehicle_LaserStrongLaser"},
	-- ["VALUE_CHANGE_TABLE"] =
		-- {
			-- {"StatsType", "Weapon_Laser_StrongLaser"},
			-- {"Level", 3},
		-- }
	-- },
	
	-- -- {--Add Weapon_Laser_StrongLaser
	-- -- ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER"},
	-- -- ["PRECEDING_KEY_WORDS"] = {""},
	-- -- ["LINE_OFFSET"] = "+92",
	-- -- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
	-- -- ["ADD"] = 
        -- -- [[	     <Property value="GcStatsBonus.xml">
          -- -- <Property name="StatsTypes" value="GcStatsTypes.xml">
            -- -- <Property name="StatsType" value="Weapon_Laser_StrongLaser" />
          -- -- </Property>
          -- -- <Property name="Bonus" value="1" />
          -- -- <Property name="Level" value="3" />
        -- -- </Property>]]
	-- -- },

}}}}}}