ModName = "PTSd Resource + Product + Construction Rebalance"
GameVersion = "5_22"
Description = "Rebalances the purchase & selling price for many items. Changes the stacksize for certain valuables. Changes the construction costs for certain buildables."

--This part replaces the actual value (buying and selling price) for certain substances or products
SubstanceSaleChanges =
{																						--How much Chromatic Metal it refines into
	{"ROCKETSUB",	36},							--6				Tritium
	{"WATER1",		160},							--101	(200)	Salt
	{"WATER2",		336},							--205	(400)	Chlorine
	{"CAVE1",		130},							--76	(198)	Cobalt
	{"CAVE2",		275},							--162	(401)	Ion. Cobalt
	{"YELLOW2",		47},							--41			Copper				x0.5
	{"RED2",		95},							--83			Cadmium				x1
	{"GREEN2",		142},							--114			Emeril				x1.5
	{"BLUE2",		190},							--132			Indium				x2
	{"STELLAR2",	100},							--88			Chromatic Metal		1
	{"EX_YELLOW",	95},							--75			Activated Copper	x1
	{"EX_RED",		190},							--111			Activated Cadmium	x2
	{"EX_GREEN",	285},							--134			Activated Emeril	x3
	{"EX_BLUE",		380}							--165			Activated Indium	x4
}
--Silver		186
--Gold			353
--Platinum		505

ProductSaleChanges =
{
	{"UI_ULTRAPROD_1_NAME",	0.15},					--15,600,000	Fusion Ignitor			requires Portable Reactor x1  +  Quantum Processor x1  +  Geodesite x1
	{"UI_ULTRAPROD_2_NAME",	0.15},					--15,600,000	Stasis Device			requires Quantum Processor x1  +  Cryogenic Chamber x1  +  Iridesite x1
	{"UI_MEGAPROD_1_NAME",	0.19},					--4,200,000		Portable Reactor		requires Liquid Explosive x1  +  Fusion Accelerant x1		(0.8	+	1.5)
	{"UI_MEGAPROD_2_NAME",	0.19},					--4,400,000		Quantum Processor		requires Circuit Board x1  +  Superconductor x1				(0.916	+	1.5)
	{"UI_MEGAPROD_3_NAME",	0.19},					--3,800,000		Cryogenic Chamber		requires Living Glass x1  +  Cryo-Pump x1					(0.566	+	1.5)
	{"UI_COMPOUND_4_NAME",	0.25},					--1,500,000		Fusion Accelerant		requires Organic Catalyst x1  +  Nitrogen Salt x1			(0.320	+	0.05)
	{"UI_COMPOUND_5_NAME",	0.25},					--1,500,000		Superconductor			requires Semiconductor x1	+	Enriched Carbon x1 			(0.320	+	0.05)
	{"UI_COMPOUND_6_NAME",	0.25},					--1,500,000		Cryo Pump				requires Hot Ice x1  +  Thermic Condensate x1				(0.320	+	0.05)
	
	{"UI_COMPOUND_1_NAME",	0.55},					--320,000		Organic Catalyst		requires Enriched Carbon x1  +  Thermic Condensate x1		(0.05	+	0.05)
	{"UI_COMPOUND_2_NAME",	0.55},					--320,000		Semiconductor			requires Nitrogen Salt x1  +  Thermic Condensate x1			(0.05	+	0.05)
	{"UI_COMPOUND_3_NAME",	0.55},					--320,000		Hot Ice					requires Enriched Carbon x1  +  Nitrogen Salt x1			(0.05	+	0.05)
	
	{"UI_REACTION_1_NAME",	1.0},					--50,000		Thermic Condensate		requires Sulphurine x250  +  Condensed Carbon x50
	{"UI_REACTION_2_NAME",	1.0},					--50,000		Enriched Carbon			requires Radon x250  +  Condensed Carbon x50
	{"UI_REACTION_3_NAME",	1.0},					--50,000		Nitrogen Salt			requires Nitrogen x250  +  Condensed Carbon x50
	
	{"UI_FARMPROD_7_NAME",	0.25},					--800,500		Liquid Explosive		requires Acid x1  +  Unstable Gel x1						(0.188	+	0.05)
	{"UI_FARMPROD_8_NAME",	0.25},					--566,000		Living Glass			requires Lubricant x1  +  Glass x1							(0.110	+	0.0002)
	{"UI_FARMPROD_9_NAME",	0.25},					--916,250		Circuit Board			requires Heat Capacitors x1  +  Poly Fibre x1				(0.180	+	0.130)
	
	{"UI_FARMPROD_1_NAME",	0.5},					--188,000		Acid					requires 25 Mordite	+	600 Fungal Mould
	{"UI_FARMPROD_2_NAME",	0.5},					--110,000		Lubricant				requires 50 Faecium	+	400 Gamma Root
	{"UI_FARMPROD_3_NAME",	0.5},					--200			Glass					requires 40 Frost Crystals
	{"UI_FARMPROD_4_NAME",	0.5},					--180,000		Heat Capacitor			requires 200 Solanium	+	100 Frost Crystals
	{"UI_FARMPROD_5_NAME",	0.5},					--130,000		Poly Fibre				requires 100 Cactus Flesh	+	200 Star Bulbs
	{"UI_FARMPROD_6_NAME",	0.5},					--50,000		Unstable Gel			requires 200 Cactus Flesh
	
	{"UI_ALLOY_COMPLEX_1_NAME",	1.0},				--150,000		Geodesite				requires Herox x1  +  Dirty Bronze x1	+	Lemmium x1		(0.025	+	0.025	+	0.025)
	{"UI_ALLOY_COMPLEX_2_NAME",	1.0},				--150,000		Iridesite				requires Aronium x1  +  Magno-Gold x1	+	Grantine x1		(0.025	+	0.025	+	0.025)
	
	{"UI_ALLOY_SIMPLE_1_NAME",	1.0},				--25,000		Aronium				
	{"UI_ALLOY_SIMPLE_2_NAME",	1.0},				--25,000		Dirty Bronze				
	{"UI_ALLOY_SIMPLE_3_NAME",	1.0},				--25,000		Herox				
	{"UI_ALLOY_SIMPLE_4_NAME",	1.0},				--25,000		Lemmium				
	{"UI_ALLOY_SIMPLE_5_NAME",	1.0},				--25,000		Magno-Gold				
	{"UI_ALLOY_SIMPLE_6_NAME",	1.0},				--25,000		Grantine				
	
	{"UI_STORMCRYSTAL_NAME",	0.6},				--206,000		Storm Crystal	(0.8x 126,000 in 3.99)
	{"UI_SHIPCHARGE_NAME",	18.0},					--500			Starshield Battery
	{"HYPERFUEL2_NAME",	3.0},						--46,750		Warp Hypercore	(Same value as Warp Cell)
	
	{"PROD_NIP_NAME",	1.2615},					--17,776		Nip Nip Buds		(4hr grow time)
	{"NEWPROD12_NAME",	2.0/2},						--64,000		Sac Venom			(3hr 20 min grow time)
	{"NEWPROD14_NAME",	2.7/2},						--11,200		Albumen Pearl		(2 hr grow time)
	{"NEWPROD11_NAME",	4.0},						--5,800			Vortex Cube
	{"NEWPROD13_NAME",	0.40379/2},					--42,130		Gravitino Ball		(2 hr grow time)		(In game price is 40024? some kind of global multiplier of 0.95 on item sell / value prices?)
	{"UI_CLAMPEARL_NAME",	9.0},					--5,050			Living Pearl		(Refines to 100 Gold = 35,300u vanilla)
	{"UI_VENTGEM_NAME",	2.5},						--7,800			Crystal Sulphide
	{"UI_HEX_CORE_NAME",	1010.0625},				--16			Hex Core
	
	{"UI_EYEBALL_NAME",	2.5},						--60,000		Hypnotic Eye
	{"FOOD_R_EYEBALLS_NAME",	1.796},				--90,000		Horrifying Mush
	{"FOOD_R_EYESTEW_NAME",	2},						--90,000		Abyssal Stew
	{"FOOD_R_EYEICE_NAME",	2},						--90,000		Iced Screams
	
	{"FOOD_W_CASE_NAME",	8},						--8,000			Gelatinous Membrane (stage 1)
	{"FOOD_W_MEAT_NAME",	10},					--16,000		Nightmare Sausage (stage 2)
	{"FOOD_W_SWEETM_NAME",	11.875},				--32,000		Syrupy Viscera (stage 3)
	{"FOOD_B_WORM_NAME",	1.964},					--55,000		Wriggling Tack
	
	{"FOOD_CK_MCUST_NAME",	0.7},					--200,000		Horrifying, Gooey Delight
	{"FOOD_DNUT_MCUST_NAME",	0.9},				--180,000		Monstrous Doughnut
	{"FOOD_PIE_MCUST_NAME",	1.16},					--160,000		The Spawning Tart
	{"FOOD_CM_APPLE_NAME",	0.85},					--176,900		'Apple' Cake of Lost Souls
	{"FOOD_CM_BLOBBUT_NAME",	1.02},				--167,200		Gooey Screamer
	{"FOOD_CM_CACTUS_NAME",	0.9},					--170,300		Choking Monstrosity Cake
	{"FOOD_CM_CREAM_NAME",	1.15},					--152,300		Doomed Cream Cake
	{"FOOD_MM_HONEY_NAME",	1.25},					--125,400		Tortured Honey Cake
	{"FOOD_MM_BLOB_NAME",	1.1},					--142,900		Itching, Creeping Honey Sponge
	{"FOOD_CM_HONEY_NAME",	1.15},					--149,700		Monstrous Honey Cake
	{"FOOD_MM_APPLE_NAME",	0.95},					--149,400		Cake of Sin
	{"FOOD_MM_CREAM_NAME",	1.15},					--128,000		Unbound Cream Horn
	{"FOOD_MM_CUST_NAME",	0.85},					--199,200		Cake of the Lost
	{"FOOD_MM_JAM_NAME",	1.1},					--153,300		Writhing Jam Puff
	{"FOOD_MM_JGLITCH_NAME",	1.1},				--152,200		Unbound Monstrosity
	{"FOOD_MM_JHOT_NAME",	1.1},					--149,400		Burning Jam Surprise
	{"FOOD_ICE_FIEND_NAME",	0.85},					--128,000		Deathly-Cold Ice Cream
	{"FOOD_EGGPIE_GM_NAME",	1.2},					--102,000		Parasitic Omelette
	{"FOOD_EGGPIE_M_NAME",	1.2},					--180,000		Whispering Omelette
	
	{"FOOD_DNUT_BLOB_NAME",	0.9},					--120,000		Gooey ProtoDoughnut
	{"FOOD_DNUT_HON_NAME",	1.4},					--65,000		Honey Doughnut
	{"FOOD_ICE_NAME",		0.78},					--48,000		Ice Cream
	{"FOOD_ICE_HONEY_NAME",	1.2},					--56,000		Honey Ice Cream
	{"FOOD_ICE_STAR_NAME",	1.0},					--36,000		Stellar Ice Cream
	{"FOOD_ICE_FISH_NAME",	0.68},					--36,000		Briney Rime
	{"FOOD_DNUT_CUST_NAME",	1.1},					--105,000		Custard Doughnut
	{"FOOD_MC_CUST_NAME",	0.47},					--98,400		Soft Custard Fancy
	{"FOOD_MC_CHOC_NAME",	1.25},					--19,200		Chocolate Dream
	{"FOOD_MC_CARM_NAME",	1.18},					--23,600		Fluffy Caramel Delight
	{"FOOD_CB_CACTUS_NAME",	0.9},					--71,500		Honied Throat-Sticker
	{"FOOD_PIE_HONEY_NAME",	1.5},					--48,000		Honey Tart
	{"FOOD_PIE_SCUST_NAME",	1.3},					--78,000		Stellar Custard Tart
	{"FOOD_PIE_CREAM_NAME",	1.3},					--62,000		Creamy Treat
	{"FOOD_PIE_GLOW_NAME",	1.3},					--40,000		Glowing Pie
	{"FOOD_CB_SCUST_NAME",	0.9},					--92,300		Starbirth Delight
	{"FOOD_CG_SCUST_NAME",	0.9},					--92,300		Interstellar Curiosity
	{"FOOD_CG_CACTUS_NAME",	0.9},					--71,500		Prickly Curiosity
	{"FOOD_B_WEIRD_NAME",	1.12},					--40,000		Baked Anomaly
	{"FOOD_B_BURN_NAME",	0.915},					--35,000		Well-Smoked Biscuit
	{"FOOD_B_CHEESE_NAME",	1.45},					--60,000		Curdy Cracker
	{"FOOD_B_CREAM_NAME",	0.91},					--105,000		Cream Fingers
	{"FOOD_B_MILK_NAME",	1.45},					--56,000		Enriched Biscuit
	{"FOOD_B_FISH_NAME",	0.667},					--60,000		Fish Biscuit
	{"FOOD_B_HERB_NAME",	2.1036},				--60,000		Herbal Crunchie
	{"FOOD_B_PLAIN_NAME",	0.893},					--28,000		Simple Biscuit
	{"FOOD_B_HONEY_NAME",	1.6},					--38,000		Honey Waffle
	{"FOOD_B_JAM_NAME",		1.4},					--38,000		Jammy Rounds
	
	{"FOOD_MC_PCAT_NAME",	0.41},					--94,800		Nectar Islands
	{"FOOD_MC_BUGJAM_NAME",	1.3},					--35,200		Frosted Mire
	{"FOOD_CK_BUGJAM_NAME",	1.2},					--68,100		Gelatinous Sponge
	{"FOOD_CB_BUGJAM_NAME",	1.06},					--81,900		Nourishing Oozer
	{"FOOD_CP_APPLE_NAME",	0.8},					--78,000		Candied 'Apples'
	{"FOOD_CP_BUGJAM_NAME",	1.05},					--81,900		Splicer's Delight
	{"FOOD_CP_CACTUS_NAME",	0.9},					--71,500		Hybrid Cake
	{"FOOD_CP_CREAM_NAME",	1.2},					--64,900		Creamy Clouds of Nectar
	{"FOOD_CP_FCUST_NAME",	0.95},					--92,300		Sweet and Salty Puff
	{"FOOD_CP_HONEY_NAME",	1.2},					--62,200		Ambrosial Wonder
	{"FOOD_CP_JAM_NAME",	1.05},					--81,900		Jammy Burster
	{"FOOD_CP_JGLITCH_NAME",	1.1},				--80,800		Xeno-Sponge
	{"FOOD_CP_JHOT_NAME",	1.1},					--78,000		Syrupy Tingler
	{"FOOD_CK_PCATBUT_NAME",	1.04},				--73,600		Syrup-Drenched Delight
	{"FOOD_CG_BUGJAM_NAME",	1.1},					--81,900		Mucal Curiosity
	{"FOOD_DNUT_PCAT_NAME",	0.9},					--120,000		Pollen Puffball
	{"FOOD_PIE_BUGJAM_NAME",	1.2},				--62,000		Muculent Tart
	{"FOOD_B_BUG_NAME",		0.67},					--56,000		Chewy Biscuit
	{"FOOD_CM_BUGJAM_NAME",	1.2},					--148,000		Primordial Sponge
	{"FOOD_CM_PCATBUT_NAME",	1.02},				--167,200		Cake of Eternal Sleep
	{"FOOD_MM_PCAT_NAME",	0.8},					--199,200		Ambrosial Curse
	{"FOOD_MM_BUGJAM_NAME",	1.1},					--153,300		Squirming Fancy
	{"FOOD_EVIL_STEW_NAME",	1.125},					--96,000		The Worst Stew
	{"UI_GRUB_POD_NAME",	6.0},					--11,000		Juicy Grub
	{"FOOD_PCAT_VEG_NAME",	2.0},					--1,600			Syrupy Nectar
	{"FOOD_HORROR_MEAT_NAME",	0.65},				--6,200			Rancid Flesh
	{"FOOD_R_HORROR_NAME",	0.66},					--9,200			Purged Ribs
	
	{"UI_FISH_FOOD_EGGS_NAME",	0.46},				--39,000		Assorted Roe
	{"UI_FISH_FOOD_MIX_NAME",	0.51},				--52,500		Salty Platter
	{"UI_FISH_FOOD_STEW_NAME",	0.39},				--52,500		Seafood Stew
	{"UI_FISH_FOOD_STEW_ALT_NAME",	0.43},			--71,450		Sea's Bounty
	{"UI_FISH_FOOD_RICE_NAME",	0.31},				--52,500		Fish and Rice
	{"UI_FISH_FOOD_CHIPS_NAME",	0.27},				--71,450		Starched Fish
	{"FOOD_B_FISH_NAME",	0.8},					--60,000		Fish Biscuit
	{"UI_FISH_FOOD_PIE_NAME",	1.0},				--52,500		Marine Pie
	
	{"UI_FISH_FOOD_CLAM_NAME",	0.27},				--33,100		Mollusc Flesh
	{"UI_FISH_FOOD_CRAB_NAME",	0.27},				--33,100		Peeled Claws
	{"UI_FISH_FOOD_EEL_NAME",	0.51},				--33,100		Fleshy Cylinder
	{"UI_FISH_FOOD_JELLYEELS_NAME",	0.57},			--52,500		Jellied Eel
	{"UI_FISH_FOOD_JELLY_NAME",	0.27},				--33,100		Jellymeat
	{"UI_FISH_FOOD_OCTOPUS_NAME",	0.73},			--33,100		Grilled Tentacle
	{"UI_FISH_FOOD_PRAWN_NAME",	0.51},				--33,100		Shell Puree
	{"UI_FISH_FOOD_S15_NAME",	41.44},				--39,000		Haunted Fillet
	{"UI_FISH_FOOD_SNAIL_NAME",	0.27},				--33,100		Snail Fillet
	{"UI_FISH_FOOD_SQUID_NAME",	18.07},				--33,100		Steamed Rubber
	{"UI_FISH_FOOD_STARFISH_NAME",	1.13},			--33,100		Delicate Legs
	{"UI_FISH_FOOD_TURTLE_NAME",	9.82},			--33,100		Boiled Flipper
	{"UI_FISH_FOOD_WORM_NAME",	0.27},				--33,100		Poached Worms
	{"UI_FISH_FOOD_SMALL_1_NAME",	0.32},			--28,000		Fish Fry
	{"UI_FISH_FOOD_SMALL_2_NAME",	0.32},			--28,000		Whitebait
	{"UI_FISH_FOOD_SMALL_3_NAME",	0.32},			--28,000		Pickled Fish
	{"UI_FISH_FOOD_MED_1_NAME",	0.51},				--33,100		Edible Chum
	{"UI_FISH_FOOD_MED_2_NAME",	0.51},				--33,100		Grilled Fillet
	{"UI_FISH_FOOD_MED_3_NAME",	0.51},				--33,100		Smoked Fish
	{"UI_FISH_FOOD_LARGE_1_NAME",	0.68},			--35,400		Marine Steak
	{"UI_FISH_FOOD_LARGE_2_NAME",	0.68},			--35,400		Brined Flesh
	{"UI_FISH_FOOD_LARGE_3_NAME",	0.68},			--35,400		Seared Fillet
	{"UI_FISH_FOOD_XL_1_NAME",	0.77},				--39,000		Fishy Slab
	{"UI_FISH_FOOD_XL_2_NAME",	0.77},				--39,000		Whole Roast Fish
	{"UI_FISH_FOOD_XL_3_NAME",	3.08},				--39,000		Seafood 'Feast'
	
	{"NEWPROD3_NAME",	10.0},						--13,063		KORVAXCUBE
	{"NEWPROD2_NAME",	10.0},						--11,688		VYKEENDAGGER
	{"DELICACY1_NAME",	10.0},						--20,625		GEKNIP
	{"CURIO1_NAME",	3.0},							--23,375		Gek Relic
	{"CURIO2_NAME",	3.0},							--24,750		VyKeen Effigy
	{"CURIO3_NAME",	3.0},							--22,000		Korvax Casing
	
	{"UI_QUAD_PROD_NAME",	4.0},					--20,000		Quad Servo
	{"UI_SPIDER_PROD_NAME",	5.0},					--37,000		Crystallised Heart
	{"UI_MECH_PROD_NAME",	6.0},					--28,000		Hardframe Engine
	{"UI_WALKER_PROD_NAME",	8.0},					--35,000		Walker Brain
	{"UI_DRONE_SALVAGE_NAME",	2.0},				--17,000		Inverted Mirror
	{"UI_DRONE_SHARD_NAME",	0.842},					--1,900			Radiant Shard
	{"UI_SENTFREI_PROD_NAME",	10},				--35,000		Carrier AI Fragment
	
	{"UI_ILLEGAL_PROD1_NAME",	3.0},				--2,000			Illegal Trade item
	{"UI_ILLEGAL_PROD2_NAME",	3.0},				--9,000			Illegal Trade item
	{"UI_ILLEGAL_PROD3_NAME",	3.0},				--18,000		Illegal Trade item
	{"UI_ILLEGAL_PROD4_NAME",	3.0},				--32,000		Illegal Trade item
	{"UI_ILLEGAL_PROD5_NAME",	3.0},				--58,000		Illegal Trade item
	{"UI_ILLEGAL_PROD6_NAME",	3.0},				--68,000		Illegal Trade item
	{"UI_ILLEGAL_PROD7_NAME",	3.0},				--83,000		Illegal Trade item
	{"UI_ILLEGAL_PROD8_NAME",	3.0},				--98,000		Illegal Trade item
	
	{"UI_SALVAGE_TECH_5_NAME",	1.0},				--10,000		Salvaged Trade item		(Price seems oddly low based on the other items in this series, but some vanilla rewards account for this price so leaving as-is) 
	{"UI_SALVAGE_TECH_6_NAME",	1.0},				--12,000		Salvaged Trade item		(Price seems oddly low based on the other items in this series, but some vanilla rewards account for this price so leaving as-is) 
	
	{"UP_ROBOSUIT_NAME",		2.5},				--313			Rebuilt Exosuit Module (Bought with Void Motes)
	--Different versions of the Staff Pole for Voltaic Staves
	{"UI_STAFF_PART_A_NAME",	1.0},				--333	(Bought with Void Motes)
	{"UI_STAFF_POLE1_NAME",		1.0},				--333	(Bought with Void Motes)
	{"UI_STAFF_POLE2_NAME",		1.0},				--333	(Bought with Void Motes)
	{"UI_STAFF_POLE3_NAME",		1.0},				--333	(Bought with Void Motes)
	{"UI_STAFF_POLE4_NAME",		1.0},				--333	(Bought with Void Motes)
	{"UI_STAFF_POLE5_NAME",		1.0},				--333	(Bought with Void Motes)
	{"UI_STAFF_POLE6_NAME",		1.0},				--333	(Bought with Void Motes)
	--Different versions of the Staff Core for Voltaic Staves
	{"UI_STAFF_PART_B_NAME",	1.0},				--646	(Bought with Void Motes)
	{"UI_STAFF_CORE1_NAME",		1.0},				--646	(Bought with Void Motes)
	{"UI_STAFF_CORE2_NAME",		1.0},				--646	(Bought with Void Motes)
	{"UI_STAFF_CORE3_NAME",		1.0},				--646	(Bought with Void Motes)
	{"UI_STAFF_CORE4_NAME",		1.0},				--646	(Bought with Void Motes)
	{"UI_STAFF_CORE5_NAME",		1.0},				--646	(Bought with Void Motes)
	{"UI_STAFF_CORE6_NAME",		1.0},				--646	(Bought with Void Motes)
	--Different versions of the Staff Head for Voltaic Staves
	{"UI_STAFF_PART_C_NAME",	1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD1_NAME",		1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD2_NAME",		1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD3_NAME",		1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD4A_NAME",	1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD4B_NAME",	1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD5_NAME",		1.0},				--999	(Bought with Void Motes)
	{"UI_STAFF_HEAD6_NAME",		1.0},				--999	(Bought with Void Motes)
	
	--Various Starship Reactor Cores		(making base value roughly equivalent to what you'd get in PTSd for selling all upgrade modules you get for scrapping a starship of this class)
	{"UI_SHIP_CORE_C_NAME",		0.5*0.667},			--300	(Bought with Nanites)		(~150 = Average value of scrapping a C-Class ship and selling all upgrade modules)
	{"UI_SHIP_CORE_B_NAME",		0.25*0.667},		--3000	(Bought with Nanites)		(~750 = Average value of scrapping a C-Class ship and selling all upgrade modules)
	{"UI_SHIP_CORE_A_NAME",		0.25*0.667},		--6500	(Bought with Nanites)		(~1625 = Average value of scrapping a C-Class ship and selling all upgrade modules)
	{"UI_SHIP_CORE_S_NAME",		0.25*0.667},		--12000	(Bought with Nanites)		(~3000 = Average value of scrapping a C-Class ship and selling all upgrade modules)
}

--These various "geode" style items are given values equal to 1.33x the expected value of opening & selling their contents on average (3x value for Tritium Hypercluster & Crystal Shard due to the difficulty in getting Tritium/Di-Hydrogen)
GeodeSaleChanges =
{
	{"GEODE_LAND",		0.8},						--3200			Geode (Ferrite)
	{"GEODE_CAVE",		2.8},						--3200			Geode (Cobalt)
	{"GEODE_ASTEROID",	7.0},						--3200			Gold Nugget
	{"GEODE_RARE",		10.2},						--3200			Glowing Mineral
	{"GEODE_SPACE",		2.8},						--3200			Tritium Hypercluster
	{"GEODE_CRYSTAL",	6.9},						--3200			Crystal Fragment
}

--Gives a little buff to average profit per POI for both, skews Scrap to be more consistent, Bones to be usually less profitable but with a chance for a huge payoff
ProceduralProductSaleChanges =
{
	--Ancient Bones					Value Multiplier
	{"ITEMGEN_BONES_COMMON",		1},				--50,000 - 110,000,			Dropweight 20		(76.9%)
	{"ITEMGEN_BONES_UNCOMMON",		0.5},			--200,000 - 650,000,		Dropweight 5		(19.2%)
	{"ITEMGEN_BONES_RARE",			2.0},			--700,000 - 1,700,000,		Dropweight 1		(3.8%)
	--Salvageable Scrap
	{"ITEMGEN_SALVAGE_COMMON",		1.5},			--100,000 ~ 300,000,		Dropweight 4		(57%)
	{"ITEMGEN_SALVAGE_UNCOMMON",	1.2},			--400,000 ~ 850,000,		Dropweight 2		(29%)
	{"ITEMGEN_SALVAGE_RARE",		0.8},			--1,100,000 ~ 2,400,000,	Dropweight 1		(14%)
}

--Boosts sale value for Derelict Freighter reward items in case you are unable to trade them to a Guild Representative for some reason, such as the vanilla bug causing the quest for turning them in to disappear
DerelictFreighterRedeemables =
{
	--Crew Manifest					Min Value	Max Value
	{"ITEMGEN_FREI_CREW_SUB",		480000,		540000},			--500,	1000	
	--Captain's Log
	{"ITEMGEN_FREI_CAPT_SUB",		720000,		810000},			--500,	1000	
}

UsableDerelictRedeemables = true					--false		Set to true to be able to use Crew Manifests / Captain's Logs to restart the mission required for handing them in to Guild Reps / Scrap Dealers (does not consume the item to use it)

--These multipliers are applied to the value of all cooked foods of a certain type.
	--Note, these multipliers are applied multiplicatively on top of any multipliers in the ProductSaleChanges section above
CookedFoodGroupSaleChanges =
{
	{
		{--Multiplier
			2.1					--	Foods cooked with Extra Fluffy Batter
		},
		{--List of IDs
			"FOOD_R_MERMIX", "FOOD_MC_APPLE", "FOOD_MC_BLOB", "FOOD_MC_CACTUS", "FOOD_MC_CARM", "FOOD_MC_CHOC", "FOOD_MC_CREAM", "FOOD_MC_CUST", "FOOD_MC_HONEY", "FOOD_MC_JAM", "FOOD_MC_JGLITCH", "FOOD_MC_JHOT", "FOOD_MC_PCAT", "FOOD_MC_BUGJAM",
		}
	},
	{
		{
			1.27				--	Foods cooked with Cake Batter
		},
		{
			"FOOD_R_CAKEMIX", "FOOD_CK_APPLE", "FOOD_CK_BLOBBUT", "FOOD_CK_CACTUS", "FOOD_CK_CARM", "FOOD_CK_CHOC", "FOOD_CK_CREAM", "FOOD_CK_CUST", "FOOD_CK_FCUST", "FOOD_CK_HONEY", "FOOD_CK_JAM", "FOOD_CK_JGLITCH", "FOOD_CK_JHOT", "FOOD_CK_MCUST", "FOOD_CK_SCUST", "FOOD_CK_BUGJAM", 
		}
	},
	{
		{
			1.25					--	Foods cooked with Thick, Sweet Batter
		},
		{
			"FOOD_R_BCAKEMIX", "FOOD_CB_APPLE", "FOOD_CB_CACTUS", "FOOD_CB_CARM", "FOOD_CB_CREAM", "FOOD_CB_CUST", "FOOD_CB_FCUST", "FOOD_CB_HONEY", "FOOD_CB_JAM", "FOOD_CB_JGLITCH", "FOOD_CB_JHOT", "FOOD_CB_SCUST", "FOOD_CB_BUGJAM",
		}
	},
	{
		{
			1.25					--	Foods cooked with Syrupy Batter
		},
		{
			"FOOD_R_PCAKEMIX", "FOOD_CP_APPLE", "FOOD_CP_BUGJAM", "FOOD_CP_CACTUS", "FOOD_CP_CARM", "FOOD_CP_CHOC", "FOOD_CP_CREAM", "FOOD_CP_CUST", "FOOD_CP_FCUST", "FOOD_CP_HONEY", "FOOD_CP_JAM", "FOOD_CP_JGLITCH", "FOOD_CP_JHOT", "FOOD_CP_SCUST", "FOOD_CK_PCATBUT",
		}
	},
	{
		{
			1.15				--	Foods cooked with Proto Batter
		},
		{
			"FOOD_R_GCAKEMIX", "FOOD_CG_APPLE", "FOOD_CG_CACTUS", "FOOD_CG_CARM", "FOOD_CG_CHOC", "FOOD_CG_CREAM", "FOOD_CG_CUST", "FOOD_CG_JAM", "FOOD_CG_SCUST", "FOOD_CG_BUGJAM", "FOOD_CG_PCAT",
		}
	},
	{
		{
			1.23				--	Ice Creams (often cooked with Viscous / Very Thick Custard)
		},
		{
			"FOOD_ICE", "FOOD_ICE_APPLE", "FOOD_ICE_BONE", "FOOD_ICE_CARM", "FOOD_ICE_CHOC", "FOOD_ICE_FIEND", "FOOD_ICE_FISH", "FOOD_ICE_FRUIT", "FOOD_ICE_GLITCH", "FOOD_ICE_GRAH", "FOOD_ICE_HONEY", "FOOD_ICE_HOT", "FOOD_ICE_STAR", "FOOD_ICE_BUG"
		}
	},
	{
		{
			1.15				--	Foods cooked with Lumpen Doughnut (and Proto-Beignet)
		},
		{
			"FOOD_R_DONUT", "FOOD_R_GONUT", "FOOD_DNUT_AJAM", "FOOD_DNUT_BLOB", "FOOD_DNUT_CARM", "FOOD_DNUT_CHOC", "FOOD_DNUT_CJAM", "FOOD_DNUT_CUST", "FOOD_DNUT_FCUST", "FOOD_DNUT_HON", "FOOD_DNUT_HONB", "FOOD_DNUT_JAM", "FOOD_DNUT_MCUST", "FOOD_DNUT_MEAT", "FOOD_DNUT_SCUST", "FOOD_DNUT_PCAT",
		}
	},
	{
		{
			0.8					--	Foods cooked with Pie Case
		},
		{
			"FOOD_R_PIECASE", "FOOD_PIE_BALL", "FOOD_PIE_BEET", "FOOD_PIE_BERRY", "FOOD_PIE_BONE", "FOOD_PIE_CACTUS", "FOOD_PIE_CARM", "FOOD_PIE_CAT", "FOOD_PIE_CHEESE", "FOOD_PIE_CHOC", "FOOD_PIE_CRAB", "FOOD_PIE_CRABJ", "FOOD_PIE_CREAM", "FOOD_PIE_CUST", "FOOD_PIE_DIG", "FOOD_PIE_DRILL", "FOOD_PIE_FIEND", "FOOD_PIE_FISH", "FOOD_PIE_GEK", "FOOD_PIE_GLOW", "FOOD_PIE_GREASE", "FOOD_PIE_HONEY", "FOOD_PIE_JAM", "FOOD_PIE_MCUST", "FOOD_PIE_MEAT", "FOOD_PIE_MOLE", "FOOD_PIE_MUSH", "FOOD_PIE_ORGAN", "FOOD_PIE_ROOTS", "FOOD_PIE_SCUST", "FOOD_PIE_SMEAT", "FOOD_PIE_VCHEE", "FOOD_PIE_VEG", "FOOD_PIE_WEIRD", "FOOD_PIE_BMEAT", "FOOD_PIE_BUGJAM", "FOOD_F_PIE", 
		}
	},
	{
		{
			0.55				--	Foods cooked with Sugar Dough (Biscuits)
		},
		{
			"FOOD_B_APPLE", "FOOD_B_BURN", "FOOD_B_CACTUS", "FOOD_B_CARAMEL", "FOOD_B_CAT", "FOOD_B_CHEESE", "FOOD_B_CHOCO", "FOOD_B_CREAM", "FOOD_B_FIEND", "FOOD_B_FISH", "FOOD_B_FLOWER", "FOOD_B_HERB", "FOOD_B_HONEY", "FOOD_B_HOT", "FOOD_B_JAM", "FOOD_B_MEAT", "FOOD_B_MILK", "FOOD_B_MUSHROOM", "FOOD_B_PLAIN", "FOOD_B_SALT", "FOOD_B_VEG", "FOOD_B_WEIRD", "FOOD_B_WORM", "FOOD_B_BUG", "FOOD_B_FISH", 
		}
	},
	{
		{
			0.9				--	Foods cooked with Wailing Batter (Larval Cores)
		},
		{
			"FOOD_R_MCAKEMIX", "FOOD_CM_APPLE", "FOOD_CM_BLOBBUT", "FOOD_CM_CACTUS", "FOOD_CM_CARM", "FOOD_CM_CHOC", "FOOD_CM_CREAM", "FOOD_CM_HONEY", "FOOD_CM_JAM", "FOOD_CM_JGLITCH", "FOOD_CM_JHOT", "FOOD_CM_BUGJAM", "FOOD_CM_PCATBUT",
		}
	},
	{
		{
			0.92			--	Foods cooked with Writhing, Roiling Batter (Larval Cores)
		},
		{
			"FOOD_R_MMERMIX", "FOOD_MM_APPLE", "FOOD_MM_BLOB", "FOOD_MM_CACTUS", "FOOD_MM_CARM", "FOOD_MM_CHOC", "FOOD_MM_CREAM", "FOOD_MM_CUST", "FOOD_MM_HONEY", "FOOD_MM_JAM", "FOOD_MM_JGLITCH", "FOOD_MM_JHOT", "FOOD_MM_PCAT", "FOOD_MM_BUGJAM",
		}
	},
}

RawFishSaleChanges =
{	--Base Values by Rarity
	{--Common (C)	Rare (B)	Epic (A)	Legendary (S)
		5000,		25000,		130000,		600000				--1000,		3000,		10000,		50000
	},--Size Multipliers
	{--Small		Medium		Large		Extra Large (Colossal)
		1,			2,			3,			4					--Multipliers to apply to the value based on size. Vanilla varies by rarity, but is roughly: 1,	2,	3,	4/5
	}
}

FishRarities =
{
	"COM", "RARE", "EPIC", "LEG", 
}

FishSizes =
{
	"S", "M", "L", "XL"
}

--Gives bonus multipliers to the unit value of fish based on being diurnal, nocturnal, or storm-only instead of the 138 normal "active 24 hours in all weather" fish (There are 182 fish total)
WeatherFishMults =
{
	{
		{1.15},		--Diurnal fish bonus multiplier			(There are 13 diurnal fish)
		{	--4 common, 6 rare, 3 epic, 0 legendary
			"F_TOX_RARE_S1", "F_TOX_EPIC_S1", "F_RAD_RARE_S2", "F_RAD_RARE_L1", "F_HOT_COM_S2", "F_HOT_RARE_M2", "F_COLD_COM_M2", "F_LUSH_COM_S2", "F_LUSH_COM_M2", "F_LUSH_RARE_XL", "F_LUSH_EPIC_L1", "F_DUST_EPIC_S1", "F_ODD_RARE_XL", 
		}
	},
	{
		{1.15},		--Nocturnal fish bonus multiplier		(There are 19 nocturnal fish)
		{	--9 common, 3 rare, 3 epic, 4 legendary
			"F_ALL_RARE_L1", "F_ALL_EPIC_M1", "F_TOX_COM_M2", "F_TOX_LEG_M1", "F_RAD_COM_M2", "F_RAD_COM_L1", "F_RAD_LEG_M1", "F_HOT_COM_S1", "F_HOT_RARE_S1", "F_HOT_LEG_L1", "F_COLD_COM_M1", "F_COLD_LEG_M1", "F_LUSH_COM_S1", "F_LUSH_COM_M1", "F_DUST_COM_L1", "F_DUST_EPIC_M1", "F_ODD_COM_S3", "F_ODD_RARE_M2", "F_ODD_EPIC_XL", 
		}
	},
	{
		{1.3},		--Storm-only fish bonus multiplier		(There are 12 storm-only fish)
		{	--5 common, 5 rare, 2 epic, 0 legendary
			"F_ALL_EPIC_XL", "F_TOX_RARE_M1", "F_RAD_COM_M1", "F_RAD_RARE_XL", "F_HOT_COM_L1", "F_HOT_RARE_M1", "F_COLD_RARE_M2", "F_COLD_EPIC_M1", "F_LUSH_RARE_M1", "F_DUST_COM_S3", "F_ODD_COM_M2", "F_ODD_COM_XL", 
		}
	},
}

TradeMult = 					0.4					--These Trade items have a default StackMultiplier of 5, resulting in a total default stacksize of 25
IllTradeMult = 					0.2					--These Illegal Trade items also have a default StackMultiplier of 5, but as of NMS v3.88 are only sold in batches of 2~8 or so at Outlaw stations
--Multipliers to apply to the item's Product Stack multiplier (vanilla total stack size, not multiplier, is listed in the -- comments below), and to their BuyBaseMarkup (how much extra you always have to pay about base value)
ProductStackChanges =
{					--			StackMultMult		BuyBaseMarkupMult
	{"NEWPROD12_NAME",			2,					1},				--5		Sac Venom
	{"NEWPROD13_NAME",			2,					1},				--5		Gravitino Ball
	{"NEWPROD14_NAME",			4,					1},				--5		Albumen Pearl
	{"NEWPROD11_NAME",			3,					1},				--5		Vortex Cube
	{"UI_CLAMPEARL_NAME",		1,					1},				--15	Living Pearl
	{"UI_VENTGEM_NAME",			4,					1},				--5		Crystal Sulphide
	{"UI_EYEBALL_NAME",			1,					1},				--5		Hypnotic Eye
	{"UI_DRONE_SHARD_NAME",		3,					1},				--5		Radiant SHard

	{"UI_TRADE_ITEM_ALLOY_1_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ALLOY_2_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ALLOY_3_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ALLOY_4_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ALLOY_5_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMMOD_1_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMMOD_2_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMMOD_3_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMMOD_4_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMMOD_5_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMP_1_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMP_2_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMP_3_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMP_4_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_COMP_5_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ENERGY_1_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ENERGY_2_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ENERGY_3_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ENERGY_4_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_ENERGY_5_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_EXOTICS_1_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_EXOTICS_2_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_EXOTICS_3_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_EXOTICS_4_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_EXOTICS_5_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_MINERALS_1_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_MINERALS_2_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_MINERALS_3_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_MINERALS_4_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_MINERALS_5_NAME",	TradeMult,	0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_TECH_1_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_TECH_2_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_TECH_3_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_TECH_4_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_TRADE_ITEM_TECH_5_NAME",	TradeMult,		0.5},			--25,	0.1	Trade item
	{"UI_ILLEGAL_PROD1_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD2_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD3_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD4_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD5_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD6_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD7_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
	{"UI_ILLEGAL_PROD8_NAME",	IllTradeMult,		0.5},			--25,	0.1	Illegal Trade item
}

--Adjusts the amount of components required for certain objects
AdjustItems =
{		--Tech ID				Item ID			# of Items
	{	--Battery 				Mag. Ferrite
		"U_BATTERY_S",			"LAND3",			80,			--60
	},
	{	--Biological Room		Silver
		"FRE_ROOM_BIO",			"ASTEROID1",		60,			--40
	},
	{	--Biological Room		Oxygen
		"FRE_ROOM_BIO",			"OXYGEN",			60,			--30
	},
	{	--Atlantideum Chamber	Radiant Shard
		"STAFF_PART_B",			"DRONE_SHARD",		8,			--1
	},
	{	--Atlantideum Chamber	Wiring Loom
		"STAFF_PART_B",			"TECH_COMP",		4,			--1
	},
	{	--Starship Launch Fuel 	Di-Hydrogen
		"LAUNCHFUEL",			"LAUNCHSUB",		60,			--40
	},
	{	--Starship Launch Fuel 	Metal Plating
		"LAUNCHFUEL",			"CASING",			2,			--1
	},
	{	--Warp Hypercore		Antimatter
		"HYPERFUEL2",			"ANTIMATTER",		2,			--1
	},
	{	--Warp Hypercore		Storm Crystal
		"HYPERFUEL2",			"STORM_CRYSTAL",	2,			--1
	},
	{	--Automated Trap 		Metal Plating
		"BUILDSEAHARVEST",		"CASING",			6,			--3
	},
	{	--Elixir of Glass 		Shattered Qualia
		"SPOOK_JUICE",			"SQUIDFRAG",		2,			--10
	},
	{	--Elixir of Blood #4	Shattered Qualia
		"MESSAGE_JUICE4",		"SQUIDFRAG",		5,			--25
	},
}
--Adds various items as new components for certain objects
AddItems =
{		--Tech ID				Item ID			# of Items	Item Type
	{	--Crate Fabricator
		"CRATELRARE",			"ATLAS_SEED_2",		1,		"Product",
	},
	{	--Barrel Fabricator
		"CRATELCYLINDER",		"ATLAS_SEED_4",		1,		"Product",
	},
	{	--Galactic Trade Terminal 
		"BUILDTERMINAL",		"RED2",				25,		"Substance",
	},
	{	--Battery 				Ionised Cobalt
		"U_BATTERY_S",			"CAVE2",			30,		"Substance",
	},
	{	--Biological Room		Condensed Carbon
		"FRE_ROOM_BIO",			"FUEL2",			30,		"Substance",
	},
	{	--Concentric Transducer	Recycled Circuitry
		"STAFF_PART_C",			"SALVAGE_TECH7",	3,		"Product",
	},
	{	--Mealworms		(Makes 20 items per craft)
		"FISHBAIT_1",			"CLAMPEARL",		1,		"Product",
	},
}
--Replaces an existing component for certain objects with various items instead
ReplaceItems =
{		--Tech ID				New Item ID		# of Items	New Item Type	Replaced Item
	{	--Roamer Geobay 
		"GARAGE_M",				"RED2",				50,		"Substance",	"POWERCELL",
	},
	{	--Colossus Geobay 
		"GARAGE_L",				"RED2",				75,		"Substance",	"POWERCELL",
	},
	{	--Nomad Geobay 
		"GARAGE_S",				"GREEN2",			50,		"Substance",	"POWERCELL",
	},
	{	--Pilgrim Geobay 
		"GARAGE_B",				"GREEN2",			75,		"Substance",	"JELLY",
	},
	{	--Minotaur Geobay 
		"GARAGE_MECH",			"GREEN2",			75,		"Substance",	"POWERCELL",
	},
	{	--Nautilon Chamber 
		"GARAGE_SUB",			"GREEN2",			75,		"Substance",	"WATER1",
	},
	{	--Antimatter Reactor
		"BUILDANTIMATTER",		"ATLAS_SEED_5",		1,		"Product",		"CASING",
	},
	{	--Nutrient Processor 
		"COOKER",				"RED2",				25,		"Substance",	"CARBON_SEAL",
	},
	{	--Livestock Unit 
		"CREATURE_FARM",		"GREEN2",			150,	"Substance",	"CASING",
	},
	{	--Automated Feeder 
		"CREATURE_FEED",		"GREEN2",			150,	"Substance",	"CASING",
	},
	{	--Exocraft Summoning Station 
		"SUMMON_GARAGE",		"GREEN2",			60,		"Substance",	"ROCKETSUB",
	},
	{	--Scanner Room 
		"FRE_ROOM_SCAN",		"ATLAS_SEED_6",		1,		"Product",		"ASTEROID2",
	},
	{	--Orbital Exocraft Materialiser 
		"FRE_ROOM_VEHICL",		"BLUE2",			50,		"Substance",	"CAVE2",
	},
	{	--Orbital Exocraft Materialiser (Deprecated)
		"GARAGE_FREIGHT",		"BLUE2",			50,		"Substance",	"CAVE2",
	},
	{	--Fibreglass Grip
		"STAFF_PART_A",			"FARMPROD8",		4,		"Product",		"FARMPROD3",
	},
	{	--Fibreglass Grip
		"STAFF_PART_A",			"SALVAGE_TECH7",	3,		"Product",		"LAND2",
	},
	{	--Atlantideum Chamber
		"STAFF_PART_B",			"SALVAGE_TECH7",	3,		"Product",		"MICROCHIP",
	},
	{	--Automated Trap
		"BUILDSEAHARVEST",		"GREEN2",			100,	"Substance",	"POWERCELL",
	},
	{	--Automated Trap
		"BUILDSEAHARVEST",		"CLAMPEARL",		8,		"Product",		"WATER1",
	},
	{	--Mealworms		(Makes 20 items per craft)
		"FISHBAIT_1",			"BAIT_BASIC",		20,		"Product",		"FUEL2",
	},
	{	--Spicy Chum	(Makes 20 items per craft)
		"FISHBAIT_2",			"CREATURE1",		200,	"Substance",	"CREATURE1",
	},
	{	--Spicy Chum	(Makes 20 items per craft)
		"FISHBAIT_2",			"FOOD_J_HOT",		12,		"Product",		"HOT1",
	},
	{	--Spicy Chum	(Makes 20 items per craft)
		"FISHBAIT_2",			"FOOD_F_EGGS",		4,		"Product",		"LAUNCHSUB",
	},
	{	--Bionic Lure	(Makes 20 items per craft)
		"FISHBAIT_3",			"BIO",				4,		"Product",		"BIO",
	},
	{	--Bionic Lure	(Makes 20 items per craft)
		"FISHBAIT_3",			"FOOD_F_MIX",		7,		"Product",		"POWERCELL",
	},
	{	--Bionic Lure	(Makes 20 items per craft)
		"FISHBAIT_3",			"FARMPROD9",		2,		"Product",		"FARMPROD2",
	},
	{	--Dangling Orb	(Makes 20 items per craft)
		"FISHBAIT_DAY",			"MIRROR",			2,		"Product",		"MIRROR",
	},
	{	--Dangling Orb	(Makes 20 items per craft)
		"FISHBAIT_DAY",			"CASING",			4,		"Product",		"CASING",
	},
	{	--Dangling Orb	(Makes 20 items per craft)
		"FISHBAIT_DAY",			"FOOD_F_EGGS",		4,		"Product",		"CATALYST2",
	},
	{	--Shadow Lure	(Makes 20 items per craft)
		"FISHBAIT_NIGHT",		"ANTIMATTER",		2,		"Product",		"ANTIMATTER",
	},
	{	--Shadow Lure	(Makes 20 items per craft)
		"FISHBAIT_NIGHT",		"CASING",			4,		"Product",		"CASING",
	},
	{	--Shadow Lure	(Makes 20 items per craft)
		"FISHBAIT_NIGHT",		"FOOD_F_EGGS",		4,		"Product",		"WATERPLANT",
	},
	{	--Magpulse Lure	(Makes 20 items per craft)
		"FISHBAIT_STORM",		"MAGNET",			2,		"Product",		"MAGNET",
	},
	{	--Magpulse Lure	(Makes 20 items per craft)
		"FISHBAIT_STORM",		"CASING",			4,		"Product",		"CASING",
	},
	{	--Magpulse Lure	(Makes 20 items per craft)
		"FISHBAIT_STORM",		"FOOD_F_EGGS",		4,		"Product",		"ROCKETSUB",
	},
}

--Changes ingredients for crafting some Atlas Seeds
DarkMatterMordite				=	50				--Replaces 5 Magnetised Ferrite		(Mordite)
DawnsEndCytoPhosphate			=	50				--Replaces 25 Chromatic Metal		(Cyto-Phosphate)

--Number of Creature Pellets created from the crafting recipe	(Requires 60 Carbon)
PelletsPerCraft					=	3				--5

--NipNip Plant construction recipe
NipNipBudsNeeded				=	3				--1
NipNipPlatinumNeeded			=	100				--0
--Gravitino Host plant construction recipe
GravHostSilverNeeded			=	60				--120	Silver
GravHostCadmiumNeeded			=	60				--0		(replaces 25 Chromatic Metal)
GravHostGravitinoBallsNeeded	=	2				--0		(replaces 25 Magnetised Ferrite)

--Biofuel Reactor construction recipe
BioGenPlatesNeeded				=	4				--1		Metal Plates
BioGenOxygenNeeded				=	90				--25	Oxygen
--Solar Panel construction recipe
SolarPlatesNeeded				=	4				--1		Metal Plates
SolarGoldNeeded					=	60				--30	Gold
SolarGlassNeeded				=	4				--0		(replaces 50 Chromatic Metal)
--Electromagnetic Generator construction recipe
EGenPlatesNeeded				=	6				--2
EGenMagFerriteNeeded			=	180				--60
EGenChromMetalNeeded			=	225				--75
--Hydroponics Tray construction recipe
PlanterPureFerriteNeeded		=	10				--30
PlanterPlatesNeeded				=	1				--2
PlanterCarbonNeeded				=	10				--20
--Large Hydroponics Tray construction recipe
LargePlanterPureFerriteNeeded	=	60				--60
LargePlanterPlatesNeeded		=	6				--4
LargePlanterCarbonNeeded		=	60				--50
--Bio-Dome construction recipe
BioDomeMagFerriteNeeded			=	480				--25
BioDomeGlassNeeded				=	16				--5
BioDomeOxygenNeeded				=	320				--0

--Antimatter Reactor construction recipe
AntiMatStormNeeded				=	10				--5		Storm Crystal
AntiMatAntiNeeded				=	10				--2		Antimatter
--AntiMatFluidNeeded				=	10				--0		(Experimental Power Fluid, replaces 2 Metal Plates)

--Crate Fabricator construction recipe
CraFabIonNeeded					=	16				--10	Ionised Cobalt
CraFabAntiNeeded				=	3				--1		Antimatter
--CraFabShadeNeeded				=	1				--0		Englobed Shade	(From Atlas Path)

--Barrel Fabricator construction recipe
BarFabIonNeeded					=	16				--10	Ionised Cobalt
BarFabAntiNeeded				=	12				--1		Antimatter
--BarFabDarkNeeded				=	1				--0		Dark Matter	(From Atlas Path)

--New recipe for installing Nutrition Room in freighter
CookRoomProcessors = 1								--how many Nutrient Processors required		(replaces 15 Oxygen in vanilla)
CookRoomSilver = 60									--60 Silver
CookRoomPureFerrite = 20							--40 Pure Ferrite
--New recipe for installing Refiner Room in freighter
RefinerRoomMicrochips = 8							--how many Microprocessors required		(replaces 2 Di-Hydrogen Jelly in vanilla)
RefinerRoomSilver = 60								--60 Silver
RefinerRoomGold = 45								--45 Gold
--New recipe for installing Cultivation Chamber in freighter
CultivationChamberSilver = 80						--50 Silver
CultivationChamberPlates = 6						--how many Metal Plates required	(replaces 25 Oxygen in vanilla)
CultivationChamberFaecium = 120						--10 Faecium
--New recipe for installing Double Cultivation Chamber in freighter
DoubleCultivationChamberSilver = 240				--60 Silver
DoubleCultivationChamberPlates = 18					--how many Metal Plates required	(replaces 35 Oxygen in vanilla)
DoubleCultivationChamberFaecium = 360				--25 Faecium
--New recipe for installing Stellar Extractor in freighter
StellarExtractorSilver = 120						--60 Silver
StellarExtractorGold = 90							--45 Gold
StellarExtractorGravBall = 12						--how many Gravitino Balls required	(replaces 40 Mag. Ferrite in vanilla)
--New recipe for installing Scanner Room in freighter
ScannerRoomSilver = 60								--60 Silver
--ScannerRoomEmeril = 30								--how much Emeril is required		(replaces 30 Gold in vanilla)
ScannerRoomQuantProc = 1							--how many Quantum Processors required	(replaces 1 Ion Battery in vanilla)
--New recipe for installing Orbital Exocraft Materializer in freighter
OrbitalExoGold = 150								--150 Gold
--OrbitalExoEmeril = 50								--how much Emeril is required		(replaces 50 Ionized Cobalt in vanilla)
OrbitalExoPortReact = 1								--how many Portable Reactors required	(replaces 3 Warp Cell in vanilla)

--This part adjusts the buying price only (not the selling price) for certain substances/consumables/components.

--Changes the price of Star Charts, paid in Navigation Data at Space Stations
RegChartCost =						2				--1		For "Secure Site of Interest", "Distress Signal", "Inhabited Outpost", and "Ancient Artifact Site" charts
TreasureChartCost =					5				--3		For "Artifact Chart" charts
SettlementChartCost =				8				--5		For "Planetary Settlement" charts
ExosuitUpgradeChartCost =			42				--3		For "Exosuit Upgrade Chart" charts

--SpaceStationMarkup seems to apply an extra + bonus % on top of BuyMarkupMod for the item, if bought OR SOLD at a trade terminal on a space station (or item vendor on outlaw station). e.g. a value of 0.5 means +50% to the price when BUYING OR SELLING
--BuyBaseMarkup seems to apply the bonus %  to the cost of the item when bought from any source. e.g. a value of 0.2 means +20% to the price when BUYING the item
--BuyMarkupMod seemed to apply the bonus %  to consumable items bought (at least from my base's trade terminal), but didn't affect launcher fuel, which had BuyBaseMarkup of 98 instead of 0.2 for the others
	--But BuyMarkupMod didn't seem to affect components anywhere. Haven't figure out exactly what this one does...
	--Currently disabling changes to BuyMarkupMod until I figure out exactly what it does
	
--Also, something about changing these values seemed to screw up the demand for the changed items on all planets at least (not really in space station), substances (which I gave BuyBaseMarkup of 5 and Stationmark of 10) going to -90% demand, consumables and components (which I gave BuyMarkupMod of 2 and Stationmark of 0.5) going to -33% demand
	--Check something about how systems calculate demand? maybe in TRADINGCOSTTABLE.MBIN ?
	--Might be ok as long as I have market stability also running?
	--Test out buying almost/all of a resource and see if the demand changes
	
--Substances
--Substances are generally all of the "elements" / "chemicals", as well as the farmable plants
SubstanceSpaceStationMarkup = 		0.3				--0
SubstanceBuyBaseMarkup = 			14				--0.25			Most Substances
ExpensiveSubBuyBaseMarkup =			29				--3.5 or 4.5	(as of 4.08, now Oxygen, Di-Hydrogen, Sodium, Sodium Nitrate = 3.5, & Uranium = 4.5 instead)
	--SubstanceBuyMarkupMod = 			0				--0			(as of 4.08, now Oxygen, Di-Hydrogen, Sodium, Sodium Nitrate, & Uranium = 1 instead)

--Consumables
--Consumables are Life Support Gel, Ion Battery, Starship Launch Fuel, Di-Hydrogen Jelly, Warp Fuel, Antimatter, etc.
CheapConsumableSpaceStationMarkup = 1				--0
CheapConsumableBuyBaseMarkup = 		99				--0.2
	--CheapConsumableBuyMarkupMod = 	0				--0

ConsumableSpaceStationMarkup = 		1				--0 	except ANTIMATTER is 0.5
ConsumableBuyBaseMarkup = 			4				--0.2	except LAUNCHFUEL & SUBFUEL is 98, ANTIMATTER is 5, and AM_HOUSING is 2
	--ConsumableBuyMarkupMod = 			0				--0 	except ANTIMATTER and all 3 types of FRIGATE_FUEL is 1.5

LaunchAndSubFuelBuyBaseMarkup	=	199				--98
AntimatterBuyBaseMarkup	=			9				--5
	--AntimatterAndFrigateFuelBuyMarkupMod =1.5			--1.5

NavDataSpaceStationMarkup =			0.2				--0.5		Navigation Data
NavDataBuyBaseMarkup =				9				--0.2
DropPodDataSpaceStationMarkup =		1				--0.5		Exosuit Upgrade Charts
DropPodDataBuyBaseMarkup =			5				--0.2

--Components
--Components are generally the items used to craft/repair technology such as Metal Plating, Microprocessor, Hermetic Seal, Hydraulic Wiring, etc.
CheapComponentSpaceStationMarkup = 	1				--0 	
CheapComponentBuyBaseMarkup = 		4				--0.2
	--CheapComponentBuyMarkupMod = 		0				--0

ComponentSpaceStationMarkup = 		1				--0
ComponentBuyBaseMarkup = 			4				--1.2
	--ComponentBuyMarkupMod = 			0				--0

MicrochipBuyBaseMarkup =			8.5				--8.5

LoomSpaceStationMarkup = 			1				--0
LoomBuyBaseMarkup = 				0.2				--0.2
	--LoomBuyMarkupMod = 				2				--2

CClassReactorBaseMarkup =			0.5				--0			(BaseValue 100 in PTSd)
BClassReactorBaseMarkup =			15				--0			(BaseValue 500 in PTSd)
AClassReactorBaseMarkup =			21.15			--0			(BaseValue 1084 in PTSd)
SClassReactorBaseMarkup =			27				--0			(BaseValue 2000 in PTSd)

--Miscellaneous other items
LarvalCoreSpaceStationMarkup =		0				--0			(BaseValue 65000)
LarvalCoreBaseMarkup =				1.4				--0.2
HadalCoreSpaceStationMarkup =		0				--0			(BaseValue 97500)
HadalCoreBaseMarkup =				1.4				--0.2
NipNipSpaceStationMarkup =			0				--0			(BaseValue 17776)
NipNipBaseMarkup =					16				--3		(8)
SalvagedFrigateModuleBaseMarkup =	1.5				--0.2		(BaseValeu 95000)
CargoBulkheadBaseMarkup =			3				--0.2		(BaseValeu 105000)
BoundaryMapBaseMarkup =				15				--0			(BaseValeu 3200)
ArtifactChartBaseMarkup =			19				--0			(BaseValeu 3200)
AnomalyDetectorBaseMarkup =			19				--0.2		(BaseValeu 3200)
--This items normally from scrapping starships, and added to shops in PTSd to be used for repairing Sentinel tech
SalvagedTechSpaceStationMarkup =	0.05			--0
SalvagedTechBaseMarkup =			0.1				--0.1
	--The increased BaseMarkup for these items balanced out with increased amounts of Tainted Metal rewarded in Rewards Remixer.lua
SusGoodsSpaceStationMarkup =		300				--300		(BaseValue 150)		Suspicious Packet (Goods)
SusGoodsBaseMarkup =				2.6				--0.2
SusTechSpaceStationMarkup =			715				--300		(BaseValue 200)		Suspicious Packet (Tech)
SusTechBaseMarkup =					4.4				--0.2
SusWeapSpaceStationMarkup =			715				--300		(BaseValue 350)		Suspicious Packet (Arms)
SusWeapBaseMarkup =					2.46			--0.2
RepairKitSpaceStationMarkup =		377				--154		(BaseValue 450)		Repair Kit
RepairKitBaseMarkup =				0.92			--0.2
ScrapDealerDecorativeBaseMarkup =	2				--0 for all price modifiers		Decorative items sold by scrap dealer

SubstanceStackChanges =
{					--			StackMultMult		BuyBaseMarkupMult
	{"UI_AF_METAL_NAME",		3,					1},				--1,	0.25		Tainted Metal		(increasing stack size to balance out increasing the amount rewarded)
}

SuspiciousBuyMarkupMod = 0
ProductBuyMarkupModChanges = 
{	--
	{"UI_SUSPECT_GOODS_NAME",		SuspiciousBuyMarkupMod},							--0
	{"UI_SUSPECT_TECH_NAME",		SuspiciousBuyMarkupMod},							--0
	{"UI_SUSPECT_WEAP_NAME",		SuspiciousBuyMarkupMod},							--0
	{"UI_REPAIR_KIT_NAME",			SuspiciousBuyMarkupMod},							--0
	{"UI_FIENDCORE_NAME",			SuspiciousBuyMarkupMod},							--0
	{"UI_FISHCORE_NAME",			SuspiciousBuyMarkupMod},							--0.2
	{"PROD_NIP_NAME",				SuspiciousBuyMarkupMod},							--0
}

--Nothing below this should need to be changed. All values can be edited in the sections above this line

SubstanceCostChanges =
{
	{"FUEL1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Carbon		BaseValue = 12
	{"FUEL2",			SubstanceSpaceStationMarkup,	ExpensiveSubBuyBaseMarkup},			--Condensed Carbon	BaseValue = 24
	{"OXYGEN",			SubstanceSpaceStationMarkup,	ExpensiveSubBuyBaseMarkup},			--Oxygen		BaseValue = 34
	{"LAUNCHSUB",		SubstanceSpaceStationMarkup,	ExpensiveSubBuyBaseMarkup},			--Di-Hydrogen,	BaseValue = 34
	{"LAUNCHSUB2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"ROCKETSUB",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Tritium,		BaseValue = 6
	{"LAND1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Ferrite Dust	BaseValue = 14
	{"LAND2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Pure Ferrite	BaseValue = 28
	{"LAND3",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Mag. Ferrite	BaseValue = 82
	{"SAND1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"CATALYST1",		SubstanceSpaceStationMarkup,	ExpensiveSubBuyBaseMarkup},
	{"CATALYST2",		SubstanceSpaceStationMarkup,	ExpensiveSubBuyBaseMarkup},
	{"CAVE1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Cobalt		BaseValue = 76	(198 in 3.99)
	{"CAVE2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Ion. Cobalt	BaseValue = 162 (401 in 3.99)
	{"WATER1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Salt			BaseValue = 101 (299 in 3.99)
	{"WATER2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Chlorine		BaseValue = 205 (602 in 3.99)
	{"WATERPLANT",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"YELLOW2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Copper		BaseValue = 41	(121 in 3.99)
	{"RED2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Cadmium		BaseValue = 83	(234 in 3.99)
	{"GREEN2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Emeril		BaseValue = 114	(348 in 3.99)
	{"BLUE2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Indium		BaseValue = 132	(464 in 3.99)
	{"STELLAR2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Chromatic Metal	BaseValue = 88	(245 in 3.99)
	{"LUSH1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"DUSTY1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"TOXIC1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"RADIO1",			SubstanceSpaceStationMarkup,	ExpensiveSubBuyBaseMarkup},			--Uranium,		BaseValue = 62
	{"COLD1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"HOT1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"LAVA1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"CREATURE1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"ROBOT1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"ASTEROID1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Silver			BaseValue = 186
	{"ASTEROID2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Gold				BaseValue = 353
	{"ASTEROID3",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Platinum			BaseValue = 505
	{"GAS1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"GAS2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"GAS3",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"EX_YELLOW",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Activated Copper		BaseValue = 75
	{"EX_RED",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"EX_GREEN",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"EX_BLUE",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--BaseValue = 949
	{"PLANT_TOXIC",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"PLANT_SNOW",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Frost Crystal		BaseValue = 12
	{"PLANT_RADIO",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Gamma Weed
	{"PLANT_DUST",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Cactus Flesh		BaseValue = 28
	{"PLANT_HOT",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Solarium			BaseValue = 70
	{"PLANT_LUSH",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"PLANT_CAVE",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"PLANT_WATER",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"PLANT_POOP",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"SPACEGUNK1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"SPACEGUNK2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"SPACEGUNK3",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"SPACEGUNK4",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},
	{"SPACEGUNK5",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup}
	--{"AF_METAL",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},			--Tainted Metal?
	--{"SPECIAL_POOP",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup},		--Hexite?
}

ProductCostChanges =
{	--Cheap Consumables, all are BaseMarkup = 0.2
	{"FUELGEL3_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup},		--Life Support Gel			BaseValue = 200
	{"POWERCELL_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup},		--Ion Battery				BaseValue = 200
	{"FUEL_JELLY_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup},		--Di-Hydrogen Jelly			BaseValue = 200
	{"AMMO_PROD_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup},		--Projectile Ammo			BaseValue = 1
	--Consumables, all are BaseMarkup = 0.2 unless otherwise noted
	{"UI_SHIPCHARGE_NAME",			ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--Starshield Battery		BaseValue = 500
	{"GRENFUEL1_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--Unstable Plasma			BaseValue = 5750
	{"HYPERFUEL1_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--Warp Cell					BaseValue = 46750
	{"HYPERFUEL2_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--Warp Hypercore			BaseValue = 46750
	{"AM_HOUSING_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--Antimatter Housing, 		BaseValue = 6500	BaseMarkup = 2
	{"COMMODITY6_NAME",				ConsumableSpaceStationMarkup,	AntimatterBuyBaseMarkup},				--Antimatter  	BaseValue = 5233	BaseMarkup = 5, SpaceStationMarkup = 0.5, BuyMarkupMod = 1.5,
	{"UI_FREIGHTER_FUEL_1_NAME",	ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--Frigate Fuel 50 tonnes	BaseValue = 20000	BaseMarkup = 0.2, BuyMarkupMod = 1.5, 
	{"UI_FREIGHTER_FUEL_2_NAME",	ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--BaseMarkup = 0.2, BuyMarkupMod = 1.5
	{"UI_FREIGHTER_FUEL_3_NAME",	ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup},				--BaseMarkup = 0.2, BuyMarkupMod = 1.5
	{"UI_NAV_DATA_NAME",			NavDataSpaceStationMarkup,		NavDataBuyBaseMarkup},					--Navigation Data			BaseValue = 1000	BaseMarkup = 0.2, SpaceStationMarkup = 0.5
	{"UI_NAV_DROPPOD_NAME",			DropPodDataSpaceStationMarkup,	DropPodDataBuyBaseMarkup},				--Drop Pod Coordinates		BaseValue = 85000	BaseMarkup = 0.2, SpaceStationMarkup = 0.5
	
	{"LAUNCHFUEL_NAME",				ConsumableSpaceStationMarkup,	LaunchAndSubFuelBuyBaseMarkup},			--BaseMarkup = 98,			BaseValue = 450
	{"UI_SUBFUEL_NAME",				ConsumableSpaceStationMarkup,	LaunchAndSubFuelBuyBaseMarkup},			--BaseMarkup = 98,			BaseValue = 7200
	--Cheap Components, all are BaseMarkup = 0.2
	{"CASING_NAME",					CheapComponentSpaceStationMarkup,	CheapComponentBuyBaseMarkup},		--Metal Plating				BaseValue = 800
	{"NANOTUBES_NAME",				CheapComponentSpaceStationMarkup,	CheapComponentBuyBaseMarkup},		--BaseValue = 500
	{"CARBON_SEAL_NAME",			CheapComponentSpaceStationMarkup,	CheapComponentBuyBaseMarkup},		--BaseValue = 800
	
	--Components, all are BaseMarkup = 1.2 except Microchip
	{"MICROCHIP_NAME",				ComponentSpaceStationMarkup,	MicrochipBuyBaseMarkup},				--BaseValue = 2000		BaseMarkup = 8.5	
	{"UI_COMPUTER_NAME",			ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup},				--BaseValue = 4200
	{"UI_HYDRALIC_NAME",			ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup},				--BaseValue = 3600
	{"UI_MAGNET_NAME",				ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup},				--BaseValue = 6150
	{"UI_MIRROR_NAME",				ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup},				--BaseValue = 6150
	{"UI_BIO_NAME",					ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup},				--BaseValue = 12300
	
	{"UI_TECHMOD_NAME",				LoomSpaceStationMarkup,	LoomBuyBaseMarkup},								--Wiring Loom?	BaseMarkup = 0.2,	BuyMarkupMod = 2,	BaseValue = 25000
	--Starship Reactor Cores
	{"UI_SHIP_CORE_C_NAME",			0,	CClassReactorBaseMarkup},								
	{"UI_SHIP_CORE_B_NAME",			0,	BClassReactorBaseMarkup},								
	{"UI_SHIP_CORE_A_NAME",			0,	AClassReactorBaseMarkup},								
	{"UI_SHIP_CORE_S_NAME",			0,	SClassReactorBaseMarkup},								
	
	--Misc
	{"UI_SUSPECT_GOODS_NAME",		SusGoodsSpaceStationMarkup,	SusGoodsBaseMarkup},						--BaseValue = 150
	{"UI_SUSPECT_TECH_NAME",		SusTechSpaceStationMarkup,	SusTechBaseMarkup},							--BaseValue = 200
	{"UI_SUSPECT_WEAP_NAME",		SusWeapSpaceStationMarkup,	SusWeapBaseMarkup},							--BaseValue = 350
	{"UI_REPAIR_KIT_NAME",			RepairKitSpaceStationMarkup,	RepairKitBaseMarkup},					--BaseValue = 450
	{"UI_FIENDCORE_NAME",			LarvalCoreSpaceStationMarkup,	LarvalCoreBaseMarkup},
	{"UI_FISHCORE_NAME",			HadalCoreSpaceStationMarkup,	HadalCoreBaseMarkup},
	{"PROD_NIP_NAME",				NipNipSpaceStationMarkup,	NipNipBaseMarkup},
	{"UI_FRIG_TOKEN_NAME",			0,	SalvagedFrigateModuleBaseMarkup},
	{"UI_FREIGHT_INV_TOKEN_NAME",	0,	CargoBulkheadBaseMarkup},
	{"UI_STARCHART_HIVE_NAME",		0,	BoundaryMapBaseMarkup},
	{"UI_STARCHART_TREASURE_NAME",	0,	ArtifactChartBaseMarkup},
	{"UI_POI_LOCATOR_NAME",			0,	AnomalyDetectorBaseMarkup},
	
	{"UI_SALVAGE_TECH_6_NAME",		SalvagedTechSpaceStationMarkup,	SalvagedTechBaseMarkup,	0},				--Spool of Nano-Cables	BaseValue = 12000	(x10 in PTSd)
	{"UI_SALVAGE_TECH_7_NAME",		SalvagedTechSpaceStationMarkup,	SalvagedTechBaseMarkup,	0},				--Recycled Circuitry	BaseValue = 520000
	{"UI_SALVAGE_TECH_10_NAME",		SalvagedTechSpaceStationMarkup,	SalvagedTechBaseMarkup,	0},				--Starship AI Valves	BaseValue = 12000000
	
	{"BLD_SPOOKY_PLANT_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_SLIME_MED_NAME",			0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"UI_BANNER_SPOOKY_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"UI_BANNER_SLIMY_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_TOYJELLY_NAME",			0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"UI_SPEC_SPOOKYHEAD_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_DECAL_SKULL_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_DECAL_HORROR_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_DECAL_JELLY_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_DECAL_HAZARD_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_MEDTUBE_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_HEATER_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_LIGHT_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_PLANT_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_LOCKER_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_SHELF_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_CRATE_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_CRATEL_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_CRATEXL_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_CASE_NAME",			0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_FOOTLOCKER_NAME",	0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_BENCH_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_PALLET_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
	{"BLD_ABAND_BARREL_NAME",		0,	ScrapDealerDecorativeBaseMarkup,	0},
}


--[[TradingCostChanges =	--This is attempting to correct for the greatly reduced Demand for items that happens when the buy price is raised
{
	{"FUEL1",	SubstanceBuyBaseMarkup},
	{"FUELUNCOMMON1",	SubstanceBuyBaseMarkup},
	{"FUELRARE1",	SubstanceBuyBaseMarkup},
	{"TRADEABLE1",	SubstanceBuyBaseMarkup},
	{"TRADEABLE2",	SubstanceBuyBaseMarkup},
	{"TRADEABLE3",	SubstanceBuyBaseMarkup},
	{"TRADEABLE4",	SubstanceBuyBaseMarkup},
	{"TRADEABLE5",	SubstanceBuyBaseMarkup},
	{"TRADEABLE6",	SubstanceBuyBaseMarkup},
	{"TRADEABLE7",	SubstanceBuyBaseMarkup},
	{"TRADEABLE8",	SubstanceBuyBaseMarkup},
	{"TRADEABLE9",	SubstanceBuyBaseMarkup},
	{"TRADEABLE10",	SubstanceBuyBaseMarkup},
	{"SUBBLUESYS",	SubstanceBuyBaseMarkup},
	{"SUBREDSYS",	SubstanceBuyBaseMarkup},
	{"SUBGREENSYS",	SubstanceBuyBaseMarkup},
	{"SUBTOXIC",	SubstanceBuyBaseMarkup},
	{"SUBSNOW",	SubstanceBuyBaseMarkup},
	{"SUBRADIOACTIVE",	SubstanceBuyBaseMarkup},
	{"SUBBARREN",	SubstanceBuyBaseMarkup},
	{"SUBSCORCHED",	SubstanceBuyBaseMarkup},
	{"SUBCAVE",	SubstanceBuyBaseMarkup},
	{"SUBWATER",	SubstanceBuyBaseMarkup},
	{"SUBCREATURE",	SubstanceBuyBaseMarkup},
	{"SUBPOOP",	SubstanceBuyBaseMarkup},
	
	{"HYPERFUEL1",	ConsumableBuyBaseMarkup},
	{"PRODFUEL1",	ConsumableBuyBaseMarkup},
	{"PRODFUEL2",	ConsumableBuyBaseMarkup},
	{"PRODFUEL3",	ConsumableBuyBaseMarkup},
	{"GRENFUEL1",	ConsumableBuyBaseMarkup},
	{"SHIELDFUEL1",	ConsumableBuyBaseMarkup},
	{"SHIELDFUEL2",	ConsumableBuyBaseMarkup},
	{"SHIELDFUEL3",	ConsumableBuyBaseMarkup},
	
	{"MPLATE",	CheapComponentBuyBaseMarkup},
	{"CBOARD",	CheapComponentBuyBaseMarkup},
}]]

ChartCostChanges =
{	--ID
	{"STARCHART_A",			RegChartCost},
	{"STARCHART_B",			RegChartCost},
	{"STARCHART_C",			RegChartCost},
	{"STARCHART_D",			RegChartCost},
	{"CHART_TREASURE",		TreasureChartCost},
	{"CHART_SETTLE",		SettlementChartCost},
	{"NAV_DATA_DROP",		ExosuitUpgradeChartCost}
}

function AddedItemCost (ItemCostID, ItemCostAmount, ItemCostType)
    return
[[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]]..ItemCostID..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..ItemCostType..[[" />
          </Property>
          <Property name="Amount" value="]]..ItemCostAmount..[[" />
        </Property>]]
end

function AddConsumableDerelictItem (ItemID)
    return
[[<Property value="GcConsumableItem.xml">
      <Property name="ID" value="]]..ItemID..[[" />
      <Property name="RewardID" value="R_RESTART_LIS" />
      <Property name="TutorialRewardID" value="" />
      <Property name="ButtonLocID" value="&lt;HIGHLIGHT&gt;BROADCAST&lt;&gt;" />
      <Property name="ButtonSubLocID" value="Use in &lt;STELLAR&gt;Space Stations&lt;&gt; to search for &lt;TRADE&gt;buyers&lt;&gt;" />
      <Property name="CloseInventoryWhenUsed" value="True" />
      <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="RewardFailedLocID" value="Exit and re-enter Space Station to refresh buyers list" />
      <Property name="DestroyItemWhenConsumed" value="False" />
      <Property name="AddCommunityTierClassIcon" value="False" />
      <Property name="SuppressResourceMessage" value="False" />
      <Property name="CustomOSD" value="" />
      <Property name="RequiresMissionActive" value="" />
    </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the functions at the bottom of this script
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the ProductSaleChanges at the bottom of this script
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\PROCEDURALPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the ProceduralProductSaleChanges at the bottom of this script
					}
				},--[[
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\TRADINGCOSTTABLE.MBIN"},
				["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the TradingCostChanges at the bottom of this script
					}
				}]]
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_4",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DarkMatterMordite},
								{"ID", "CREATURE1"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_SEED_5",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DawnsEndCytoPhosphate},
								{"ID", "WATERPLANT"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Name", "BAIT_BASIC_NAME"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"CraftAmountMultiplier", PelletsPerCraft}
							}
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "NIPPLANT"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", NipNipBudsNeeded}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","NIPPLANT"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("ASTEROID3", NipNipPlatinumNeeded, "Substance"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GRAVPLANT",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", GravHostSilverNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GRAVPLANT",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", GravHostCadmiumNeeded},
								{"ID", "RED2"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GRAVPLANT",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", GravHostGravitinoBallsNeeded},
								{"ID", "GRAVBALL"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "GRAVPLANT",		"ID", "GRAVBALL"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_BIOGENERATOR",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BioGenPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_BIOGENERATOR",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BioGenOxygenNeeded},
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", SolarPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", SolarGoldNeeded},
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", SolarGlassNeeded},
								{"ID", "FARMPROD3"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S",		"ID", "FARMPROD3"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						--[[{
							["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("FARMPROD3", SolarGlassNeeded, "Product"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_GENERATOR_S",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", EGenPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_GENERATOR_S",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", EGenMagFerriteNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "U_GENERATOR_S",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", EGenChromMetalNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTER",		"ID", "LAND2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", PlanterPureFerriteNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTER",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", PlanterPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTER",		"ID", "FUEL1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", PlanterCarbonNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTERMEGA",		"ID", "LAND2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", LargePlanterPureFerriteNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTERMEGA",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", LargePlanterPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTERMEGA",		"ID", "FUEL1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", LargePlanterCarbonNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "BIOROOM",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BioDomeMagFerriteNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "BIOROOM",		"ID", "FARMPROD3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BioDomeGlassNeeded}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","BIOROOM"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("OXYGEN", BioDomeOxygenNeeded, "Substance"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDANTIMATTER",		"ID", "STORM_CRYSTAL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", AntiMatStormNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDANTIMATTER",		"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", AntiMatAntiNeeded},
							}
						},
						--[[
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDANTIMATTER",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", AntiMatFluidNeeded},
								{"ID", "TRA_ENERGY4"}
								
							}
						},
						]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "CRATELRARE",		"ID", "CAVE2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CraFabIonNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "CRATELRARE",		"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CraFabAntiNeeded}
							}
						},
						--[[
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CRATELRARE"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("ATLAS_SEED_2", CraFabShadeNeeded, "Product"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "CRATELCYLINDER",		"ID", "CAVE2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BarFabIonNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "CRATELCYLINDER",		"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BarFabAntiNeeded}
							}
						},
						--[[
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CRATELCYLINDER"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("ATLAS_SEED_4", BarFabDarkNeeded, "Product"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_COOK",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CookRoomProcessors},
								{"ID", "COOKER"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_COOK",		"ID", "COOKER"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_COOK",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CookRoomSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_COOK",		"ID", "LAND2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CookRoomPureFerrite}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_REFINE",		"ID", "JELLY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", RefinerRoomMicrochips},
								{"ID", "MICROCHIP"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_REFINE",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", RefinerRoomSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_REFINE",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", RefinerRoomGold}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT1",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CultivationChamberSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT1",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CultivationChamberPlates},
								{"ID", "CASING"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT1",		"ID", "CASING"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT1",		"ID", "PLANT_POOP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CultivationChamberFaecium}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT0",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DoubleCultivationChamberSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT0",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DoubleCultivationChamberPlates},
								{"ID", "CASING"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT0",		"ID", "CASING"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_PLANT0",		"ID", "PLANT_POOP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DoubleCultivationChamberFaecium}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_EXTR",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", StellarExtractorSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_EXTR",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", StellarExtractorGold}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_EXTR",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", StellarExtractorGravBall},
								{"ID", "GRAVBALL"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_EXTR",		"ID", "GRAVBALL"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_SCAN",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", ScannerRoomSilver}
							}
						},
						--[[
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_SCAN",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", ScannerRoomEmeril},
								{"ID", "GREEN2"}
							}
						},
						]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_SCAN",		"ID", "POWERCELL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", ScannerRoomQuantProc},
								{"ID", "MEGAPROD2"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_VEHICL",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", OrbitalExoGold}
							}
						},
						--[[
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_VEHICL",		"ID", "CAVE2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", OrbitalExoEmeril},
								{"ID", "GREEN2"}
							}
						},
						]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_VEHICL",		"ID", "HYPERFUEL1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", OrbitalExoPortReact},
								{"ID", "MEGAPROD1"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the function at the bottom of this script
					}
				}
			}
		}
	}
}

local ChangesToSubstance = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #SubstanceCostChanges do
	local ItemID = SubstanceCostChanges[i][1]
	local SpaceStationMarkup = SubstanceCostChanges[i][2]
	local BuyBaseMarkup = SubstanceCostChanges[i][3]
	--local BuyMarkupMod = SubstanceCostChanges[i][4]

			ChangesToSubstance[#ChangesToSubstance+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SpaceStationMarkup", SpaceStationMarkup},
					{"BuyBaseMarkup", BuyBaseMarkup}--[[,
					{"BuyMarkupMod", BuyMarkupMod}]]
				}
			}
end
for i = 1, #SubstanceStackChanges do
	local NameID = SubstanceStackChanges[i][1]
	local StackMult = SubstanceStackChanges[i][2]
	local BuyMarkMult = SubstanceStackChanges[i][3]

	ChangesToSubstance[#ChangesToSubstance+1] =
					{
						["SPECIAL_KEY_WORDS"] = {"Name",	NameID}, 
						["MATH_OPERATION"]         = "*",  
						["REPLACE_TYPE"]         = "ALL",  
						["INTEGER_TO_FLOAT"] = "FORCE",
						["VALUE_CHANGE_TABLE"]     = 
						{
							{"StackMultiplier",    StackMult},
							{"BuyBaseMarkup",    BuyMarkMult},
						}
					}
end
for i = 1, #SubstanceSaleChanges do
	local NameID = SubstanceSaleChanges[i][1]
	local NewValue = SubstanceSaleChanges[i][2]

			ChangesToSubstance[#ChangesToSubstance+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", NameID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", NewValue}
				}
			}
end

local ChangesToProduct = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #ProductCostChanges do
	local NameID = ProductCostChanges[i][1]
	local SpaceStationMarkup = ProductCostChanges[i][2]
	local BuyBaseMarkup = ProductCostChanges[i][3]
	--local BuyMarkupMod = ProductCostChanges[i][4]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Name", NameID},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SpaceStationMarkup", SpaceStationMarkup},
					{"BuyBaseMarkup", BuyBaseMarkup}--[[,
					{"BuyMarkupMod", BuyMarkupMod}]]
				}
			}
end
for i = 1, #ChartCostChanges do
	local ChartId = ChartCostChanges[i][1]
	local NewChartCost = ChartCostChanges[i][2]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", ChartId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RecipeCost", NewChartCost}
				}
			}
end
for i = 1, #ProductBuyMarkupModChanges do
	local NameID = ProductBuyMarkupModChanges[i][1]
	local BuyMarkupMod = ProductBuyMarkupModChanges[i][2]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Name", NameID},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuyMarkupMod", BuyMarkupMod}
				}
			}
end
for i = 1, #ProductSaleChanges do
	local NameID = ProductSaleChanges[i][1]
	local ValueMult = ProductSaleChanges[i][2]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"Name", NameID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
end
for i = 1, #CookedFoodGroupSaleChanges do
	local ValueMult = CookedFoodGroupSaleChanges[i][1][1]
	local FoodIDs = CookedFoodGroupSaleChanges[i][2]
	
	for j=1, #FoodIDs do
		FoodID = FoodIDs[j]
		
			ChangesToProduct[#ChangesToProduct+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", FoodID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
	end
end
--[[
CookedFoodGroupSaleChanges
for i = 1, #CookedFoodGroupSaleChanges do
	local ItemIDPrefix = CookedFoodGroupSaleChanges[i][1]
	local ValueMult = CookedFoodGroupSaleChanges[i][2]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_MATCH"] = PrefixPattern (ItemIDPrefix),
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
end
]]
for i = 1, #GeodeSaleChanges do
	local ItemID = GeodeSaleChanges[i][1]
	local ValueMult = GeodeSaleChanges[i][2]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
end
for i = 1, #FishRarities do
	local Rarity = FishRarities[i]
	local BaseValueRarity = RawFishSaleChanges[1][i]
	
	for j = 1, #FishSizes do
		local FishSize = FishSizes[j]
		local SizeMult = RawFishSaleChanges[2][j]
		local FishIDPattern = [[F_]]..[[%u%u%u%u*]]..[[_]]..Rarity..[[_]]..FishSize..[[%d*]]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", FishIDPattern},
				["REPLACE_TYPE"]         = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", math.floor(BaseValueRarity*SizeMult)},
					{"SpaceStationMarkup", "0"}			--0.5
				}
			}
	end
end
for i = 1, #WeatherFishMults do
	local BonusMult = WeatherFishMults[i][1][1]
	local Fishlist = WeatherFishMults[i][2]
	
	for j = 1, #Fishlist do
		local FishID = Fishlist[j]

			ChangesToProduct[#ChangesToProduct+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", FishID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", BonusMult}
				}
			}
	end
end
for i = 1, #ProductStackChanges do
	local NameID = ProductStackChanges[i][1]
	local StackMult = ProductStackChanges[i][2]
	local BuyMarkMult = ProductStackChanges[i][3]

	ChangesToProduct[#ChangesToProduct+1] =
					{
						["SPECIAL_KEY_WORDS"] = {"Name",	NameID}, 
						["MATH_OPERATION"]         = "*",  
						["REPLACE_TYPE"]         = "ALL",
						["INTEGER_TO_FLOAT"] = "FORCE",
						["VALUE_CHANGE_TABLE"]     = 
						{
							{"StackMultiplier",    StackMult},
							{"BuyBaseMarkup",    BuyMarkMult},
						}
					}
end
for i = 1, #AdjustItems do
	local TechIDNum = AdjustItems[i][1]
	local AdjItemID = AdjustItems[i][2]
	local AdjItemAmount = AdjustItems[i][3]
		
			ChangesToProduct[#ChangesToProduct+1] =
			{ 
				["SPECIAL_KEY_WORDS"] = {"ID", TechIDNum,	"ID", AdjItemID},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Amount",	AdjItemAmount},
				}
			}
end
for i = 1, #AddItems do
	local TechIDNum = AddItems[i][1]
	local AddItemID = AddItems[i][2]
	local AddItemAmount = AddItems[i][3]
	local AddItemType = AddItems[i][4]
		
			ChangesToProduct[#ChangesToProduct+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID",TechIDNum},
				["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
				["ADD"] = AddedItemCost (AddItemID, AddItemAmount, AddItemType),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
end
for i = 1, #ReplaceItems do
	local TechIDNum = ReplaceItems[i][1]
	local AddItemID = ReplaceItems[i][2]
	local AddItemAmount = ReplaceItems[i][3]
	local AddItemType = ReplaceItems[i][4]
	local OldCompID = ReplaceItems[i][5]
		
			ChangesToProduct[#ChangesToProduct+1] =
			{ 
				["SPECIAL_KEY_WORDS"] = {"ID", TechIDNum,	"ID", OldCompID},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Amount",	AddItemAmount},
					{"ID",	AddItemID},
					{"InventoryType", AddItemType}
				}
			}
end

local ChangesToProceduralProductSales = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #ProceduralProductSaleChanges do
	local NameID = ProceduralProductSaleChanges[i][1]
	local ValueMult = ProceduralProductSaleChanges[i][2]
	
			ChangesToProceduralProductSales[#ChangesToProceduralProductSales+1] = 
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"Word", NameID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValueMin", ValueMult},
					{"BaseValueMax", ValueMult}
				}
			}
end

 for i = 1, #DerelictFreighterRedeemables do
	local NameID = DerelictFreighterRedeemables[i][1]
	local MinValue = DerelictFreighterRedeemables[i][2]
	local MaxValue = DerelictFreighterRedeemables[i][3]
	
			ChangesToProceduralProductSales[#ChangesToProceduralProductSales+1] = 
			{
				["SPECIAL_KEY_WORDS"] = {"Word", NameID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValueMin", MinValue},
					{"BaseValueMax", MaxValue}
				}
			}
	if UsableDerelictRedeemables then
			ChangesToProceduralProductSales[#ChangesToProceduralProductSales+1] = 
			{
				["SPECIAL_KEY_WORDS"] = {"Subtitle", NameID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Consumable", "True"}
				}
			}
	end
end

local ChangesToConsumableItems = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]

if UsableDerelictRedeemables then
			ChangesToConsumableItems[#ChangesToConsumableItems+1] = 
			{
				["PRECEDING_KEY_WORDS"] = {"GcConsumableItem.xml"},
				["ADD"] = AddConsumableDerelictItem ("PROC_CREW"),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			ChangesToConsumableItems[#ChangesToConsumableItems+1] = 
			{
				["PRECEDING_KEY_WORDS"] = {"GcConsumableItem.xml"},
				["ADD"] = AddConsumableDerelictItem ("PROC_CAPT"),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
end

--[[local ChangesToTradingCosts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]

for i = 1, #TradingCostChanges do
	local ItemID = TradingCostChanges[i][1]
	local CostMult = TradingCostChanges[i][2]+1

			ChangesToTradingCosts_temp =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MinCost", CostMult},
					{"MaxCost", CostMult}
				}
			}
			ChangesToTradingCosts[#ChangesToTradingCosts+1] = ChangesToTradingCosts_temp
end]]
