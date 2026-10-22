-------------------------------------------------------------------------------------
-- Craftable Modules Refiner Recipes https://www.nexusmods.com/nomanssky/mods/4661 --
-------------------------------------------------------------------------------------

TimeToMake = 5  -- in seconds

-- Input - How many craftable items you need to get 1x Circuit Board
ExosuitExpansionSlot = 2
SalvagedFrigateModule = 2
StorageAugmentation = 2
CargoBulkhead = 2

-- Output - How many Quantum Computer you will receive for 1x
SalvagedData = 10 -- 16 Quantum Computer to craft
FactoryToken = 10 -- 15 Quantum Computer to craft
MultitoolExpansion = 10 -- 15 Quantum Computer to craft
NavigationData = 5 -- 10 Quantum Computer to craft


function Add1IngrRefinerRecipe (RecipeID, Type, Name, Time, ResultID, ResultType, ResultAmount, IngredID, IngredType, IngredAmount)
	return
[[<Property name="Table" value="GcRefinerRecipe">
      <Property name="Id" value="]]..RecipeID..[[" />
      <Property name="RecipeType" value="]]..Type..[[" />
      <Property name="RecipeName" value="]]..Name..[[" />
      <Property name="TimeToMake" value="]]..Time..[[" />
      <Property name="Cooking" value="false" />
      <Property name="Result" value="GcRefinerRecipeElement">
        <Property name="Id" value="]]..ResultID..[[" />
        <Property name="Type" value="GcInventoryType">
          <Property name="InventoryType" value="]]..ResultType..[[" />
        </Property>
        <Property name="Amount" value="]]..ResultAmount..[[" />
      </Property>
      <Property name="Ingredients">
        <Property name="Ingredients" value="GcRefinerRecipeElement">
          <Property name="Id" value="]]..IngredID..[[" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="]]..IngredType..[[" />
          </Property>
          <Property name="Amount" value="]]..IngredAmount..[[" />
        </Property>
      </Property>
    </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = 'CraftableModulesRefinerRecipes',
    MOD_DESCRIPTION = 'Adds 8x Refiner Recipes for the Mod Craftable Modules',  -- https://www.nexusmods.com/nomanssky/mods/1491
    LUA_AUTHOR = 'arcprey',
    MOD_AUTHOR = 'arcprey',
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE 	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN',
                    MXML_CHANGE_TABLE 	=
                    {
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_1', 'CONVERT_FREI_INV_TOKEN', 'Recycle Cargo Bulkhead', TimeToMake, 'FARMPROD9', 'Product', 1, 'FREI_INV_TOKEN', 'Product', CargoBulkhead) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_2', 'CONVERT_FRIG_TOKEN', 'Recycle Salvaged Frigate Module', TimeToMake, 'FARMPROD9', 'Product', 1, 'FRIG_TOKEN', 'Product', SalvagedFrigateModule) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_3', 'CONVERT_SUIT_INV_TOKEN', 'Recycle Exosuit Expansion Slot', TimeToMake, 'FARMPROD9', 'Product', 1, 'SUIT_INV_TOKEN', 'Product', ExosuitExpansionSlot) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_4', 'CONVERT_SHIP_INV_TOKEN', 'Recycle Storage Augmentation', TimeToMake, 'FARMPROD9', 'Product', 1, 'SHIP_INV_TOKEN', 'Product', StorageAugmentation) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_5', 'CONVERT_FACT_TOKEN', 'Recycle Factory Token', TimeToMake, 'COMPUTER', 'Product', FactoryToken, 'FACT_TOKEN', 'Product', 1) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_6', 'CONVERT_BP_SALVAGE', 'Recycle Salvaged Data', TimeToMake, 'COMPUTER', 'Product', SalvagedData, 'BP_SALVAGE', 'Product', 1) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_7', 'CONVERT_NAV_DATA', 'Recycle Navigation Data', TimeToMake, 'COMPUTER', 'Product', NavigationData, 'NAV_DATA', 'Product', 1) },
                        { ["PRECEDING_KEY_WORDS"] = {"Table"}, ["ADD"] =
                            Add1IngrRefinerRecipe ('CR_RECIPE_8', 'CONVERT_WEAP_INV_TOKEN', 'Recycle Multitool Expansion', TimeToMake, 'COMPUTER', 'Product', MultitoolExpansion, 'WEAP_INV_TOKEN', 'Product', 1) },
                    }
                },
            }
        }
    }
}