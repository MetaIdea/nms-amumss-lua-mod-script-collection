ModName = "Less Generous RecipesX"
GameVersion = "3_87"

RecipeChanges =
{
--Fixes the simplest of the infinite Chromatic Metal loops
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_114",	2,					90},				--Makes Cadmium					x2		in	90 time
		{
			{"RED2",			1},										--Requires Cadmium				x1
			{"STELLAR2",		1}										--Requires Chromatic Metal		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_115",	2,					90},				--Makes Indium					x2		in	90 time
		{
			{"BLUE2",			1},										--Requires Indium				x1
			{"STELLAR2",		2}										--Requires Chromatic Metal		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_116",	4,					90},				--Makes Emeril					x2		in	90 time
		{
			{"GREEN2",			2},										--Requires Emeril				x1
			{"STELLAR2",		3}										--Requires Chromatic Metal		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_117",	4,					90},				--Makes Copper					x2		in	90 time
		{
			{"YELLOW2",			2},										--Requires Copper				x1
			{"STELLAR2",		1}										--Requires Chromatic Metal		x1
		}
	},
--Nerfs certain recipes for Magnetised Ferrite from precious metals
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_131",	9,					70},				--Makes Magnetised Ferrite		x10		in	90 time
		{
			{"ASTEROID3",		4},										--Requires Platinum				x1
			{"OXYGEN",			2},										--Requires Oxygen				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_229",	4,					95},				--Makes Magnetised Ferrite		x5		in	120 time
		{
			{"LAND1",			2},										--Requires Ferrite Dust			x1
			{"LAND2",			2},										--Requires Pure Ferrite			x1
			{"ASTEROID1",		2}										--Requires Silver				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_230",	5,					70},				--Makes Magnetised Ferrite		x8		in	120 time
		{
			{"LAND1",			2},										--Requires Ferrite Dust			x1
			{"LAND2",			2},										--Requires Pure Ferrite			x1
			{"ASTEROID2",		2}										--Requires Gold					x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_231",	7,					55},				--Makes Magnetised Ferrite		x12		in	120 time
		{
			{"LAND1",			2},										--Requires Ferrite Dust			x1
			{"LAND2",			2},										--Requires Pure Ferrite			x1
			{"ASTEROID3",		2}										--Requires Platinum				x1
		}
	},
--Adjusts several recipes that have disproportionately high yields while only costing some Oxygen or Condensed Carbon
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_88",		4,					180},				--Makes Magnetised Ferrite		x1		in	60 time
		{
			{"LAND1",			6},										--Requires Ferrite Dust			x1
			{"FUEL1",			3}										--Requires Carbon				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_89",		2,					60},				--Makes Magnetised Ferrite		x2		in	60 time
		{
			{"LAND1",			3},										--Requires Ferrite Dust			x1
			{"FUEL2",			1}										--Requires Condensed Carbon		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_90",		2,					45},				--Makes Magnetised Ferrite		x2		in	60 time
		{
			{"LAND2",			3},										--Requires Pure Ferrite			x1
			{"FUEL1",			3}										--Requires Carbon				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_91",		2,					30},				--Makes Magnetised Ferrite		x3		in	60 time
		{
			{"LAND2",			3},										--Requires Pure Ferrite			x1
			{"FUEL2",			2}										--Requires Condensed Carbon		x1
		}
	},
	
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_95",		3,					90},				--Makes Condensed Carbon		x5		in	90 time
		{
			{"FUEL1",			2},										--Requires Carbon				x2
			{"OXYGEN",			2}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_96",		2,					30},				--Makes Condensed Carbon		x6		in	90 time
		{
			{"FUEL2",			1},										--Requires Condensed Carbon		x1
			{"OXYGEN",			2}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_153",	2,					60},				--Makes Condensed Carbon		x3		in	90 time
		{
			{"PLANT_POOP",		1},										--Requires Faecium				x1
			{"FUEL2",			1}										--Requires Condensed Carbon		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_124",	3,					90},				--Makes Chlorine				x5		in	90 time
		{
			{"WATER1",			2},										--Requires Salt					x2
			{"OXYGEN",			2}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_125",	2,					30},				--Makes Chlorine				x6		in	90 time
		{
			{"WATER2",			1},										--Requires Chlorine				x1
			{"OXYGEN",			1}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_126",	3,					90},				--Makes Ionized Cobalt			x5		in	90 time
		{
			{"CAVE1",			2},										--Requires Cobalt				x2
			{"OXYGEN",			2}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_127",	2,					60},				--Makes Ionized Cobalt			x6		in	90 time
		{
			{"CAVE2",			1},										--Requires Ionized Cobalt		x1
			{"OXYGEN",			1}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_53",		3,					180},				--Makes Ferrite Dust			x2		in	160 time
		{
			{"SPACEGUNK3",		2}										--Requires Rusted Metal			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_93",		3,					130},				--Makes Rusted Metal			x2		in	100 time
		{
			{"LAND2",			2},										--Requires Pure Ferrite			x1
			{"OXYGEN",			2}										--Requires Oxygen				x1
		}
	},
--Nerfs some recipes for easily getting some biome-specific ores or Sodium Nitrate from various gases & Ferrites
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_209",	1,					90},				--Makes Parafinnium				x1		in	90 time
		{
			{"GAS1",			1},										--Requires Sulphurine			x1
			{"LAND1",			2}										--Requires Ferrite Dust			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_210",	1,					90},				--Makes Uranium					x1		in	90 time
		{
			{"GAS2",			1},										--Requires Radon				x1
			{"LAND1",			2}										--Requires Ferrite Dust			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_211",	1,					120},				--Makes Sodium Nitrate			x1		in	120 time
		{
			{"GAS3",			1},										--Requires Nitrogen				x1
			{"LAND1",			2}										--Requires Ferrite Dust			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_212",	1,					45},				--Makes Parafinnium				x2		in	90 time
		{
			{"GAS1",			1},										--Requires Sulphurine			x1
			{"LAND2",			1}										--Requires Pure Ferrite			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_213",	1,					45},				--Makes Uranium					x2		in	90 time
		{
			{"GAS2",			1},										--Requires Radon				x1
			{"LAND2",			1}										--Requires Pure Ferrite			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_214",	1,					60},				--Makes Sodium Nitrate			x2		in	120 time
		{
			{"GAS3",			1},										--Requires Nitrogen				x1
			{"LAND2",			1}										--Requires Pure Ferrite			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_215",	3,					90},				--Makes Parafinnium				x3		in	90 time
		{
			{"GAS1",			1},										--Requires Sulphurine			x1
			{"LAND3",			2}										--Requires Magnetised Ferrite	x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_216",	3,					90},				--Makes Uranium					x3		in	90 time
		{
			{"GAS2",			1},										--Requires Radon				x1
			{"LAND3",			2}										--Requires Magnetised Ferrite	x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_217",	3,					120},				--Makes Sodium Nitrate			x3		in	120 time
		{
			{"GAS3",			1},										--Requires Nitrogen				x1
			{"LAND3",			2}										--Requires Magnetised Ferrite	x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_148",	2,					90},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"CATALYST1",		1}										--Requires Sodium				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_154",	2,					45},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"CATALYST2",		1}										--Requires Sodium Nitrate		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_109",	2,					90},				--Makes Marrow Bulb				x3		in	90 time
		{
			{"CATALYST1",		3},										--Requires Sodium				x2
			{"CREATURE1",		1}										--Requires Mordite				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_110",	4,					90},				--Makes Marrow Bulb				x4		in	90 time
		{
			{"CATALYST2",		3},										--Requires Sodium Nitrate		x1
			{"CREATURE1",		3}										--Requires Mordite				x1
		}
	},
--Buffs a few recipes that either were inferiror to easier recipes, or to incentivise finding their raw ingredients
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_2",		125,				60},				--Makes Gold					x100		in	60 time
		{
			{"CLAMPEARL",		1}										--Requires Living Pearl			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_4",		75	,				60},				--Makes Nanites					x50			in	60 time
		{
			{"FISHCORE",		1}										--Requires Hadal Core			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_5",		100	,				60},				--Makes Sodium Nitrate			x50			in	60 time
		{
			{"VENTGEM",			1}										--Requires Crystal Sulphide		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_228",	1,					90},				--Makes Nanites					x1		in	90 time
		{
			{"ASTEROID1",		10},									--Requires Silver				x15
			{"ASTEROID2",		10},									--Requires Gold					x15
			{"ASTEROID3",		15}										--Requires Platinum				x25
		}
	},
--Some Nutrient Processor Recipes with ingredients that are very easy to obtain passively or in huge quantities have had their costs increased, to indirectly nerf cooking profits & incentivize harvesting wild ingredients
	{							--Amount per batch	--Time per batch
		{"RECIPE_2",			1,					5},					--Makes Silicon Egg				x1		in	5 time
		{
			{"STELLAR2",		25}										--Requires Chromatic Metal		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_20",			1,					5},					--Makes Pilgrimberry			x1		in	5 time
		{
			{"PLANT_LUSH",		25}										--Requires Star Bulb			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_21",			1,					5},					--Makes Solartillo				x1		in	5 time
		{
			{"PLANT_HOT",		25}										--Requires Solanium				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_22",			1,					5},					--Makes Glass Grains			x1		in	5 time
		{
			{"PLANT_SNOW",		25}										--Requires Frost Crystals		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_23",			1,					5},					--Makes Non-Toxic Mushroom		x1		in	5 time
		{
			{"PLANT_TOXIC",		25}										--Requires Fungal Mould			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_24",			1,					5},					--Makes Sievert Beans			x1		in	5 time
		{
			{"PLANT_RADIO",		25}										--Requires Gamma Root			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_25",			1,					5},					--Makes Cactus Nectar			x1		in	5 time
		{
			{"PLANT_DUST",		25}										--Requires Cactus Flesh			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_26",			1,					5},					--Makes Wild Yeast				x1		in	5 time
		{
			{"PLANT_POOP",		5}										--Requires Faecium				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_27",			1,					5},					--Makes Meat Flakes				x1		in	5 time
		{
			{"CREATURE1",		5}										--Requires Mordite				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_28",			1,					5},					--Makes Marrow Flesh			x1		in	5 time
		{
			{"PLANT_CAVE",		5}										--Requires Marrow Bulb			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_577",			1,					5},					--Makes Creature Pellets		x1		in	5 time
		{
			{"FUEL1",			25}										--Requires Carbon				x1
		}
	}
}

--Changes certain recipes for Creature Pellets to require 5x uncooked plantable crops instead of only 1x (along with 1x Faecium)
RawCropsPerPellet = 			5										--1
CropPelletChanges =
{
	"RECIPE_553",														--Gamma Root
	"RECIPE_556",														--Solanium
	"RECIPE_557",														--Frost Crystal
	"RECIPE_562",														--Fungal Mould
	"RECIPE_572",														--Star Bulb
	"RECIPE_573",														--Cactus Flesh
}

--Adds new recipes for using Aloe Flesh and Refreshing Drink since they otherwise have very few uses
	--First recipe takesd 1 Aloe Flesh and 1 Condensed Carbon to make 2 Steamed Vegetables
	--Second Recipe takes 1 Refreshing Drink and 1 Refined Flour to make 1 Cream
NewAloeAndDrinkRecipes =
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="VEG_ALOE" />
      <Property name="RecipeType" value="RECIPE_ALOE" />
      <Property name="RecipeName" value="R_NAME_ALOE" />
      <Property name="TimeToMake" value="5" />
      <Property name="Cooking" value="True" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FOOD_R_VEG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="2" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FUEL2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
		<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FOOD_P_DUSTWILD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
	<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="CREAM_DRINK" />
      <Property name="RecipeType" value="RECIPE_DRINK" />
      <Property name="RecipeName" value="R_NAME_DRINK" />
      <Property name="TimeToMake" value="5" />
      <Property name="Cooking" value="True" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FOOD_R_CREAM" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="1" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FOOD_J_DUST" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FOOD_R_FLOUR" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>]]

--Adds recipes for creating Tritium or Di-Hydrogen by refining Gravitino Balls with either Sac Venom or Albumen Pearls 
NewRecipe1 = 
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="TRITIUM_SACVENOM" />
      <Property name="RecipeType" value="RECIPE_TRITIUM" />
      <Property name="RecipeName" value="R_NAME_TRITIUM" />
      <Property name="TimeToMake" value="1200" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="ROCKETSUB" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="100" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GRAVBALL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
		<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="SACVENOM" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>]]

NewRecipe2 = 
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="DIH_ALBUMENPEARL" />
      <Property name="RecipeType" value="RECIPE_DIHYDROGEN" />
      <Property name="RecipeName" value="R_NAME_DIHYDROGEN" />
      <Property name="TimeToMake" value="1200" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="LAUNCHSUB" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="100" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GRAVBALL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
		<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="ALBUMENPEARL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
        </Property>
      </Property>
    </Property>]]
--Albumen Pearl =			33,600			stack 10
--Gravitino Ball =			63,195			stack 5
--Sac Venom =				96,000			stack 5

--Adds Recipe for refining Navigation Data into 10 Nanites
NewRecipe3 = 
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="NANITE_NAVDATA" />
      <Property name="RecipeType" value="RECIPE_NAVDATA" />
      <Property name="RecipeName" value="R_NAME_NAVDATA" />
      <Property name="TimeToMake" value="600" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TECHFRAG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="10" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="NAV_DATA" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>]]
	
--Adds Recipes for refining Quad Servo, Hardframe Enginer, and Walker Brain into Nanites
NewSentinelNaniteRecipes = 
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="NANITE_QUAD" />
      <Property name="RecipeType" value="RECIPE_QUAD" />
      <Property name="RecipeName" value="R_NAME_QUAD" />
      <Property name="TimeToMake" value="600" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TECHFRAG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="100" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="QUAD_PROD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
	<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="NANITE_MECH" />
      <Property name="RecipeType" value="RECIPE_MECH" />
      <Property name="RecipeName" value="R_NAME_MECH" />
      <Property name="TimeToMake" value="600" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TECHFRAG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="200" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="MECH_PROD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
	<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="NANITE_WALKER" />
      <Property name="RecipeType" value="RECIPE_WALKER" />
      <Property name="RecipeName" value="R_NAME_WALKER" />
      <Property name="TimeToMake" value="600" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TECHFRAG" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="400" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="WALKER_PROD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "Changes certain refiner recipes to remove some infinite loops and overly generous results. Also for some common resources like Carbon, Cobalt, Ferrite, Sodium, makes using the lower-tier version more efficient for duplicating, but the higher-tier version faster for duplicating. Also add recipes for refining Tritium & Di-Hydrogen from valuables.",
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the SubstanceCostChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewRecipe1
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewRecipe2
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewRecipe3
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewAloeAndDrinkRecipes
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewSentinelNaniteRecipes
			}
		}
	}
}}}}




local ChangesToRecipes = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	local RecipeId = RecipeChanges[i][1][1]
	local Time = RecipeChanges[i][1][3]
	local AmountResult = RecipeChanges[i][1][2]
	local Ingredients = RecipeChanges[i][2]
	
		for j = 1, #Ingredients do
			INGId = Ingredients[j][1]
			AmountING = Ingredients[j][2]
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", INGId},
				--["PRECEDING_KEY_WORDS"] = {"GcRefinerRecipeElement.xml"},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
		end
		
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
end
for i = 1, #CropPelletChanges do
	local RecipeId = CropPelletChanges[i]
	local AmountING = RawCropsPerPellet
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["PRECEDING_KEY_WORDS"] = {"Ingredients"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
end

--[[local ChangesToRecipes = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	local RecipeId = RecipeChanges[i][1][1]
	local Time = RecipeChanges[i][1][3]
	local AmountResult = RecipeChanges[i][1][2]
	
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
end

local ChangesToRecipes2 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	local RecipeId = RecipeChanges[i][1][1]
	local Ingredients = RecipeChanges[i][2]
	
		for j = 1, #Ingredients do
			INGId = Ingredients[j][1]
			AmountING = Ingredients[j][2]
			
			ChangesToRecipes2[#ChangesToRecipes2+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", INGId},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
		end
end]]