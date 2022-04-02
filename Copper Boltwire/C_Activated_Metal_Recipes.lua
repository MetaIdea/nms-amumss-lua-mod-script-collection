
--[[ Summery Description:
This adds 4 recipes to Medium and Large refiners that allows you to get more of Activated Copper, Activated Cadmium etc.
simply by mixing basic Copper with Chromatic material or Cadmium and Chromatic material.

The Ratios is as follows: 1:4
]]--

RecipeAdd =
[[    
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_GEXO_YELLOW" />
      <Property name="RecipeType" value="RECIPE_STELLAR_FROM_LAND" />		  
      <Property name="RecipeName" value="RECIPE_STELLAR_FROM_LAND" />
      <Property name="TimeToMake" value="10" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_YELLOW" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="4" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="YELLOW2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="STELLAR2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
    
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_GEXO_GREEN" />
      <Property name="RecipeType" value="RECIPE_STELLAR_FROM_LAND" />		  
      <Property name="RecipeName" value="RECIPE_STELLAR_FROM_LAND" />
      <Property name="TimeToMake" value="10" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_GREEN" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="4" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GREEN2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="STELLAR2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>    
    
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_GEXO_RED" />
      <Property name="RecipeType" value="RECIPE_STELLAR_FROM_LAND" />	  
      <Property name="RecipeName" value="RECIPE_STELLAR_FROM_LAND" />
      <Property name="TimeToMake" value="10" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_RED" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="4" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="RED2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="STELLAR2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>        
    
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_GEXO_BLUE" />
      <Property name="RecipeType" value="RECIPE_STELLAR_FROM_LAND" />		  
      <Property name="RecipeName" value="RECIPE_STELLAR_FROM_LAND" />
      <Property name="TimeToMake" value="10" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_BLUE" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="4" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="BLUE2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="STELLAR2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
    
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_CB745_RESIDUALGOOP" />
      <Property name="RecipeType" value="RECIPE_SPACEGUNK1" />		  
      <Property name="RecipeName" value="RECIPE_SPACEGUNK1" />
      <Property name="TimeToMake" value="10" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="SPACEGUNK1" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="6" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="SAND1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="LAND2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FUEL1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "Activated_Metal_Recipes.pak",
    ["MOD_AUTHOR"]      = "Exosolar+Gumsk+Babscoole", -- Expanded upon by Copper
    ["NMS_VERSION"]     = "3.84",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","REFINERECIPE_39"},
                            --["SECTION_UP"]          = 1,
                            ["REPLACE_TYPE"]        = "ADDAFTERSECTION",
                            ["ADD"]                 = RecipeAdd
                        },
                    }
                }
            }
        }
    }
}