-- Food nanite rewards are 4x higher
-- Meat drop from fauna reduced to 1/4 to compensate.
-- Food created from farmable plants now requires 20 plants rather than 1. (exception, food pellets are unchanged)
-- Milk and wild gatherables are unchanged to incentivize their collection.
-- "Final" food products like stews, cakes, pies, etc. have their unit value multiplied by 4x.
-- Creature Pellet recipes are unchanged.
-- End result: Turning in food for nanites is 4x faster.
--             Killing fauna for meat for nanites should end up giving the same amount of nanites total as before. 
--             Milk and gatherables are 4x more valuable for making food for nanites, since harvesting was kept the same. (Exception: Marrow Root, since you get so many per harvest)
--             Farming plants for food requires 5x more resources for the same amount of nanites (it was way too easy before)
--             Cooking final products (Cakes, donuts, stews, etc.) for money is a pretty good way to earn units in the early game.




CookingIngredientsToMultiply = {
"PLANT_LUSH",
"PLANT_HOT",
"PLANT_SNOW",
"PLANT_TOXIC",
"PLANT_RADIO",
"PLANT_DUST",
"PLANT_POOP",
"PLANT_CAVE",
"PLANT_WATER",
}
--[["FOOD_M_MEAT",
"FOOD_M_FIEND",
"FOOD_M_BLOB",
"FOOD_M_GEK",
"FOOD_M_DIPLO",
"FOOD_M_REX",
"FOOD_M_CAT",
"FOOD_M_STRIDER",
"FOOD_M_COW",
"FOOD_M_CRAB",
"FOOD_M_BALL",
"FOOD_M_DIGGER",
"FOOD_M_MOLE",
"FOOD_M_BONE",
"FOOD_M_DRILL",
"FOOD_M_BEETLE",
"FOOD_M_FISH",]]--

FinalCookingProductTable = {
"UI_CAKE_DESC_CK", --Cakes
"FOOD_REFINED_DESC_FINAL", -- A lot of things
"FOOD_DRINK_DESC", -- Drinks?
}
FinalCookingProductUnitValueMultiplier = "4" -- Increase final cooking products (cakes, donuts, stews, etc.) unit base value by 4x

GcRecipeTable = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"
GcProductTable = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"
RewardTable = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"
CreatureGlobals = "GCCREATUREGLOBALS.MBIN"

NaniteRewardMultiplier = "4"
FarmableIngredientAmount = "20" -- Previously 1, number of things like fungus to produce 1 food item. 20 cactus = 1 cactus nectar, for example.
MeatDropMultiplier = "0.25" -- 5, 8, 12, 20 decreased to 1, 2, 3, 5 for animals small, medium, large, huge. A lower multiplier will affect balance.

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "CookingRebalanceNanites.pak",
    ["MOD_DESCRIPTION"]         = "Re-balances food to make it easier to turn in for nanites. Rewards and values are increased 4x, so each food is equivalent to 4 vanilla, but ingredients are re-balanced to match" ,
    ["MOD_AUTHOR"]              = "Pythonaut",
	["NMS_VERSION"]				= "3.99.1",
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {GcRecipeTable},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                },
            },
        },
		{
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {GcRecipeTable},
                    ["EXML_CHANGE_TABLE"]   =
                    {
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BAIT_BASIC"}, --re-write creature pellets to take 1 ingredient each and output 1 pellet.
							["REPLACE_TYPE"] = "ALL",
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] =
							{
								{"Amount", "1"}
							}
						}
                    },
                },
            },
        },
		{
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {GcProductTable},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    },
                },
            },
        },
		{
			["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {CreatureGlobals},
                    ["EXML_CHANGE_TABLE"]   =
                    {
						{
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"CreatureKillRewardAmountSmall", MeatDropMultiplier},
								{"CreatureKillRewardAmountMed", MeatDropMultiplier},
								{"CreatureKillRewardAmountLarge", MeatDropMultiplier},
								{"CreatureKillRewardAmountHuge", MeatDropMultiplier},
							}
						}
                    }
                },
            },
		},
		{
			["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {RewardTable},
                    ["EXML_CHANGE_TABLE"]   =
                    {
						{
							["SPECIAL_KEY_WORDS"] = {"Reward", "GcRewardAssessCookedProduct.xml"},
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{"AmountBad", NaniteRewardMultiplier},
								{"Amountbad", NaniteRewardMultiplier},
								{"AmountGood", NaniteRewardMultiplier},
								{"AmountBest", NaniteRewardMultiplier},
								{"AmountBestUpper", NaniteRewardMultiplier}
							}
						}
                    }
                },
            },
		}
    }
}

-- Set the amount of farmable plants needed for a recipe to 20x, since it is so easy to farm tons and tons.
-- With a 4x nanite reward multiplier, this comes out to being 5x more plants required for the same nanite reward as before
-- I think that's pretty reasonable.
local ChangesToRecipeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #CookingIngredientsToMultiply do

    ChangesToRecipeTable[#ChangesToRecipeTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", CookingIngredientsToMultiply[i]},
		["REPLACE_TYPE"] = "ALL",
        ["MATH_OPERATION"] = "*",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Amount", FarmableIngredientAmount}
        }
    }
	
end

-- Multiply cooking end-products unit values to make them more valuable
local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][3]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #FinalCookingProductTable do

    ChangesToProductTable[#ChangesToProductTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Value", FinalCookingProductTable[i]},
		["SECTION_UP"] = 1,
		["REPLACE_TYPE"] = "ALL",
        ["MATH_OPERATION"] = "*",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BaseValue", FinalCookingProductUnitValueMultiplier}
        }
    }
	
end
