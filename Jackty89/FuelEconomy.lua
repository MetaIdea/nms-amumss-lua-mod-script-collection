ModName = "FuelEconomy"
Author = "Jackty89"

GcRecipeTable = "METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"
GcProductTable = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"

Substance = "Substance"
-- Product = "Product"

Core_Substance_Ids =
{
    ["Tritium"] = "ROCKETSUB",
    ["Deutrium"] = "LAUNCHSUB2",
    ["DiHydrogen"] = "LAUNCHSUB"
}
        -- Requested Operation: Di-hydrogen Capture,  Loosen Bonds
Text_String_Types = {["CAPTURE"] = "RECIPE_3INPUT_LAUNCHFUEL_1", ["BONDS"] = "RECIPE_GAS1_LAND"}
-- recipeType == name (no idea what the diff between the values is)
Frigate_Fuel_Ids = {"FRIGATE_FUEL_1", "FRIGATE_FUEL_2", "FRIGATE_FUEL_3"}

Existing_Recipes =
{
    {
        ["RECIPE_ID"] = "REFINERECIPE_56", --Di-Hydro
        ["TIME_TO_MAKE"] = "7",
        ["AMOUNT"] = "3",
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["Tritium"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        }
    },
    {
        ["RECIPE_ID"] = "REFINERECIPE_92", --Di-Hydro
        ["TIME_TO_MAKE"] = "5",
        ["AMOUNT"] = "1",
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        }
    }
}

New_Recipes =
{
    {
        -- D + H => 1T
        ["RECIPE_ID"] = "Trit_D_H",
        ["RESULT_ID"] = Core_Substance_Ids["Tritium"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "1",
        ["TEXST_STRING"] = Text_String_Types["CAPTURE"],
        ["RECIPE_RESULT_TYPE"] = Substance
    },
    {
        -- H + H + H => 1T
        ["RECIPE_ID"] = "Trit_3H",
        ["RESULT_ID"] = Core_Substance_Ids["Tritium"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "1",
        ["TEXST_STRING"] = Text_String_Types["CAPTURE"],
        ["RECIPE_RESULT_TYPE"] = Substance
    },
    {
        -- D + D => 2T
        ["RECIPE_ID"] = "Trit_2D",
        ["RESULT_ID"] = Core_Substance_Ids["Tritium"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "2",
        ["TEXST_STRING"] = Text_String_Types["CAPTURE"],
        ["RECIPE_RESULT_TYPE"] = Substance
    },
    {
        -- H + H + T => 2T
        ["RECIPE_ID"] = "Trit_2H_T",
        ["RESULT_ID"] = Core_Substance_Ids["Tritium"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["Tritium"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "2",
        ["TEXST_STRING"] = Text_String_Types["CAPTURE"],
        ["RECIPE_RESULT_TYPE"] = Substance
    },
    {
        -- D + D + D => 3T
        ["RECIPE_ID"] = "Trit_3D",
        ["RESULT_ID"] = Core_Substance_Ids["Tritium"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "3",
        ["TEXST_STRING"] = Text_String_Types["CAPTURE"],
        ["RECIPE_RESULT_TYPE"] = Substance
    },
    {
        -- T + H => 3D
        ["RECIPE_ID"] = "Deut_T_H",
        ["RESULT_ID"] = Core_Substance_Ids["Deutrium"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["Tritium"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
            {["INGREDIENT_ID"] = Core_Substance_Ids["DiHydrogen"], ["AMOUNT"] = "1", ["TYPE"] = Substance}
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "3",
        ["TEXST_STRING"] = Text_String_Types["BONDS"],
        ["RECIPE_RESULT_TYPE"] = Substance
    },
    {
        -- D => 2H
        ["RECIPE_ID"] = "DeutRecycling",
        ["RESULT_ID"] = Core_Substance_Ids["DiHydrogen"],
        ["INGREDIENTS"] =
        {
            {["INGREDIENT_ID"] = Core_Substance_Ids["Deutrium"], ["AMOUNT"] = "1", ["TYPE"] = Substance},
        },
        ["TIME_TO_MAKE"] = "5",
        ["RESULT_AMOUNT"] = "2",
        ["TEXST_STRING"] = Text_String_Types["BONDS"],
        ["RECIPE_RESULT_TYPE"] = Substance
    }
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = GcRecipeTable,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = GcProductTable,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                }
            }
        }
    }
}


local Changes_To_Recipe_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

function Create_New_Recipe (Recipe_Id, Recipe_Type, Recipe_Name, Recipe_Time_To_Make, Result_Id, Result_Type, Result_Amount, Recipe_Ingredients)
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
        ["SEC_SAVE_TO"] = Recipe_Id.."NEW_INGREDIENTS_MASER"
    }
    for j = 1, #Recipe_Ingredients do
        Ingedient_ID = Recipe_Ingredients[j]["INGREDIENT_ID"]
        Ingredient_Amount = Recipe_Ingredients[j]["AMOUNT"]
        Ingredient_Type = Recipe_Ingredients[j]["TYPE"]
        Create_New_Ingredient(Ingedient_ID, Ingredient_Type, Ingredient_Amount)
        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SEC_EDIT"] = Recipe_Id.."NEW_INGREDIENTS_MASER",
            ["ADD_OPTION"] = "ADDafterSECTION",
            ["SEC_ADD_NAMED"] = Ingedient_ID.."_SEC"
        }
    end
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = Recipe_Id.."NEW_INGREDIENTS_MASER",
        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
        ["SEC_SAVE_TO"] = Recipe_Id.."_SEC"
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = Recipe_Id.."_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id", Recipe_Id},
            {"RecipeType", Recipe_Type},
            {"RecipeName", Recipe_Name},
            {"TimeToMake", Recipe_Time_To_Make}
        }
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = Recipe_Id.."_SEC",
        ["SPECIAL_KEY_WORDS"] = {"Result", "GcRefinerRecipeElement.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id", Result_Id},
            {"InventoryType", Result_Type},
            {"Amount", Result_Amount}
        }
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = Recipe_Id.."_SEC",
        ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id },
        ["PRECEDING_KEY_WORDS"] = { "GcRefinerRecipeElement.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = Recipe_Id.."_SEC",
        ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id },
        ["PRECEDING_KEY_WORDS"] = { "Ingredients",},
        ["SEC_ADD_NAMED"] =  Recipe_Id.."NEW_INGREDIENTS_MASER"
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = "NEW_RECIPES_MASER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] =  Recipe_Id.."_SEC"
    }
end

function Create_New_Ingredient(Ingedient_ID, Ingredient_Type, Ingredient_Amount)
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
        ["PRECEDING_KEY_WORDS"] = {"GcRefinerRecipeElement.xml"},
        ["SEC_SAVE_TO"] = Ingedient_ID.."_SEC"
    }
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = Ingedient_ID.."_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id", Ingedient_ID},
            {"InventoryType", Ingredient_Type},
            {"Amount", Ingredient_Amount},
        }
    }
end

function Change_Frigate_Fuel_Compositions()
    for i = 1, #Frigate_Fuel_Ids do
        Frigate_Fuel_Id = Frigate_Fuel_Ids[i]

        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", Frigate_Fuel_Id, "ID", Core_Substance_Ids["Tritium"] },
            ["MATH_OPERATION"] = "*",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Amount", "2"}
            }
        }

        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", Frigate_Fuel_Id, "ID", Core_Substance_Ids["DiHydrogen"] },
            ["VALUE_CHANGE_TABLE"] =
            {
                {"ID", "OXYGEN"}
            }
        }

        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", Frigate_Fuel_Id, "ID", "OXYGEN" },
            ["MATH_OPERATION"] = "*",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Amount", "2"}
            }
        }

    end
end

function Edit_Existing_Recipes()
    for i =1, #Existing_Recipes do
        local Recipe_Id = Existing_Recipes[i]["RECIPE_ID"]
        local Recipe_Time_To_Make = Existing_Recipes[i]["TIME_TO_MAKE"]
        local Recipe_Amount = Existing_Recipes[i]["AMOUNT"]
        local Recipe_Ingredients = Existing_Recipes[i]["INGREDIENTS"]

        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
            ["SEC_SAVE_TO"] = Recipe_Id.."EDIT_INGREDIENTS_MASER"
        }
        for j = 1, #Recipe_Ingredients do
            Ingedient_ID = Recipe_Ingredients[j]["INGREDIENT_ID"]
            Ingredient_Amount = Recipe_Ingredients[j]["AMOUNT"]
            Ingredient_Type = Recipe_Ingredients[j]["TYPE"]

            Create_New_Ingredient(Ingedient_ID, Ingredient_Type, Ingredient_Amount)
            Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
            {
                ["SEC_EDIT"] = Recipe_Id.."EDIT_INGREDIENTS_MASER",
                ["ADD_OPTION"] = "ADDafterSECTION",
                ["SEC_ADD_NAMED"] = Ingedient_ID.."_SEC"
            }
        end
        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SEC_EDIT"] = Recipe_Id.."EDIT_INGREDIENTS_MASER",
            ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
            ["REMOVE"] = "SECTION"
        }

        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id },
            ["VALUE_CHANGE_TABLE"] =
            {
                {"TimeToMake", Recipe_Time_To_Make}
            }
        }
        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id, "Result", "GcRefinerRecipeElement.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Amount", Recipe_Amount}
            }
        }

        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id },
            ["PRECEDING_KEY_WORDS"] = { "GcRefinerRecipeElement.xml"},
            ["REPLACE_TYPE"] = "ALL",
            ["REMOVE"] = "SECTION"
        }
        Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Id", Recipe_Id },
            ["PRECEDING_KEY_WORDS"] = { "Ingredients",},
            ["SEC_ADD_NAMED"] =  Recipe_Id.."EDIT_INGREDIENTS_MASER"
        }
    end
end

function Add_New_Recipes()
    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
        ["SEC_SAVE_TO"] = "NEW_RECIPES_MASER"
    }
    for i = 1, #New_Recipes, 1 do
        local Recipe_Id = New_Recipes[i]["RECIPE_ID"]
        local Result_Id = New_Recipes[i]["RESULT_ID"]
        local Recipe_Ingredients = New_Recipes[i]["INGREDIENTS"]
        local Recipe_Time_To_Make = New_Recipes[i]["TIME_TO_MAKE"]
        local Result_Amount = New_Recipes[i]["RESULT_AMOUNT"]
        local Recipe_Type = New_Recipes[i]["TEXST_STRING"]
        local Recipe_Name = New_Recipes[i]["TEXST_STRING"]
        local Result_Type = New_Recipes[i]["RECIPE_RESULT_TYPE"]

        Create_New_Recipe(Recipe_Id, Recipe_Type, Recipe_Name, Recipe_Time_To_Make, Result_Id, Result_Type, Result_Amount, Recipe_Ingredients)
    end

    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["SEC_EDIT"] = "NEW_RECIPES_MASER",
        ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_1"},
        ["REMOVE"] = "SECTION"
    }

    Changes_To_Recipe_Table[#Changes_To_Recipe_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "NEW_RECIPES_MASER"
    }
end

Change_Frigate_Fuel_Compositions()
Edit_Existing_Recipes()
Add_New_Recipes()