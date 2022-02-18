GameVersion = "3_53"
ModName = "AddNewFoods"
Author = "jackty89" --IE GameMaster-BE on the discord
ModDescription = "This mod allows you to add new Food and corresponding recipes. And allows you to change existing products/substance as cookingitems"

-- Choose one of these fe. english would be Languages[1], french Languages[2] ...
Languages = 
{
	"English",
	"French",
	"Italian",
	"German",
	"Spanish",
	"Russian",
	"Polish",
	"Dutch",
	"Portuguese",
	"LatinAmericanSpanish",
	"BrazilianPortuguese",
	"SimplifiedChinese",
	"TraditionalChinese",
	"TencentChinese",
	"Korean",
	"Japanese",
	"USEnglish"
}

RecipeCookingMethod = 
{
	"UI_COOK_STEW", 
	"UI_COOK_DRINK", 
	"UI_COOK_EGGS", 
	"UI_COOK_MIX", 
	"UI_COOK_CAKE", 
	"UI_COOK_ICE", 
	"UI_COOK_BAIT", 
	"UI_COOK_PIE", 
	"UI_COOK_DOUGNUT", 
	"UI_COOK_CAKE", 
	"UI_COOK_SMOKED_MEAT", 
	"UI_COOK_MEAT", 
	"UI_COOK_VEG"
}

NewFoodConsumeReward = 
{
	"DE_FOOD_STAMINA", 
	"DE_FOOD_ENERGY1",
	"DE_FOOD_ENERGY2",
	"DE_FOOD_ENERGY3",
	"DE_FOOD_HAZ1",
	"DE_FOOD_HAZ2",
	"DE_FOOD_HAZ3",
	"DE_FOOD_JETPACK",
	"DE_FOOD_HEALTH"
}

LanguageFileLoc = 
{
	"LOC1",
	"LOC2",
	"UPDATE3",
	"LOC4",
	"LOC5",
	"LOC6"
	
}

-- SubstanceOrProduct[1] = Substance, ...[2] = Product 
SubstanceOrProduct = {"Substance", "Product"}

-- AddNewFood structure
	-- NewFoodID, (fe. NipNip_Tea)
	-- Ingredients{{ingredient1, amount,type},{ingredient2, amount,type},{ingredient3, amount, type}},  (max 3 ingredients)
	-- RecipeCookingTime, (time in seconds)
	-- RecipeCookingAmount, (how many will get produced per cycle)
	-- StackSize,
	-- Price,
	-- NewFoodTextureFileLocation, (TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/...), make sure the file structure in FilesToInclude ressembles this
	-- RecipeCookingMethod[X], (RecipeCookingMethod[1] = "UI_COOK_STEW" ....)
	-- NewFoodConsumeReward[X], (see variable above, works the same way)
	-- Language {{languages[X], LanguageFileLoc[X], Name, custom description},...}"languagefile location" doesn't really matter as the code is adding a brand new ID unless you want to keep things organized
-- end structure

AddNewFood = 
{
	{
		"Drinks_Coffee", 
		{
			{"LAUNCHSUB", "5", SubstanceOrProduct[1]}, 
			{"FOOD_P_RADFARM", "2", SubstanceOrProduct[2]}, 
			{"FOOD_V_COW", "1", SubstanceOrProduct[2]}
		},
		"5",
		"1",
		"10",
		"150",
		"TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.COFFEE.DDS",
		RecipeCookingMethod[2],
		NewFoodConsumeReward[4],
		{
			{Languages[1], LanguageFileLoc[4], "Coffee", "This hot beverage gains its flavor and warmth from a complex blend of Sievert Beans, providing a radiant and rich mouth feel. Weirdly, the warmth seems to disappear almost instantly after consumption."} 
		}
	},
	{
		"Tea", 
		{
			{"LAUNCHSUB","5", SubstanceOrProduct[1]}, 
			{"NIPNIPBUDS", "2", SubstanceOrProduct[2]}

		},
		"2",
		"1",
		"15",
		"100",
		"TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.MILKGGG.DDS",	
		RecipeCookingMethod[2],
		NewFoodConsumeReward[9],
		{
			{Languages[1], LanguageFileLoc[4], "Tea", "A lively and mouth-drying effect on the tongue. Not bitter, but a clean and refreshing quality. This tea is renowned across the local region, and is made fresh from whatever the recipe is."},
			{Languages[2], LanguageFileLoc[4], "Thee", "Oho hon hon, ce n'est pas une baguette"}
		}		
	},
	{
		"Cola", 
		{
			{"LAUNCHSUB","5", SubstanceOrProduct[1]}, 
			{"PLANT_LUSH", "2", SubstanceOrProduct[2]},
			{"CASING", "1", SubstanceOrProduct[2]}

		},
		"2",
		"1",
		"12",
		"10",
		"TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.MILKHHH.DDS",	
		RecipeCookingMethod[2],
		NewFoodConsumeReward[4],
		{
			{Languages[1], LanguageFileLoc[4], "Cola", "Sparkly drink that's more sugar than anything else."}
		}		
	}
}

--If you wish to make certain substances or products available as cookingproducts
MakeProductOrSubstanceACookingIngredient = 
{
	{SubstanceOrProduct[1],"LAUNCHSUB"},
	{SubstanceOrProduct[2],"CASING"},
	{SubstanceOrProduct[2],"NIPNIPBUDS"},
}
SetCookingIngredientTrue = "True"

---------------------------------------------------------------------------------
----------START OF CODE MAGIC, NO NEED TO DO ANYTHING ANYMORE--------------------
---------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= ModDescription,   
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{					
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
																
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
														
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{

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
			<Property name="Id" value="]]..NewFoodID..[[" />
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
			</Property>
			<Property name="BaseValue" value="]]..NewFoodValue..[[" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource.xml">
				<Property name="Filename" value="]]..NewFoodIcon..[[" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="" />
			</Property>
			<Property name="Colour" value="Colour.xml">
				<Property name="R" value="0" />
				<Property name="G" value="0.4745098" />
				<Property name="B" value="0.3254902" />
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
			<Property name="NormalisedValueOnWorld" value="5.09615566E-05" />
			<Property name="NormalisedValueOffWorld" value="5.09615566E-05" />
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
			<Property name="CookingValue" value="0.8" />
			<Property name="GoodForSelling" value="False" />
			<Property name="GiveRewardOnSpecialPurchase" value="" />
			<Property name="EggModifierIngredient" value="True" />
		</Property>
	]]
 
	return result 
end

function CreateNewRecipe(RecipeID, RecipeCookingMethod, RecipeCookingTime, NewFoodID, RecipeCookingAmount, Ingredients)
	
	
	return
	[[
		<Property value="GcRefinerRecipe.xml">
			<Property name="Id" value="]]..RecipeID..[[" />
			<Property name="Name" value="]]..RecipeCookingMethod..[[" />
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
			<Property name="ButtonLocID" value="UI_CONSUME" />
			<Property name="ButtonSubLocID" value="UI_CONSUME_SUB" />
			<Property name="CloseInventoryWhenUsed" value="True" />
			<Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
			<Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
			<Property name="DestroyItemWhenConsumed" value="True" />
		</Property>
	]]
end

function LanguageFile(LanguageFileID)
	return 
	[[
		<Property value="TkLocalisationEntry.xml">
			<Property name="Id" value="]]..LanguageFileID..[[" />
			<Property name="English" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="French" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Italian" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="German" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Spanish" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Russian" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Polish" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Dutch" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Portuguese" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="BrazilianPortuguese" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="SimplifiedChinese" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="TraditionalChinese" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="TencentChinese" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Korean" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="Japanese" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
			<Property name="USEnglish" value="VariableSizeString.xml">
				<Property name="Value" value="" />
			</Property>
		</Property>
	]]
end

--Add New Foods to the product table
local AddNewFoodsToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewFood do
		
	local FoodID = string.upper(AddNewFood[i][1])
	local FoodName = string.upper(AddNewFood[i][1]).."_NAME"
	local FoodNameLC = string.upper(AddNewFood[i][1]).."_NAME_L"
	local FoodDesc = string.upper(AddNewFood[i][1]).."_DESC"
	local FoodStackSize = AddNewFood[i][5]
	local FoodValue = AddNewFood[i][6]
	local FoodIcon = AddNewFood[i][7]

	local temp_table = 
	{
		["PRECEDING_KEY_WORDS"] = {"Table"},
		["ADD"] = ""..CreateNewFoodProduct(FoodID, FoodName, FoodNameLC, FoodDesc, FoodStackSize, FoodValue, FoodIcon)
	}
	AddNewFoodsToProductTable[#AddNewFoodsToProductTable + 1] = temp_table
end

--Adds a new Recipe to te Recipe table for the new Food
local AddNewRecipes = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewFood do

	local RecipeID = "RECIPE_"..string.upper(AddNewFood[i][1])
	local FoodID = string.upper(AddNewFood[i][1])
	local CookingMethod = AddNewFood[i][8]
	local CookingTime = AddNewFood[i][3]
	local CookingAmount = AddNewFood[i][4]
	local IngredientsArray = AddNewFood[i][2]
	local IngredientsString = ""

	local IngredientId = ""
	local IngredientType = ""
	local IngredientAmnt = ""

	for j = 1, #IngredientsArray do
		IngredientId = IngredientsArray[j][1]
		IngredientType = IngredientsArray[j][3]
		IngredientAmnt = IngredientsArray[j][2]
		IngredientsString = IngredientsString..""..CreateNewIngredient(IngredientId, IngredientType, IngredientAmnt)
	end
	
	local temp_table = 
	{
		["PRECEDING_KEY_WORDS"] = {"Table"},
		["ADD"] = ""..CreateNewRecipe(RecipeID, CookingMethod, CookingTime, FoodID, CookingAmount, IngredientsString)
	}
	AddNewRecipes[#AddNewRecipes + 1] = temp_table
end

--Adds the new Food as a consumable to consumable table
local AddFoodsAsConsumable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewFood do
	local FoodID = string.upper(AddNewFood[i][1])
	local FoodConsumeReward = string.upper(AddNewFood[i][9])

	local temp_table = 
	{
		["PRECEDING_KEY_WORDS"] = {"Table"},
		["ADD"] = ""..CreateNewConsumable(FoodID, FoodConsumeReward)
	}
	AddFoodsAsConsumable[#AddFoodsAsConsumable + 1] = temp_table  		
end

--Adds Name, Name_L and Description to specific language files (language file is chosen by language argument)
local AddNewLanguageTables = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #AddNewFood do
	local FoodID = string.upper(AddNewFood[i][1])
	local LanguageTable = AddNewFood[i][10]
	
	for j = 1, #LanguageTable do
		local Language = LanguageTable[j][1]
		local FileLoc = LanguageTable[j][2]
		local NameLC = LanguageTable[j][3]
		local Name = string.upper(NameLC)
		local FoodDescription = LanguageTable[j][4]
		
		local NameID = FoodID.."_NAME"
		local NameLCID = FoodID.."_NAME_L"
		local DescID = FoodID.."_DESC"
		
		local FoodNameTable = LanguageFile(NameID)
		local FoodNameLCTable = LanguageFile(NameLCID)
		local FoodDescTable = LanguageFile(DescID)

		local FoodLanguageTable = FoodNameTable..FoodNameLCTable ..FoodDescTable

		local temp_table = 
		{
			["MBIN_FILE_SOURCE"] 	= "LANGUAGE\NMS_"..FileLoc.."_"..string.upper(Language)..".MBIN",
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["PRECEDING_KEY_WORDS"] = {"Table"},
					["ADD"] = ""..FoodLanguageTable,
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id", NameID , Language, "VariableSizeString.xml"},
					["PRECEDING_KEY_WORDS"] = {Language},
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Value", Name}
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id", NameLCID , Language, "VariableSizeString.xml"},
					["PRECEDING_KEY_WORDS"] = {Language},
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Value", NameLC}
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id", DescID , Language, "VariableSizeString.xml"},
					["PRECEDING_KEY_WORDS"] = {Language},
					["VALUE_CHANGE_TABLE"] = 
					{
						{"Value", FoodDescription}
					}
				}

			}
		}
		AddNewLanguageTables[#AddNewLanguageTables + 1] = temp_table  
	
	end			
end

--Will cange the value of SetCookingIngredient as True for either Substance/Product
local SetSubstancesOrProductsAsCookingProducts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #MakeProductOrSubstanceACookingIngredient do
	local ID = ""
	local File = "METADATA\REALITY\TABLES\NMS_REALITY_GC"..string.upper(MakeProductOrSubstanceACookingIngredient[i][1]).."TABLE.MBIN"

	if MakeProductOrSubstanceACookingIngredient[i][1] == "Product" then
		ID = "Id"
	else
		ID = "ID"
	end

	local temp_table = 
	{		
		["MBIN_FILE_SOURCE"] 	= File,
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {ID, MakeProductOrSubstanceACookingIngredient[i][2]},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"CookingIngredient", SetCookingIngredientTrue}
				}
			}            
		}
	}
	SetSubstancesOrProductsAsCookingProducts[#SetSubstancesOrProductsAsCookingProducts + 1] = temp_table
end