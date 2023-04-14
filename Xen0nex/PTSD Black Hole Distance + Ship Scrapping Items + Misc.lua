ModName = "PTSD Black Hole Distance + Ship Scrapping Items + Misc"
GameVersion = "422"
Description = "Black Holes send you farther, Adjusts Living Ship Module Evolution costs, Changes Illegal goods price markup, Adjust Death Penalty units cost, Replaces some of the substances you can receive from scrapping ships"

--Controls how much of a bonus Supercharged Tech Slots give
SpecialTechSlotBonus =					1.2									--1.25

--Trade Rocket fuel use?	(Uses Tritium as fuel by default, has ChargeAmount of 50 by default) (charging amount altered in PTSd Tech + Upgrade + Recipe + Blueprint cost Rebalance.lua)
RocketFuelUse =		10									--10

--Affects distance that a black hole will warp you towards the galaxy center
BlackHoleJumpVoxelDist =				45									--15
BlackHoleJumpVoxelVariation =			12									--2
--Costs to evolve Living Ship upgrade modules to higher Classes
EvolveOne =								100									--100		Unknown Function
EvolveToB =								210									--210		Cost to Evolve from C to B
EvolveToA =								600									--310		Cost to Evolve from B to A
EvolveToS =								1800								--430		Cost to Evolve from S to A
EvolveFive =							1800								--430		Unknown Function
EvolveSix =								1800								--430		Unknown Function

MissionSurveyMaxGuidanceDistance =		5000								--1500		How far away from the target location your "Target Sweep" visor function will be auto-selected when activating your visor and display the estimated distance
--Note that the actual distance to the target location is controlled in FartherTargetSweepX.lua

DeathMoneyPenalty =						50000								--5000		Money lost on death in Normal mode (all modes as of NMS v400?)
--DeathMoneyPenaltyHardMode =			50000								--5000		Money lost on death in Survival mode (Deprecated as of 4.08)

SmugglerSellingMarkup = 				2.0									--1.66		Multiplier (markup) that the value of "illegal" goods receive in non-Outlaw systems
IllegalTechProductTradingMod = 			0.2									--0.2		Multiplier (price drop) that the value of "illegal" upgrade modules receive in non-Outlaw systems

SalvageValueAsProds =					0									--0
SalvageSubstanceValueThreshold =		15000								--20000

ShipScrappingItemChanges =
{
	{
		{"SalvageSubstancesList"},
		{	--Old Item				--New Item	
			{"EX_YELLOW",			"LAND3"},							--Activated Copper				(Magnetised Ferrite)
			{"EX_RED",				"LAUNCHSUB"},						--Activated Cadmium				(Di-Hydrogen)
			{"EX_GREEN",			"ROCKETSUB"},						--Activated Emeril				(Tritium)
			{"EX_BLUE",				"ASTEROID2"},						--Activated Indium				(Gold)
			{"WATER2",				"WATER2"},							--Chlorine
			{"CAVE2",				"CAVE2"},							--Ionised Cobalt
		}
	}
}

--Sets some Freighter Rooms & most Freighter Storage Room recipes to be unknwon at the start of the game, to require unlocking at the Anomaly
UnknownRecipes =						
{"FRE_ROOM_SHOP", "FRE_ROOM_PLANT1", "FRE_ROOM_REFINE", "FRE_ROOM_STORE1", "FRE_ROOM_STORE2", "FRE_ROOM_STORE3", "FRE_ROOM_STORE4", "FRE_ROOM_STORE5", "FRE_ROOM_STORE6", "FRE_ROOM_STORE7", "FRE_ROOM_STORE8", "FRE_ROOM_STORE9"}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RocketLockerFuelUse",	RocketFuelUse},	
					{"IllegalTechProductTradingMod", IllegalTechProductTradingMod},
					{"SmugglerSellingMarkup", SmugglerSellingMarkup},
					{"SalvageValueAsProds", SalvageValueAsProds},
					{"SalvageSubstanceValueThreshold", SalvageSubstanceValueThreshold},
					{"BlackHoleJumpVoxelDist", BlackHoleJumpVoxelDist},
					{"BlackHoleJumpVoxelVariation", BlackHoleJumpVoxelVariation},
					{"DeathMoneyPenalty", DeathMoneyPenalty},
					--{"DeathMoneyPenaltyHardMode", DeathMoneyPenaltyHardMode},
					{"MissionSurveyMaxGuidanceDistance", MissionSurveyMaxGuidanceDistance},
					{"SpecialTechSlotBonus", SpecialTechSlotBonus},
				}
			},
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"AlienShipEvolveCosts"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"100", EvolveOne},
					{"210", EvolveToB},
					{"310", EvolveToA},
					{"430", EvolveToS},
				}
			},
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"AlienShipEvolveCosts"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"430", EvolveFive},
					{"430", EvolveSix},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				--Intentionally left blank to be filled in by function below
			}
		}
	}
}}}}


local ChangesToGamePlayGlobals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ShipScrappingItemChanges do
	local ItemType = ShipScrappingItemChanges[i][1][1]
	local Items = ShipScrappingItemChanges[i][2]
	
	for j=1, #Items do
		OldItem = Items[j][1]
		NewItem = Items[j][2]
	
			ChangesToGamePlayGlobals[#ChangesToGamePlayGlobals+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				--["SPECIAL_KEY_WORDS"] = {"Id", "SELF_SHIP"},
				["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_MATCH"]         = OldItem, 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Value", NewItem}
				}
			}
	end
end
for i = 1, #UnknownRecipes do
	local ContainerID = UnknownRecipes[i]
		
			ChangesToGamePlayGlobals[#ChangesToGamePlayGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml",	"Value",	ContainerID},
				["REMOVE"] = "SECTION"
			}
end

local ChangesToDefaultSaveData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #UnknownRecipes do
	local ContainerID = UnknownRecipes[i]
		
			ChangesToDefaultSaveData[#ChangesToDefaultSaveData+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
				["SPECIAL_KEY_WORDS"] = {"Value",	ContainerID},
				["REMOVE"] = "SECTION"
			}
end