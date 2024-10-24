ModName = "PTSd Less Generous Recipes"
GameVersion = "5_12"
Description = "Changes certain refiner recipes to remove some infinite loops and overly generous results. Also for some common resources like Carbon, Cobalt, Ferrite, Sodium, makes using the lower-tier version more efficient for duplicating, but the higher-tier version faster for duplicating. Also add recipes for refining Tritium & Di-Hydrogen from valuables, and some Nutrient Processor recipes."

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
		{"REFINERECIPE_88",		2,					120},				--Makes Magnetised Ferrite		x1		in	60 time
		{
			{"LAND1",			3},										--Requires Ferrite Dust			x1
			{"FUEL1",			1}										--Requires Carbon				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_89",		6,					270},				--Makes Magnetised Ferrite		x2		in	60 time
		{
			{"LAND1",			9},										--Requires Ferrite Dust			x1
			{"FUEL2",			2}										--Requires Condensed Carbon		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_90",		4,					120},				--Makes Magnetised Ferrite		x2		in	60 time
		{
			{"LAND2",			6},										--Requires Pure Ferrite			x1
			{"FUEL1",			3}										--Requires Carbon				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_91",		2,					30},				--Makes Magnetised Ferrite		x3		in	60 time
		{
			{"LAND2",			3},										--Requires Pure Ferrite			x1
			{"FUEL2",			1}										--Requires Condensed Carbon		x1
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
		{"REFINERECIPE_96",		6,					90},				--Makes Condensed Carbon		x6		in	90 time
		{
			{"FUEL2",			3},										--Requires Condensed Carbon		x1
			{"OXYGEN",			4}										--Requires Oxygen				x2
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
		{"REFINERECIPE_142",	3,					90},				--Makes Faecium					x3		in	90 time
		{
			{"PLANT_POOP",		1},										--Requires Faecium				x1
			{"OXYGEN",			2}										--Requires Oxygen				x1
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
		{"REFINERECIPE_125",	6,					90},				--Makes Chlorine				x6		in	90 time
		{
			{"WATER2",			3},										--Requires Chlorine				x1
			{"OXYGEN",			4}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_126",	3,					90},				--Makes Ionised Cobalt			x5		in	90 time
		{
			{"CAVE1",			2},										--Requires Cobalt				x2
			{"OXYGEN",			2}										--Requires Oxygen				x2
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_127",	6,					90},				--Makes Ionised Cobalt			x6		in	90 time
		{
			{"CAVE2",			3},										--Requires Ionised Cobalt		x1
			{"OXYGEN",			4}										--Requires Oxygen				x2
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
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_97",		3,					120},				--Makes Sodium Nitrate			x1		in	90 time
		{
			{"CATALYST1",		2},										--Requires Sodium				x1
			{"OXYGEN",			2},										--Requires Oxygen				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_98",		6,					120},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"CATALYST2",		3},										--Requires Sodium Nitrate		x1
			{"OXYGEN",			4},										--Requires Oxygen				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_99",		3,					120},				--Makes Sodium Nitrate			x1		in	90 time
		{
			{"FUEL1",			2},										--Requires Carbon				x1
			{"CATALYST1",		2}										--Requires Sodium				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_100",	3,					60},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"FUEL2",			1},										--Requires Condensed Carbon		x1
			{"CATALYST1",		3}										--Requires Sodium				x1
		}
	},
--Similar adjustments, but for getting Ionised Cobalt from Marrow Bulbs
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_140",	3,					135},				--Makes Ionised Cobalt			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"OXYGEN",			2}										--Requires Oxygen				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_143",	3,					120},				--Makes Ionised Cobalt			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"ROBOT1",			2}										--Requires Pugneum				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_157",	3,					135},				--Makes Ionised Cobalt			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"CAVE1",			2}										--Requires Cobalt				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_159",	5,					110},				--Makes Ionised Cobalt			x2		in	90 time
		{
			{"PLANT_CAVE",		4},										--Requires Marrow Bulb			x1
			{"CAVE2",			2}										--Requires Ionised Cobalt		x1
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
		{"REFINERECIPE_211",	1,					40},				--Makes Sodium Nitrate			x1		in	120 time
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
		{"REFINERECIPE_214",	1,					30},				--Makes Sodium Nitrate			x2		in	120 time
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
		{"REFINERECIPE_217",	3,					60},				--Makes Sodium Nitrate			x3		in	120 time
		{
			{"GAS3",			1},										--Requires Nitrogen				x1
			{"LAND3",			2}										--Requires Magnetised Ferrite	x1
		}
	},
--Makes sure you can't make an infinite loop with Sodium/Sodium Nitrate & Marrow Bulbs
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_145",	2,					80},				--Makes Sodium					x2		in	90 time
		{
			{"PLANT_CAVE",		1},										--Requires Marrow Bulb			x1
			{"FUEL1",			1}										--Requires Carbon				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_151",	6,					120},				--Makes Sodium					x2		in	90 time
		{
			{"PLANT_CAVE",		3},										--Requires Marrow Bulb			x1
			{"FUEL2",			2}										--Requires Condensed Carbon		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_148",	2,					80},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"CATALYST1",		1}										--Requires Sodium				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_154",	2,					40},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_CAVE",		2},										--Requires Marrow Bulb			x1
			{"CATALYST2",		1}										--Requires Sodium Nitrate		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_109",	2,					80},				--Makes Marrow Bulb				x3		in	90 time
		{
			{"CATALYST1",		3},										--Requires Sodium				x2
			{"CREATURE1",		1}										--Requires Mordite				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_110",	4,					80},				--Makes Marrow Bulb				x4		in	90 time
		{
			{"CATALYST2",		3},										--Requires Sodium Nitrate		x1
			{"CREATURE1",		3}										--Requires Mordite				x1
		}
	},
--Buffs a few recipes that either were inferior to easier recipes, or to incentivise finding their raw ingredients
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_1",		20,					320},				--Makes Nanites					15	in	320 time
		{
			{"BP_SALVAGE",		1}										--Requires Salvaged Data			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_2",		125,				60},				--Makes Gold					x100	in	60 time
		{
			{"CLAMPEARL",		1}										--Requires Living Pearl			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_4",		75,					60},				--Makes Nanites					x50		in	60 time
		{
			{"FISHCORE",		1}										--Requires Hadal Core			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_5",		35,					60},				--Makes Sodium Nitrate			x50		in	60 time
		{
			{"VENTGEM",			1}										--Requires Crystal Sulphide		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_9",		1,					30},				--Makes Glass					x1		in	60 time
		{
			{"PLANT_SNOW",		30}										--Requires Frosy Crystal		x40
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
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_76",		1,					10},				--Makes Glass					x1		in	20 time
		{
			{"WATERPLANT",		5},										--Requires Cyto-Phosphate		x50
			{"WATER1",			5}										--Requires Salt					x50
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_249",	5,					600},				--Makes Platinum				x10		in	1200 time
		{
			{"LAND1",			1},										--Requires Ferrite Dust			1
			{"OXYGEN",			1},										--Requires Oxygen				1
			{"STELLAR2",		10}										--Requires Chromatic Metal		250
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_250",	1,					600},				--Makes Warp Cell				x1		in	600 time
		{
			{"FUEL2",			10},									--Requires Condensed Carbon		25
			{"CATALYST1",		20},									--Requires Sodium				10
			{"STELLAR2",		15}										--Requires Chromatic Metal		250
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_251",	1,					600},				--Makes Warp Cell				x1		in	600 time
		{
			{"FUEL1",			20},									--Requires Carbon				50
			{"CATALYST2",		10},									--Requires Sodium Nitrate		5
			{"STELLAR2",		15}										--Requires Chromatic Metal		250
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_252",	1,					600},				--Makes Warp Cell				x1		in	600 time
		{
			{"FUEL2",			10},									--Requires Condensed Carbon		25
			{"CATALYST2",		10},									--Requires Sodium Nitrate		5
			{"STELLAR2",		15}										--Requires Chromatic Metal		250
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_261",	1,					90},				--Makes Ion Battery				x1		in	90 time
		{
			{"LAND1",			5},										--Requires Ferrite Dust			10
			{"ASTEROID1",		1},										--Requires Silver				10
			{"CATALYST1",		5}										--Requires Sodium				10
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_1122",			16,					5},					--Makes Nourishing Slime		x1		in	5 time
		{
			{"FOOD_M_GRUB",		1}										--Requires Juicy Grub			x1
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
		{"RECIPE_29",			1,					5},					--Makes Kelp Rice				x1		in	5 time
		{
			{"PLANT_WATER",		5}										--Requires Kelp Sac				x1
		}
	},
--The amount of Creature Pellets made in this recipe will be multiplied by PelletsPerRecipe below
	{							--Amount per batch	--Time per batch
		{"RECIPE_577",			1,					5},					--Makes Creature Pellets		x1		in	5 time
		{
			{"FUEL1",			20}										--Requires Carbon				x1
		}
	},
--Reduces the nanite yield of refining Tainted Metal proportionally to balance out the increased reward of Tainted metal
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_324",	2,					90},				--Makes Nanites					x2		in	90 time
		{
			{"AF_METAL",		3}										--Requires Tainted Metal		x1
		}
	},
--Nerfs simple recipes that were too generous 
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_328",	2,					30},				--Makes Pugneum					x2		in	30 time
		{
			{"ROBOT2",			3}										--Requires Atlantideum			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_58",		3,					45},				--Makes Carbon					x2		in	30 time
		{
			{"PLANT_TOXIC",		2}										--Requires Fungal Mould			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_60",		3,					45},				--Makes Carbon					x2		in	30 time
		{
			{"PLANT_RADIO",		2}										--Requires Gamma Root			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_61",		3,					45},				--Makes Carbon					x2		in	30 time
		{
			{"PLANT_DUST",		2}										--Requires Cactus Flesh			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_62",		3,					45},				--Makes Carbon					x2		in	30 time
		{
			{"PLANT_HOT",		2}										--Requires Solanium			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_63",		3,					45},				--Makes Carbon					x2		in	30 time
		{
			{"PLANT_LUSH",		2}										--Requires Star Bulb			x1
		}
	},
--Fixes the ratio for Cadmium > Chromatic Metal refining that oddly got changed NMS v4.4 made 
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_32",		2,					70},				--Makes Chromatic Metal			x1		in	70 time
		{
			{"RED2",			2}										--Requires Cadmium				x2
		}
	},
--Speeds up and balances some recipes for Sodium / Sodium Nitrate that were slower than recipes for other similar substances
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_27",		1,					40},				--Makes Sodium Nitrate			x1		in	100 time
		{
			{"CATALYST1",		2}										--Requires Sodium 				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_64",		1,					40},				--Makes Sodium 					x1		in	60 time
		{
			{"PLANT_CAVE",		1}										--Requires Marrow Bulb			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_105",	2,					80},				--Makes Sodium Nitrate			x1		in	90 time
		{
			{"CATALYST1",		1},										--Requires Sodium 				x1
			{"ROBOT1",			1}										--Requires Pugneum 				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_106",	2,					40},				--Makes Sodium Nitrate			x3		in	90 time
		{
			{"CATALYST2",		1},										--Requires Sodium Nitrate		x1
			{"ROBOT1",			1}										--Requires Pugneum 				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_138",	1,					40},				--Makes Sodium Nitrate			x1		in	90 time
		{
			{"GAS3",			1},										--Requires Nitrogen				x1
			{"CATALYST1",		1}										--Requires Sodium 				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_139",	2,					40},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"GAS3",			3},										--Requires Nitrogen				x1
			{"CATALYST2",		1}										--Requires Sodium Nitrate		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_149",	2,					80},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_WATER",		2},										--Requires Kelp Sac				x1
			{"CATALYST1",		1}										--Requires Sodium 				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_150",	2,					80},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_POOP",		2},										--Requires Faecium				x1
			{"CATALYST1",		1}										--Requires Sodium 				x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_155",	2,					40},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_WATER",		2},										--Requires Kelp Sac				x1
			{"CATALYST2",		1}										--Requires Sodium Nitrate		x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_156",	2,					40},				--Makes Sodium Nitrate			x2		in	90 time
		{
			{"PLANT_POOP",		2},										--Requires Faecium				x1
			{"CATALYST2",		1}										--Requires Sodium Nitrate		x1
		}
	},
	--Speeds up the recipe chain for Residual Goop --> ... --> Runaway Mould --> Nanites so it doesn't take prohibitively long to do.
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_51",		1,					30},				--Makes Viscous Fluids ( Jn )	x1		in	150 time
		{
			{"SPACEGUNK1",		1}										--Requires Residual Goop ( Jn )	x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_52",		1,					100},				--Makes Nanites					x1		in	150 time
		{
			{"SPACEGUNK2",		5}										--Requires Runaway Mould ( Jn )	x5
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_54",		1,					30},				--Makes Runaway Mould ( Jn )	x1		in	150 time
		{
			{"SPACEGUNK4",		1}										--Requires Living Slime ( Jn )	x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_55",		1,					30},				--Makes Living Slime ( Jn )		x1		in	150 time
		{
			{"SPACEGUNK5",		1}										--Requires Viscous Fluids ( Jn )x1
		}
	},
}

--Nerfs simple recipes that were too generous (These recipes all have the same ID so need to be searched by RecipeType instead)
CorruptRecipeChanges =
{
	{							--Amount per batch	--Time per batch
		{"RECIPE_DRONESHARD",	16,					500},				--Makes Nanites					x50	in	1800 time
		{
			{"DRONE_SHARD",		1}										--Requires Radiant Shard			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_DRONESCRAP",	48,					1100},				--Makes Nanites					x95	in	2200 time
		{
			{"DRONE_SALVAGE",	1}										--Requires Inverted Mirror			x1
		}
	},
	{							--Amount per batch	--Time per batch
		{"RECIPE_SHIPBRAIN",	96,					1400},				--Makes Nanites					x230	in	3200 time
		{
			{"SHIPBRAIN",		1}										--Requires Hyaline Brain			x1
		}
	},
}

--Changes recipes, including changing which ingredients are required
RecipeIngredientChanges =
{
	--Switches an ingredient to keep the recipe profitable due to how PTSd revalues the ingredients 
	{												--Amount per batch	--Time per batch
		{"RECIPE_911",								1,					5},		--Makes Wriggling Tack				x1		in	5 time
		{--Vanilla ingredient	PTSd ingredient
			{"FOOD_B_DOUGH",	"FOOD_B_DOUGH",		1},							--Requires Sugar Dough	(Sugar Dough in PTSd)		x1
			{"FOOD_W_MEAT",		"FOOD_W_CASE",		1}							--Requires Nightmare Sausage	(Gelatinous Membrane in PTSd)	x1
		}
	},
}

--Changes recipes, including changing which items are produced and the ingredients
RecipeOutputChanges =
{
	--Switches the output so the recipe isn't a total loss
	{							--PTSd output		--Amount per batch	--Time per batch
		{"REFINERECIPE_3",		"SPACEGUNK2",		666,				60},	--Makes "SPACEGUNK4" Living Slime ( Jn )		x50		in	60 time
		{--Vanilla ingredient	PTSd ingredient
			{"EYEBALL",			"EYEBALL",			1},							--Requires Hypnotic Eye		x1
		}
	},
	--This recipe takes an incredibly long time and is over ~10x less efficient than the alternative in vanilla
	{							--PTSd output		--Amount per batch	--Time per batch
		{"REFINERECIPE_330",	"SPACEGUNK1",		5,					150},	--Makes "SPACEGUNK4" Living Slime ( Jn )		x1		in	3600 time
		{--Vanilla ingredient	PTSd ingredient
			{"ROBOT2",			"ROBOT2",			1},							--Requires Atlantideum   ( ∞ )	x5
			{"CREATURE1",		"CREATURE1",		2}							--Requires Mordite   ( Mo )		x5
		}
	},
}

--Adds additional ingredients to recipes
RecipeAddedIngredients =
{
	--	Recipe				New Ingredients		Amount	Type of Item
	{
		"RECIPE_941",		"FOOD_R_SUGAR",		1,		"Product",				--Adds 1 Processed Sugar to recipe for Herbal Crunchie
	},
	{
		"RECIPE_1072",		"FOOD_R_SUGAR",		1,		"Product",				--Adds 1 Processed Sugar to recipe for Syrup-Drenched Delight (Cake Batter version)
	},
	{
		"RECIPE_1081",		"FOOD_R_SUGAR",		1,		"Product",				--Adds 1 Processed Sugar to recipe for Syrup-Drenched Delight (Cake Batter version)
	},
}

--Multiplies how many Creature Pellets are created from all cooking recipes (Since the crafting recipe now creates multiple pellets after a game update)
PelletsPerRecipe =				3										--1

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

--Increases the required amount of certain ingredients used as "additives / seasoning", or in Biscuits
SaltRequired =					5										--1		For Crunchy Caramel, Salty Custard, Salty Juice
CarbonRequired =				5										--1		For Smoked Meat
CondCarbonRequired =			2										--1		For Smoked Meat
FrostCrystalRequired =			5										--1		For various "Ice Cream" recipes

--Adds new refiner recipes for refining single products into nanites
NewNaniteRecipes =
{
	{--NewRecipeID			RecipeName							ProductID			Nanites		Time	
		"NANITE_NAVDATA",	"PTSd: Data Condensation",			"NAV_DATA",			"8",		"60"
	},
	{
		"NANITE_NAVDROP",	"PTSd: Large Data Condensation",	"NAV_DATA_DROP",	"50",		"180"
	},
	{
		"NANITE_QUAD",		"PTSd: Small Nanite Extraction",	"QUAD_PROD",		"100",		"360"
	},
	{
		"NANITE_MECH",		"PTSd: Medium Nanite Extraction",	"MECH_PROD",		"200",		"720"
	},
	{
		"NANITE_SPIDER",	"PTSd: Corrupt Nanite Extraction",	"SPIDER_PROD",		"200",		"720"
	},
	{
		"NANITE_WALKER",	"PTSd: Large Nanite Extraction",	"WALKER_PROD",		"400",		"1440"
	},
}

--Adds new refiner recipes for refining items together with Microprocessors into Salvaged Data (The amount of Salvaged Data outputted is always equal to the amount of Microprocessors inputted)
NewSalvagedDataRecipes =
{
	{--NewRecipeID		RecipeName							ItemID			ItemType		ItemAmount	Time	Salvaged Data & Microprocessors	
		"DATA_MOULD",	"PTSd: Mouldering Data Extraction",	"SPACEGUNK2",	"Substance",	"250",		"3",	"1"
	},
	{
		"DATA_TAINT",	"PTSd: Tainted Data Extraction",	"AF_METAL",		"Substance",	"75",		"3",	"1"
	},
	{
		"DATA_FIEND",	"PTSd: Fiendish Data Extraction",	"FIENDCORE",	"Product",		"1",		"3",	"1"
	},
	{
		"DATA_FISH",	"PTSd: Abyssal Data Extraction",	"FISHCORE",		"Product",		"2",		"9",	"3"
	},
	{
		"DATA_VILE",	"PTSd: Vile Data Extraction",		"WORMPROD",		"Product",		"1",		"3",	"1"
	},
	{
		"DATA_FLESH",	"PTSd: Fleshy Data Extraction",		"WORMCORE",		"Product",		"1",		"3",	"1"
	},
	{
		"DATA_SHARD",	"PTSd: Radiant Data Extraction",	"DRONE_SHARD",	"Product",		"3",		"3",	"1"
	},
	{
		"DATA_MIRROR",	"PTSd: Inverted Data Extraction",	"DRONE_SALVAGE","Product",		"1",		"3",	"1"
	},
	{
		"DATA_HYALINE",	"PTSd: Sentient Data Extraction",	"SHIPBRAIN",	"Product",		"1",		"6",	"2"
	},
	{
		"DATA_QUAD",	"PTSd: Small Data Extraction",		"QUAD_PROD",	"Product",		"1",		"6",	"2"
	},
	{
		"DATA_MECH",	"PTSd: Medium Data Extraction",		"MECH_PROD",	"Product",		"1",		"12",	"4"
	},
	{
		"DATA_SPIDER",	"PTSd: Corrupt Data Extraction",	"SPIDER_PROD",	"Product",		"1",		"12",	"4"
	},
	{
		"DATA_WALKER",	"PTSd: Large Data Extraction",		"WALKER_PROD",	"Product",		"1",		"24",	"8"
	},
}

SilicateBasaltRatio = 2								--Sets how much Silicate Powder is created for every 1 Basalt refined with the new PTSd recipe
SacVenomTritiumYield = 100							--Sets how much Tritium is created for every 1 Sac Venom & 2 Gravitino Balls refined together
AlbumenPearlDiHydrogenYield = 50					--Sets how much Di-hydrogen is created for every 2 Albumen Pearls & 1 Gravitino Balls refined together

--Adds recipes for creating Tritium or Di-Hydrogen by refining Gravitino Balls with either Sac Venom or Albumen Pearls 
NewSacVenomRecipe = 
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="TRITIUM_SACVENOM" />
      <Property name="RecipeType" value="RECIPE_TECHFRAG_PLANT_CAVE" />
      <Property name="RecipeName" value="PTSd: Tritium Sublimation" />
      <Property name="TimeToMake" value="1200" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="ROCKETSUB" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="]]..SacVenomTritiumYield..[[" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GRAVBALL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
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

NewAlbumenPearlRecipe = 
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="DIH_ALBUMENPEARL" />
      <Property name="RecipeType" value="RECIPE_LAUNCHSUB" />
      <Property name="RecipeName" value="PTSd: Di-Hydrogen Extraction" />
      <Property name="TimeToMake" value="600" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="LAUNCHSUB" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="]]..AlbumenPearlDiHydrogenYield..[[" />
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

--Adds new recipes for using Aloe Flesh and Refreshing Drink since they otherwise have very few uses
	--First recipe takes 1 Aloe Flesh and 1 Condensed Carbon to make 2 Steamed Vegetables
	--Second Recipe takes 1 Refreshing Drink and 1 Refined Flour to make 1 Cream
NewAloeAndDrinkRecipes =
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="VEG_ALOE" />
      <Property name="RecipeType" value="UI_COOK_VEG" />
      <Property name="RecipeName" value="PTSd: Aloe Steaming" />
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
      <Property name="RecipeType" value="UI_COOK_DRINK" />
      <Property name="RecipeName" value="PTSd: Plant-Based Cream" />
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

--For adding Hypnotic Eye as an ingredient in the final Worm Food recipe
AddEyeball =
[[<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="EYEBALL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line

SeasoningChanges =
{
	{
		{SaltRequired,	"WATER1"},
		{"RECIPE_68", "RECIPE_50", "RECIPE_578", "RECIPE_898"}
	},
	{
		{CarbonRequired,	"FUEL1"},
		{"RECIPE_97", "RECIPE_100", "RECIPE_112", "RECIPE_113", "RECIPE_114", "RECIPE_115", "RECIPE_116", "RECIPE_117", "RECIPE_118", "RECIPE_119", "RECIPE_120", "RECIPE_121", "RECIPE_736", "RECIPE_737", "RECIPE_738", "RECIPE_739", "RECIPE_740", "RECIPE_741", "RECIPE_986"}
	},
	{
		{CondCarbonRequired,	"FUEL2"},
		{"RECIPE_98", "RECIPE_101", "RECIPE_122", "RECIPE_123", "RECIPE_124", "RECIPE_125", "RECIPE_126", "RECIPE_127", "RECIPE_128", "RECIPE_129", "RECIPE_130", "RECIPE_131", "RECIPE_742", "RECIPE_743", "RECIPE_744", "RECIPE_745", "RECIPE_746", "RECIPE_747", "RECIPE_987"}
	},
	{
		{FrostCrystalRequired,	"PLANT_SNOW"},
		{"RECIPE_494", "RECIPE_495", "RECIPE_497", "RECIPE_499", "RECIPE_501", "RECIPE_503", "RECIPE_505", "RECIPE_507", "RECIPE_509", "RECIPE_511", "RECIPE_513", "RECIPE_515", "RECIPE_517", "RECIPE_519", "RECIPE_521", "RECIPE_523", "RECIPE_525", "RECIPE_527", "RECIPE_529", "RECIPE_531", "RECIPE_533", "RECIPE_535", "RECIPE_537", "RECIPE_539", "RECIPE_585", "RECIPE_587", "RECIPE_589", "RECIPE_591", "RECIPE_593", "RECIPE_595", "RECIPE_597", "RECIPE_599", "RECIPE_601", "RECIPE_603", "RECIPE_605", "RECIPE_607", "RECIPE_609", "RECIPE_611", "RECIPE_613", "RECIPE_615", "RECIPE_617", "RECIPE_619", "RECIPE_621", "RECIPE_990"}
	},
}

function AddIngredient (IngredientID, IngredientAmount, ItemType)
    return
[[<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="]]..IngredientID..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..ItemType..[[" />
          </Property>
          <Property name="Amount" value="]]..IngredientAmount..[[" />
        </Property>]]
end

function Add1IngrRefinerRecipe (RecipeID, Type, Name, Time, ResultID, ResultType, ResultAmount, IngredID, IngredType, IngredAmount)
	return
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..RecipeID..[[" />
      <Property name="RecipeType" value="]]..Type..[[" />
      <Property name="RecipeName" value="]]..Name..[[" />
      <Property name="TimeToMake" value="]]..Time..[[" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="]]..ResultID..[[" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="]]..ResultType..[[" />
        </Property>
        <Property name="Amount" value="]]..ResultAmount..[[" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="]]..IngredID..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..IngredType..[[" />
          </Property>
          <Property name="Amount" value="]]..IngredAmount..[[" />
        </Property>
      </Property>
    </Property>]]
end

function Add2IngrRefinerRecipe (RecipeID, Type, Name, Time, ResultID, ResultType, ResultAmount, Ingred1ID, Ingred1Type, Ingred1Amount, Ingred2ID, Ingred2Type, Ingred2Amount)
	return
[[<Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..RecipeID..[[" />
      <Property name="RecipeType" value="]]..Type..[[" />
      <Property name="RecipeName" value="]]..Name..[[" />
      <Property name="TimeToMake" value="]]..Time..[[" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="]]..ResultID..[[" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="]]..ResultType..[[" />
        </Property>
        <Property name="Amount" value="]]..ResultAmount..[[" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="]]..Ingred1ID..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..Ingred1Type..[[" />
          </Property>
          <Property name="Amount" value="]]..Ingred1Amount..[[" />
        </Property>
		<Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="]]..Ingred2ID..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..Ingred2Type..[[" />
          </Property>
          <Property name="Amount" value="]]..Ingred2Amount..[[" />
        </Property>
      </Property>
    </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewSacVenomRecipe
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewAlbumenPearlRecipe
			},
			{--Adds Recipe for refining Basalt into Silicate Powder
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = Add1IngrRefinerRecipe ("SILICATE_BASALT", "Requested Operation: Powderise", "PTSd: Basalt Pulverisation", "20", "SAND1", "Substance", SilicateBasaltRatio, "LAVA1", "Substance", "1")
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = NewAloeAndDrinkRecipes
			},
			--[[	--WIP
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},					--Adds recipe to refine Crew Manifest from Derelict freighter into ~0.85x the Tainted Metal you would get from trading it
				["ADD"] = Add1IngrRefinerRecipe ("CREWTAINT", "Requested Operation: Taint Metal", "PTSd: Crew Maninfestation", "600", "AF_METAL", "Substance", "510", "PROC_CREW", "Product", "1")
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},					--Adds recipe to refine Captain's Log from Derelict freighter into ~0.85x the Tainted Metal you would get from trading it
				["ADD"] = Add1IngrRefinerRecipe ("CAPTTAINT", "Requested Operation: Taint Metal", "PTSd: Captain Logarithm", "600", "AF_METAL", "Substance", "765", "PROC_CAPT", "Product", "1")
			},
			]]
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_893"},			--Removes the Nightmare Sausage alternative recipe that uses Hypnotic Eye, as in PTSd Hypnotic Eye is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_918"},			--Removes the Haunted Wafer alternative recipe that uses Hypnotic Eye, as in PTSd Hypnotic Eye is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_451"},			--Removes the Abyssal Stew alternative recipe that uses 2x Hypnotic Eye, as in PTSd Hypnotic Eye is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_452"},			--Removes the Abyssal Stew alternative recipe that uses 2x Hypnotic Eye, as in PTSd Hypnotic Eye is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_453"},			--Removes the Abyssal Stew alternative recipe that uses 2x Hypnotic Eye, as in PTSd Hypnotic Eye is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_940"},			--Removes the Herbal Crunchie alternative recipe that uses Geknip, as in PTSd Geknip is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_32"},				--Removes the Baked Eggs alternative recipe that uses Larval Core, as Larval Core is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_37"},				--Removes the Delicate Meringue alternative recipe that uses Larval Core, as Larval Core is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_430"},			--Removes the Soft Custard Fancy alternative recipe that uses Larval Core, as Larval Core is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_448"},			--Removes the Cake of the Lost alternative recipe that uses Larval Core (through Monstrous Custard), as Larval Core is too valuable to be worthwhile as a cooking ingredient here
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_1108"},			--Removes the Cake of Eternal Sleep alternative recipe that uses Syrupy Batter (through Monstrous Custard), as it is significantly less profitable than the Wailing Batter recipes
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RECIPE_895"},
				["PRECEDING_KEY_WORDS"] = {"GcRefinerRecipeElement.xml"},
				["ADD"] = AddEyeball,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
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
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", INGId},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
		end
		
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
end
for i = 1, #CorruptRecipeChanges do
	local RecipeType = CorruptRecipeChanges[i][1][1]
	local Time = CorruptRecipeChanges[i][1][3]
	local AmountResult = CorruptRecipeChanges[i][1][2]
	local Ingredients = CorruptRecipeChanges[i][2]
	
		for j = 1, #Ingredients do
			INGId = Ingredients[j][1]
			AmountING = Ingredients[j][2]
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"RecipeType", RecipeType, "Id", INGId},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
		end
		
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"RecipeType", RecipeType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
end
for i = 1, #RecipeIngredientChanges do
	local RecipeId = RecipeIngredientChanges[i][1][1]
	local Time = RecipeIngredientChanges[i][1][3]
	local AmountResult = RecipeIngredientChanges[i][1][2]
	local Ingredients = RecipeIngredientChanges[i][2]
	
		for j = 1, #Ingredients do
			OldINGId = Ingredients[j][1]
			NewINGId = Ingredients[j][2]
			AmountING = Ingredients[j][3]
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", OldINGId},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Id", NewINGId},
					{"Amount", AmountING}
				}
			}
		end
		
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
end
for i = 1, #RecipeOutputChanges do
	local RecipeId = RecipeOutputChanges[i][1][1]
	local NewOutput = RecipeOutputChanges[i][1][2]
	local Time = RecipeOutputChanges[i][1][4]
	local AmountResult = RecipeOutputChanges[i][1][3]
	local Ingredients = RecipeOutputChanges[i][2]
	
		for j = 1, #Ingredients do
			OldINGId = Ingredients[j][1]
			NewINGId = Ingredients[j][2]
			AmountING = Ingredients[j][3]
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", OldINGId},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Id", NewINGId},
					{"Amount", AmountING}
				}
			}
		end
		
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
			
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["PRECEDING_KEY_WORDS"] = {"Result"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Id", NewOutput}
				}
			}
end
for i = 1, #RecipeAddedIngredients do
	local RecipeId = RecipeAddedIngredients[i][1]
	local IngredientID = RecipeAddedIngredients[i][2]
	local IngredientAmount = RecipeAddedIngredients[i][3]
	local ItemType = RecipeAddedIngredients[i][4]
		
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RecipeId},
				["PRECEDING_KEY_WORDS"] = {"GcRefinerRecipeElement.xml"},
				["ADD"] = AddIngredient (IngredientID, IngredientAmount, ItemType),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
end
for i = 1, #CropPelletChanges do
	local RecipeId = CropPelletChanges[i]
	local AmountING = RawCropsPerPellet
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["PRECEDING_KEY_WORDS"] = {"Ingredients"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
end
for i = 1, #SeasoningChanges do
	local SeasonAmount = SeasoningChanges[i][1][1]
	local SeasonId = SeasoningChanges[i][1][2]
	local Recipes = SeasoningChanges[i][2]
	
		for j = 1, #Recipes do
			local RecipeId = Recipes[j]
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", SeasonId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", SeasonAmount}
				}
			}
		end
end
for i = 1, #NewNaniteRecipes do
	local NewRecipeID = NewNaniteRecipes[i][1]
	local RecipeName = NewNaniteRecipes[i][2]
	local ProductID = NewNaniteRecipes[i][3]
	local Nanites = NewNaniteRecipes[i][4]
	local Time = NewNaniteRecipes[i][5]
		
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = Add1IngrRefinerRecipe (NewRecipeID, "RECIPE_BURIEDTECH", RecipeName, Time, "TECHFRAG", "Substance", Nanites, ProductID, "Product", "1"),
			}
end
for i = 1, #NewSalvagedDataRecipes do
	local NewRecipeID = NewSalvagedDataRecipes[i][1]
	local RecipeName = NewSalvagedDataRecipes[i][2]
	local ItemID = NewSalvagedDataRecipes[i][3]
	local ItemType = NewSalvagedDataRecipes[i][4]
	local ItemAmount = NewSalvagedDataRecipes[i][5]
	local Time = NewSalvagedDataRecipes[i][6]
	local MicroData = NewSalvagedDataRecipes[i][7]
	
		
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"Table"},
				["ADD"] = Add2IngrRefinerRecipe (NewRecipeID, "Requested Operation: Data Purge", RecipeName, Time, "BP_SALVAGE", "Product", MicroData, ItemID, ItemType, ItemAmount, "MICROCHIP", "Product", MicroData),
			}
end

ChangesToRecipes[#ChangesToRecipes+1] =
{
	["MATH_OPERATION"] 		= "*",
	["SPECIAL_KEY_WORDS"] = {"Id", "BAIT_BASIC"},
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] 	=
	{
		{"Amount", PelletsPerRecipe}
	}
}

--[[local ChangesToRecipes = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	local RecipeId = RecipeChanges[i][1][1]
	local Time = RecipeChanges[i][1][3]
	local AmountResult = RecipeChanges[i][1][2]
	
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
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
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", INGId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
		end
end]]