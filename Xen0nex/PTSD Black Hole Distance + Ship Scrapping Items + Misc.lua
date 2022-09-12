ModName = "PTSD Black Hole Distance + Ship Scrapping Items + Misc"
GameVersion = "399.1"
Description = "Black Holes send you farther, Adjusts Living Ship Module Evolution costs, Changes Illegal goods price markup, Adjust Death Penalty units cost, Replaces some of the substances you can receive from scrapping ships"

--Possibly affects distance that a black hole will warp you towards the galaxy center?
BlackHoleJumpVoxelDist =				45									--15
BlackHoleJumpVoxelVariation =			12									--2
--Costs to evolve Living Ship upgrade modules to higher Classes
EvolveOne =								210									--210		Unknown Function
EvolveToB =								210									--210		Cost to Evolve from C to B
EvolveToA =								600									--310		Cost to Evolve from B to A
EvolveToS =								1800								--430		Cost to Evolve from S to A
EvolveFive =							1800								--430		Unknown Function
EvolveSix =								1800								--430		Unknown Function

MissionSurveyMaxGuidanceDistance =		5000								--1500		How far away from the target location your "Target Sweep" visor function will be auto-selected when activating your visor and display the estimated distance
--Note that the actual distance to the target location is controlled in FartherTargetSweepX.lua

DeathMoneyPenalty =						25000								--5000		Money lost on death in Normal mode
DeathMoneyPenaltyHardMode =				50000								--5000		Money lost on death in Survival mode

SmugglerSellingMarkup = 				2.0									--2.66		Multiplier (markup) that the value of "illegal" goods receive in non-Outlaw systems
IllegalTechProductTradingMod = 			0.2									--0.2		Multiplier (price drop) that the value of "illegal" upgrade modules receive in non-Outlaw systems

SalvageValueAsProds =					0.2									--0.2
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
				--Intentionally left blank to be filled by the function below
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"IllegalTechProductTradingMod", IllegalTechProductTradingMod},
					{"SmugglerSellingMarkup", SmugglerSellingMarkup},
					{"SalvageValueAsProds", SalvageValueAsProds},
					{"SalvageSubstanceValueThreshold", SalvageSubstanceValueThreshold},
					{"BlackHoleJumpVoxelDist", BlackHoleJumpVoxelDist},
					{"BlackHoleJumpVoxelVariation", BlackHoleJumpVoxelVariation},
					{"DeathMoneyPenalty", DeathMoneyPenalty},
					{"DeathMoneyPenaltyHardMode", DeathMoneyPenaltyHardMode},
					{"MissionSurveyMaxGuidanceDistance", MissionSurveyMaxGuidanceDistance},
				}
			},
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"AlienShipEvolveCosts"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"210", EvolveOne},
					{"210", EvolveToB},
					{"310", EvolveToA},
					{"430", EvolveToS},
					{"430", EvolveFive},
					{"430", EvolveSix},
				}
			}
		}
	}
}}}}


local ChangesToShipScrappingItems = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ShipScrappingItemChanges do
	local ItemType = ShipScrappingItemChanges[i][1][1]
	local Items = ShipScrappingItemChanges[i][2]
	
	for j=1, #Items do
		OldItem = Items[j][1]
		NewItem = Items[j][2]
	
			ChangesToShipScrappingItems[#ChangesToShipScrappingItems+1] = 
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