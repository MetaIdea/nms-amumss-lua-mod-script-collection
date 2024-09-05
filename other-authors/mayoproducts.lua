RecipeAdd = [[	

	<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="RECIPE_CREAM_FLOUR" />
      <Property name="RecipeType" value="UI_COOK_REFINE" />
      <Property name="RecipeName" value="UI_COOK_REFINE" />
      <Property name="TimeToMake" value="5" />
      <Property name="Cooking" value="True" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FOOD_V_COW" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FOOD_R_FLOUR" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
		<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="LAUNCHSUB" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
	
	
	
	]]
	
DataAdd = [[

	<Property name="CookingIngredient" value="True" />

]]

SentinelFreighterRewardAdd = [[

          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="1100" />
              <Property name="AmountMax" value="2750" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>

]]

BioshipCompAdd = [[

	<Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="SOULFRAG" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="200" />
        </Property>	
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FOOD_R_MEAT" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="6" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="BIOSHIP_COMP2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>

]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "mayoproducts.pak",
["MOD_DESCRIPTION"]	= "personal changes or something",
["MOD_AUTHOR"]		= "mayonnaise",
["MODIFICATIONS"]	= {


{
["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {
			
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SOUL_LASER"},
                            ["SEC_SAVE_TO"] = "COPYTOMECHTECHSOUL",
                        },						
                        {
                            ["SEC_EDIT"] = "COPYTOMECHTECHSOUL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyCategory",    "Mech"},
								{"TechnologyRarity",    "VeryRare"},
								{"Id",    "SOUL_LASER_MECH"},
                            },
                        },		
                        {
                            ["SEC_EDIT"] = "COPYTOMECHTECHSOUL",
							["SPECIAL_KEY_WORDS"] = {"StatsType", "Weapon_Laser_Damage"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StatsType",    "Vehicle_GunDamage"},
                            },							
                        },	
                        {
                            ["SEC_EDIT"] = "COPYTOMECHTECHSOUL",
							["SPECIAL_KEY_WORDS"] = {"StatsType", "Weapon_Laser_HeatTime"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StatsType",    "Vehicle_GunHeatTime"},
                            },							
                        },	
                        {
                            ["SEC_EDIT"] = "COPYTOMECHTECHSOUL",
							["SPECIAL_KEY_WORDS"] = {"StatsType", "Vehicle_GunDamage"},
							["SECTION_UP"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus",    "70"},
                            },							
                        },	
                        {
                            ["SEC_EDIT"] = "COPYTOMECHTECHSOUL",
							["SPECIAL_KEY_WORDS"] = {"StatsType", "Vehicle_GunHeatTime"},
							["SECTION_UP"] = 2,							
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus",    "18"},
                            },							
                        },						
						{
						
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SOUL_LASER"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "COPYTOMECHTECHSOUL",
						
						},
						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUN_LASER"},
                            ["SEC_SAVE_TO"] = "COPYTOMECHTECHSUN",
                        },						
                        {
                            ["SEC_EDIT"] = "COPYTOMECHTECHSUN",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyCategory",    "Mech"},
								{"TechnologyRarity",    "VeryRare"},
								{"Id",    "SUN_LASER_MECH"},
                            },
                        },													
						{
						
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUN_LASER"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "COPYTOMECHTECHSUN",
						
						},
			
		}}
}},

{
["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_39"},
				--["SECTION_UP"] = 1,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = RecipeAdd
			},
		}}
}},

{
["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{["SPECIAL_KEY_WORDS"] = {"Id","LAUNCHSUB"},
				["LINE_OFFSET"] = "+61",
				["REMOVE"] = "LINE",
			},
			{["SPECIAL_KEY_WORDS"] = {"Id","LAUNCHSUB"},
				["LINE_OFFSET"] = "+60",
				["ADD"] = DataAdd
			},
		}}
}},

{
["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {

			{["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_TECHBOX"},
				["LINE_OFFSET"] = "+51",
				["REMOVE"] = "LINE",
			},
			{["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_TECHBOX"},
				["LINE_OFFSET"] = "+50",
				["ADD"] = BioshipCompAdd
			},
		}}
}},

{
["MBIN_CHANGE_TABLE"] = {
	{
		["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {

						{	
							["SPECIAL_KEY_WORDS"] = {"Id","R_SPACE_WANTED5"},
							["LINE_OFFSET"] = "+6",
							["ADD"] = SentinelFreighterRewardAdd
						},
			
					}
		}
	}
},

}}