Author = "Gumsk"
ModName = "GTech"
ModNameSub = "Alien Installs+Jetpack"
BaseDescription = "Enable restricted technology for alien ships and exocraft"
GameVersion = "352"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

--Jetpack
	JetpackTank = 9999											--2.75 ; Jetpack tank size
	JetpackDrain = 1											--1 ; No effect.
	JetpackIgnition = 9999										--1 ; No effect?
	JetpackRegen = 9999											--1 ; 7x tank size = instant refill.

--Jetpack main upgrade (UT_JET)
	UT_JetpackTank = 0.4										--0.2 ; Jetpack tank size
	UT_JetpackRegen = 1.4										--1.1 ; 7x tank size = instant refill.
	UT_JetpackStamina = 0.1										--0.1
	UT_JetpackStaminaRegen = 1.2								--1.2

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"]	= {

	{ --Add Economy Scanner
	["SPECIAL_KEY_WORDS"] = {"ID","SHIPSCAN_ECON","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Conflict Scanner
	["SPECIAL_KEY_WORDS"] = {"ID","SHIPSCAN_COMBAT","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},
	
	{ --Emergency Warp
	["SPECIAL_KEY_WORDS"] = {"ID","UT_QUICKWARP","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Teleport Receiver
	["SPECIAL_KEY_WORDS"] = {"ID","SHIP_TELEPORT","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Rocket Launcher
	["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Rockets Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","UT_ROCKETS","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Photonix Core
	["SPECIAL_KEY_WORDS"] = {"ID","PHOTONIX_CORE","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Shotgun
	["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Shotgun Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","T_SHIPSHOT","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Shotgun Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPSHOT","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Minigun
	["SPECIAL_KEY_WORDS"] = {"ID","SHIPMINIGUN","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Minigun Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","T_SHIPMINI","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Minigun Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPMINI","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Infra-Knife
	["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Infra-Knife Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","T_SHIPBLOB","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},

	{ --Ship Infra-Knife Upgrade
	["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPBLOB","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllShips"}}},
		
	{ --Exocraft combined hazard protection
	["SPECIAL_KEY_WORDS"] = {"ID","MECH_PROT","Category","GcTechnologyCategory.xml"},
		["VALUE_CHANGE_TABLE"] = {{"TechnologyCategory","AllVehicles"}}},
	
	
	{ --JetpackTank
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},	
		["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", JetpackTank}}},
	{ --JetpackDrain No Effect
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", JetpackDrain}}},
	{ --JetpackIgnition
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", JetpackIgnition}}},
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", JetpackRegen}}},
	{ --JetpackTank
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},	
		["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", UT_JetpackTank}}},
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", UT_JetpackRegen}}},
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", UT_JetpackStamina}}},
	{ --JetpackRegen
	["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus", UT_JetpackStaminaRegen}}},
	
	
}}}}}}