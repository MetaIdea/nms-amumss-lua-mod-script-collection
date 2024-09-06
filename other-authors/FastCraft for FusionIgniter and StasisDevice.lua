Test_CODE = [[
    <Property value="GcProductData.xml">
      <Property name="ID" value="ULTRAPROD1" />
      <Property name="Name" value="UI_ULTRAPROD_1_NAME" />
      <Property name="NameLower" value="UI_ULTRAPROD_1_NAME_L" />
      <Property name="Subtitle" value="UI_ULTRAPROD_SUBTITLE" />
      <Property name="Description" value="UI_ULTRAPROD_1_DESC" />
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="15600000" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/ULTRAPROD.1.DDS" />
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
        <Property name="R" value="0.8" />
        <Property name="G" value="0.8" />
        <Property name="B" value="0.8" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Special" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Tradeable" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="False" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="CREATURE1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="25" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_TOXIC" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="600" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_DUST" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_SNOW" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="100" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_HOT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_LUSH" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GAS1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GAS2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GAS3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FUEL2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="LAND2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="DUSTY1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="TOXIC1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="CAVE2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="RADIO1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
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
      <Property name="NormalisedValueOnWorld" value="1" />
      <Property name="NormalisedValueOffWorld" value="1" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Crafting" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0.25" />
      <Property name="PinObjective" value="UI_CRAFT_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_ULTRAPROD1_OBJ_TIP" />
      <Property name="PinObjectiveMessage" value="" />
      <Property name="PinObjectiveScannableType" value="GcScannerIconTypes.xml">
        <Property name="ScanIconType" value="None" />
      </Property>
      <Property name="PinObjectiveEasyToRefine" value="False" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="False" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="False" />
      <Property name="IsTechbox" value="False" />
      <Property name="CanSendToOtherPlayers" value="True" />
    </Property>
    <Property value="GcProductData.xml">
      <Property name="ID" value="ULTRAPROD2" />
      <Property name="Name" value="UI_ULTRAPROD_2_NAME" />
      <Property name="NameLower" value="UI_ULTRAPROD_2_NAME_L" />
      <Property name="Subtitle" value="UI_ULTRAPROD_SUBTITLE" />
      <Property name="Description" value="UI_ULTRAPROD_2_DESC" />
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="15600000" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/ULTRAPROD.2.DDS" />
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
        <Property name="R" value="0.8" />
        <Property name="G" value="0.8" />
        <Property name="B" value="0.8" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Special" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Tradeable" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="False" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_SNOW" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_HOT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_DUST" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="100" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_LUSH" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_POOP" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="PLANT_RADIO" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="400" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GAS1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GAS2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="GAS3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="500" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FUEL2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="300" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="CAVE2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="150" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="LUSH1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="HOT1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="COLD1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
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
      <Property name="NormalisedValueOnWorld" value="1" />
      <Property name="NormalisedValueOffWorld" value="1" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Crafting" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0.25" />
      <Property name="PinObjective" value="UI_CRAFT_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_ULTRAPROD2_OBJ_TIP" />
      <Property name="PinObjectiveMessage" value="" />
      <Property name="PinObjectiveScannableType" value="GcScannerIconTypes.xml">
        <Property name="ScanIconType" value="None" />
      </Property>
      <Property name="PinObjectiveEasyToRefine" value="False" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="False" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="False" />
      <Property name="IsTechbox" value="False" />
      <Property name="CanSendToOtherPlayers" value="True" />
    </Property>
]]

Test_CODE1 = [[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_334" />
      <Property name="RecipeType" value="RECIPE_ULTRAPROD1" />
      <Property name="RecipeName" value="R_NAME_ULTRAPROD1" />
      <Property name="TimeToMake" value="2" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="ULTRAPROD1" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="MEGAPROD1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="MEGAPROD2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="ALLOY7" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_335" />
      <Property name="RecipeType" value="RECIPE_ULTRAPROD2" />
      <Property name="RecipeName" value="R_NAME_ULTRAPROD2" />
      <Property name="TimeToMake" value="2" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="ULTRAPROD2" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="MEGAPROD3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="MEGAPROD2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="ALLOY8" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {

    ["MOD_FILENAME"]    = "FastCraft for FusionIgniter and StasisDevice.pak",
	["MOD_AUTHOR"]      = "KuroPeach",
    ["LUA_AUTHOR"]      = "KuroPeach",
    ["MOD_DESCRIPTION"] = "删除默认核融与休眠配方，聚合材料一键合成，原配方移到精炼机",
    ["NMS_VERSION"]     = "5.0.5",

    ["MODIFICATIONS"] = {{      

        ["MBIN_CHANGE_TABLE"] = {{
            ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},   
            ["EXML_CHANGE_TABLE"] = 
			{{
				["SPECIAL_KEY_WORDS"] = {{"ID","ULTRAPROD1"},{"ID","ULTRAPROD2"}},
				["REMOVE"] = "SECTION"
            },{
                ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
                ["REPLACE_TYPE"] = "ADDAFTERSECTION",
                ["ADD"] = Test_CODE,            
			}}
        },{
            ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"},   
            ["EXML_CHANGE_TABLE"] = 
			{{
                ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_333"},
                ["REPLACE_TYPE"] = "ADDAFTERSECTION",
                ["ADD"] = Test_CODE1,            
			}}
        }}
    }}
}