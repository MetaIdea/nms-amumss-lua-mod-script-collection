GameVersion = "3_84"
ModName = "FuelEconomy"
Author = "Jackty89"

GcRecipeTable = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCRECIPETABLE.MBIN"
GcProductTable = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

SubstanceOrProduct = {"Substance", "Product"}
            -- Tritium,     Deutrium   , Di-Hydrogen
SubstanceIds = {"ROCKETSUB", "LAUNCHSUB2", "LAUNCHSUB"}
            -- Requested Operation: Di-hydrogen Capture,  Loosen Bonds
RecipeTypes = {"RECIPE_3INPUT_LAUNCHFUEL_1", "RECIPE_GAS1_LAND"}
-- recipeType == name (no idea what the diff between the values is)
FrigateFuelIds = {"FRIGATE_FUEL_1", "FRIGATE_FUEL_2", "FRIGATE_FUEL_3"}

ExistingRecipes =
{
    {
        "REFINERECIPE_56", --Di-Hydro
        "7", --timetomake
        "3", -- amount
        {
            {SubstanceIds[1], "1", SubstanceOrProduct[1]}
        }
    },
    {
        "REFINERECIPE_92",
        "5",
        "1",
        {
            {SubstanceIds[3], "1", SubstanceOrProduct[1]},
            {SubstanceIds[3], "1", SubstanceOrProduct[1]}
        }
    }
}

-- This is for creating recipe for Exisiting items
-- NewRecipes structure
    -- RecipeID,
    -- ResultId
    -- Ingredients{{ingredient1, amount,type},{ingredient2, amount,type},{ingredient3, amount, type}},  (max 3 ingredients)
    -- RecipeCookingTime, (time in seconds)
    -- RecipeCookingAmount, (how many will get produced per cycle)
    -- RecipeTypes[X], (UI string)
-- end structure
NewRecipes =
{
    {
        -- D + H => 1T
        "Trit_D_H",
        SubstanceIds[1],
        {
            {SubstanceIds[2], "1", SubstanceOrProduct[1]},
            {SubstanceIds[3], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "1", -- Resultamount
        RecipeTypes[1],
        SubstanceOrProduct[1]
    },
    {
        -- H + H + H => 1T
        "Trit_3H",
        SubstanceIds[1],
        {
            {SubstanceIds[3], "1", SubstanceOrProduct[1]},
            {SubstanceIds[3], "1", SubstanceOrProduct[1]},
            {SubstanceIds[3], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "1", -- Resultamount
        RecipeTypes[1],
        SubstanceOrProduct[1]
    },
    {
        -- D + D => 2T
        "Trit_3D",
        SubstanceIds[1],
        {
            {SubstanceIds[2], "1", SubstanceOrProduct[1]},
            {SubstanceIds[2], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "2", -- Resultamount
        RecipeTypes[1],
        SubstanceOrProduct[1]
    },
    {
        -- H + H + T => 2T
        "Trit_2H_T",
        SubstanceIds[1],
        {
            {SubstanceIds[3], "1", SubstanceOrProduct[1]},
            {SubstanceIds[3], "1", SubstanceOrProduct[1]},
            {SubstanceIds[1], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "2", -- Resultamount
        RecipeTypes[1],
        SubstanceOrProduct[1]
    },
    {
        -- D + D + D => 3T
        "Trit_3D",
        SubstanceIds[1],
        {
            {SubstanceIds[2], "1", SubstanceOrProduct[1]},
            {SubstanceIds[2], "1", SubstanceOrProduct[1]},
            {SubstanceIds[2], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "3", -- Resultamount
        RecipeTypes[1],
        SubstanceOrProduct[1]
    },
    {
        -- T + H => 3D
        "Deut_T_H",
        SubstanceIds[2],
        {
            {SubstanceIds[1], "1", SubstanceOrProduct[1]},
            {SubstanceIds[3], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "3", -- Resultamount
        RecipeTypes[1],
        SubstanceOrProduct[1]
    },
    {
        -- D => 2H
        "DeutRecycling",
        SubstanceIds[3],
        {
            {SubstanceIds[2], "1", SubstanceOrProduct[1]}
        },
        "5", --ResultTimeToMake
        "2", -- Resultamount
        RecipeTypes[2],
        SubstanceOrProduct[1]
    }
}

function CreateRecipeTemplate (RecipeId, RecipeType, RecipeName, ResultTimeToMake, ResultId, ResultType, ResultAmount, Ingredients )
    return
    [[
        <Property value="GcRefinerRecipe.xml">
            <Property name="Id" value="]]..RecipeId..[[" />
            <Property name="RecipeType" value="]]..RecipeType..[[" />
            <Property name="RecipeName" value="]]..RecipeName..[[" />
            <Property name="TimeToMake" value="]]..ResultTimeToMake..[[" />
            <Property name="Cooking" value="False" />
            <Property name="Result" value="GcRefinerRecipeElement.xml">
                <Property name="Id" value="]]..ResultId..[[" />
                <Property name="Type" value="GcInventoryType.xml">
                    <Property name="InventoryType" value="]]..ResultType..[[" />
                </Property>
                <Property name="Amount" value="]]..ResultAmount..[[" />
            </Property>
            <Property name="Ingredients">
                ]]..Ingredients..[[
            </Property>
        </Property>
    ]]
end

function CreateNewIngredient(IngedientID, IngredientType, IngredientAmount)
    return
    [[
        <Property value="GcRefinerRecipeElement.xml">
            <Property name="Id" value="]]..IngedientID..[[" />
            <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="]]..IngredientType..[[" />
            </Property>
            <Property name="Amount" value="]]..IngredientAmount..[[" />
        </Property>
    ]]
end


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = ModName..GameVersion..".pak",
    ["MOD_DESCRIPTION"]         = ModName,
    ["MOD_AUTHOR"]              = Author,
    ["NMS_VERSION"]             = GameVersion,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"]    = GcRecipeTable,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = GcProductTable,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                }
            }
        }
    }
}

local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
for i = 1, #FrigateFuelIds do
    FrigateFuelId = FrigateFuelIds[i]

    ChangesToProductTable[#ChangesToProductTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", FrigateFuelId, "ID", SubstanceIds[1] },
        ["MATH_OPERATION"] = "*",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Amount", "2"}
        }
    }

    ChangesToProductTable[#ChangesToProductTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", FrigateFuelId, "ID", SubstanceIds[3] },
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", "OXYGEN"}
        }
    }

    ChangesToProductTable[#ChangesToProductTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", FrigateFuelId, "ID", "OXYGEN" },
        ["MATH_OPERATION"] = "*",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Amount", "2"}
        }
    }

end

local ChangesToRecipeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i =1, #ExistingRecipes do

    local RecipeId = ExistingRecipes[i][1]
    local RecipeTimeToMake = ExistingRecipes[i][2]
    local RecipeAmount = ExistingRecipes[i][3]
    local RecipeIngredients = ExistingRecipes[i][4]
    local IngredientsString = ""

    for j = 1, #RecipeIngredients do
        IngedientID = RecipeIngredients[j][1]
        IngredientAmount = RecipeIngredients[j][2]
        IngredientType = RecipeIngredients[j][3]

        IngredientsString = IngredientsString..CreateNewIngredient(IngedientID, IngredientType, IngredientAmount)
    end

    ChangesToRecipeTable[#ChangesToRecipeTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", RecipeId },
        ["VALUE_CHANGE_TABLE"] =
        {
            {"TimeToMake", RecipeTimeToMake},
            {"Amount", RecipeAmount} --should be the first hit
        }
    }

    ChangesToRecipeTable[#ChangesToRecipeTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", RecipeId },
        ["PRECEDING_KEY_WORDS"] = { "Ingredients" },
        ["REMOVE"] = "SECTION"
    }

    ChangesToRecipeTable[#ChangesToRecipeTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", RecipeId , "Result", "GcRefinerRecipeElement.xml"},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["ADD"] = [[<Property name="Ingredients">]]..IngredientsString..[[</Property>]]
    }
end

-- LAYOUT REMINDER
--     "DeutRecycling", --RecipedId
--     SubstanceIds[3], --ResultID
--     {
--         {SubstanceIds[2], "1", SubstanceOrProduct[1]}
--     },
--     "5", --ResultTimeToMake
--     "2", -- Resultamount
--     RecipeTypes[2], --Recipetype/name
-- }
for i = 1, #NewRecipes, 1 do
    local RecipeId = NewRecipes[i][1]
    local ResultId = NewRecipes[i][2]
    local RecipeIngredients = NewRecipes[i][3]
    local ResultTimeToMake = NewRecipes[i][4]
    local ResultAmount = NewRecipes[i][5]
    local RecipeType = NewRecipes[i][6]
    local RecipeName = RecipeType
    local ResultType = NewRecipes[i][7]

    local IngredientsString = ""

    for j = 1, #RecipeIngredients do
        IngedientID = RecipeIngredients[j][1]
        IngredientAmount = RecipeIngredients[j][2]
        IngredientType = RecipeIngredients[j][3]

        IngredientsString = IngredientsString..CreateNewIngredient(IngedientID, IngredientType, IngredientAmount)
    end

    ChangesToRecipeTable[#ChangesToRecipeTable + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateRecipeTemplate(RecipeId, RecipeType, RecipeName, ResultTimeToMake, ResultId, ResultType, ResultAmount, IngredientsString)
    }
end