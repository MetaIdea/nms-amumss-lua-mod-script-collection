RecipeAdd = [[	<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_GEXO_YELLOW" />
      <Property name="Name" value="RECIPE_STELLAR_FROM_LAND" />
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
      <Property name="Name" value="RECIPE_STELLAR_FROM_LAND" />
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
      <Property name="Name" value="RECIPE_STELLAR_FROM_LAND" />
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
      <Property name="Name" value="RECIPE_STELLAR_FROM_LAND" />
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
["MOD_FILENAME"]	= "GExos Challenge Exos Remove Activated 322a.pak",
["MOD_DESCRIPTION"]	= "LUA Adaptation of Exosolar's AI Remove",
["MOD_AUTHOR"]		= "Exosolar",
["NMS_VERSION"]		= "322",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStar","Green"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "YELLOW2"}}},
			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStar","Blue"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "YELLOW2"}}},
			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStar","Red"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "YELLOW2"}}},

			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStarExtreme","Yellow"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "YELLOW2"}}},
			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStarExtreme","Green"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "GREEN2"}}},
			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStarExtreme","Blue"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "BLUE2"}}},
			{["PRECEDING_KEY_WORDS"] = {"MiningSubstanceStarExtreme","Red"},
			["VALUE_CHANGE_TABLE"] = {
				{"Value", "RED2"}}},
		}},
	{["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_39"},
				--["SECTION_UP"] = 1,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = RecipeAdd
			},
		}}
}}}}