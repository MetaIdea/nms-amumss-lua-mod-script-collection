RECIPE_TO_ADD_1 =
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="PHILEAS_RECIPE_311_ALT_1" />
      <Property name="RecipeType" value="UI_COOK_STEW" />
      <Property name="RecipeName" value="UI_COOK_STEW" />
      <Property name="TimeToMake" value="5" />
      <Property name="Cooking" value="True" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FOOD_STEW_V_VEG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="TOXIC1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="4" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GAS3" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="4" />
        </Property>
      </Property>
    </Property>
]]

RECIPE_TO_ADD_2 =
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="PHILEAS_RECIPE_311_ALT_2" />
      <Property name="RecipeType" value="UI_COOK_STEW" />
      <Property name="RecipeName" value="UI_COOK_STEW" />
      <Property name="TimeToMake" value="5" />
      <Property name="Cooking" value="True" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FOOD_STEW_V_VEG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
		<Property value="GcRefinerRecipeElement.xml">
			<Property name="Id" value="PLANT_TOXIC"/>
			<Property name="Type" value="GcInventoryType.xml">
				<Property name="InventoryType" value="Substance"/>
			</Property>
			<Property name="Amount" value="1"/>
		</Property>
		<Property value="GcRefinerRecipeElement.xml">
			<Property name="Id" value="PLANT_TOXIC"/>
			<Property name="Type" value="GcInventoryType.xml">
				<Property name="InventoryType" value="Substance"/>
			</Property>
			<Property name="Amount" value="1"/>
		</Property>
		<Property value="GcRefinerRecipeElement.xml">
			<Property name="Id" value="PLANT_TOXIC"/>
			<Property name="Type" value="GcInventoryType.xml">
				<Property name="InventoryType" value="Substance"/>
			</Property>
			<Property name="Amount" value="1"/>
		</Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DeliciousStew.pak",
["MOD_AUTHOR"]			= "phileas",
["MOD_DESCRIPTION"]			= "This Mod changes the recipe of Delicious Vegetable Stew",
["NMS_VERSION"]			= "3.xx",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN", },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= {"Table"},	
							["ADD"] 	= RECIPE_TO_ADD_2,
						},
						{
							["PRECEDING_KEY_WORDS"] 	= {"Table"},	
							["ADD"] 	= RECIPE_TO_ADD_1,
						},
					}
				},
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN", },
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- {
							-- ["SPECIAL_KEY_WORDS"] 	= {"Id", "FOOD_STEW_V_VEG"}, --case seems to be important
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"StackMultiplier", "500"},	--original 10. Base value is 10 items in your inventory. Refiners and cookers seems to have it hardcoded to only allow half of the maximum stack size in the output.
							-- },
						-- },
					-- }
				-- },
				{
					["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN", },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "GAS3"},	--case seems to be important
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CookingIngredient", "True"}, --original False
							},
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "TOXIC1"}, --case seems to be important
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CookingIngredient", "True"}, --original False
							},
						},
					} 									
				},
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE