SiloStorage = 9999999		--Original 1400000
TeleporterRate = -1			--Original -20
MiniPortalRate = 1			--Original
SolarPickup = "True"		--Original False
SolarRate = 100				--Original 50
SolarStorage = 50000		--Original 0
BioPickup = "True"			--Original False
BioRate = 200				--Original 50
BioStorage = 3600			--Original 3600
BatteryStorage = 200000		--Original 50000
MessageModRegion = 2		--Original 3/planet
MessageModPickup = "True"	--Original False
--MessageRegion = 2			--Original 3/planet
--MessagePickup = "True"		--Original False
EMAnyRate = 300				--Original 1 (C=175, B=220, A=250, S=300)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBase Items EM Anywhere 302a.pak",
["MOD_DESCRIPTION"]	= "Removes restrictions on base building items",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "303",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = {""},
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] = {
	--biome all
		{"BuildableOnPlanetBase","True"},
		{"BuildableOnPlanet","True"},
		{"BuildableOnPlanetWithProduct","True"},
		{"BuildableOnFreighter","True"},
		{"BuildableOnSpaceBase","True"},
		{"BuildableUnderwater","True"},
		{"BuildableAboveWater","True"},
		{"PlanetBaseLimit",0},
		{"RegionLimit",0},
		{"PlanetLimit",0},
		{"FreighterBaseLimit",0},
		{"SystemLimit",0},
		{"GlobalLimit",0},
		{"CheckPlaceholderCollision","False"},
		{"CanPlaceOnItself","True"},
		{"CanRotate3D","True"},
		{"CanScale","True"},
		{"CanChangeColour","True"},
		{"CanChangeMaterial","True"},
		--{"CanPickUp","True"},
		{"DependsOnEnvironment","None"},
--		{"DependsOnHotspots","None"},
		{"RemovesAttachedDecoration","False"},},},


	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",SiloStorage},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGEMODULE"},
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit",MessageModRegion},
		{"CanPickUp",MessageModPickup},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGE"},			--Buggy item; disabling it and letting message module take care of it.
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanetBase","False"},
		{"BuildableOnSpaceBase","False"},
		{"BuildableOnFreighter","False"},
		{"BuildableOnPlanet","False"},
		{"BuildableOnPlanetWithProduct","False"},
		{"BuildableUnderwater","False"},
		{"BuildableAboveWater","False"},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate",TeleporterRate},
		{"BuildableOnSpacebase", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_MINIPORTAL"},
	["VALUE_CHANGE_TABLE"] = {
		{"DependentRateRate",MiniPortalRate},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","W_WALL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},},},				--Needed to register completion in tutorial quests
	{["SPECIAL_KEY_WORDS"] = {"ID","W_FLOOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},},},				--Needed to register completion in tutorial quests
	{["SPECIAL_KEY_WORDS"] = {"ID","W_ROOF"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},},},				--Needed to register completion in tutorial quests
	{["SPECIAL_KEY_WORDS"] = {"ID","W_DOOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},},},				--Needed to register completion in tutorial quests
		
--Power
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"CanPickUp",SolarPickup},
		{"Rate",SolarRate},
		{"DependsOnEnvironment","DayNight"},
		{"Storage",SolarStorage},
		{"BuildableOnPlanet", "False"},},},				--Needed to register completion in tutorial quests
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"CanPickUp",BioPickup},
		{"DependentRateRate",BioRate},
		{"Storage",BioStorage},
		{"BuildableOnSpacebase", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",BatteryStorage},},},
	
	-- {["SPECIAL_KEY_WORDS"] = {"ID","U_PARAGON"},
	-- ["VALUE_CHANGE_TABLE"] = {
		-- {"IsPlaceable","True"},
		-- {"ConnectionDistance",10000},
		-- {"Rate",999999},
		-- {"Storage",999999},
		-- {"CanPickUp","True"},},},

	{["SPECIAL_KEY_WORDS"] = {"ID","U_GENERATOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"DependsOnHotspots","None"},
		{"Rate",EMAnyRate},
		-- {"NetworkSubGroup",4},
		-- {"NetworkMask",1464},
		-- {"ConnectionDistance",5000},
		},},

		
},}},}}}