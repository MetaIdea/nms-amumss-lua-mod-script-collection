-- Choose one of these fe. english would be Languages[1], french Languages[2] ...
Languages =
{
    ["EN"] = "English",
    ["FR"] = "French",
    ["IT"] = "Italian",
    ["DE"] = "German",
    ["ES"] = "Spanish",
    ["RU"] = "Russian",
    ["PL"] = "Polish",
    ["NL"] = "Dutch",
    ["PT"] = "Portuguese",
    ["LA"] = "LatinAmericanSpanish",
    ["BR"] = "BrazilianPortuguese",
    ["Z1"] = "SimplifiedChinese",
    ["ZH"] = "TraditionalChinese",
    ["Z2"] = "TencentChinese",
    ["KO"] = "Korean",
    ["JA"] = "Japanese",
    ["US"] = "USEnglish"
}

RecipeCookingMethod =
{
    ["Stew"]       = "UI_COOK_STEW",
    ["Drink"]      = "UI_COOK_DRINK",
    ["Eggs"]       = "UI_COOK_EGGS",
    ["Mix"]        = "UI_COOK_MIX",
    ["Cake"]       = "UI_COOK_CAKE",
    ["Ice"]        = "UI_COOK_ICE",
    ["Bait"]       = "UI_COOK_BAIT",
    ["Pie"]        = "UI_COOK_PIE",
    ["Dougnut"]    = "UI_COOK_DOUGNUT",
    ["SmokedMeat"] = "UI_COOK_SMOKED_MEAT",
    ["Meat"]       = "UI_COOK_MEAT",
    ["Veg"]        = "UI_COOK_VEG"
}

NewFoodConsumeReward =
{
    ["Stamina"] = "DE_FOOD_STAMINA",
    ["Energy1"] = "DE_FOOD_ENERGY1",
    ["Energy2"] = "DE_FOOD_ENERGY2",
    ["Energy3"] = "DE_FOOD_ENERGY3",
    ["Haz1"]    = "DE_FOOD_HAZ1",
    ["Haz2"]    = "DE_FOOD_HAZ2",
    ["Haz3"]    = "DE_FOOD_HAZ3",
    ["JetPack"] = "DE_FOOD_JETPACK",
    ["Health"]  = "DE_FOOD_HEALTH"
}

-- SubstanceOrProduct[1] = Substance, ...[2] = Product
SubstanceOrProduct = { ["Substance"] = "Substance", ["Product"] =  "Product"}

-- AddNewFood structure
-- {
--    ["FoodID"] = "CustomID",
--    ["RecipeIngredients"] =
--    {
--        --multiple recipes possible
--        --Recipe1
--        {
--            {"LAUNCHSUB", "5", SubstanceOrProduct["Substance"]},
--            {"FOOD_P_RADFARM", "2", SubstanceOrProduct["Product"]},
--            {"FOOD_V_COW", "1", SubstanceOrProduct["Product"]}
--        },
--        --Recipe2
--        {...
--        }
--    },
--    ["RecipeCookingTime"] = "time",
--    ["RecipeCookingAmount"] = "amount",
--    ["Stacksize"] = "stacksize",
--    ["Price"] = "price",
--    ["NewFoodIcon"] = "TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.COFFEE.DDS",
--    ["CookingMethod"] = RecipeCookingMethod["Drink"],
--    ["ConsumeReward"] = NewFoodConsumeReward["Energy1"],
--    ["Languages"] =
--    {
--        {Languages["EN"], "Coffee", "This hot beverage gains its flavor and warmth from a complex blend of Sievert Beans, providing a radiant and rich mouth feel. Weirdly, the warmth seems to disappear almost instantly after consumption."}
--    }
-- },
-- end structure

AddNewFood =
{
    {
        ["FoodID"]            = "Drinks_Coffee",
        ["RecipeIngredients"] =
        {
            --multiple recipes possible (see tea)
            {
                {"LAUNCHSUB",      "5", SubstanceOrProduct["Substance"]},
                {"FOOD_P_RADFARM", "2", SubstanceOrProduct["Product"]},
                {"FOOD_V_COW",     "1", SubstanceOrProduct["Product"]}
            }
        },
        ["RecipeCookingTime"]   = "5",
        ["RecipeCookingAmount"] = "1",
        ["Stacksize"]           = "10",
        ["Price"]               = "150",
        ["NewFoodIcon"]         = "TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.COFFEE.DDS",
        ["CookingMethod"]       = RecipeCookingMethod["Drink"],
        ["ConsumeReward"]       = NewFoodConsumeReward["Energy3"],
        ["Languages"]           =
        {
            {Languages["EN"], "Coffee", "This hot beverage gains its flavor and warmth from a complex blend of Sievert Beans, providing a radiant and rich mouth feel. Weirdly, the warmth seems to disappear almost instantly after consumption."}
        }
    },
    {
        ["FoodID"]            = "Drinks_Tea",
        ["RecipeIngredients"] =
        {
            {
                {"LAUNCHSUB",  "5", SubstanceOrProduct["Substance"]},
                {"NIPNIPBUDS", "2", SubstanceOrProduct["Product"]}
            },
            {
                {"LAUNCHSUB",   "5", SubstanceOrProduct["Substance"]},
                {"PLANT_RADIO", "2", SubstanceOrProduct["Substance"]}
            }
        },
        ["RecipeCookingTime"]   = "2",
        ["RecipeCookingAmount"] = "1",
        ["Stacksize"]           = "15",
        ["Price"]               = "150",
        ["NewFoodIcon"]         = "TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.TEA.DDS",
        ["CookingMethod"]       = RecipeCookingMethod["Drink"],
        ["ConsumeReward"]       = NewFoodConsumeReward["Health"],
        ["Languages"]           =
        {
            {Languages["EN"], "Tea", "A lively and mouth-drying effect on the tongue. Not bitter, but a clean and refreshing quality. This tea is renowned across the local region, and is made fresh from whatever the recipe is."},
            {Languages["FR"], "Thee", "Oho hon hon, ce n'est pas une baguette"}
        }
    },
    {
        ["FoodID"]            = "Cola",
        ["RecipeIngredients"] =
        {
            {
                {"LAUNCHSUB",  "5", SubstanceOrProduct["Substance"]},
                {"PLANT_LUSH", "2", SubstanceOrProduct["Product"]},
                {"CASING",     "1", SubstanceOrProduct["Product"]}
            }
        },
        ["RecipeCookingTime"]   = "10",
        ["RecipeCookingAmount"] = "1",
        ["Stacksize"]           = "15",
        ["Price"]               = "10",
        ["NewFoodIcon"]         = "TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.COLA.DDS",
        ["CookingMethod"]       = RecipeCookingMethod["Drink"],
        ["ConsumeReward"]       = NewFoodConsumeReward["Energy3"],
        ["Languages"]           =
        {
            {Languages["EN"], "Cola", "Sparkly drink that's more sugar than anything else."}
        }
    },
    {
        ["FoodID"]            = "choco_cake",
        ["RecipeIngredients"] =
        {
            {
                {"FOOD_R_CHOC",     "5", SubstanceOrProduct["Substance"]},
                {"FOOD_R_CAKEMIX", "1", SubstanceOrProduct["Product"]},
                {"FOOD_R_CREAM",   "1", SubstanceOrProduct["Product"]}
            }
        },
        ["RecipeCookingTime"]   = "25",
        ["RecipeCookingAmount"] = "1",
        ["Stacksize"]           = "5",
        ["Price"]               = "250",
        ["NewFoodIcon"]         = "TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.CUPCAKEEVIL.DDS",
        ["CookingMethod"]       = RecipeCookingMethod["Cake"],
        ["ConsumeReward"]       = NewFoodConsumeReward["JetPack"],
        ["Languages"]           =
        {
            {Languages["EN"], "Chocolate cake", "Its a cake full of chocolate."}
        }
    }
}

--If you wish to make certain substances or products available as cookingproducts
MakeProductOrSubstanceACookingIngredient =
{
    {SubstanceOrProduct["Substance"], "LAUNCHSUB"},
    {SubstanceOrProduct["Product"],   "CASING"},
    {SubstanceOrProduct["Product"],   "NIPNIPBUDS"},
}
---------------------------------------------------------------------------------
----------START OF CODE MAGIC, NO NEED TO DO ANYTHING ANYMORE--------------------
---------------------------------------------------------------------------------
ModName                  = "AddNewFoods"
Author                   = "jackty89" --IE GameMaster-BE on the discord
ModDescription           = "This mod allows you to add new Food and corresponding recipes. And allows you to change existing products/substance as cookingitems"

CustomLanguageTag        = "CustomNewFood"
SetCookingIngredientTrue = "True"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModDescription,
    ["MOD_AUTHOR"]      = Author,
    ["ADD_FILES"]       =
    {
    },
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"]    =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] =
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..CustomLanguageTag..[[" />
                                </Property>
                            ]]
                        }
                    }
                }
            }
        }
    }
}

function CreateNewFoodProduct(NewFoodID, NewFoodName, NewFoodNameLc, NewFoodDesc, NewFoodStackSize, NewFoodValue, NewFoodIcon)
    local result =
    [[
        <Property value="GcProductData.xml">
            <Property name="ID" value="]]..NewFoodID..[[" />
            <Property name="Name" value="]]..NewFoodName..[[" />
            <Property name="NameLower" value="]]..NewFoodNameLc..[[" />
            <Property name="Subtitle" value="VariableSizeString.xml">
                <Property name="Value" value="FOOD_COOKED_SUB" />
            </Property>
            <Property name="Description" value="VariableSizeString.xml">
                <Property name="Value" value="]]..NewFoodDesc..[[" />
            </Property>
            <Property name="Hint" value="" />
            <Property name="GroupID" value="" />
            <Property name="DebrisFile" value="TkModelResource.xml">
                <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
                <Property name="ResHandle" value="GcResource.xml">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="BaseValue" value="]]..NewFoodValue..[[" />
            <Property name="Level" value="0" />
            <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="]]..NewFoodIcon..[[" />
                <Property name="ResHandle" value="GcResource.xml">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="HeroIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.827451" />
            <Property name="G" value="0.3254902" />
            <Property name="B" value="0" />
            <Property name="A" value="1" />
            </Property>
            <Property name="Category" value="GcRealitySubstanceCategory.xml">
                <Property name="SubstanceCategory" value="Exotic" />
            </Property>
            <Property name="Type" value="GcProductCategory.xml">
                <Property name="ProductCategory" value="Consumable" />
            </Property>
            <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Common" />
            </Property>
            <Property name="Legality" value="GcLegality.xml">
                <Property name="Legality" value="Legal" />
            </Property>
            <Property name="Consumable" value="True" />
            <Property name="ChargeValue" value="0" />
            <Property name="StackMultiplier" value="]]..NewFoodStackSize..[[" />
            <Property name="DefaultCraftAmount" value="1" />
            <Property name="CraftAmountStepSize" value="1" />
            <Property name="CraftAmountMultiplier" value="1" />
            <Property name="Requirements" />
            <Property name="AltRequirements" />
            <Property name="Cost" value="GcItemPriceModifiers.xml">
                <Property name="SpaceStationMarkup" value="0" />
                <Property name="LowPriceMod" value="-0.1" />
                <Property name="HighPriceMod" value="0.1" />
                <Property name="BuyBaseMarkup" value="0.2" />
                <Property name="BuyMarkupMod" value="0" />
            </Property>
            <Property name="RecipeCost" value="1" />
            <Property name="SpecificChargeOnly" value="False" />
            <Property name="NormalisedValueOnWorld" value="5.0961557E-05" />
            <Property name="NormalisedValueOffWorld" value="5.0961557E-05" />
            <Property name="TradeCategory" value="GcTradeCategory.xml">
                <Property name="TradeCategory" value="None" />
            </Property>
            <Property name="WikiCategory" value="Cooking" />
            <Property name="IsCraftable" value="False" />
            <Property name="DeploysInto" value="" />
            <Property name="EconomyInfluenceMultiplier" value="0.33" />
            <Property name="PinObjective" value="" />
            <Property name="PinObjectiveTip" value="" />
            <Property name="CookingIngredient" value="True" />
            <Property name="CookingValue" value="1" />
            <Property name="GoodForSelling" value="False" />
            <Property name="GiveRewardOnSpecialPurchase" value="" />
            <Property name="EggModifierIngredient" value="True" />
            <Property name="IsTechbox" value="False" />
        </Property>
    ]]

    return result
end

function CreateNewRecipe(RecipeID,RecipeType, RecipeName, RecipeCookingTime, NewFoodID, RecipeCookingAmount, Ingredients)
    return
    [[
        <Property value="GcRefinerRecipe.xml">
            <Property name="Id" value="]]..RecipeID..[[" />
            <Property name="RecipeType" value="]]..RecipeType..[[" />
            <Property name="RecipeName" value="]]..RecipeName..[[" />
            <Property name="TimeToMake" value="]]..RecipeCookingTime..[[" />
            <Property name="Cooking" value="True" />
            <Property name="Result" value="GcRefinerRecipeElement.xml">
                <Property name="Id" value="]]..NewFoodID..[[" />
                <Property name="Type" value="GcInventoryType.xml">
                    <Property name="InventoryType" value="Product" />
                </Property>
                <Property name="Amount" value="]]..RecipeCookingAmount..[[" />
            </Property>

            <Property name="Ingredients">]]..Ingredients..[[</Property>
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

function CreateNewConsumable(NewFoodID, NewFoodConsumeRewardID)
    return
    [[
        <Property value="GcConsumableItem.xml">
            <Property name="ID" value="]]..NewFoodID..[[" />
            <Property name="RewardID" value="]]..NewFoodConsumeRewardID..[[" />
            <Property name="TutorialRewardID" value="" />
            <Property name="ButtonLocID" value="UI_OPEN_SENT" />
            <Property name="ButtonSubLocID" value="UI_OPEN_SENT_SUB" />
            <Property name="CloseInventoryWhenUsed" value="True" />
            <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
            <Property name="DestroyItemWhenConsumed" value="True" />
            <Property name="AddCommunityTierClassIcon" value="False" />
            <Property name="SuppressResourceMessage" value="False" />
            <Property name="CustomOSD" value="" />
        </Property>
    ]]
end

--Add New Foods to the product table
local AddNewFoodsToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewFood do

    local FoodID = string.upper(AddNewFood[i]["FoodID"])
    local FoodName = string.upper(FoodID).."_NAME"
    local FoodNameLC = string.upper(FoodID).."_NAME_L"
    local FoodDesc = string.upper(FoodID).."_DESC"
    local FoodStackSize = AddNewFood[i]["Stacksize"]
    local FoodValue = AddNewFood[i]["Price"]
    local FoodIcon = AddNewFood[i]["NewFoodIcon"]

    local temp_table =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewFoodProduct(FoodID, FoodName, FoodNameLC, FoodDesc, FoodStackSize, FoodValue, FoodIcon)
    }
    AddNewFoodsToProductTable[#AddNewFoodsToProductTable + 1] = temp_table
end

--Adds a new Recipe to te Recipe table for the new Food
local AddNewRecipes = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewFood do
    local Recipes = {}

    local FoodID = string.upper(AddNewFood[i]["FoodID"])
    local RecipeID = "RECIPE_"..FoodID
    local CookingMethod = AddNewFood[i]["CookingMethod"] --this contains an UI value like UI_COOK_Cake="Assemble Baked Product", ...
    local CookingTime = AddNewFood[i]["RecipeCookingTime"]
    local CookingAmount = AddNewFood[i]["RecipeCookingAmount"]
    local IngredientsArray = AddNewFood[i]["RecipeIngredients"]

    local Ingredients = {}
    for j = 1, #IngredientsArray do
        local Ingredient = IngredientsArray[j]
        local RecipeCount = RecipeID.."_"..j
        for k = 1, #Ingredient  do
            local IngredientId = ""
            local IngredientType = ""
            local IngredientAmnt = ""
            IngredientId = Ingredient[k][1]
            IngredientType = Ingredient[k][3]
            IngredientAmnt = Ingredient[k][2]
            table.insert(Ingredients, CreateNewIngredient(IngredientId, IngredientType, IngredientAmnt))
        end
        table.insert(Recipes, CreateNewRecipe(RecipeCount, CookingMethod, CookingMethod, CookingTime, FoodID, CookingAmount, table.concat(Ingredients)))
    end

    AddNewRecipes[#AddNewRecipes + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = table.concat(Recipes)
    }
end

--Adds the new Food as a consumable to consumable table
local AddFoodsAsConsumable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewFood do
    local FoodID = string.upper(AddNewFood[i]["FoodID"])
    local FoodConsumeReward = string.upper(AddNewFood[i]["ConsumeReward"])

    AddFoodsAsConsumable[#AddFoodsAsConsumable + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewConsumable(FoodID, FoodConsumeReward)
    }
end

function NewLanguagueFile(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..DescriptionEntries..
            [[
            </Property>
        </Data>
    ]]
end

function NewLanguageEntry(Language, NewDescription)
    return
    [[
        <Property name="]]..Language..[[" value="VariableSizeString.xml">
            <Property name="Value" value="]]..NewDescription..[[" />
        </Property>
    ]]
end

function NewDescriptionText(newDescId, LanguageEntries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..LanguageEntries..[[
        </Property>
    ]]
end

function FillCustomlangFile()
    local NewFoodLangEntries = {}

    for i = 1, #AddNewFood do
        local FoodID = string.upper(AddNewFood[i]["FoodID"])
        local LanguageEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}

        local LanguagesData = AddNewFood[i]["Languages"]

        local NameID = FoodID.."_NAME"
        local NameLCID = FoodID.."_NAME_L"
        local DescID = FoodID.."_DESC"

        for j = 1, #LanguagesData do
            local Language = LanguagesData[j][1]

            local NameLC = LanguagesData[j][2]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local Name = string.upper(NameLC)
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NewDescription = LanguagesData[j][3]
            table.insert(LanguageEntries, NewLanguageEntry(Language, NewDescription))
        end

        table.insert(NewFoodLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
        table.insert(NewFoodLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        table.insert(NewFoodLangEntries, NewDescriptionText(DescID, table.concat(LanguageEntries)))

    end
    return NewLanguagueFile(table.concat(NewFoodLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for _Key , Language in pairs(Languages) do
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"]    =    "LANGUAGE/NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"]        =    FillCustomlangFile()
    }
end

--Will cange the value of SetCookingIngredient as True for either Substance/Product
local SetSubstancesOrProductsAsCookingProducts = {}
for i = 1, #MakeProductOrSubstanceACookingIngredient do
    if MakeProductOrSubstanceACookingIngredient[i][1] == SubstanceOrProduct["Product"] then
        SetSubstancesOrProductsAsCookingProducts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
    else
        SetSubstancesOrProductsAsCookingProducts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
    end

    SetSubstancesOrProductsAsCookingProducts[#SetSubstancesOrProductsAsCookingProducts + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", MakeProductOrSubstanceACookingIngredient[i][2]},
        ["VALUE_CHANGE_TABLE"]    =
        {
            {"CookingIngredient", SetCookingIngredientTrue}
        }
    }
end