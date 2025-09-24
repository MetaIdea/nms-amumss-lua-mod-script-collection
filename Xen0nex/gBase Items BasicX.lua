Author = "Gumsk"			--Edited by Xen0nex
ModName = "gBase"
ModNameSub = "Items BasicX"
BaseDescription = "Removes restrictions on base building items, reduces effectiveness of mining machines, increases power usage of Biodomes"
GameVersion = "6_04"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"
FileSource2 = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN"		--Added by Xen0nex

FixHotspotIDs = false		--false		Set true to make the different types of hotspots back to their pre-5.61 names, which seems to possibly be some kind of bug	(No longer needed as of NMS v 6.00 seemingly)
FreebuildShelters = true	--false		Set true to make the "Ragged Tent" and "Mud Hut" base building objects buildable anywhere on planets to use as shelter, even outside of a base

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
EMClassBStrength = 200.000000	--220.000000		Base Strength for Class B Electromagnetic Power hotspots (Vanilla is C=150, B=220, A=250, S=300)
EMBaseLimit = 0				--0
MineralBaseLimit = 8		--0
GasBaseLimit = 8			--0
SiloBaseLimit = 16			--0
FishTrapPlanetLimit = 9		--3
FishTrapRegionLimit = 3		--0
FishTrapBaseLimit = 3		--0
MedRefinerRegionLimit = 4	--3
LargeRefinerRegionLimit = 4	--2

PlanterPowerDraw = -6		--	-5 kPs		(Remember to make the value negative)
LargePlanterPowerDraw = -16	--	-20 kPs		(Remember to make the value negative)
BiodomeBaseLimit = 0		--0
BiodomePowerDraw = -160		--	-50 kPs		(Remember to make the value negative)

TeleportersBuildable = "true"	--"true"		Set this to "false" to disable the player from constructing any Teleporters in bases or freighters at all. (You can still use Station Teleporters to teleport to your base or freighter)

--Sets whether most base building objects can be built freely on planets without having to build a base computer first
BuildMostItemsWithoutBase = false	--false		Set to "true" to allow building without a base computer

--Reverts certain things to not be buildable on freighters, since they have dedicated freighter rooms for them instead
StandPlanterFreighter = "false"	--"true"		Override for setting if Standing Planters can be built on freighters or not
CropsFreighter = "false"		--"false"		Override for setting if Hydroponic Trays, Large Hydroponic Trays, and Biodomes can be built on freighters or not
RefinersFreighter = "false"		--"false"		Override for setting if Nutrient Processors, Medium/Large Refiners can be built on freighters or not
OtherFreighter = "false"		--"false"		Override for setting if regular Galactic Trade Terminals, Appearance Modifiers, Storage Containers can be built on freighters or not

--Controls whether any "decorative" freighter rooms / doors / walkways / storage rooms / etc. are buildable on planets or not
FreighterRoomsPlanetside = "true"	--"false"	Override for setting if various Freighter rooms/doors/walkways/storage rooms/etc. without special functions can be built on planets or not.
PossibleFreighterRooms = {"FRE_ROOM_IND", "FRE_ROOM_IND1", "FRE_ROOM_LADDER", "FRE_ROOM_STORE0", "FRE_ROOM_STORE1", "FRE_ROOM_STORE2", "FRE_ROOM_STORE3", "FRE_ROOM_STORE4", "FRE_ROOM_STORE5", "FRE_ROOM_STORE6", "FRE_ROOM_STORE7", "FRE_ROOM_STORE8", "FRE_ROOM_STORE9", "FRE_CORR_A", "FRE_CORR_A_GLAS", "FRE_CORR_A_L", "FRE_CORR_A_STR", "FRE_CORR_A_T", "FRE_CORR_GLA_L", "FRE_CORR_GLA_ST", "FRE_CORR_GLA_T", "FRE_CORR_G_STA", "FRE_EXT_PLATFOR", "FRE_EXT_WALKWAY", "FRE_EXT_W_STA", "FRE_FACE_DOOR_A", "FRE_FACE_WALL", "FRE_FACE_WINDOW", "FRE_ROOM_LADDER", "FRE_CORR_STA", }

--Controls whether the Corvette storage rooms (Cargo Racks) are buildable on Corvettes or not
CorvStorageBuildable = "true"	--"true"		Override for setting if all Corvette storage containers (Cargo Racks) can be built on Corvettes or not

--Changes to base values for extractor rates & storage in RegionHotspotsTable, to allow higher effective storage / extraction rates without disabling base uploading
	-- <Storage or Rate values above> / AmountCost * SubstanceYeild => in-game storage amount or rate
	--NOTE: The "Diminishing Returns" threshold is calculated in reference to AmountCostAll & SubstanceYeildAll. IE the vanilla threshold of 1000 units/hr can be raised or lowered by altering these values.
AmountCostAll =	 360000/5		--360000	Decreasing this increases the final effective storage amount and extraction rate for this substance. Must be an integer. (Setting this value above 1440000 may possibly disable base uploading?)
SubstanceYeildAll = 250/2		--250		Increasing this increases the final effective storage amount and extraction rate for this substance. Must be an integer
	--NOTE: As a secondary effect, SubstanceYeild appears to control the smallest "step" or "increment" of BOTH how much total storage your extraction network can have, and the size of the "packets" of substances that get periodically delivered to the storage. E.G. in Vanilla your total storage will be in increments of the nearest 250, and each time 250 substances get "collected" by the Extractors, the amount currently in the storage will go up by 250 as it sends a "packet".
	--Thus, you should generally set SubstanceYeild to match the in-game storage size of the smallest extractor network object (Supply Depot, Mineral/Gas Extractor), or if using a smaller number make sure it divides cleanly into all your storage sizes
	--ALSO NOTE: The ratio of SubstanceYeild to AmountCost appears to control the smallest "step" or "increment" of extraction rate for Mineral / Gas Extractors. E.G. In vanilla Extractors round their extraction rate to the nearest multiple of "1 units/hr". Multiplying SubstanceYeild by 10 OR dividing AmountCost by 10 will make Extractors round their extraction rate to the nearest multiple of "25 units/hr".

--Sets the ClassStrengths multipliers for the relative substance yield amounts of different Gas/Mineral hotspot classes
CSpotYield =	0.145000		--1.000000
BSpotYield =	0.200000		--1.500000
ASpotYield =	0.570000		--2.000000
SSpotYield =	2.500000		--2.500000

--Increasing these values crashes the game
--BaseExtractMinAll = 190		--190		Minimum range of the base extraction rate, before applying extractor or hotspot class modifiers
--BaseExtractMaxAll = 225		--225		Maximum range of the base extraction rate, before applying extractor or hotspot class modifiers

SubstanceHotSpots =
{"Mineral1", "Mineral2", "Mineral3", "Gas1", "Gas2", }

function FixedHotspot (NewHotspotID)
    return
[[<Property name="]]..NewHotspotID..[[" value="GcRegionHotspotData">]]
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["MXML_CHANGE_TABLE"] = {{
	["SPECIAL_KEY_WORDS"] = {"ID","BASE_FLAG"},
	["MATH_OPERATION"] 		= "*",
	["VALUE_CHANGE_TABLE"] = {
		{"BuildEffectAccelerator",1},
		}},
	
	{["PRECEDING_KEY_WORDS"] = {""},				--Removes most restrictions for most items on where/when they can be placed
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] = {
		{"IsDecoration","false"},
		{"IsPlaceable","true"},
		{"BuildableOnPlanetBase","true"},
		--{"BuildableOnPlanet","true"},
		--{"BuildableOnPlanetWithProduct","true"},
		{"BuildableOnFreighter","true"},
		{"BuildableOnSpaceBase","true"},
		{"BuildableUnderwater","true"},
		{"BuildableAboveWater","true"},
		{"PlanetBaseLimit",0},
		{"RegionLimit",0},
		{"PlanetLimit",0},
		{"FreighterBaseLimit",0},
		{"CheckPlaceholderCollision","false"},
		{"CheckPlayerCollision","false"},
		{"CanRotate3D","true"},
		{"CanScale","true"},
		{"CanChangeColour","true"},
		{"CanChangeMaterial","true"},
		{"DependsOnEnvironment","None"},
		{"RemovesAttachedDecoration","false"},
		{"RemovesWhenUnsnapped","false"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"BuildableInShipStructural", "true"},	--Re-adds most restrictions for all structural Corvette parts
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] = {
		{"IsDecoration","false"},
		{"IsPlaceable","true"},
		{"BuildableOnPlanetBase","false"},
		{"BuildableOnFreighter","false"},
		{"BuildableOnSpaceBase","false"},
		{"BuildableUnderwater","true"},
		{"BuildableAboveWater","true"},
		{"PlanetBaseLimit",0},
		{"RegionLimit",0},
		{"PlanetLimit",0},
		{"FreighterBaseLimit",0},
		{"CheckPlaceholderCollision","false"},
		{"CheckPlayerCollision","true"},
		{"CanRotate3D","false"},
		{"CanScale","false"},
		{"CanChangeColour","true"},
		{"CanChangeMaterial","true"},
		{"DependsOnEnvironment","None"},
		{"RemovesAttachedDecoration","true"},
		{"RemovesWhenUnsnapped","false"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {										--Re-adds most restrictions for all structural Corvette parts
                     {"ID", "B_WALL_TOIL0"}, {"ID", "B_WALL_KITC0"}, {"ID", "B_WALL_BUNK0"}, {"ID", "B_WALL_CARG0"}, {"ID", "B_WALL_CARG1"}, {"ID", "B_WALL_CARG2"}, {"ID", "B_WALL_CARG3"}, {"ID", "B_WALL_CARG4"}, {"ID", "B_WALL_CARG5"}, {"ID", "B_WALL_CARG6"}, {"ID", "B_WALL_CARG7"}, {"ID", "B_WALL_CARG8"}, {"ID", "B_WALL_CARG9"}, {"ID", "B_WALL_MED0"}, {"ID", "B_WALL_TECH0"}, {"ID", "B_WALL_TECH1"}, {"ID", "B_WALL_PLAN0"}, {"ID", "B_DOOR0"}, {"ID", "B_STAIRS0"}, {"ID", "B_WALL_WIND0"}, {"ID", "B_WALL_WIND1"}, {"ID", "B_WALL_WIND2"},
                   },
	["VALUE_CHANGE_TABLE"] = {
		{"IsDecoration","true"},
		{"IsPlaceable","false"},
		{"BuildableOnPlanetBase","false"},
		{"BuildableOnFreighter","false"},
		{"BuildableOnSpaceBase","false"},
		{"BuildableUnderwater","true"},
		{"BuildableAboveWater","true"},
		{"PlanetBaseLimit",0},
		{"RegionLimit",0},
		{"PlanetLimit",0},
		{"FreighterBaseLimit",0},
		{"CheckPlaceholderCollision","false"},
		{"CheckPlayerCollision","true"},
		{"CanRotate3D","false"},
		{"CanScale","false"},
		{"CanChangeColour","true"},
		{"CanChangeMaterial","false"},
		{"DependsOnEnvironment","None"},
		{"RemovesAttachedDecoration","true"},
		{"RemovesWhenUnsnapped","false"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"ID", "B_DOOR0"},						--Re-adds most restrictions for all structural Corvette parts
	["VALUE_CHANGE_TABLE"] = {
		{"IsDecoration","true"},
		{"IsPlaceable","true"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"ID", "B_STAIRS0"},					--Re-adds most restrictions for all structural Corvette parts
	["VALUE_CHANGE_TABLE"] = {
		{"IsDecoration","false"},
		{"IsPlaceable","false"},
		}},

	{["SPECIAL_KEY_WORDS"] = {										--Controls if Corvette storage containers are buildable or not
                     {"ID", "B_WALL_CARG0"}, {"ID", "B_WALL_CARG1"}, {"ID", "B_WALL_CARG2"}, {"ID", "B_WALL_CARG3"}, {"ID", "B_WALL_CARG4"}, {"ID", "B_WALL_CARG5"}, {"ID", "B_WALL_CARG6"}, {"ID", "B_WALL_CARG7"}, {"ID", "B_WALL_CARG8"}, {"ID", "B_WALL_CARG9"}, 
                   },
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableInShipDecorative", CorvStorageBuildable},
		}},
	
	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGEMODULE"},
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit",MessageModRegion},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","MESSAGE"},			--Buggy item; disabling it and letting message module take care of it.
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit",1},
		-- {"BuildableOnPlanetBase","false"},
		-- {"BuildableOnSpaceBase","false"},
		-- {"BuildableOnFreighter","false"},
		-- {"BuildableOnPlanet","false"},
		-- {"BuildableOnPlanetWithProduct","false"},
		-- {"BuildableUnderwater","false"},
		-- {"BuildableAboveWater","false"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"ID","T_WALL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","T_FLOOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","T_ROOF6"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","T_DOOR1"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		}},
		
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Rate",SolarRate},
		{"Storage",SolarStorage},
		{"DependsOnEnvironment","DayNight"},
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"DependentRate",BioRate},
		{"Storage",BioStorage},
		{"BuildableOnSpacebase", "false"},
		{"BuildableOnFreighter", "false"},
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"Rate",BatteryRate},
		{"Storage",BatteryStorage},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GENERATOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"DependsOnHotspots",EMAnywhere},
		{"Rate",EMRate},
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"RegionLimit", EMLimit},
		{"PlanetBaseLimit", EMBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",math.floor(1*MineralStorage)},
		{"Rate",math.floor(1*MineralRate)},
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"RegionLimit", MineralLimit},
		{"PlanetBaseLimit", MineralBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",math.floor(1*GasStorage)},
		{"Rate",math.floor(1*GasRate)},
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"RegionLimit", GasLimit},
		{"PlanetBaseLimit", GasBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] = {
		{"Storage",math.floor(1*SiloStorage)},
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"RegionLimit", SiloLimit},
		{"PlanetBaseLimit", SiloBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILDSEAHARVEST"},
	["VALUE_CHANGE_TABLE"] = {
		{"PlanetLimit", FishTrapPlanetLimit},
		{"RegionLimit", FishTrapRegionLimit},
		{"PlanetBaseLimit", FishTrapBaseLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER2"},
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit", MedRefinerRegionLimit},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER3"},
	["VALUE_CHANGE_TABLE"] = {
		{"RegionLimit", LargeRefinerRegionLimit},
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
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetBase", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_NPCVEH"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetBase", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_NPCWEA"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetBase", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_REFINE"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetBase", "false"},
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_VEHICL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetBase", "false"},
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
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"BuildableOnFreighter", "false"},
		{"BuildableOnSpaceBase", "false"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True
		}},	
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER_F"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"BuildableOnFreighter", "false"},
		{"BuildableOnPlanetBase", "false"},
		{"BuildableOnSpaceBase", "false"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_TELEPO"},
	["VALUE_CHANGE_TABLE"] = {
		{"ShowInBuildMenu", TeleportersBuildable},					--True
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_DOOR_A"},		--Making this placable with "free place" prevents you from deleting it afterwards
	["VALUE_CHANGE_TABLE"] = {
		{"IsPlaceable", "false"},									--False
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_WALL"},		--Making this placable with "free place" seems to just place an invisible object
	["VALUE_CHANGE_TABLE"] = {
		{"IsPlaceable", "false"},									--False
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","CORSTAIRS_SPACE"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "false"},
		{"BuildableOnPlanetWithProduct", "false"},
		{"BuildableOnFreighter", "false"},
		{"BuildableOnPlanetBase", "false"},
		{"BuildableOnSpaceBase", "false"},
		}},
},},
	{--This section added by Xen0nex
		["MBIN_FILE_SOURCE"] 	= FileSource2,
		["MXML_CHANGE_TABLE"] 	= 
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
		}
	}
},}}}


local ChangesToBaseTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

if BuildMostItemsWithoutBase then
			ChangesToBaseTable[1] =
			{
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableOnPlanet", "true"},
				}
			}
end

if FreebuildShelters then
			ChangesToBaseTable[#ChangesToBaseTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = 
				{
					{"ID", "BASE_SWAMP3"},
					{"ID", "BLD_BUI_TENT"},
				},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableOnPlanet", "true"},
				}
			}
end

for i = 1, #PossibleFreighterRooms do
	local FreID = PossibleFreighterRooms[i]
	local BuildPlan = "false"
	if BuildMostItemsWithoutBase and FreighterRoomsPlanetside == "true" then
		BuildPlan = "true"
	end
		
			ChangesToBaseTable[#ChangesToBaseTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID",FreID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableOnPlanet", BuildPlan},
					{"BuildableOnPlanetBase", FreighterRoomsPlanetside},
				}
			}
end

local ChangesToHotSpots = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

if FixHotspotIDs then
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Gas1", "GcRegionHotspotData"},
				["ADD_OPTION"]  = "REPLACEatLINE",
				["ADD"] = FixedHotspot ("Gas2"), 
			}
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Mineral3", "GcRegionHotspotData"},
				["ADD_OPTION"]  = "REPLACEatLINE",
				["ADD"] = FixedHotspot ("Gas1"), 
			}
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Mineral2", "GcRegionHotspotData"},
				["ADD_OPTION"]  = "REPLACEatLINE",
				["ADD"] = FixedHotspot ("Mineral3"), 
			}
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Mineral1", "GcRegionHotspotData"},
				["ADD_OPTION"]  = "REPLACEatLINE",
				["ADD"] = FixedHotspot ("Mineral2"), 
			}
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData"},
				["ADD_OPTION"]  = "REPLACEatLINE",
				["ADD"] = FixedHotspot ("Mineral1"), 
			}
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"None", "GcRegionHotspotData"},
				["ADD_OPTION"]  = "REPLACEatLINE",
				["ADD"] = FixedHotspot ("Power"), 
			}
end
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData"},
				["PRECEDING_KEY_WORDS"] = "ClassStrengths",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"B", EMClassBStrength},
				}
			}
for i = 1, #SubstanceHotSpots do
	local HotSpotName = SubstanceHotSpots[i]
		
			ChangesToHotSpots[#ChangesToHotSpots+1] =
			{
				["SPECIAL_KEY_WORDS"] = {HotSpotName, "GcRegionHotspotData"},
				["PRECEDING_KEY_WORDS"] = "ClassStrengths",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"C", CSpotYield},
					{"B", BSpotYield},
					{"A", ASpotYield},
					{"S", SSpotYield},
				}
			}
end