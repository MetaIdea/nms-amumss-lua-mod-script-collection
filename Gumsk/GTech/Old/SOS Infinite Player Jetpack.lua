--Jetpack
	JetpackTank = 9999											--2.75 ; Jetpack tank size
	JetpackDrain = 1											--1 ; No effect.
	JetpackIgnition = 1											--1 ; No effect?
	JetpackRegen = 9999											--1 ; 7x tank size = instant refill.
	--RocketBootsSpeed = 4										--Boost to speed granted by Rocket Boots. My addition. Inactive

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "SOS Infinite Jetpack.pak",
["MOD_DESCRIPTION"]		= "Changes to the Technology Table for inifinite jetpack tanks",
["MOD_AUTHOR"]			= "Gumsk",
["NMS_VERSION"]			= "2.4.1",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {{
["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
["EXML_CHANGE_TABLE"]	= {
--Jetpack
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
}}}}}}