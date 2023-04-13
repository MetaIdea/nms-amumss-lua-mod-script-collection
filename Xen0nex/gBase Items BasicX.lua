Author = "Gumsk"			--Edited by Xen0nex
ModName = "gBase"
ModNameSub = "Items BasicX"
BaseDescription = "Removes restrictions on base building items, reduces effectiveness of mining machines, increases power usage of Biodomes"
GameVersion = "420"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"
FileSource2 = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN"		--Added by Xen0nex

MessageModRegion = 2		--Original 3/planet					~X (Vanilla is 2/Region?)
SolarRate = 50				--Original 50
SolarStorage = 0			--Original 0
BioRate = 50				--Original 50
BioStorage = 90000			--Original 180000		Sets how many seconds worth of fuel it can hold when full, default is 50 hours
BatteryRate = 0				--Original 0
BatteryStorage = 50000		--Original 50000
EMRate = 1					--Original 1 (C=175, B=220, A=250, S=300)
EMLimit = 0					--0				(Regional Limit)
EMAnywhere = "Power"		--Power, None for EMAnywhere
MineralRate = 10			--100					Setting this value above 1440000 disables base uploading
MineralStorage = 36000		--360000				Setting this value above 1440000 disables base uploading
MineralLimit = 0			--0				(Regional Limit)
GasRate = 10				--100					Setting this value above 1440000 disables base uploading
GasStorage = 36000			--360000				Setting this value above 1440000 disables base uploading
GasLimit = 0				--0				(Regional Limit)
SiloStorage = 144000		--Original 1440000		Setting this value above 1440000 disables base uploading
SiloLimit = 0				--0				(Regional Limit)
FreighterRate = 999999		--10000
ParagonDistance = 100000	--1000

--Additions by Xen0nex below
--(PlayerBase Limits)
EMBaseLimit = 0				--0
MineralBaseLimit = 8		--0
GasBaseLimit = 8			--0
SiloBaseLimit = 16			--0

BiodomeBaseLimit = 0		--0
BiodomePowerDraw = -160		--	-50 kPs		(Remember to make the value negative)
BiodomeFreighter = "False"	--Override for setting if Biodomes can be built on freighters or not

TeleportersBuildable = "True"	--"True"		Set this to "False" to disable the player from constructing Teleporters in bases or freighters. (You can still use Station Teleporters to teleport to your base or freighter)

--Changes to base values for extractor rates & storage in RegionHotspotsTable, to allow higher effective storage / extraction rates without disabling base uploading
	-- <Storage or Rate values above> / AmountCost * SubstanceYeild => in-game storage amount or rate
AmountCostAll =	 360000			--360000	Decreasing this increases the final effective storage amount and extraction rate for this substance. Must be an integer
SubstanceYeildAll = 1250		--250		Increasing this increases the final effective storage amount and extraction rate for this substance. Must be an integer

--Increasing these values crashes the game
--BaseExtractMinAll = 190			--190		Minimum range of the base extraction rate, before applying extractor or hotspot class modifiers
--BaseExtractMaxAll = 225			--225		Maximum range of the base extraction rate, before applying extractor or hotspot class modifiers



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
		{"IsDecoration","False"},
		{"IsPlaceable","True"},
		{"BuildableOnPlanetBase","True"},
		{"BuildableOnPlanet","True"},
		--{"BuildableOnPlanetWithProduct","True"},
		{"BuildableOnFreighter","True"},
		{"BuildableOnSpaceBase","True"},
		{"BuildableUnderwater","True"},
		{"BuildableAboveWater","True"},
		{"PlanetBaseLimit",0},
		{"RegionLimit",0},
		{"PlanetLimit",0},
		{"FreighterBaseLimit",0},
		{"CheckPlaceholderCollision","False"},
		{"CheckPlayerCollision","False"},
		{"CanRotate3D","True"},
		{"CanScale","True"},
		{"CanChangeColour","True"},
		{"CanChangeMaterial","True"},
		{"DependsOnEnvironment","None"},
		{"RemovesAttachedDecoration","False"},
		{"RemovesWhenUnsnapped","False"},
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
		{"DependentRate",BioRate},
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
		{"PlanetBaseLimit", EMBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",MineralStorage},
		{"Rate",MineralRate},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", MineralLimit},
		{"PlanetBaseLimit", MineralBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",GasStorage},
		{"Rate",GasRate},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", GasLimit},
		{"PlanetBaseLimit", GasBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",SiloStorage},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", SiloLimit},
		{"PlanetBaseLimit", SiloBaseLimit},
		}},
		{["SPECIAL_KEY_WORDS"] = {"ID","BIOROOM"},
	["VALUE_CHANGE_TABLE"] = {
		{"PlanetBaseLimit", BiodomeBaseLimit},
		{"Rate", BiodomePowerDraw},
		{"BuildableOnSpaceBase", BiodomeFreighter},
		{"BuildableOnFreighter", BiodomeFreighter},
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
		{"ShowInBuildMenu", TeleportersBuildable},					--True
		}},	
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER_F"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanetBase", "False"},
		{"BuildableOnSpaceBase", "False"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_TELEPO"},
	["VALUE_CHANGE_TABLE"] = {
		{"ShowInBuildMenu", TeleportersBuildable},					--True
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_DOOR_A"},		--Making this placable with "free place" prevents you from deleting it afterwards
	["VALUE_CHANGE_TABLE"] = {
		{"IsPlaceable", "False"},									--False
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_WALL"},		--Making this placable with "free place" seems to just place an invisible object
	["VALUE_CHANGE_TABLE"] = {
		{"IsPlaceable", "False"},									--False
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CORSTAIRS_SPACE"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanetBase", "False"},
		{"BuildableOnSpaceBase", "False"},
		}},
},},
	{--This section added by Xen0nex
		["MBIN_FILE_SOURCE"] 	= FileSource2,
		["EXML_CHANGE_TABLE"] 	= 
		{
			--[[
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"]         = "190", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MinRange", BaseExtractMinAll},
				}
			},
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"]         = "225", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxRange", BaseExtractMaxAll},
				}
			},
			]]
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountCost", AmountCostAll},
					{"SubstanceYeild", SubstanceYeildAll},
				}
			},
		}
	}
},}}}