ModName = "PTSd Creature Loot Changes"
GameVersion = "441"
Description = "Lowers amount of meat dropped by creatures, and improves loot of Rock Creatures"

AngryRockProportionNormal = 0.5				--Default 0.2		Unclear this effect, there is a separate parameter for RockTransformGlobalChance
AngryRockProportionSurvival = 0.5			--Default 0.5		Unclear this effect, there is a separate parameter for RockTransformGlobalChance

--Changes loot dropped from killing the "living rocks" you rarely encounter while mining
RockCreatureLoot = "GEODE_RARE"				--Default 5/8/12 (depending on size of rock?) of "FOOD_M_MEAT" (Meaty Chunks)

--Changes the amount of meat/loot dropped by killing creatures
CreatureKillRewardAmountSmall = 1			--Default 5
CreatureKillRewardAmountMed = 2				--Default 8
CreatureKillRewardAmountLarge = 3			--Default 12
CreatureKillRewardAmountHuge = 5			--Default 20

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCCREATUREGLOBALS.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"KillingProducts"},
				["SPECIAL_KEY_WORDS"] = {"CreatureType","ROCKCREATURE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] = {
					{"Item", RockCreatureLoot},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] = {
					{"AngryRockProportionNormal", AngryRockProportionNormal},
					{"AngryRockProportionSurvival", AngryRockProportionSurvival},
					{"CreatureKillRewardAmountSmall", CreatureKillRewardAmountSmall},
					{"CreatureKillRewardAmountMed", CreatureKillRewardAmountMed},
					{"CreatureKillRewardAmountLarge", CreatureKillRewardAmountLarge},
					{"CreatureKillRewardAmountHuge", CreatureKillRewardAmountHuge},
				},
			},
		}
	}
}}}}