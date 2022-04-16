Author = "Gumsk"
ModName = "gBase"
ModNameSub = "Items 2x"
BaseDescription = "Removes restrictions on base building items"
GameVersion = "384"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"

MessageModRegion = 2		--Original 3/planet
SolarRate = 100				--Original 50
SolarStorage = 0			--Original 0
BioRate = 500				--Original 50
BioStorage = 250			--Original 3600
BatteryRate = 0				--Original 0
BatteryStorage = 100000		--Original 50000
EMRate = 500				--Original 1 (C=175, B=220, A=250, S=300)
EMLimit = 0					--0
EMAnywhere = "Power"		--Power, None for EMAnywhere
MineralRate = 200			--100
MineralStorage = 720000		--360000
MineralLimit = 0			--0
GasRate = 200				--100
GasStorage = 720000			--360000
GasLimit = 0				--0
SiloStorage = 2880000		--Original 1440000
SiloLimit = 0				--0
FreighterRate = 999999		--10000
ParagonDistance = 100000	--1000

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = {""},
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] = {
		{"IsPlaceable","True"},
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
		{"RemovesAttachedDecoration","False"},
		}},

	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGEMODULE"},
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit",MessageModRegion},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGE"},			--Buggy item; disabling it and letting message module take care of it.
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit",1},
		-- {"BuildableOnPlanetBase","False"},
		-- {"BuildableOnSpaceBase","False"},
		-- {"BuildableOnFreighter","False"},
		-- {"BuildableOnPlanet","False"},
		-- {"BuildableOnPlanetWithProduct","False"},
		-- {"BuildableUnderwater","False"},
		-- {"BuildableAboveWater","False"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"ID","T_WALL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","T_FLOOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","T_ROOF6"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","T_DOOR1"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate",SolarRate},
		{"Storage",SolarStorage},
		{"DependsOnEnvironment","DayNight"},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"DependentRateRate",BioRate},
		{"Storage",BioStorage},
		{"BuildableOnSpacebase", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"Rate",BatteryRate},
		{"Storage",BatteryStorage},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GENERATOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"DependsOnHotspots",EMAnywhere},
		{"Rate",EMRate},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", EMLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",MineralStorage},
		{"Rate",MineralRate},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", MineralLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",GasStorage},
		{"Rate",GasRate},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", GasLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",SiloStorage},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"PlanetBaseLimit", SiloLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_PARAGON"},
	["VALUE_CHANGE_TABLE"] = {
		{"ConnectionDistance",ParagonDistance},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","AIRLCKCONNECTOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate", FreighterRate},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnSpaceBase", "False"},
		}},	
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER_F"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnPlanetBase", "False"},
		{"BuildableOnSpaceBase", "False"},
		}},
	
},}},}}}