MessageModRegion = 2		--Original 3/planet
MessageModPickup = "True"	--Original False
SolarRate = 100				--Original 50
SolarStorage = 50000		--Original 0
BioPickup = "True"			--Original False
BioRate = 200				--Original 50
BioStorage = 3600			--Original 3600
BatteryStorage = 200000		--Original 50000
MineralRate = 100			--100
MineralStorage = 9999999	--360000
MineralLimit = 0			--0
GasRate = 100				--100
GasStorage = 9999999		--360000
GasLimit = 0				--0
SiloStorage = 9999999		--Original 1400000
SiloLimit = 0				--0

--MessageRegion = 2			--Original 3/planet
--MessagePickup = "True"		--Original False
EMAnyRate = 200				--Original 1 (C=175, B=220, A=250, S=300)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBase 262a Items.pak",
["MOD_DESCRIPTION"]	= "Removes restrictions on base building items",
["MOD_AUTHOR"]		= "+Gumsk",
["NMS_VERSION"]		= "262",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = {""},
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] = {
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
		{"DependsOnEnvironment","None"},
		{"RemovesAttachedDecoration","False"},},},



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
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate",SolarRate},
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
	{["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",MineralStorage},
		{"Rate",MineralRate},
		{"RegionLimit", MineralLimit},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",GasStorage},
		{"Rate",GasRate},
		{"RegionLimit", GasLimit},},},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",SiloStorage},
		{"PlanetBaseLimit", SiloLimit},},},
	
},}},}}}