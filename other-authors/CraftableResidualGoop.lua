RECIPE_SPACEGUNK_SYN =
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="RECIPE_SPACEGUNK_SYN" />
      <Property name="RecipeType" value="RECIPE_SPACEGUNK1" />
      <Property name="RecipeName" value="R_NAME_SPACEGUNK1" />
      <Property name="TimeToMake" value="15" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="SPACEGUNK1" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CREATURE1" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="YELLOW2" />
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
  ["MOD_FILENAME"] 			= "CraftableResidualGoop.pak",
  ["MOD_AUTHOR"]				= "Telda",
  ["NMS_VERSION"]				= "2.0",
  ["MODIFICATIONS"] 			= 
	{
		{
--			["PAK_FILE_SOURCE"] 	= "NMSARC.Precache.pak",
--			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
            {
              "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",		
            },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"Id","REFINERECIPE_330"},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= RECIPE_SPACEGUNK_SYN,
						},				
					} --1 global replacements
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
