ModName = "gExos Challenge"
ModNameSub = "Remove Activated"
BaseDescription = "Removes activated metals from gameplay"
GameVersion = "464"
ModVersion = "a"

RecipeAdd = [[	<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_GEXO_YELLOW" />
	  <Property name="RecipeType" value="RECIPE_STELLAR_FROM_LAND" />
      <Property name="RecipeName" value="R_NAME_STELLAR_FROM_LAND_Y" />
      <Property name="TimeToMake" value="60" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_YELLOW" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="1" />
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
      <Property name="RecipeName" value="R_NAME_STELLAR_FROM_LAND_G" />
      <Property name="TimeToMake" value="60" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_GREEN" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="1" />
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
      <Property name="RecipeName" value="R_NAME_STELLAR_FROM_LAND_R" />
      <Property name="TimeToMake" value="60" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_RED" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="1" />
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
      <Property name="RecipeName" value="R_NAME_STELLAR_FROM_LAND_B" />
      <Property name="TimeToMake" value="60" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="EX_BLUE" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="1" />
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
    </Property>]]


NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "GCTERRAINGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = {"MiningSubstanceStar"},
							["VALUE_MATCH"] = {"GREEN2","BLUE2","RED2"},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value", "YELLOW2"}
							}
						},
						{
							PRECEDING_KEY_WORDS = {"MiningSubstanceStarExtreme"},
							["VALUE_MATCH"] = {"EX_YELLOW"},
							VALUE_CHANGE_TABLE = {
								{"Value", "YELLOW2"}
							}
						},
						{
							PRECEDING_KEY_WORDS = {"MiningSubstanceStarExtreme"},
							["VALUE_MATCH"] = {"EX_GREEN"},
							VALUE_CHANGE_TABLE = {
								{"Value", "GREEN2"}
							}
						},
						{
							PRECEDING_KEY_WORDS = {"MiningSubstanceStarExtreme"},
							["VALUE_MATCH"] = {"EX_BLUE"},
							VALUE_CHANGE_TABLE = {
								{"Value", "BLUE2"}
							}
						},
						{
							PRECEDING_KEY_WORDS = {"MiningSubstanceStarExtreme"},
							["VALUE_MATCH"] = {"EX_RED"},
							VALUE_CHANGE_TABLE = {
								{"Value", "RED2"}
							}
						},
					}
				},
				{
					MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Id","REFINERECIPE_39"},
							REPLACE_TYPE = "ADDAFTERSECTION",
							["ADD"] = RecipeAdd
						},
					}
				}
			}
		}
	}
}