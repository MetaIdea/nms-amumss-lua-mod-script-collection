ModName = "PTSd Black Hole Distance + Ship Scrapping Items + Misc"
GameVersion = "5_12"
Description = "Black Holes send you farther, Adjusts Living Ship Module Evolution costs, Changes Illegal goods price markup, Adjust Death Penalty units cost, Replaces some of the substances you can receive from scrapping ships"

--Controls how much of a bonus Supercharged Tech Slots give
SpecialTechSlotBonus =					1.2									--1.25

--Controls the various bonuses you get during storms on Hot/Toxic/Cold/Radioactive planets
StormBonusJetpackMod =					0.25								--0.25	Controls how much slower your Jetpack tanks deplete during Storms on Hot planets
StormBonusSprintMod =					0.05								--0.25	Controls how much slower your Stamina bar depletes during Storms on Toxic planets
StormBonusMiningHeatMod =				9									--3		Controls how much better your Mining Beam stays cool during Storms on Cold planets
StormBonusMiningAmountMod =				1.9									--2.55	Controls how much of a bonus to mining resource yield you get during Storms on Radioactive planets

--Trade Rocket fuel use?	(Uses Tritium as fuel by default, has ChargeAmount of 50 by default) (charging amount altered in "PTSd Tech + Upgrade + Recipe + Blueprint cost Rebalance.lua", Tritium ChargeValue altered in "PTSd Starship And Living Ship Tech + Speed Changes.lua")
RocketFuelUse =							10									--10

--Affects distance that a black hole will warp you towards the galaxy center. Appears to roughly drop you (VoxelDist +/- VoxelVariation) x 500ly closer to the the galaxy core.
BlackHoleJumpVoxelDist =				45									--15
BlackHoleJumpVoxelVariation =			12									--2
--Costs to evolve Living Ship upgrade modules to higher Classes
EvolveOne =								100									--100		Unknown Function
EvolveToB =								210									--210		Cost to Evolve from C to B
EvolveToA =								600									--310		Cost to Evolve from B to A
EvolveToS =								1800								--430		Cost to Evolve from S to A
EvolveFive =							1800								--430		Unknown Function
EvolveSix =								1800								--430		Unknown Function
EvolveSeven =							1800								--430		Unknown Function
--EvolveEight =							100									--100		Unknown Function

MissionSurveyMaxGuidanceDistance =		5000								--1500		How far away from the target location your "Target Sweep" visor function will be auto-selected when activating your visor and display the estimated distance
--Note that the actual distance to the target location is controlled in FartherTargetSweepX.lua

DeathMoneyPenalty =						50000								--5000		Money lost on death in Normal mode (all modes as of NMS v400?)
--DeathMoneyPenaltyHardMode =			50000								--5000		Money lost on death in Survival mode (Deprecated as of 4.08)

SmugglerSellingMarkup = 				1.0									--1.66		Multiplier (markup) of ADDITIONAL value for "illegal" goods in non-Outlaw systems. E.G. 1.66 means the total value will be 1 + 1.66 = 2.66x BaseValue in non-Outlaw Systems
IllegalTechProductTradingMod = 			0.2									--0.2		Multiplier (price drop) that the value of "illegal" upgrade modules receive in non-Outlaw systems
CargoShieldStrength =					0.3									--0.5		Sets the chance that using the Cargo Scan Deflector / Neural Shielding will work each attempt (can be attempted multiple times per scan)

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

ClassItemFromShipSalvage =				"True"							--"False"		If True, when salvaging a specific item from a starship (not when salvaging for generic scrap), you also receive a Reactor Core matching the Class of the starship
MaxStandingTechDiscount =				0.8								--0.5			The minimum multiplier used for the price of upgrade modules when at maximum standing with the system race. E.G. 0.8 means you pay 0.8x as much as normal, or a 20% discount in other words
NonNaturalCostMul =						0.5								--0.5			Presumably a multiplier on the trade in / salvage value of custom built starships

--Sets some Freighter Rooms & most Freighter Storage Room recipes to be unknwon at the start of the game, to require unlocking at the Anomaly
UnknownRecipes =						
{"FRE_ROOM_SHOP", "FRE_ROOM_PLANT1", "FRE_ROOM_REFINE", "FRE_ROOM_STORE1", "FRE_ROOM_STORE2", "FRE_ROOM_STORE3", "FRE_ROOM_STORE4", "FRE_ROOM_STORE5", "FRE_ROOM_STORE6", "FRE_ROOM_STORE7", "FRE_ROOM_STORE8", "FRE_ROOM_STORE9"}

--Changes to Pirate Dreadnought encounter
TorpedoCooldown =						75									--75		Seems to be how long each Pirate Frigate must wait between firing Torpedos
TorpedoCooldownRandomExtra =			8									--8			
MaxTorpedoesInFlight =					12									--12
TorpedoInitialWait =					28									--28		Seems to be how long the Pirate Frigates wait at the start of the battle before firing the first Torpedos
TorpedoLaunchWarning =					12									--12		Seems to be how long much of a warning the UI gives you before each volley of Torpedos
PirateFreighterFrigateCountForReinforce =			1						--5			Each time the remaining Pirate Frigates falls down to this number, the Dreadnought will summon this many reinforcement Frigates (Reinforcement amount set in "Space Combat+Larger Space BattlesX.lua")
PirateFreighterWarpChargeTime =						35						--35		Roughly how long the Dreadnought takes to warp away. It appears to actually escape once the counter reaches ~6 or 8 seconds remaining
PirateFreighterWarpChargeTimeToAddPerBrokenEngine =	0						--2			Bugged. This adds time to the UI countdown each time a Warp Engine is destroyed, but does not actually change how long until the Dreadnought warps away
PirateFreighterBeginFleeHealthFraction =			0.16					--0.25		Seems to be what percentage of remaining hull health to trigger the Dreadnought to attempt warping (may also attempt warping if all Anti-Freighter Cannons are destroyed)
FreighterFuelRodHealthFraction =					0.84					--0.75		Appears to deal ([this value] x 10 x [Dreadnought max health]) damage per Fuel Rod destroyed
--All below changes are WIP changes for NMS v4.4x
--[[ShipMiningMul =							0.2									--0.2		Unknown effect, possibly a reduction in damage or resource amount when using ship weapons to mine planetary objects?
--Changes to MissionSubstanceDifficultyMultipliers (unknown effect, possibly changes the amounts of substances rewarded by, or required for, certain missions? possibly depending on a difficulty setting?)
MissionSubEasy =						1									--1
MissionSubNormal =						1.5									--1.5
MissionSubHard =						2									--2
--Pirate Freighter changes (unknown effects, presumably changes the behavior of Pirate Freighters & Frigates in the new Pirate Freighter battles)
SpaceBattleMaxTorpedosTargetingLeaderShip =			4						--4
SpaceBattleMaxTorpedosTargetingNonLeaderShip =		1						--1
FreighterCargoPodHealthFraction =					0.8						--0.8
--Changes to ChanceOfPirateFreighterBattleOnWarpToSystem (presumably sets the chance of a Pirate Freighter battle when arriving in a system based on it's conflict level)
PirateFreightChanceLow =				0									--0
PirateFreightChanceDefault =			0									--0
PirateFreightChanceHigh =				0.1									--0.1
PirateFreightChancePirate =				0.2									--0.2
--Turret AI Targeting changes (unkown effect, possibly the turrets on Pirate Freighters during "trench runs"?)
TurretAITargetingLastHitFactor =		10									--10
TurretAITargetingFocusPlayerFactor =	2									--2
]]

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
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RocketLockerFuelUse",	RocketFuelUse},	
					{"CargoShieldStrength",	CargoShieldStrength},	
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
					{"StormBonusJetpackMod", StormBonusJetpackMod},
					{"StormBonusSprintMod", StormBonusSprintMod},
					{"StormBonusMiningHeatMod", StormBonusMiningHeatMod},
					{"StormBonusMiningAmountMod", StormBonusMiningAmountMod},
					{"RewardInventoryClassItemFromShipSalvage", ClassItemFromShipSalvage},
					{"MaxStandingTechDiscount", MaxStandingTechDiscount},
					{"NonNaturalCostMul", NonNaturalCostMul},
					{"TorpedoCooldown", TorpedoCooldown},
					{"TorpedoCooldownRandomExtra", TorpedoCooldownRandomExtra},
					{"MaxTorpedoesInFlight", MaxTorpedoesInFlight},
					{"TorpedoInitialWait", TorpedoInitialWait},
					{"TorpedoLaunchWarning", TorpedoLaunchWarning},
					{"PirateFreighterFrigateCountForReinforce", PirateFreighterFrigateCountForReinforce},
					{"PirateFreighterWarpChargeTime", PirateFreighterWarpChargeTime},
					{"PirateFreighterWarpChargeTimeToAddPerBrokenEngine", PirateFreighterWarpChargeTimeToAddPerBrokenEngine},
					{"PirateFreighterBeginFleeHealthFraction", PirateFreighterBeginFleeHealthFraction},
					{"FreighterFuelRodHealthFraction", FreighterFuelRodHealthFraction},
					--[[
					{"ShipMiningMul", ShipMiningMul},
					{"SpaceBattleMaxTorpedosTargetingLeaderShip", SpaceBattleMaxTorpedosTargetingLeaderShip},
					{"SpaceBattleMaxTorpedosTargetingNonLeaderShip", SpaceBattleMaxTorpedosTargetingNonLeaderShip},
					{"FreighterCargoPodHealthFraction", FreighterCargoPodHealthFraction},
					{"TurretAITargetingLastHitFactor", TurretAITargetingLastHitFactor},
					{"TurretAITargetingFocusPlayerFactor", TurretAITargetingFocusPlayerFactor},
					]]
				}
			},
			{
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
				["PRECEDING_KEY_WORDS"] = {"AlienShipEvolveCosts"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"430", EvolveFive},
					{"430", EvolveSix},
					{"430", EvolveSeven},
				}
			},
			--[[
			{
				["PRECEDING_KEY_WORDS"] = {"MissionSubstanceDifficultyMultipliers"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Easy", MissionSubEasy},
					{"Normal", MissionSubNormal},
					{"Hard", MissionSubHard},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"ChanceOfPirateFreighterBattleOnWarpToSystem"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Low", PirateFreightChanceLow},
					{"Default", PirateFreightChanceDefault},
					{"High", PirateFreightChanceHigh},
					{"Pirate", PirateFreightChancePirate},
				}
			},
			]]
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the loops at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the loops at the bottom of this script
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

local ChangesToDefaultSaveData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #UnknownRecipes do
	local ContainerID = UnknownRecipes[i]
		
			ChangesToDefaultSaveData[#ChangesToDefaultSaveData+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
				["SPECIAL_KEY_WORDS"] = {"Value",	ContainerID},
				["REMOVE"] = "SECTION"
			}
end

local ChangesToDifficulty = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #UnknownRecipes do
	local ContainerID = UnknownRecipes[i]
		
			ChangesToDifficulty[#ChangesToDifficulty+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "GcDifficultyStartWithAllItemsKnownOptionData.xml",	"Value",	ContainerID},
				["REMOVE"] = "SECTION"
			}
end