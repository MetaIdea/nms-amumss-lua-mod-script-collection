ModName = "Xen0nexShip+MultiToolRebalance"
GameVersion = "3_87"

FuelLessIsBetter =				"TRUE"				--"FALSE", Makes the "Speed" Frigate-boosting upgrade modules for freigthers properly increase Fleet Coordination rather than decrease it (still doesn't affect speed though)
--LandingCost = 	50									--0		(TakeOffCost is 100)	[18]		Unknown function

--ShieldLeechMul = 0.07								--0.07	Unknown Function, doesn't seem to affect how much shield you leech with lasers

--SailTakeOffMod = 0.66								--1		Multiplier for launch fuel consumption for takeoff for Solar ships		(Oddly this was never included in GCSPACESHIPGLOBALS.GLOBAL.MBIN like the other ship types?)

--Replacers for Ship class Spawn rate % based on System Wealth
PoorC		=	60				-- Default "60" 
PoorB		=	30				-- Default "30" 
PoorA		=	10				-- Default "10" 
PoorS		=	0				-- Default "0" 
AverageC	=	48				-- Default "49" 
AverageB	=	35				-- Default "35" 
AverageA	=	15				-- Default "15" 
AverageS	=	2				-- Default "1" 
WealthyC	=	30				-- Default "30" 
WealthyB	=	39				-- Default "40" 
WealthyA	=	28				-- Default "28" 
WealthyS	=	3				-- Default "2" 
PirateC		=	5				-- Default "5" 		(Seems to work out to 85% in practice, may just lump in whatever is left after B, A, & S)
PirateB		=	5				-- Default "5" 
PirateA		=	5				-- Default "5" 
PirateS		=	5				-- Default "5" 

--Replacers for Shuttle Class C & B base bonuses, since many of its vanilla bonuses are 0 at those Classes
	--Note these base bonus values will then be affected by the multipliers in the sections below
ShuttleStatChanges =
{
	{
		{"C"},
		{"Min",		0.5},	-- Default "0"
		{"Max",		2.5},	-- Default "0"
	},
	{
		{"B"},
		{"Min",		2.5},	-- Default "0"
		{"Max",		5},		-- Default "5"
	},
}

Class = {"C", "B", "A", "S"}
ShipStats = {"SHIP_DAMAGE", "SHIP_SHIELD", "SHIP_HYPERDRIVE"}

--Multipliers to apply on top of the ship stat bonuses
GlobalShipShieldMult = 1.4				--Multiplier to apply to all Shield bonuses from ship type, stacks multiplicatively with the values below
--Note that unlike other stats, ship shield bonuses from ship type only contribute ~71% as much compared to the ship's initial base shield. I.E. A ship with a +100% shield bonus will only have ~1.71x as much shields as a ship with a +0% shield bonus
		--This 1.4x multiplier essentially makes ship type shield bonuses work at 100% effectiveness as expected, though you may need mods to increase enemy ship damage / attack rate / etc. to balance that out
ShipStatChanges	=
{
	{
		{
			"Shuttle"					--	Maneuverability: Medium (245-330)			Speed: Medium			Takeoff cost is 0.66x
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				3,		3,		3,		2},			--			+		0[0.5-2.5],	0-5[2.5-5],	5-10,		15-20	%
			{"SHIP_SHIELD",				6,		6,		6,		4.5},		--			+		0[0.5-2.5],	0-5[2.5-5],	5-10,		15-20	%
			{"SHIP_HYPERDRIVE",			3,		3,		3,		2},			--			+		0[0.5-2.5],	0-5[2.5-5],	5-10,		15-20	%		"Default" Hyperdrive range is 100ly
		}
	},
	{
		{
			"Fighter"					--	Maneuverability: High (350-445)				Speed: High
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1.7,	1.7,	1.7,	1.7},		--			+		5-10,		15-30,		35-50,		55-60	%
			{"SHIP_SHIELD",				2,		2,		2,		2},			--			+		0,			5-10,		15-20,		15-25	%
			{"SHIP_HYPERDRIVE",			1,		1,		1,		1}			--			+		0,			0,			0,			0		%
		}
	},
	{
		{
			"Dropship"		--Hauler		Maneuverability: Low (150-250)				Speed: Low
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1,		1,		1,		1},			--			+		0,			0-5,		5-10,		10-20	%
			{"SHIP_SHIELD",				3.5,	3.5,	3.5,	3.5},		--			+		12-20,		25-35,		40-50,		65-85	%
			{"SHIP_HYPERDRIVE",			1,		1,		1,		1}			--			+		0-5,		5-10,		15-25,		30-35	%
		}
	},
	{
		{
			"Scientific"	--Explorer		Maneuverability: High (350-445)				Speed: High			Takeoff cost is 0.5x
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1,		1,		1,		1},			--			+		0,			0,			0,			0		%
			{"SHIP_SHIELD",				4,		4,		4,		4},			--			+		0,			0-8,		10-15,		20-25	%
			{"SHIP_HYPERDRIVE",			1.5,	1.5,	2.1,	1.9}		--			+		7-15,		20-30,		35-45,		60-80	%				(up to ~4,200 ly maxed out?)
		}
	},
	{
		{
			"Royal"			--Exotic		Maneuverability: High (390-445)				Speed: High
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1,		1,		1,		1},			--			+		35-50,		35-50,		35-50,		35-50	%
			{"SHIP_SHIELD",				2.5,	2.5,	2.5,	2.5},		--			+		55-60,		55-60,		55-60,		55-60	%
			{"SHIP_HYPERDRIVE",			1,		1,		1,		1}			--			+		50-65,		50-65,		50-65,		50-65	%
		}
	},
	{
		{
			"Alien"			--Living Ship	Maneuverability: Low (150-250)				Speed: Low
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1.1,	1.1,	1.1,	1.1},		--			+		N/A,		N/A,		N/A,		35-50	%
			{"SHIP_SHIELD",				2,		2,		2,		2},			--			+		N/A,		N/A,		N/A,		10-25	%
			{"SHIP_HYPERDRIVE",			1.4,	1.4,	1.4,	1.4}		--			+		N/A,		N/A,		N/A,		50-65	%
		}
	},
	{
		{
			"Sail"			--Solar		Maneuverability: High (350-445 +10%)			Speed: High ??? +15%			Pulse jump costs only 20% of base pulse fuel rate, launch fuel auto-recharges
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1.4,	1.4,	1.4,	1.4},		--			+		5-10,		15-30,		30-40,		40-50	%
			{"SHIP_SHIELD",				2.2,	2.2,	2.2,	2.2},		--			+		5-10,		5-20,		15-25,		15-35	%
			{"SHIP_HYPERDRIVE",			1.3,	1.3,	1.3,	1.3}		--			+		5-10,		10-20,		20-30,		25-35	%
		}
	},
	{
		{
			"Freighter"					
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"FREI_HYPERDRIVE",			2.4,	3.2,	1.6,	1.6},		--			+		7-15,		10-19,		40-60,		60-80	%		"Default" Hyperdrive range is 100ly		(up to ~6,500 ly maxed out?)
			{"FREI_FLEET",				0.75,	0.75,	0.75,	0.75}		--			+		1-10,		10-20,		20-40,		40-60	%		Fleet Coordination base amount maybe is 25??? 15??? Final stat on fresh freighters seems to range from ~20- ~31, but with the yellow "bonus" gauge about as long as the white part...
		}
	},
}

--Replacers for INITIAL Inventory size found on spawned purchaseable / crashed ships. NOT maximum upgradeable size for ships.
ShipInitialSizeChanges	=
{	--Ship type & size					MinGen	MaxGen		MinTech	MaxTech		MinCarg	MaxCarg slots	Vanilla	MinGen	MaxGen		MinTech	MaxTech		MinCarg	MaxCarg	slots
	{"ShuSmall",						15,		20,			3,		6,			2,		4},					--	18,		23,			3,		6,			3,		6
	{"ShtMedium",						21,		26,			5,		8,			4,		6},					--	19,		28,			5,		8,			4,		8
	{"ShtLarge",						31,		35,			8,		12,			6,		7},					--	28,		40,			8,		12,			6,		10		Unused in-game by default
	{"FgtSmall",						12,		18,			2,		4,			2,		4},					--	15,		19,			2,		4,			2,		4
	{"FgtMedium",						19,		26,			4,		6,			3,		6},					--	20,		29,			3,		5,			3,		6
	{"FgtLarge",						27,		35,			7,		10,			4,		8},					--	30,		38,			5,		12,			4,		8
	{"DrpSmall",						12,		16,			2,		4,			12,		16},				--	25,		31,			2,		4,			4,		6
	{"DrpMedium",						17,		23,			4,		6,			16,		20},				--	32,		39,			4,		6,			6,		8
	{"DrpLarge",						24,		30,			6,		8,			20,		26},				--	40,		48,			6,		8,			8,		12
	{"SciSmall",						12,		16,			6,		8,			2,		4},					--	15,		19,			3,		5,			2,		5	(Reduce the initial cargo slots by 3 at each size?)
	{"SciMedium",						17,		23,			8,		12,			4,		6},					--	20,		29,			5,		8,			3,		8
	{"SciLarge",						24,		30,			12,		16,			6,		8},					--	30,		38,			8,		12,			4,		10
	{"RoySmall",						11,		14,			1,		3,			1,		2},					--	11,		14,			1,		3,			2,		4		Unused in-game by default
	{"RoyMedium",						15,		20,			4,		6,			2,		3},					--	15,		20,			4,		6,			3,		6
	{"RoyLarge",						21,		30,			6,		10,			3,		4},					--	21,		30,			6,		10,			6,		8		Unused in-game by default
	{"AlienSmall",						21,		21,			28,		28,			7,		7},					--	22,		22,			21,		21,			4,		8		Unused in-game by default
	{"AlienMedium",						21,		21,			28,		28,			14,		14},				--	22,		22,			21,		21,			8,		14
	{"AlienLarge",						21,		21,			28,		28,			21,		21},				--	22,		22,			21,		21,			10,		20		Unused in-game by default
	{"SailSmall",						12,		28,			4,		10,			6,		12},				--	15,		19,			4,		6,			3,		4
	{"SailMedium",						17,		23,			6,		10,			8,		10},				--	20,		28,			6,		10,			4,		6		Unused in-game by default
	{"SailLarge",						24,		30,			10,		18,			10,		14},				--	30,		36,			10,		18,			5,		7		Unused in-game by default
	{"FreighterSmall",					15,		19,			3,		6,			0,		0},					--	15,		19,			3,		6,			0,		0	"Regular" Freighters
	{"FreighterMedium",					20,		30,			5,		9,			0,		0},					--	24,		34,			5,		9,			0,		0	"Capital" Freighters
	{"FreighterLarge",					31,		42,			7,		12,			0,		0},					--	35,		48,			7,		12,			0,		0		Unused in-game by default
}

--Replacers for maximum UPGRADEABLE Inventory size for ships. NOT initial sizes for spawned ships.
ShipUpgradeSizeChanges	=
{
	{
		{"MaxInventoryCapacity"},	--General Inventory						(Grid size fluctuates, possible values include 16, 25, 30, 35, 40, 48)
		{
		--Replacers for max UPGRADEABLE size at	C,		B,		A,		S	class		Vanilla is	C,		B,		A,		S	class
			{"Shuttle",							25,		30,		35,		40,							24,		32,		40,		48},
			{"Fighter",							25,		30,		35,		40,							24,		32,		40,		48},
			{"Dropship",						16,		25,		30,		35,							24,		32,		40,		48},
			{"Scientific",						16,		25,		30,		35,							24,		32,		40,		48},
			{"Royal",							16,		25,		30,		35,							24,		32,		40,		48},
			{"Alien",							0,		0,		0,		35,							0,		0,		0,		35},
			{"Sail",							16,		25,		25,		35,							24,		32,		40,		48},
			{"Freighter",						16,		25,		35,		40,							24,		32,		40,		48},
			{"PlayerFreighter",					0,		0,		0,		0,							0,		0,		0,		0},			--Most likely PlayerFreighter is just some obsolete, unused data, but included for completeness
		}
	},
	{
		{"MaxTechInventoryCapacity"},	--Tech Inventory					(Seems to only work properly when using multiples of 7)
		{
		--Replacers for max UPGRADEABLE size at	C,		B,		A,		S	class		Vanilla is	C,		B,		A,		S	class
			{"Shuttle",							0,		7,		14,		21,							0,		7,		14,		21},
			{"Fighter",							0,		7,		14,		21,							0,		7,		14,		21},
			{"Dropship",						0,		7,		7,		14,							0,		7,		14,		21},
			{"Scientific",						7,		14,		21,		28,							0,		7,		14,		21},
			{"Royal",							0,		7,		14,		21,							0,		7,		14,		21},
			{"Alien",							0,		0,		0,		28,							0,		0,		0,		48},
			{"Sail",							0,		7,		14,		21,							0,		7,		14,		21},
			{"Freighter",						0,		7,		14,		21,							7,		7,		14,		21},
			{"PlayerFreighter",					0,		0,		0,		0,							0,		0,		0,		0},
		},
		{
		{"MaxCargoInventoryCapacity"},	--Cargo Inventory					(Seems to only work properly when using multiples of 7)
		{
		--Replacers for max UPGRADEABLE size at	C,		B,		A,		S	class		Vanilla is	C,		B,		A,		S	class
			{"Shuttle",							0,		7,		7,		14,							6,		9,		14,		21},
			{"Fighter",							0,		7,		7,		14,							6,		9,		14,		21},
			{"Dropship",						14,		21,		28,		35,							12,		12,		24,		36},		--42 max size in practice, since it's the next multiple of 7
			{"Scientific",						0,		7,		7,		14,							6,		9,		14,		21},
			{"Royal",							0,		0,		7,		7,							5,		9,		14,		21},
			{"Alien",							0,		0,		0,		14,							0,		0,		0,		32},
			{"Sail",							0,		7,		14,		21,							6,		9,		14,		21},
			{"Freighter",						21,		28,		35,		42,							24,		32,		40,		48},		--Freighters can't use Cargo Slots
			{"PlayerFreighter",					0,		0,		0,		0,							0,		0,		0,		0},
		}
	}
	}
}

--Minimum & maximum costs for ships, with the minimum cost at the lowest initial inventory, and the maximum cost at the highest initial inventory for that ship type. 
		--Note that the costs are also increased by a certain percentage depending on the Class based on the ship's type.
		--Also the values used in INVENTORYTABLE.EXML do not necessarily reflect the actual prices you see in game due to inaccurate listing of ship slots sizes in that section, best to check some actual ingame prices for a benchmark
CostChanges	=
{
	{
		{
			"ShipCostData"
		},
		{													--MinSlots & MaxSlots here don't actually control slots, just lets the game know how many slots to expect on spawned ships in order to extrapolate the price at different shipsizes (in vanilla many of these slot values are inaccurate)
		--Base value in millions 	MinValue	MaxValue	MinSlots	MaxSlots																	Price at Class C with lowest inventory and at Class S with highest inventory as seen in game by players and catalogued to the wiki	(And max S rank cost after undoing the S rank cost bonus)
			{"Shuttle",				0.75,		60,			15,			37},		--Vanilla values are 0.85 mil,		40 mil,			20,	44		Catalogued at 0.51 mil	~	6.6 mil		(4.4 mil)			18	~	28	general &	3	~	8	tech slots initially
			{"Fighter",				1.25,		90,			12,			37},		--Vanilla values are 1.5 mil,		10.5 mil,		19,	30		Catalogued at 0.55 mil	~	57.5 mil	(28.75 mil)			15	~	38	general &	2	~	12	tech slots initially
			{"Dropship",			4.5,		110,		12,			32},		--Vanilla values are 4.5 mil,		70 mil,			25,	48		Catalogued at 4.5 mil	~	126 mil		(70 mil)			25	~	48	general &	2	~	8	tech slots initially
			{"Scientific",			1,			65,			12,			32},		--Vanilla values are 1.25 mil,		9.2 mil,		19,	30		Catalogued at 0.445 mil	~	39 mil		(26 mil)			15	~	38	general &	3	~	12	tech slots initially
			{"Royal",				2.5,		8,			15,			20},		--Vanilla values are 5 mil,			12 mil,			15,	20		Catalogued at 5 mil		~	12 mil		(12 mil)			15	~	20	general &	4	~	6	tech slots initially
			{"Alien",				5,			70,			25,			48},		--Vanilla values are 5 mil,			70 mil,			25,	48		Catalogued at 2.98 mil	~	2.98mil		(2.98 mil)			22	~	22	general &	21	~	21	tech slots initially
			{"Sail",				1,			100,		12,			32},		--Vanilla values are 2.2 mil,		11.1 mil,		19,	36		Catalogued at 1.00 mil	~	2.42mil		(2.2 mil)			15	~	19	general &	4	~	6	tech slots initially
			{"Freighter",			25,			200,		15,			34},		--Vanilla values are 5 mil,			300 mil,		15,	48		Catalogued at 5 mil		~	23 mil  	(11.5 mil)			15	~	19	general &	3	~	6	tech slots initially for Regular,		26.15 mil	~	178 mil 	(89 mil) 24	~	34	general &	5	~	9	tech slots initially for Capital (Reg and Capital just Small and Medium size freighters)
			{"PlayerFreighter",		25,			200,		15,			34}			--Vanilla values are 5 mil,			300 mil,		15,	48		Catalogued at 5 mil		~	23 mil  	(11.5 mil)			15	~	19	general &	3	~	6	tech slots initially for Regular,		26.15 mil	~	178 mil 	(89 mil) 24	~	34	general &	5	~	9	tech slots initially for Capital (Reg and Capital just Small and Medium size freighters)
		}
	},
	{
		{
			"WeaponCostData"
		},
		{													--MinSlots & MaxSlots here don't actually control slots, just lets the game know how many slots to expect on spawned tools in order to extrapolate the price at different toolsizes (in vanilla many of these slot values are inaccurate)
		--Base value in millions 	MinValue	MaxValue	MinSlots	MaxSlots																	Price at Class C with lowest inventory and at Class S with highest inventory as seen in game by players and catalogued to the wiki	(And max S rank cost after undoing the S rank cost bonus)
			{"Pistol",				0.05,		0.4,		5,			10},		--Vanilla values are 0.08 mil,		0.28 mil,		6,	9		Catalogued at 0.0455 mil	~	1.165 mil	(0.388 mil)		5	~	10	tech slots initially
			{"Rifle",				0.635,		3,			11,			20},		--Vanilla values are 1.5 mil,		4 mil,			17,	28		Catalogued at 0.635 mil		~	3.7 mil		(2.96 mil)		11	~	24	tech slots initially
			{"Pristine",			0.5,		5,			5,			20},		--Vanilla values are 0.5 mil,		5 mil,			5,	24		Catalogued at 0.5 mil		~	7.5 mil		(5 mil)			5	~	24	tech slots initially
			{"Royal",				5.15,		120,		11,			20},		--Vanilla values are 10 mil,		120 mil,		15,	48		Catalogued at 5.15 mil		~	??? mil		(??? mil)		11	~	???	tech slots initially	(Only offered as C Class from Pillars?)
			{"Alien",				0.5,		5,			5,			20}			--Vanilla values are 0.5 mil,		5 mil,			5,	24		Catalogued at 0.5 mil		~	7.5 mil		(5 mil)			5	~	24	tech slots initially
		}
	},
}

--Replacers for the TradeInMultiplier (vanilla value of 70), which sets the % of the value of your ship/tool that you get when trading it for another ship/tool, possibly for scrapping it? Setting this to 1 will retain the vanilla trade inb value of 70%
	--Lower this to offset the increased value for scrapping crashed A or S class ships		(not necessary in NMS v3.82 as now only Shuttles or Exotics will spawn as crashed ships with A or S class?)
		--Supposedly NMS v3.85+ has re-enabled all shiptypes to spawn as S-Class at crashsites?
ShipTradeInMultiplier = 40												--70				Applies to both trading in to buy a differnt ship or scrapping it at a space station ship salvage terminal
FreighterTradeInMultiplier = 10											--70				Reduced with the assumption of accepting the first free freighter, but not using it until able to purchase a new freighter, and not wanting the trade-in value of the free freighter to easily pay for the new freighter
ToolTradeInMultiplier = 40												--70

--SalvageValueMultiplier = 0.6											--0.6				Unknown function, doesn't appear to affect value of scrapping ship


CostClassModifierChanges =	--Replaces vanilla cost bonus at different Classes
{
	{
		{
			"ShipCostData"
		},
		{
		--Extra % added to cost at		C		B		A		S		class
			{"Shuttle",					0,		30,		100,	300},				--Vanilla values are +		0,		10,		25,		50	%
			{"Fighter",					0,		50,		150,	400},				--Vanilla values are +		0,		20,		70,		100	%
			{"Dropship",				0,		40,		125,	350},				--Vanilla values are +		0,		30,		60,		80	%
			{"Scientific",				0,		30,		100,	300},				--Vanilla values are +		0,		10,		25,		50	%
			{"Royal",					0,		0,		0,		400},				--Vanilla values are +		0,		0,		0,		0	%
			{"Alien",					0,		0,		0,		300},				--Vanilla values are +		0,		0,		0,		0	%
			{"Sail",					0,		50,		150,	400},				--Vanilla values are +		0,		20,		70,		100	%
			{"Freighter",				0,		50,		150,	400},				--Vanilla values are +		0,		40,		60,		100	%
			{"PlayerFreighter",			0,		50,		150,	400},				--Vanilla values are +		0,		40,		60,		100	%
		}
	},
	{
		{
			"WeaponCostData"
		},
		{
		--Extra % added to cost at		C		B		A		S		class
			{"Pistol",					0,		100,	300,	700},				--Vanilla values are +		0,		50,		100,	200	%	
			{"Rifle",					0,		50,		150,	300},				--Vanilla values are +		0,		5,		15,		25	%
			{"Pristine",				0,		50,		150,	400},				--Vanilla values are +		0,		10,		25,		50	%
			{"Royal",					0,		0,		0,		0},					--Vanilla values are +		0,		0,		0,		0	%
			{"Alien",					0,		50,		150,	400},				--Vanilla values are +		0,		10,		25,		50	%
		}
	},
}

--Extra multiplier for Pistol's WEAPON_MINING Min value at S Class to make it equivalent to being +25-35% instead of +20-35%
PistolMiningSMinMult =			1.25					--1

--Multipliers to apply on top of the Multitool stat bonuses
ToolStatChanges	=
{
	{
		{
			"Pistol"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1,		1,		1,		1},			--			+		0,			0,			0,			0		%
			{"WEAPON_MINING",			1.3,	1.5,	1.5,	1.3},		--			+		5-10,		10-15,		15-20,		20-35	%
			{"WEAPON_SCAN",				0.8,	0.8,	0.8,	0.8}		--			+		10-20,		25-30,		35-40,		45-50	%
		}
	},
	{
		{
			"Rifle"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1.25,	1.25,	1.25,	1.25},		--			+		0-5,		5-10,		10-15,		15-20	%
			{"WEAPON_MINING",			1,		1,		1,		1},			--			+		0,			0,			0,			0		%
			{"WEAPON_SCAN",				1,		1,		1,		1}			--			+		0-5,		5-10,		10-15,		15-20	%
		}
	},
	{
		{
			"Pristine"		--Experimental
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			0.8,	0.8,	0.8,	0.8},		--			+		0-5,		5-10,		10-15,		15-25	%
			{"WEAPON_MINING",			0.9,	0.9,	0.9,	0.9},		--			+		5-10,		10-20,		20-25,		25-30	%
			{"WEAPON_SCAN",				1.2,	1.2,	1.2,	1.2}		--			+		40-50,		60-70,		80-90,		100		%
		}
	},
	{
		{
			"Royal"			--"Exotic"	(15% chance to be offered from defeated Sentinel Pillars)
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1.7,	1.5,	1.3,	1.3},		--			+		0-5,		5-10,		10-15,		15-25	%
			{"WEAPON_MINING",			1.5,	1.3,	1.2,	1.2},		--			+		5-10,		10-20,		20-25,		25-30	%
			{"WEAPON_SCAN",				1.2,	1.1,	1.0,	0.90}		--			+		40-50,		60-70,		80-90,		100		%
		}
	},
	{
		{
			"Alien"			--"Exotic"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1.2,	1.2,	1.2,	1.2},		--			+		10-15,		15-20,		20-25,		25-35	%
			{"WEAPON_MINING",			1,		1,		1,		1},			--			+		0-5,		5-10,		10-15,		15-20	%
			{"WEAPON_SCAN",				0.8,	0.8,	0.8,	0.8}		--			+		20-25,		30-35,		40-45,		50-60	%
		}
	}
}

--Initial slots found on different size Multi-Tools (Pistols only come in Small)
ToolSizeChanges =
{							--Min	--Max
	{"WeaponSmall",			5,		10},				--5,		10
	{"WeaponMedium",		11,		15},				--11,		16
	{"WeaponLarge",			16,		20}					--17,		24
}

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Rebalances the stat bonuses for Ships & Multitools, as well as Ship Spawnrates",         
  ["MOD_AUTHOR"]			= "Xen0nex",         --Based on UniqueSpaceShips by Jackty89
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the the function at the bottom of this script
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --Poor Spawn
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Poor"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"C",	PoorC},
								{"B",	PoorB},		
								{"A",	PoorA},		
								{"S",	PoorS}
							}
						},
						{ --Average Spawn
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Average"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"C",	AverageC},
								{"B",	AverageB},		
								{"A",	AverageA},		
								{"S",	AverageS}
							}
						},
						{ --Wealthy Spawn
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Wealthy"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"C",	WealthyC},
								{"B",	WealthyB},		
								{"A",	WealthyA},		
								{"S",	WealthyS}
							}
						},
						{ --Pirate Spawn
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Pirate"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"C",	PirateC},
								{"B",	PirateB},		
								{"A",	PirateA},		
								{"S",	PirateS}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_SHIELD"},
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min",GlobalShipShieldMult},
								{"Max",GlobalShipShieldMult}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							--["REPLACE_TYPE"] 		= "ALL",
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", "Pistol","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID", "WEAPON_MINING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min", PistolMiningSMinMult}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
							["SPECIAL_KEY_WORDS"] = "",
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TradeInMultiplier",ShipTradeInMultiplier}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
							["SPECIAL_KEY_WORDS"] = {"Freighter","GcInventoryCostDataEntry.xml"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TradeInMultiplier",FreighterTradeInMultiplier}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"InventoryCostData"},
							["SPECIAL_KEY_WORDS"] = {"PlayerFreighter","GcInventoryCostDataEntry.xml"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TradeInMultiplier",FreighterTradeInMultiplier}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"WeaponCostData"},
							["SPECIAL_KEY_WORDS"] = "",
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"TradeInMultiplier",ToolTradeInMultiplier}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StatsType", "Freighter_Fleet_Fuel"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"LessIsBetter", FuelLessIsBetter}
							}
						}
					}
				},
				--[[{
					["MBIN_FILE_SOURCE"] 	= {"GCAISPACESHIPGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"SalvageValueMultiplier", SalvageValueMultiplier},
								{"ShieldLeechMul", ShieldLeechMul}
							}
						},
					}
				},]]
				--[[{
					["MBIN_FILE_SOURCE"] 	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] = {""},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"SailTakeOffMod", SailTakeOffMod},
								{"LandingCost", LandingCost}
							}
						}
					}
				},]]
            }
		}
    }
}	



local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ShuttleStatChanges do
	local ShuttleClass = ShuttleStatChanges[i][1][1]
	local ShuttleMin = ShuttleStatChanges[i][2][2]
	local ShuttleMax = ShuttleStatChanges[i][3][2]

	for j = 1, #ShipStats do
		ShuttleStat = ShipStats[j]
			
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				--["MATH_OPERATION"] = "*",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Shuttle","BaseStatsPerClass", ShuttleClass},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", ShuttleStat},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Min", ShuttleMin},
					{"Max", ShuttleMax}
				}
			}
	end
end

for i = 1, #ShipStatChanges do
	local ShipType = ShipStatChanges[i][1][1]
	local StatIDs = ShipStatChanges[i][2]

	for j = 1, #StatIDs do
		local StatID = StatIDs[j][1]
		local Multiplier
		for k = 1, #Class do
	
			Multiplier = StatIDs[j][k+1]
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "*",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", ShipType,"BaseStatsPerClass",Class[k]},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", StatID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Min", Multiplier},
					{"Max", Multiplier}
				}
			}
		end
	end
end
for i = 1, #ToolStatChanges do
	local ToolType = ToolStatChanges[i][1][1]
	local StatIDs = ToolStatChanges[i][2]

	for j = 1, #StatIDs do
		local StatID = StatIDs[j][1]
		local Multiplier
		for k = 1, #Class do
	
			Multiplier = StatIDs[j][k+1]
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "*",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", ToolType,"BaseStatsPerClass",Class[k]},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", StatID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Min", Multiplier},
					{"Max", Multiplier}
				}
			}
		end
	end
end
for i = 1, #ToolSizeChanges do
	local ToolSize = ToolSizeChanges[i][1]
	local MinSlots = ToolSizeChanges[i][2]
	local MaxSlots = ToolSizeChanges[i][3]
	
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
						{
							["MATH_OPERATION"] = "",
							--["PRECEDING_KEY_WORDS"] = {""},
							["REPLACE_TYPE"] 		= "",
							["SPECIAL_KEY_WORDS"] = {ToolSize,"GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinSlots",	MinSlots},
								{"MaxSlots",	MaxSlots}
							}
						}
end
for i = 1, #ShipInitialSizeChanges do
	local ShipTypeSize = ShipInitialSizeChanges[i][1]
	local MinSlots = ShipInitialSizeChanges[i][2]
	local MaxSlots = ShipInitialSizeChanges[i][3]
	local MinTechSlots = ShipInitialSizeChanges[i][4]
	local MaxTechSlots = ShipInitialSizeChanges[i][5]
	local MinCargoSlots = ShipInitialSizeChanges[i][6]
	local MaxCargoSlots = ShipInitialSizeChanges[i][7]
	

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {ShipTypeSize, "GcInventoryLayoutGenerationDataEntry.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MinSlots", MinSlots},
					{"MaxSlots", MaxSlots},
					{"MinTechSlots", MinTechSlots},
					{"MaxTechSlots", MaxTechSlots},
					{"MinCargoSlots", MinCargoSlots},
					{"MaxCargoSlots", MaxCargoSlots}
				}
			}
end
for i = 1, #ShipUpgradeSizeChanges do
	local InvType = ShipUpgradeSizeChanges[i][1][1]
	local ShipTypes = ShipUpgradeSizeChanges[i][2]
	
	for j = 1, #ShipTypes do
	
	local ShipType = ShipTypes[j ][1]
			ReplacerC = ShipTypes[j ][2]
			ReplacerB = ShipTypes[j ][3]
			ReplacerA = ShipTypes[j ][4]
			ReplacerS = ShipTypes[j ][5]
			
			OldValueC = ShipTypes[j ][6]
			OldValueB = ShipTypes[j ][7]
			OldValueA = ShipTypes[j ][8]
			OldValueS = ShipTypes[j ][9]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", ShipType, InvType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{OldValueC, ReplacerC},
					{OldValueB, ReplacerB},
					{OldValueA, ReplacerA},
					{OldValueS, ReplacerS}
					--{"35", ReplacerS}
				}
			}
	end
end
for i = 1, #CostChanges do
	local ShipOrTool = CostChanges[i][1][1]
	local ObjectIDs = CostChanges[i][2]

	for j = 1, #ObjectIDs do
		local ObjectID = ObjectIDs[j][1]
			MinValue = ObjectIDs[j][2]
			MaxValue = ObjectIDs[j][3]
			MinSlots = ObjectIDs[j][4]
			MaxSlots = ObjectIDs[j][5]
	
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				["PRECEDING_KEY_WORDS"] = {ShipOrTool},
				["SPECIAL_KEY_WORDS"] = {ObjectID, "GcInventoryCostDataEntry.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MinSlots", MinSlots},
					{"MinValueInMillions", MinValue},
					{"MaxSlots", MaxSlots},
					{"MaxValueInMillions", MaxValue}
				}
			}
	end
end
for i = 1, #CostClassModifierChanges do
	local ShipOrTool = CostClassModifierChanges[i][1][1]
	local ObjectIDs = CostClassModifierChanges[i][2]

	for j = 1, #ObjectIDs do
		local ObjectID = ObjectIDs[j][1]
			C = ObjectIDs[j][2]
			B = ObjectIDs[j][3]
			A = ObjectIDs[j][4]
			S = ObjectIDs[j][5]
	
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				["PRECEDING_KEY_WORDS"] = {ShipOrTool},
				["SPECIAL_KEY_WORDS"] = {ObjectID, "GcInventoryCostDataEntry.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"C", C},
					{"B", B},
					{"A", A},
					{"S", S}
				}
			}
	end
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE