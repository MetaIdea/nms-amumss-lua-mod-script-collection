Test_CODE =
[[
    <Property name="Table" value="GcProductData" _id="ULTRAPROD1">
      <Property name="ID" value="ULTRAPROD1" />
      <Property name="Name" value="UI_ULTRAPROD_1_NAME" />
      <Property name="NameLower" value="UI_ULTRAPROD_1_NAME_L" />
      <Property name="Subtitle" value="UI_ULTRAPROD_SUBTITLE" />
      <Property name="Description" value="UI_ULTRAPROD_1_DESC" />
      <Property name="AltDescription" value="" />
      <Property name="Hint" value="" />
      <Property name="BuildableShipTechID" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="BaseValue" value="15600000" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/ULTRAPROD.1.DDS" />
      </Property>
      <Property name="HeroIcon" value="TkTextureResource">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour">
        <Property name="R" value="0.800000" />
        <Property name="G" value="0.800000" />
        <Property name="B" value="0.800000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory">
        <Property name="SubstanceCategory" value="Special" />
      </Property>
      <Property name="Type" value="GcProductCategory">
        <Property name="ProductCategory" value="Tradeable" />
      </Property>
      <Property name="Rarity" value="GcRarity">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="false" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property name="Requirements" value="GcTechnologyRequirement" _id="CREATURE1">
          <Property name="ID" value="CREATURE1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="25" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_TOXIC">
          <Property name="ID" value="PLANT_TOXIC" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="600" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_DUST">
          <Property name="ID" value="PLANT_DUST" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_SNOW">
          <Property name="ID" value="PLANT_SNOW" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="100" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_HOT">
          <Property name="ID" value="PLANT_HOT" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_LUSH">
          <Property name="ID" value="PLANT_LUSH" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="GAS1">
          <Property name="ID" value="GAS1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="GAS2">
          <Property name="ID" value="GAS2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="GAS3">
          <Property name="ID" value="GAS3" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="FUEL2">
          <Property name="ID" value="FUEL2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="LAND2">
          <Property name="ID" value="LAND2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="DUSTY1">
          <Property name="ID" value="DUSTY1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="TOXIC1">
          <Property name="ID" value="TOXIC1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="CAVE2">
          <Property name="ID" value="CAVE2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="RADIO1">
          <Property name="ID" value="RADIO1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers">
        <Property name="SpaceStationMarkup" value="0.000000" />
        <Property name="LowPriceMod" value="-0.100000" />
        <Property name="HighPriceMod" value="0.100000" />
        <Property name="BuyBaseMarkup" value="0.200000" />
        <Property name="BuyMarkupMod" value="0.000000" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="false" />
      <Property name="NormalisedValueOnWorld" value="1.000000" />
      <Property name="NormalisedValueOffWorld" value="1.000000" />
      <Property name="TradeCategory" value="GcTradeCategory">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Crafting" />
      <Property name="IsCraftable" value="true" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0.250000" />
      <Property name="PinObjective" value="UI_CRAFT_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_ULTRAPROD1_OBJ_TIP" />
      <Property name="PinObjectiveMessage" value="" />
      <Property name="PinObjectiveScannableType" value="GcScannerIconTypes">
        <Property name="ScanIconType" value="None" />
      </Property>
      <Property name="PinObjectiveEasyToRefine" value="false" />
      <Property name="NeverPinnable" value="false" />
      <Property name="CookingIngredient" value="false" />
      <Property name="CookingValue" value="0.000000" />
      <Property name="FoodBonusStat" value="GcStatsTypes">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="FoodBonusStatAmount" value="0.000000" />
      <Property name="GoodForSelling" value="false" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="false" />
      <Property name="IsTechbox" value="false" />
      <Property name="CanSendToOtherPlayers" value="true" />
    </Property>
    <Property name="Table" value="GcProductData" _id="ULTRAPROD2">
      <Property name="ID" value="ULTRAPROD2" />
      <Property name="Name" value="UI_ULTRAPROD_2_NAME" />
      <Property name="NameLower" value="UI_ULTRAPROD_2_NAME_L" />
      <Property name="Subtitle" value="UI_ULTRAPROD_SUBTITLE" />
      <Property name="Description" value="UI_ULTRAPROD_2_DESC" />
      <Property name="AltDescription" value="" />
      <Property name="Hint" value="" />
      <Property name="BuildableShipTechID" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="BaseValue" value="15600000" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/ULTRAPROD.2.DDS" />
      </Property>
      <Property name="HeroIcon" value="TkTextureResource">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour">
        <Property name="R" value="0.800000" />
        <Property name="G" value="0.800000" />
        <Property name="B" value="0.800000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory">
        <Property name="SubstanceCategory" value="Special" />
      </Property>
      <Property name="Type" value="GcProductCategory">
        <Property name="ProductCategory" value="Tradeable" />
      </Property>
      <Property name="Rarity" value="GcRarity">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="false" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_SNOW">
          <Property name="ID" value="PLANT_SNOW" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_HOT">
          <Property name="ID" value="PLANT_HOT" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_DUST">
          <Property name="ID" value="PLANT_DUST" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="100" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_LUSH">
          <Property name="ID" value="PLANT_LUSH" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_POOP">
          <Property name="ID" value="PLANT_POOP" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="PLANT_RADIO">
          <Property name="ID" value="PLANT_RADIO" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="400" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="GAS1">
          <Property name="ID" value="GAS1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="GAS2">
          <Property name="ID" value="GAS2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="GAS3">
          <Property name="ID" value="GAS3" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="FUEL2">
          <Property name="ID" value="FUEL2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="CAVE2">
          <Property name="ID" value="CAVE2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="150" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="LUSH1">
          <Property name="ID" value="LUSH1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="HOT1">
          <Property name="ID" value="HOT1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property name="Requirements" value="GcTechnologyRequirement" _id="COLD1">
          <Property name="ID" value="COLD1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers">
        <Property name="SpaceStationMarkup" value="0.000000" />
        <Property name="LowPriceMod" value="-0.100000" />
        <Property name="HighPriceMod" value="0.100000" />
        <Property name="BuyBaseMarkup" value="0.200000" />
        <Property name="BuyMarkupMod" value="0.000000" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="false" />
      <Property name="NormalisedValueOnWorld" value="1.000000" />
      <Property name="NormalisedValueOffWorld" value="1.000000" />
      <Property name="TradeCategory" value="GcTradeCategory">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Crafting" />
      <Property name="IsCraftable" value="true" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0.250000" />
      <Property name="PinObjective" value="UI_CRAFT_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_ULTRAPROD2_OBJ_TIP" />
      <Property name="PinObjectiveMessage" value="" />
      <Property name="PinObjectiveScannableType" value="GcScannerIconTypes">
        <Property name="ScanIconType" value="None" />
      </Property>
      <Property name="PinObjectiveEasyToRefine" value="false" />
      <Property name="NeverPinnable" value="false" />
      <Property name="CookingIngredient" value="false" />
      <Property name="CookingValue" value="0.000000" />
      <Property name="FoodBonusStat" value="GcStatsTypes">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="FoodBonusStatAmount" value="0.000000" />
      <Property name="GoodForSelling" value="false" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="false" />
      <Property name="IsTechbox" value="false" />
      <Property name="CanSendToOtherPlayers" value="true" />
    </Property>
]]

Test_CODE1 =
[[
    <Property name="Table" value="GcRefinerRecipe" _id="REFINERECIPE_500">
      <Property name="Id" value="REFINERECIPE_500" />
      <Property name="RecipeType" value="RECIPE_ULTRAPROD1" />
      <Property name="RecipeName" value="R_NAME_ULTRAPROD1" />
      <Property name="TimeToMake" value="1" />
      <Property name="Cooking" value="false" />
      <Property name="Result" value="GcRefinerRecipeElement">
        <Property name="Id" value="ULTRAPROD1" />
        <Property name="Type" value="GcInventoryType">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="MEGAPROD1">
          <Property name="Id" value="MEGAPROD1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="MEGAPROD2">
          <Property name="Id" value="MEGAPROD2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="ALLOY7">
          <Property name="Id" value="ALLOY7" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
    <Property name="Table" value="GcRefinerRecipe" _id="REFINERECIPE_501">
      <Property name="Id" value="REFINERECIPE_501" />
      <Property name="RecipeType" value="RECIPE_ULTRAPROD2" />
      <Property name="RecipeName" value="R_NAME_ULTRAPROD2" />
      <Property name="TimeToMake" value="2" />
      <Property name="Cooking" value="false" />
      <Property name="Result" value="GcRefinerRecipeElement">
        <Property name="Id" value="ULTRAPROD2" />
        <Property name="Type" value="GcInventoryType">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="MEGAPROD3">
          <Property name="Id" value="MEGAPROD3" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="MEGAPROD2">
          <Property name="Id" value="MEGAPROD2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="ALLOY8">
          <Property name="Id" value="ALLOY8" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
]]

Test_CODE2 =
[[
    <Property name="Table" value="GcRefinerRecipe" _id="RECIPE_1400">
      <Property name="Id" value="RECIPE_1400" />
      <Property name="RecipeType" value="UI_TRA_CURIO2" />
      <Property name="RecipeName" value="UI_TRA_CURIO2_R" />
      <Property name="TimeToMake" value="1" />
      <Property name="Cooking" value="true" />
      <Property name="Result" value="GcRefinerRecipeElement">
        <Property name="Id" value="TRA_CURIO2" />
        <Property name="Type" value="GcInventoryType">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="NIPNIPBUDS">
          <Property name="Id" value="NIPNIPBUDS" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property name="Ingredients" value="GcRefinerRecipeElement" _id="FUEL1">
          <Property name="Id" value="FUEL1" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Fast Craft for Fusion Igniter and Stasis Device",
["MOD_AUTHOR"]      = "KuroPeach & Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Replaced the recipe of FusionIgniter and StasisDevice.  Changed to one-click recipe from the original raw materials. The original recipe moved to the refiner.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "ULTRAPROD1"},
                {"ID", "ULTRAPROD2"}
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
              ["ADD_OPTION"] = "ADDAFTERSECTION",
              ["ADD"] = Test_CODE,
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_399"},
              ["ADD_OPTION"] = "ADDAFTERSECTION",
              ["ADD"] = Test_CODE1,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RECIPE_1364"},
              ["ADD_OPTION"] = "ADDAFTERSECTION",
              ["ADD"] = Test_CODE2,
            }
          }
        }
      }
    }
  }
}