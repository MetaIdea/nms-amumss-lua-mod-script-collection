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
EMAnyRate = 200				--Original 1 (C=175, B=220, A=250, S=300)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBase Items Placement Only 262a.pak",
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
		{"DependsOnEnvironment","None"},
		{"RemovesAttachedDecoration","False"},},},

	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGEMODULE"},
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit",MessageModRegion},},},
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
		{"BuildableOnSpacebase", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},},},
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
		{"DependsOnEnvironment","DayNight"},
		{"BuildableOnPlanet", "False"},},},				--Needed to register completion in tutorial quests
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpacebase", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},},},

		
},}},}}}