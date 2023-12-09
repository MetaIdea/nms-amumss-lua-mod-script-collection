Author = "Gumsk"			--Edited by Xen0nex
ModName = "gBase"
ModNameSub = "Items BasicX"
BaseDescription = "Removes restrictions on base building items, reduces effectiveness of mining machines, increases power usage of Biodomes"
GameVersion = "446"
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
EMRate = 1					--Original 1 (C= ~175, B= ~220, A= ~250, S= ~300)
EMLimit = 0					--0				(Regional Limit)
EMAnywhere = "Power"		--Power, None for EMAnywhere
MineralRate = 2*50/5		--100					Setting this value above 1440000 disables base uploading
MineralStorage = 2*180000/5	--360000				Setting this value above 1440000 disables base uploading
MineralLimit = 0			--0				(Regional Limit)
GasRate = 2*50/5			--100					Setting this value above 1440000 disables base uploading
GasStorage = 2*180000/5		--360000				Setting this value above 1440000 disables base uploading
GasLimit = 0				--0				(Regional Limit)
SiloStorage = 2*720000/5	--Original 1440000		Setting this value above 1440000 disables base uploading
SiloLimit = 0				--0				(Regional Limit)
FreighterRate = 999999		--10000
ParagonDistance = 100000	--1000

--Additions by Xen0nex below
--(PlayerBase Limits)
EMClassBStrength = 200		--250		Strength for Class B Electromagnetic Power hotspots (Vanilla is C=150, B=220, A=250, S=300)
EMBaseLimit = 0				--0
MineralBaseLimit = 8		--0
GasBaseLimit = 8			--0
SiloBaseLimit = 16			--0

PlanterPowerDraw = -6		--	-5 kPs		(Remember to make the value negative)
LargePlanterPowerDraw = -16	--	-20 kPs		(Remember to make the value negative)
BiodomeBaseLimit = 0		--0
BiodomePowerDraw = -160		--	-50 kPs		(Remember to make the value negative)

TeleportersBuildable = "True"	--"True"		Set this to "False" to disable the player from constructing any Teleporters in bases or freighters at all. (You can still use Station Teleporters to teleport to your base or freighter)

--Reverts certain things to not be buildable on freighters, since they have dedicated freighter rooms for them instead
StandPlanterFreighter = "False"	--"True"		Override for setting if Standing Planters can be built on freighters or not
CropsFreighter = "False"		--"False"		Override for setting if Hydroponic Trays, Large Hydroponic Trays, and Biodomes can be built on freighters or not
RefinersFreighter = "False"		--"False"		Override for setting if Nutrient Processors, Medium/Large Refiners can be built on freighters or not
OtherFreighter = "False"		--"False"		Override for setting if regular Galactic Trade Terminals, Appearance Modifiers, Storage Containers can be built on freighters or not

--Controls whether any "decorative" freighter rooms / doors / walkways / storage rooms / etc. are buildable on planets or not
FreighterRoomsPlanetside = "True"	--"False"	Override for setting if various Freighter rooms/doors/walkways/storage rooms/etc. without special functions can be built on planets or not.
PossibleFreighterRooms = {"FRE_ROOM_IND", "FRE_ROOM_IND1", "FRE_ROOM_LADDER", "FRE_ROOM_STORE0", "FRE_ROOM_STORE1", "FRE_ROOM_STORE2", "FRE_ROOM_STORE3", "FRE_ROOM_STORE4", "FRE_ROOM_STORE5", "FRE_ROOM_STORE6", "FRE_ROOM_STORE7", "FRE_ROOM_STORE8", "FRE_ROOM_STORE9", "FRE_CORR_A", "FRE_CORR_A_GLAS", "FRE_CORR_A_L", "FRE_CORR_A_STR", "FRE_CORR_A_T", "FRE_CORR_GLA_L", "FRE_CORR_GLA_ST", "FRE_CORR_GLA_T", "FRE_CORR_G_STA", "FRE_EXT_PLATFOR", "FRE_EXT_WALKWAY", "FRE_EXT_W_STA", "FRE_FACE_DOOR_A", "FRE_FACE_WALL", "FRE_FACE_WINDOW", "FRE_ROOM_LADDER", "FRE_CORR_STA", }

--Changes to base values for extractor rates & storage in RegionHotspotsTable, to allow higher effective storage / extraction rates without disabling base uploading
	-- <Storage or Rate values above> / AmountCost * SubstanceYeild => in-game storage amount or rate
	--NOTE: The "Diminishing Returns" threshold is calculated in reference to AmountCostAll & SubstanceYeildAll. IE the vanilla threshold of 1000 units/hr can be raised or lowered by altering these values.
AmountCostAll =	 360000/5		--360000	Decreasing this increases the final effective storage amount and extraction rate for this substance. Must be an integer. (Setting this value above 1440000 may possibly disable base uploading?)
SubstanceYeildAll = 250/2		--250		Increasing this increases the final effective storage amount and extraction rate for this substance. Must be an integer
	--NOTE: As a secondary effect, SubstanceYeild appears to control the smallest "step" or "increment" of BOTH how much total storage your extraction network can have, and the size of the "packets" of substances that get periodically delivered to the storage. E.G. in Vanilla your total storage will be in increments of the nearest 250, and each time 250 substances get "collected" by the Extractors, the amount currently in the storage will go up by 250 as it sends a "packet".
	--Thus, you should generally set SubstanceYeild to match the in-game storage size of the smallest extractor network object (Supply Depot, Mineral/Gas Extractor), or if using a smaller number make sure it divides cleanly into all your storage sizes
	--ALSO NOTE: The ratio of SubstanceYeild to AmountCost appears to control the smallest "step" or "increment" of extraction rate for Mineral / Gas Extractors. E.G. In vanilla Extractors round their extraction rate to the nearest multiple of "1 units/hr". Multiplying SubstanceYeild by 10 OR dividing AmountCost by 10 will make Extractors round their extraction rate to the nearest multiple of "25 units/hr".

--Increasing these values crashes the game
--BaseExtractMinAll = 190		--190		Minimum range of the base extraction rate, before applying extractor or hotspot class modifiers
--BaseExtractMaxAll = 225		--225		Maximum range of the base extraction rate, before applying extractor or hotspot class modifiers

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
		{"Storage",math.floor(1*MineralStorage)},
		{"Rate",math.floor(1*MineralRate)},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", MineralLimit},
		{"PlanetBaseLimit", MineralBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",math.floor(1*GasStorage)},
		{"Rate",math.floor(1*GasRate)},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", GasLimit},
		{"PlanetBaseLimit", GasBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",math.floor(1*SiloStorage)},
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"RegionLimit", SiloLimit},
		{"PlanetBaseLimit", SiloBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CARBONPLANTER"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", StandPlanterFreighter},
		{"BuildableOnFreighter", StandPlanterFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","PLANTER"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate", PlanterPowerDraw},
		{"BuildableOnSpaceBase", CropsFreighter},
		{"BuildableOnFreighter", CropsFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","PLANTERMEGA"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate", LargePlanterPowerDraw},
		{"BuildableOnSpaceBase", CropsFreighter},
		{"BuildableOnFreighter", CropsFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BIOROOM"},
	["VALUE_CHANGE_TABLE"] = {
		{"PlanetBaseLimit", BiodomeBaseLimit},
		{"Rate", BiodomePowerDraw},
		{"BuildableOnSpaceBase", CropsFreighter},
		{"BuildableOnFreighter", CropsFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","COOKER"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", RefinersFreighter},
		{"BuildableOnFreighter", RefinersFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER2"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", RefinersFreighter},
		{"BuildableOnFreighter", RefinersFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER3"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", RefinersFreighter},
		{"BuildableOnFreighter", RefinersFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILDTERMINAL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","DRESSING_TABLE"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER0"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER1"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER2"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER3"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER4"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER5"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER6"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER7"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER8"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CONTAINER9"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnSpaceBase", OtherFreighter},
		{"BuildableOnFreighter", OtherFreighter},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_EXTR"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetBase", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_NPCVEH"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetBase", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_NPCWEA"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetBase", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_REFINE"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetBase", "False"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_VEHICL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetBase", "False"},
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
					{"AmountCost", math.floor(1*AmountCostAll)},
					{"SubstanceYeild", math.floor(1*SubstanceYeildAll)},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData.xml"},
				["PRECEDING_KEY_WORDS"] = "ClassStrengths",
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"B", EMClassBStrength},
				}
			},
		}
	}
},}}}


local ChangesToBaseTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #PossibleFreighterRooms do
	local FreID = PossibleFreighterRooms[i]
		
			ChangesToBaseTable[#ChangesToBaseTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID",FreID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableOnPlanet", FreighterRoomsPlanetside},
					{"BuildableOnPlanetBase", FreighterRoomsPlanetside},
				}
			}
end