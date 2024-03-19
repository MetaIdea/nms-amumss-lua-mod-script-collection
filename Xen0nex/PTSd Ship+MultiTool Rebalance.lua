ModName = "PTSd Ship+MultiTool Rebalance"
GameVersion = "4_52"
Description = "PTSd module to rebalance the stat & inventory bonuses for Ships, Freighters & Multitools, as well as Ship Spawnrates"

--FuelLessIsBetter =				"TRUE"				--"FALSE", (Deprecated, fixed as of NMS v4.08) Makes the "Fuel" Frigate-boosting upgrade modules for freighters properly increase Fleet Coordination rather than decrease it
--LandingCost = 	50									--0		(TakeOffCost is 100)	[18]		Unknown function

--ShieldLeechMul = 0.07								--0.07	Unknown Function, doesn't seem to affect how much shield you leech with lasers

--SailTakeOffMod = 0.66								--1		Multiplier for launch fuel consumption for takeoff for Solar ships		(Oddly this was never included in GCSPACESHIPGLOBALS.GLOBAL.MBIN like the other ship types?)

TradeRocketSlots =	8								--21	Doesn't seem to have any effect

--As of NMS v4.08, the definition for what ship attributes the "SHIP_AGILE" stat affects appears to mistakenly list Ship_BoostManeuverability twice, instead of Ship_Maneuverability and Ship_BoostManeuverability together.
FixAgilityStat = true			--false			If true, this will try to ensure there is an entry for both Ship_BoostManeuverability and Ship_Maneuverability under the SHIP_AGILE definition
RemoveAgilitySpeed = true		--false			If true, this will make the SHIP_AGILE stat no longer affect Boosting Speed, but only Maneuverability (& Boosting Maneuverability). Either way, this setting can't really affect the final maxed-out Boosting Speed, which is soft-capped based on the intial speed of the ship

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

--Replacers for Shuttle Class C base bonuses for all stats, since its vanilla bonuses are 0 at that Class
	--Note these base bonus values will then be affected by the multipliers in the sections below
ShuttleStatChanges =
{
	{
		{"C"},
		{"Min",		0.8},	-- Default "0"
		{"Max",		4},		-- Default "0"
	},
}

--Replacers for Scientific (Explorer) Class C base shield bonuses (before applying any other multipliers), since they are 0 by default.
	--Note these base bonus values will then be affected by the multipliers in the sections below
ExplorerCShieldChanges =
{
	{
		{"C"},	--Shield only
		{"Min",		2},		-- Default "0"
		{"Max",		4},		-- Default "0"
	},
}

RoyalClassAddAgile = {"C", "B", "A"}		--In vanilla Royal (Exotic) ships only have SHIP_AGILE defined at S Class (since it can only spawn at S class), this adds the same S class value at lower classes as well, just for completeness

Class = {"C", "B", "A", "S"}
LivingShipClass = {"S"}
ShipStats = {"SHIP_DAMAGE", "SHIP_SHIELD", "SHIP_HYPERDRIVE", "SHIP_AGILE"}

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
			{"SHIP_DAMAGE",				1.7,	2.3,	2.3,	1.4},		--			+		0[0.8-4],	3-8,		8-15,		25-30	%
			{"SHIP_SHIELD",				4.6,	4.4,	4.4,	3},			--			+		0[0.8-4],	3-8,		8-15,		25-30	%
			{"SHIP_HYPERDRIVE",			4.3,	5.8,	5.8,	3.7},		--			+		0[0.8-4],	3-8,		8-15,		25-30	%		"Default" Hyperdrive range is 100ly
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		0[0.8-4],	3-5,		8-15,		15-35,	%
		}
	},
	{
		{
			"Fighter"					--	Maneuverability: High (350-445)				Speed: High
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1.25,	1.25,	1.25,	1.25},		--			+		8-15,		24-45,		50-75,		70-90	%
			{"SHIP_SHIELD",				1.33,	1.33,	1.33,	1.33},		--			+		0,			8-15,		24-30,		24-38	%
			{"SHIP_HYPERDRIVE",			1,		1,		1,		1},			--			+		0,			0,			0,			0		%
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		5-15,		15-20,		20-30,		35-45,	%
		}
	},
	{
		{
			"Dropship"		--Hauler		Maneuverability: Low (150-250)				Speed: Low
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				0.75,	0.75,	0.75,	0.75},		--			+		0,			3-8,		8-15,		15-30	%
			{"SHIP_SHIELD",				2.4,	2.4,	2.4,	2.4},		--			+		18-30,		40-55,		60-75,		95-125	%
			{"SHIP_HYPERDRIVE",			1.2,	1.2,	1.2,	1.2},		--			+		5-10,		8-15,		23-37,		45-58	%
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		0,			0-5,		5-10,		10-15,	%
		}
	},
	{
		{
			"Scientific"	--Explorer		Maneuverability: High (350-445)				Speed: High			Takeoff cost is 0.5x
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1,		1,		1,		1},			--			+		0,			0,			0,			0		%
			{"SHIP_SHIELD",				2.5,	2.6,	2.8,	2.6},		--			+		0[2-4],		4-16,		15-25,		30-40	%
			{"SHIP_HYPERDRIVE",			2.95,	2.95,	2.95,	2.95},		--			+		15-25,		30-45,		50-85,		90-120	%				(up to ~4,200 ly maxed out in 3.99?)
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		5-10,		10-20,		20-25,		25-32,	%
		}
	},
	{
		{
			"Royal"			--Exotic		Maneuverability: High (390-445)				Speed: High
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				0.2,	0.4,	0.7,	0.7},		--			+		35-50,		35-50,		35-50,		50-75	%
			{"SHIP_SHIELD",				0.6,	1.2,	2.0,	2},			--			+		55-60,		55-60,		55-60,		70-90	%
			{"SHIP_HYPERDRIVE",			0.5,	1.0,	1.7,	1.7},		--			+		50-65,		50-65,		50-65,		75-95	%
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		N/A[40-50],	N/A[40-50],	N/A[40-50],	40-50,	%
		}
	},
	{
		{
			"Sail"			--Solar		Maneuverability: High (350-445 +10%)			Speed: High ??? +15%			Pulse jump costs only 20% of base pulse fuel rate, launch fuel auto-recharges
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				0.94,	0.94,	0.94,	0.94},		--			+		8-15,		23-45,		45-60,		60-75	%
			{"SHIP_SHIELD",				1.5,	1.5,	1.5,	1.5},		--			+		8-15,		8-30,		23-38,		23-50	%
			{"SHIP_HYPERDRIVE",			0.75,	0.75,	0.75,	0.9},		--			+		8-15,		15-30,		30-45,		38-50	%
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		5-10,		10-20,		20-30,		35-40,	%
		}
	},
	{
		{
			"Robot"	--Sentinel Interceptor	Maneuverability: Low (But 1.5 boost manuv mult on engine)	Speed: Low			(Changed in "PTSd Starship Speed Rebalance.lua" to be a buffed Shuttle with boost manuv mult)
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				1.0,	1.0,	1.0,	1.0},		--			+		8-15,		24-45,		50-75,		60-80	%
			{"SHIP_SHIELD",				1.9,	1.9,	1.9,	1.9},		--			+		3-8,		8-15,		12-20,		20-35	%
			{"SHIP_HYPERDRIVE",			1.6,	1.6,	1.6,	1.6},		--			+		0,			3-8,		3-10,		5-10	%
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		8-15,		20-30,		20-30,		40-50,	%
		}
	},
	{
		{
			"Freighter"					
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"FREI_HYPERDRIVE",			3.3,	4.4,	2.2,	2.2},		--			+		7-15,		10-19,		40-60,		60-80	%		"Default" Hyperdrive range is 100ly		(up to ~6,500 ly maxed out in 3.99?)
			{"FREI_FLEET",				0.75,	0.75,	0.75,	0.75}		--			+		1-10,		10-20,		20-40,		40-60	%		Fleet Coordination base amount maybe is 25??? 15??? Final stat on fresh freighters seems to range from ~20- ~31, but with the yellow "bonus" gauge about as long as the white part...
		}
	},
}

LivingShipStatChanges =
{
	{
		{
			"Alien"			--Living Ship	Maneuverability: Low (150-250)				Speed: Low
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"SHIP_DAMAGE",				0.75,	0.75,	0.75,	0.75},		--			+		N/A,		N/A,		N/A,		50-75	%
			{"SHIP_SHIELD",				1.75,	1.75,	1.75,	1.75},		--			+		N/A,		N/A,		N/A,		15-38	%
			{"SHIP_HYPERDRIVE",			2.7,	2.7,	2.7,	2.7},		--			+		N/A,		N/A,		N/A,		75-95	%
			--{"SHIP_AGILE",				1.0,	1.0,	1.0,	1.0},		--			+		N/A,		N/A,		N/A,		10-15,	%
		}
	}
}

--Starship "Agility" changes. These are applied to the base engine attributes for the ship's weight class set in GCSPACESHIPGLOBALS.GLOBAL.MBIN  IE a value of "-25" means the maneuverability will be 25% lower than usual for that ship weight
	--Replaces the "SHIP_AGILE" stats for starships. (PTSd makes this only affect Regular & Boosting Maneuverability, not Boosting Speed)
	--The function below will automatically make each Class Min & Max value be 0.95x and 1.05x of these values
	--Note that the game already gives ships some random variation in speed & maneuverability, and gives some extra bonuses depending on Class level. 
ShipAgileChanges	=
{
	{
		{--Replacer for Agility at	C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			"Shuttle",				7.5,	10,		12.5,	15,			--			+		0[0.8-4],	3-5,		8-15,		15-35,	%
		},
		{"C", "B", "A", "S"}
	},
	{
		{
			"Fighter",				25,		33.3,	41.7,	50,			--			+		5-15,		15-20,		20-30,		35-45,	%
		},
		{"C", "B", "A", "S"}	
	},
	{
		{
			"Dropship",				0,		0,		0,		0,			--			+		0,			0-5,		5-10,		10-15,	%
		},
		{"C", "B", "A", "S"}		
	},
	{
		{
			"Scientific",			15,		20,		25,		30,			--			+		5-10,		10-20,		20-25,		25-32,	%
		},
		{"C", "B", "A", "S"}		
	},
	{
		{
			"Royal",				10,		13.3,	16.7,	20,			--			+		N/A[40-50],	N/A[40-50],	N/A[40-50],	40-50,	%
		},
		{"C", "B", "A", "S"}	
	},
	{
		{
			"Sail",					-30,	-25,	-20,	-15,		--			+		5-10,		10-20,		20-30,		35-40,	%
		},
		{"C", "B", "A", "S"}		
	},
	{
		{
			"Robot",				40,		53.3,	66.7,	80,			--			+		8-15,		20-30,		20-30,		40-50,	%
		},
		{"C", "B", "A", "S"}		
	},
	{
		{
			"Alien",				25,		33.3,	41.6,	50,			--			+		N/A,		N/A,		N/A,		10-15,	%
		},
		{"S"}			
	},
}

ShipTypeSizes = {"SciSmall", "SciMedium", "SciLarge", "FgtSmall", "FgtMedium", "FgtLarge", "ShuSmall", "ShtMedium", "ShtLarge", "DrpSmall", "DrpMedium", "DrpLarge", "RoySmall", "RoyMedium", "RoyLarge", "AlienSmall", "AlienMedium", "AlienLarge", "SailSmall", "SailMedium", "SailLarge", "RobotSmall", "RobotMedium", "RobotLarge", "FreighterSmall", "FreighterMedium", "FreighterLarge"}

ShipBounds = 
{	--Maximum Width(X) and Height(Y) for the boundaries where slots can appear in inventories for Small(S), Medium(M), or Large(L) varieties of ships. By default, Supercharged slots within X=9, Y=2	(upper left slot is X=0, Y0)
		{
			{"Bounds"},--	Cargo	SX	SY	MX	MY	LX	LY											Cargo	SX	SY	MX	MY	LX	LY	
			{						5,	5,	10,	5,	10,	7},				--Can vary by ship, most commonly	7,	5,	10,	5,	10,	12		(5,	5,	10,	5,	10,	7)
		},
		{
			{"TechBounds"},--Tech	SX	SY	MX	MY	LX	LY											Tech	SX	SY	MX	MY	LX	LY	
			{						6,	3,	10,	3,	10,	5},				--Can vary by ship, most commonly	7,	3,	10,	3,	10,	6		(6,	3,	10,	3,	10,	5)
		},
}

--Replacers for INITIAL Inventory size found on spawned purchaseable / crashed ships. NOT maximum upgradeable size for ships.
	--NOTE as of NMS 4.0, any reference in game files to "cargo" slots/inventory are actually referring to the deprecated 3rd inventory type, so no longer have any effect
	--NOTE: # of supercharged slots can not be changed for starships or multi-tools, only for exocraft and the exosuit in DEFAULTSAVEDATA.MBIN
		--However, the bounds where supercharged slots can be set for multi-tools. SX & SY set these bounds (top left slot is X=0, Y=0)  (Does not appear to wrk for starships?)
ShipInitialSizeChanges	=
{	--Ship type & size			MinCarg	MaxCarg		MinTech	MaxTech		SX	SY		Vanilla	MinCarg	MaxCarg		MinTech	MaxTech		SX	SY
	{"ShuSmall",				10,		16,			9,		15,			9,	2},			--	24,		32,			12,		19,			9,	2
	{"ShtMedium",				15,		21,			14,		20,			9,	2},			--	28,		36,			18,		26,			9,	2
	{"ShtLarge",				19,		25,			19,		25,			9,	2},			--	32,		42,			18,		28,			9,	2	Unused in-game by default
	{"FgtSmall",				6,		11,			10,		18,			9,	2},			--	24,		28,			14,		19,			9,	2
	{"FgtMedium",				10,		14,			16,		24,			9,	2},			--	24,		32,			14,		24,			9,	2
	{"FgtLarge",				14,		18,			23,		31,			9,	2},			--	30,		38,			19,		30,			9,	2
	{"DrpSmall",				15,		26,			7,		12,			9,	2},			--	30,		36,			12,		18,			9,	2
	{"DrpMedium",				24,		35,			11,		16,			9,	2},			--	36,		40,			18,		24,			9,	2
	{"DrpLarge",				34,		45,			16,		21,			9,	2},			--	40,		48,			20,		30,			9,	2
	{"SciSmall",				6,		10,			13,		22,			9,	2},			--	24,		29,			14,		19,			9,	2
	{"SciMedium",				10,		14,			21,		31,			9,	2},			--	24,		32,			19,		24,			9,	2
	{"SciLarge",				13,		17,			29,		38,			9,	2},			--	30,		38,			24,		30,			9,	2
	{"RoySmall",				4,		7,			9,		16,			9,	2},			--	24,		30,			14,		19,			9,	2	Unused in-game by default
	{"RoyMedium",				7,		11,			16,		22,			9,	2},			--	24,		30,			20,		28,			9,	2
	{"RoyLarge",				10,		13,			20,		27,			9,	2},			--	24,		32,			26,		30,			9,	2	Unused in-game by default
	{"AlienSmall",				10,		10,			26,		26,			9,	2},			--	36,		36,			30,		30,			9,	2	Unused in-game by default
	{"AlienMedium",				20,		20,			34,		34,			9,	2},			--	36,		36,			30,		30,			9,	2
	{"AlienLarge",				20,		20,			38,		38,			9,	2},			--	36,		36,			30,		30,			9,	2	Unused in-game by default
	{"SailSmall",				8,		20,			9,		25,			9,	2},			--	24,		30,			13,		18,			9,	2
	{"SailMedium",				12,		18,			16,		22,			9,	2},			--	24,		32,			14,		22,			9,	2	Unused in-game by default
	{"SailLarge",				17,		23,			20,		27,			9,	2},			--	30,		36,			20,		30,			9,	2	Unused in-game by default
	{"RobotSmall",				9,		13,			15,		22,			9,	2},			--	32,		40,			22,		28,			-1,	-1	Seems unused in-game by default?
	{"RobotMedium",				9,		13,			15,		22,			9,	2},			--	32,		40,			22,		28,			-1,	-1	Seems unused in-game by default?
	{"RobotLarge",				9,		13,			15,		22,			9,	2},			--	32,		40,			22,		28,			-1,	-1
	{"FreighterSmall",			17,		30,			8,		14,			9,	2},			--	15,		19,			8,		12,			9,	2	"Regular" Freighters
	{"FreighterMedium",			28,		41,			13,		19,			9,	2},			--	24,		34,			12,		20,			9,	2	"Capital" Freighters
	{"FreighterLarge",			39,		52,			18,		24,			9,	2},			--	35,		48,			18,		30,			9,	2	Unused in-game by default
}

--Replacers for maximum UPGRADEABLE Inventory size for ships. NOT initial sizes for spawned ships.
ShipUpgradeSizeChanges	=
{
	{
		{"MaxInventoryCapacity"},	--General Inventory						
		{
		--Replacers for max UPGRADEABLE size at	C,		B,		A,		S	class		Vanilla is	C,		B,		A,		S	class
			{"Shuttle",							20,		25,		30,		35},		--				50,		80,		90,		110,
			{"Fighter",							15,		20,		25,		30},		--				50,		70,		80,		100,
			{"Dropship",						31,		39,		47,		55},		--				60,		80,		100,	120,
			{"Scientific",						15,		20,		25,		30},		--				60,		80,		90,		110,
			{"Royal",							10,		15,		20,		25},		--				105,	105,	105,	105,
			--{"Alien",							0,		0,		0,		30},		--				120,	120,	120,	120,		--Handled in LivingShipUpgradeSizeChanges section below
			{"Sail",							17,		23,		29,		35},		--				50,		70,		90,		110,
			{"Robot",							15,		20,		25,		30},		--				60,		80,		100,	120,
			{"Freighter",						35,		45,		55,		65},		--				60,		80,		100,	120,
			{"PlayerFreighter",					0,		0,		0,		0},			--				0,		0,		0,		0,			--Most likely PlayerFreighter is just some obsolete, unused data, but included for completeness
		}
	},
	{
		{"MaxTechInventoryCapacity"},	--Tech Inventory					
		{
		--Replacers for max UPGRADEABLE size at	C,		B,		A,		S	class		Vanilla is	C,		B,		A,		S	class
			{"Shuttle",							18,		24,		30,		40},		--				25,		40,		50,		60,
			{"Fighter",							20,		26,		32,		44},		--				30,		40,		50,		60,
			{"Dropship",						17,		22,		27,		36},		--				30,		40,		50,		60,
			{"Scientific",						24,		32,		40,		50},		--				30,		40,		50,		60,
			{"Royal",							18,		24,		30,		40},		--				60,		60,		60,		60,
			--{"Alien",							0,		0,		0,		48},		--				60,		60,		60,		60,		--Handled in LivingShipUpgradeSizeChanges section below
			{"Sail",							18,		24,		30,		40},		--				30,		40,		50,		60,
			{"Robot",							18,		24,		30,		40},		--				30,		40,		50,		60,
			{"Freighter",						18,		24,		30,		36},		--				30,		40,		50,		60,
			{"PlayerFreighter",					0,		0,		0,		0},			--				0,		0,		0,		0},
		},
	}
}

LivingShipUpgradeSizeChanges =
{
	{
		{"MaxInventoryCapacity"},	--General Inventory						
		{--New max UPGRADEABLE size at			C,		B,		A,		S	class		Vanilla is	C,		B,		A,		S	class
			{"Alien",							30,		30,		30,		30},		--				120,	120,	120,	120,
		}
	},
	{
		{"MaxTechInventoryCapacity"},	--Tech Inventory					
		{
			{"Alien",							48,		48,		48,		48},		--				60,		60,		60,		60,
		},
	},
}

VehicleBounds = 
{	--Maximum Width(X) and Height(Y) for the boundaries where slots can appear in inventories for different size classes of exocraft
	{
		{"VehicleSmall"},	--Pilgrim, Nomad
		{
			{
				{"Bounds"},		--Cargo	X	Y			Cargo	X	Y
				{						6,	2},				--	7,	5
			},
			{
				{"TechBounds"},--Tech	X	Y			Tech	X	Y
				{						6,	4},				--	10,	3		[gaps at 5,0	5,1		5,2		5,3]
			},
		},
	},
	{
		{"VehicleMedium"},	--Roamer, Nautilon, Minotaur
		{
			{
				{"Bounds"},		--Cargo	X	Y			Cargo	X	Y
				{						7,	3},				--	7,	5
			},
			{
				{"TechBounds"},--Tech	X	Y			Tech	X	Y
				{						7,	4},				--	10,	3		[gaps at 0,2	3,3]
			},
		},
	},
	{
		{"VehicleLarge"},	--Colossus
		{
			{
				{"Bounds"},		--Cargo	X	Y			Cargo	X	Y
				{						7,	5},				--	7,	5
			},
			{
				{"TechBounds"},--Tech	X	Y			Tech	X	Y
				{						8,	4},				--	10,	3		[gaps at 0,2	3,3		7,0		7,1]
			},
		},
	},
}

--Replacers for INITIAL Inventory size found on exocraft/vehicles. Currently no way to upgrade inventory sizes in vanilla.
VehicleInitialSizeChanges	=
{	--Vehicle type & size	MinCarg	MaxCarg		MinTech	MaxTech								Vanilla	MinCarg	MaxCarg		MinTech	MaxTech
	{"VehicleSmall",		10,		10,			22,		22},		--	Pilgrim, Nomad				30,		30,			26,		26
	{"VehicleMedium",		20,		20,			26,		26},		--	Roamer, Nautilon, Minotaur	40,		40,			28,		28
	{"VehicleLarge",		35,		35,			28,		28},		--	Colossus					50,		50,			30,		30
}

--[[NomadAddedInventory = [[
	  <Property name="ValidSlotIndices">
		  <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="2" />
            <Property name="Y" value="0" />
          </Property>
		  <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="5" />
            <Property name="Y" value="0" />
          </Property>
		  <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="0" />
            <Property name="Y" value="1" />
          </Property>
		  <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="3" />
            <Property name="Y" value="1" />
          </Property>
	  </Property>]]

--Removes charged slots from these vehicles, so that different amounts or locations of charged slots can be added
VehicleRemoveChargedSlots = {"Buggy", "Bike", "Truck", "WheeledBike", "Submarine", "Mech"}
	--These correspond to: 		Roamer, Nomad, Colossus, Pilgrim, Nautilon, Minotaur.		Note that "Hovercraft" is unused

VehiclesAdd3ChargedSlots = {"Buggy", "Truck", "Submarine", "Mech"}
VehiclesAdd4ChargedSlots = {"WheeledBike", "Bike"}

Add3ChargedSlots = [[
          <Property name="SpecialSlots">
            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="1" />
                <Property name="Y" value="0" />
              </Property>
            </Property>
            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="4" />
                <Property name="Y" value="1" />
              </Property>
            </Property>
            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="4" />
                <Property name="Y" value="2" />
              </Property>
            </Property>
          </Property>]]
		  
Add4ChargedSlots = [[
          <Property name="SpecialSlots">
            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="1" />
                <Property name="Y" value="0" />
              </Property>
            </Property>
            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="3" />
                <Property name="Y" value="1" />
              </Property>
            </Property>
            <Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="3" />
                <Property name="Y" value="2" />
              </Property>
            </Property>
			<Property value="GcInventorySpecialSlot.xml">
              <Property name="Type" value="GcInventorySpecialSlotType.xml">
                <Property name="InventorySpecialSlotType" value="TechBonus" />
              </Property>
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="1" />
                <Property name="Y" value="2" />
              </Property>
            </Property>
          </Property>]]

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
		--Base value in millions 	MinValue	MaxValue	MinSlots	MaxSlots																	Price at Class C with lowest inventory and at Class S with highest inventory as seen in game v3.99 by players and catalogued to the wiki	(And max S rank cost after undoing the S rank cost bonus)
			{"Shuttle",				0.75,		60*0.5,		10,			27},		--Vanilla values are 0.85 mil,		40 mil,			20,	44		Catalogued at 0.51 mil	~	6.6 mil		(4.4 mil)			18	~	28	general &	3	~	8	tech slots initially
			{"Fighter",				1.25,		90*0.72,	6,			19},		--Vanilla values are 1.5 mil,		10.5 mil,		19,	30		Catalogued at 0.55 mil	~	57.5 mil	(28.75 mil)			15	~	38	general &	2	~	12	tech slots initially
			{"Dropship",			4.5*0.38,	110*0.65,	15,			45},		--Vanilla values are 4.5 mil,		70 mil,			25,	48		Catalogued at 4.5 mil	~	126 mil		(70 mil)			25	~	48	general &	2	~	8	tech slots initially
			{"Scientific",			1*1.5,		65*1.1,		6,			18},		--Vanilla values are 1.25 mil,		9.2 mil,		19,	30		Catalogued at 0.445 mil	~	39 mil		(26 mil)			15	~	38	general &	3	~	12	tech slots initially
			{"Royal",				2.5,		8*1.21,		5,			11},		--Vanilla values are 5 mil,			12 mil,			15,	20		Catalogued at 5 mil		~	12 mil		(12 mil)			15	~	20	general &	4	~	6	tech slots initially
			{"Alien",				5,			70,			16,			30},		--Vanilla values are 5 mil,			70 mil,			25,	48		Catalogued at 2.98 mil	~	2.98mil		(2.98 mil)			22	~	22	general &	21	~	21	tech slots initially
			{"Sail",				1*0.95,		100*0.4,	8,			20},		--Vanilla values are 2.2 mil,		11.1 mil,		19,	36		Catalogued at 1.00 mil	~	2.42mil		(2.2 mil)			15	~	19	general &	4	~	6	tech slots initially
			{"Robot",				6,			48,			5,			15},		--Vanilla values are 4.2 mil,		34.5 mil,		19,	36		Catalogued at ??? mil		~	??? mil		(??? mil)		???	~	???	tech slots initially	Has CoolMultiplier of 20
			{"Freighter",			25,			200,		17,			45},		--Vanilla values are 5 mil,			300 mil,		15,	48		Catalogued at 5 mil		~	23 mil  	(11.5 mil)			15	~	19	general &	3	~	6	tech slots initially for Regular,		26.15 mil	~	178 mil 	(89 mil) 24	~	34	general &	5	~	9	tech slots initially for Capital (Reg and Capital just Small and Medium size freighters)
			{"PlayerFreighter",		25,			200,		17,			45}			--Vanilla values are 5 mil,			300 mil,		15,	48		Catalogued at 5 mil		~	23 mil  	(11.5 mil)			15	~	19	general &	3	~	6	tech slots initially for Regular,		26.15 mil	~	178 mil 	(89 mil) 24	~	34	general &	5	~	9	tech slots initially for Capital (Reg and Capital just Small and Medium size freighters)
		}
	},
	{
		{
			"WeaponCostData"
		},
		{													--MinSlots & MaxSlots here don't actually control slots, just lets the game know how many slots to expect on spawned tools in order to extrapolate the price at different toolsizes (in vanilla many of these slot values are inaccurate)
		--Base value in millions 	MinValue	MaxValue	MinSlots	MaxSlots																	Price at Class C with lowest inventory and at Class S with highest inventory as seen in game v3.99 by players and catalogued to the wiki	(And max S rank cost after undoing the S rank cost bonus)
			{"Pistol",				0.08,		0.4*2.5,	6,			20},		--Vanilla values are 0.08 mil,		0.28 mil,		10,	30		Catalogued at 0.0455 mil	~	1.165 mil	(0.388 mil)		5	~	10	tech slots initially
			{"Rifle",				0.635,		3*1.25,		10,			20},		--Vanilla values are 1.5 mil,		4 mil,			17,	30		Catalogued at 0.635 mil		~	3.7 mil		(2.96 mil)		11	~	24	tech slots initially
			{"Pristine",			0.5,		5*1.25,		6,			20},		--Vanilla values are 0.5 mil,		5 mil,			11,	30		Catalogued at 0.5 mil		~	7.5 mil		(5 mil)			5	~	24	tech slots initially
			{"Royal",				1.5*0.33,	7.5*0.4125,	10,			20},		--Vanilla values are 1 mil,			7 mil,			13,	30		Catalogued at 5.15 mil		~	??? mil		(??? mil)		11	~	???	tech slots initially	(Only offered as C Class from Pillars?)
			{"Alien",				0.5,		5*1.25,		6,			20},		--Vanilla values are 0.5 mil,		5 mil,			11,	30		Catalogued at 0.5 mil		~	7.5 mil		(5 mil)			5	~	24	tech slots initially
			{"Robot",				1,			5*1.25,		6,			20},		--Vanilla values are 0.5 mil,		6 mil,			17,	30		Catalogued at ??? mil		~	??? mil		(??? mil)		???	~	???	tech slots initially	Has CoolMultiplier of 20
			{"Atlas",				2.5,		5,			6,			20},		--Vanilla values are 0.5 mil,		5 mil,			17,	30		Catalogued at ??? mil		~	??? mil		(??? mil)		???	~	???	tech slots initially
			{"AtlasYellow",			2.5,		5,			6,			20},		--Vanilla values are 0.5 mil,		5 mil,			17,	30		Catalogued at ??? mil		~	??? mil		(??? mil)		???	~	???	tech slots initially
			{"AtlasBlue",			2.5,		5,			6,			20},		--Vanilla values are 0.5 mil,		5 mil,			17,	30		Catalogued at ??? mil		~	??? mil		(??? mil)		???	~	???	tech slots initially
			{"Staff",				1,			4*1.25,		6,			20}			--Vanilla values are 0.5 mil,		4 mil,			17,	30		Catalogued at ??? mil		~	??? mil		(??? mil)		???	~	???	tech slots initially
		}
	},
}

--Replacers for the TradeInMultiplier (vanilla value of 70), which sets the % of the value of your ship/tool that you get when trading it for another ship/tool or for scrapping it. Setting this to 70 will retain the vanilla trade in/scrap value of 70%
	--Lower this to offset the increased value for scrapping crashed A or S class ships		(not necessary in NMS v3.82 as now only Shuttles or Exotics will spawn as crashed ships with A or S class?)
		--Supposedly NMS v3.85+ has re-enabled all shiptypes to spawn as S-Class at crashsites?
ShipTradeInMultiplier = 40												--70				Applies to both trading in to buy a differnt ship or scrapping it at a space station ship salvage terminal
FreighterTradeInMultiplier = 70											--70
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
			{"Sail",					0,		50,		150,	400},				--Vanilla values are +		0,		10,		25,		50	%
			{"Robot",					0,		25,		75,		150},				--Vanilla values are +		0,		10,		25,		50	%
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
			{"Pistol",					0,		100,	300,	700},				--Vanilla values are +		0,		5,		15,		25	%	
			{"Rifle",					0,		50,		150,	300},				--Vanilla values are +		0,		5,		15,		25	%
			{"Pristine",				0,		50,		150,	400},				--Vanilla values are +		0,		10,		25,		50	%
			{"Royal",					0,		50,		150,	300},				--Vanilla values are +		0,		10,		25,		50	%
			{"Alien",					0,		50,		150,	400},				--Vanilla values are +		0,		10,		25,		50	%
			{"Robot",					0,		50,		150,	300},				--Vanilla values are +		0,		10,		25,		50	%
			{"Atlas",					0,		50,		150,	300},				--Vanilla values are +		0,		1,		2,		3	%
			{"AtlasYellow",				0,		50,		150,	300},				--Vanilla values are +		0,		1,		2,		3	%
			{"AtlasBlue",				0,		50,		150,	300},				--Vanilla values are +		0,		1,		2,		3	%
			{"Staff",					0,		50,		150,	300},				--Vanilla values are +		0,		10,		25,		50	%
		}
	},
}

--Extra multiplier for Pistol's WEAPON_MINING Min value at S Class to make it equivalent to being +25-35% instead of +20-35%
PistolMiningSMinMult =			1.25					--1
--Extra multiplier for Sentinel & Staff Multi-Tool's WEAPON_DAMAGE Min value at S Class to make it equivalent to being +35-50% instead of +32-50%
SentinelDamageSMinMult =		1.09375						--1
--Extra multipliers for the "Min" Scanning value of S Class Experimental & Royal Multi-tools, so they have an effective "base" range of bonuses of 90-100 instead of always exactly 100 at S Class, before apply the modifiers in ToolStatChanges below
ExperimentalScanSMinMult =		0.9						--1		(Base is 100)
RoyalScanSMinMult =				0.9						--1		(Base is 100)

--Multipliers to apply on top of the Multitool stat bonuses
ToolStatChanges	=
{
	{
		{
			"Pistol"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1,		1,		1,		1},			--			+		0,			0,			0,			0		%
			{"WEAPON_MINING",			2.0,	2.2,	2.5,	2.0},		--			+		5-10,		10-15,		15-20,		20-35[25-35]%
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
			{"WEAPON_MINING",			1,		1,		1,		1},			--			+		5-10,		10-20,		20-25,		25-30	%
			{"WEAPON_SCAN",				1.25,	1.25,	1.25,	1.25}		--			+		40-50,		60-70,		80-90,		100[90-100]	%
		}
	},
	{
		{
			"Royal"			--"Exotic"	(15% chance to be offered from defeated Sentinel Pillars. Always found at C Class?)
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1.3,	1.3,	1.3,	1.3},		--			+		0-5,		5-10,		10-15,		15-25	%
			{"WEAPON_MINING",			1.3,	1.3,	1.3,	1.3},		--			+		5-10,		10-20,		20-25,		25-30	%
			{"WEAPON_SCAN",				0.9,	0.9,	0.9,	0.9}		--			+		40-50,		60-70,		80-90,		100[90-100]	%
		}
	},
	{
		{
			"Alien"			--"Exotic"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			1.43,	1.43,	1.43,	1.43},		--			+		10-15,		15-20,		20-25,		25-35	%
			{"WEAPON_MINING",			1,		1,		1,		1},			--			+		0-5,		5-10,		10-15,		15-20	%
			{"WEAPON_SCAN",				0.8,	0.8,	0.8,	0.8}		--			+		20-25,		30-35,		40-45,		50-60	%
		}
	},
	{
		{
			"Robot"			--"Sentinel"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			0.57,	0.76,	0.9,	0.8},		--			+		10-20,		15-25,		20-30,		32-50[35-50]%
			{"WEAPON_MINING",			1,		1,		2,		2},			--			+		0-5,		5-10,		5-10,		10-15	%
			{"WEAPON_SCAN",				1.1,	1.1,	1.1,	1}			--			+		20-25,		30-35,		35-45,		45-55	%
		}
	},
	{
		{
			"Atlas"			--"Atlantid"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			0.5,	1.0,	1.0,	1.0},		--			+		5-10,		5-10,		10-15,		10-20	%
			{"WEAPON_MINING",			1.2,	1.2,	1.2,	1.2},		--			+		0-15,		15-25,		20-30,		35-50	%
			{"WEAPON_SCAN",				1.3,	1.3,	1.3,	1.3}		--			+		20-25,		30-35,		35-45,		40-50	%
		}
	},
	{
		{
			"AtlasYellow"	--"Atlantid" Yellow version?
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			0.5,	1.0,	1.0,	1.0},		--			+		5-10,		5-10,		10-15,		10-20	%
			{"WEAPON_MINING",			1.2,	1.2,	1.2,	1.2},		--			+		0-15,		15-25,		20-30,		35-50	%
			{"WEAPON_SCAN",				1.3,	1.3,	1.3,	1.3}		--			+		20-25,		30-35,		35-45,		40-50	%
		}
	},
	{
		{
			"AtlasBlue"		--"Atlantid" Blue version?
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			0.5,	1.0,	1.0,	1.0},		--			+		5-10,		5-10,		10-15,		10-20	%
			{"WEAPON_MINING",			1.2,	1.2,	1.2,	1.2},		--			+		0-15,		15-25,		20-30,		35-50	%
			{"WEAPON_SCAN",				1.3,	1.3,	1.3,	1.3}		--			+		20-25,		30-35,		35-45,		40-50	%
		}
	},
	{
		{
			"Staff"			--"Voltaic Staff"
		},
		{--Multipliers for stats at		C,		B,		A,		S	class	(Vanilla bonus at	C,			B,			A,			S	class)
			{"WEAPON_DAMAGE",			0.5,	0.667,	0.8,	0.7},		--			+		10-20,		15-25,		20-30,		25-50[35-50]%
			{"WEAPON_MINING",			1.1,	1.1,	2.2,	2.2},		--			+		0-5,		5-10,		5-10,		10-15	%
			{"WEAPON_SCAN",				1.5,	1.5,	1.5,	1.5}		--			+		20-25,		30-35,		35-45,		40-50	%
		}
	},
}

--If the game tries to spawn a Multi-Tool in a Space Station with a number of slots which can't fit in the TechBounds below, the game crashes when warping to that system
ToolBounds = 
{	--Maximum Width(X) and Height(Y) for the boundaries where slots can appear in inventories for different size classes of multi-tools
	{
		{"WeaponSmall"},	--Pistols,	by default, supercharged slots within X=5, Y=3	(upper left slot is X=0, Y=0)
		{
			{
				{"Bounds"},		--Cargo	X	Y			Cargo	X	Y		Unclear if Cargo slots have any effect
				{						5,	3},				--	6,	3		Small
				{						7,	3},				--	7,	3		Standard
				{						8,	3},				--	10,	6		Large
			},
			{
				{"TechBounds"},--Tech	X	Y			Tech	X	Y
				{						5,	3},				--	6,	3		Small
				{						7,	3},				--	7,	3		Standard
				{						8,	3},				--	10,	6		Large
			},
		},
	},
	{
		{"WeaponMedium"},	--???,	supercharged slots within X=6, Y=3	(upper left slot is 0,0)
		{
			{
				{"Bounds"},		--Cargo	X	Y			Cargo	X	Y		Unclear if Cargo slots have any effect
				{						6,	3},				--	6,	3		Small
				{						7,	3},				--	8,	3		Standard
				{						8,	3},				--	10,	6		Large
			},
			{
				{"TechBounds"},--Tech	X	Y			Tech	X	Y
				{						6,	3},				--	6,	3		Small
				{						7,	3},				--	8,	3		Standard
				{						8,	3},				--	10,	6		Large
			},
		},
	},
	{
		{"WeaponLarge"},	--???,	supercharged slots within X=6, Y=4	(upper left slot is 0,0)
		{
			{
				{"Bounds"},		--Cargo	X	Y			Cargo	X	Y		Unclear if Cargo slots have any effect
				{						7,	3},				--	8,	3		Small
				{						10,	3},				--	10,	3		Standard	("WeaponLarge" is unused by default in PTSd, but needs to have at least 30 slots on Standard & Large sizes to avoid a crash if it is enabled)
				{						10,	3},				--	10,	6		Large
			},
			{
				{"TechBounds"},--Tech	X	Y			Tech	X	Y
				{						7,	3},				--	8,	3		Small
				{						10,	3},				--	10,	3		Standard
				{						10,	3},				--	10,	6		Large
			},
		},
	},
}

--Initial slots found on different size Multi-Tools (Pistols only come in Small), and the X & Y bounds for where supercharged slots can appear (upper left slot is 0, 0)
	--For some reason, the game does not always abide by the Min & Max values set here, and uses the vanilla values anyway. If the game tries to spawn a Multi-Tool in a Space Station with a number of slots which can't fit in the TechBounds above, the game crashes when warping to that system
ToolSizeChanges =
{						--	Min		Max		Charged slot bounds X	Y				Min		Max		Charged slot bounds X	Y
	{"WeaponSmall",			6,		9,							5,	2},			--	9,		18,							5,	3
	{"WeaponMedium",		10,		16,							6,	2},			--	13,		20,							6,	3
	{"WeaponLarge",			12,		16,							7,	2}			--	17,		30,							6,	4
}

--Changes the "SizeType" of Rifles and Sentinel Multi-Tools. Normally Pistols are WeaponSmall, Rifles are WeaponLarge, and all others are WeaponMedium
	--Changing this value appears to also change what type of grip animation the game uses when holding the multi-tool, from pistol style grip for WeaponSmall & WeaponMedium, to a rifle style grip for WeaponLarge
RifleSize =				"WeaponMedium"				--"WeaponLarge"			Changed away from WeaponLarge so the game won't try to spawn multi-tools with more than 24 slots which crashes the game with PTSd's smaller Multi-Tool TechBounds size
AtlasSize =				"WeaponMedium"				--"WeaponLarge"
StaffSize =				"WeaponMedium"				--"WeaponLarge"
SentinelRifleSize =		"WeaponMedium"				--"WeaponLarge"
SentinelPistolSize =	"WeaponSmall"				--"WeaponMedium"

--Replacers for maximum UPGRADEABLE Inventory size for all Multi-Tools. NOT initial sizes for spawned Multi-Tools.
ToolUpgradeSizeChanges	=
{
	{
		{"MaxInventoryCapacity"},
		--C,		B,		A,		S	class			Vanilla is	C,		B,		A,		S	class
		{12,		16,		20,		24},					--		21,		30,		45,		60},
	}
}

RoyalAgileAdd = [[<Property value="GcInventoryGenerationBaseStatDataEntry.xml">
              <Property name="BaseStatID" value="SHIP_AGILE" />
              <Property name="Min" value="40" />
              <Property name="Max" value="50" />
              <Property name="MinFixedAdd" value="0" />
              <Property name="MaxFixedAdd" value="0" />
            </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= Description,         
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
							["INTEGER_TO_FLOAT"] = "FORCE",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", "Pistol","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID", "WEAPON_MINING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min", PistolMiningSMinMult}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", "Robot","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID", "WEAPON_DAMAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min", SentinelDamageSMinMult}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", "Staff","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID", "WEAPON_DAMAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min", SentinelDamageSMinMult}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", "Pristine","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID", "WEAPON_SCAN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min", ExperimentalScanSMinMult}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData", "Royal","BaseStatsPerClass","S"},
							["SPECIAL_KEY_WORDS"] = {"BaseStatID", "WEAPON_SCAN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Min", RoyalScanSMinMult}
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
						--[[{
							["SPECIAL_KEY_WORDS"] = {"StatsType", "Freighter_Fleet_Fuel"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"LessIsBetter", FuelLessIsBetter}
							}
						}]]
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_LARGE"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--4		Unclear what this does
								--{"MaxSize",	3},			--4		Unclear what this does
								{"SizeType",	RifleSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_ATLAS"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--4		Unclear what this does
								--{"MaxSize",	3},			--4		Unclear what this does
								{"SizeType",	AtlasSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_ATLAS_Y"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--4		Unclear what this does
								--{"MaxSize",	3},			--4		Unclear what this does
								{"SizeType",	AtlasSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_ATLAS_B"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--4		Unclear what this does
								--{"MaxSize",	3},			--4		Unclear what this does
								{"SizeType",	AtlasSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_LARGE"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--4		Unclear what this does
								--{"MaxSize",	3},			--4		Unclear what this does
								{"SizeType",	StaffSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_ROBOTBIG"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--4		Unclear what this does
								--{"MaxSize",	3},			--4		Unclear what this does
								{"SizeType",	SentinelRifleSize},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_ROBOT"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"MinSize",	2},			--2		Unclear what this does
								--{"MaxSize",	3},			--3		Unclear what this does
								{"SizeType",	SentinelPistolSize},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"RocketLockerLayout","GcInventoryLayout.xml"},
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Slots", TradeRocketSlots}
							}
						},
						--[[
						{
							["SPECIAL_KEY_WORDS"] = {"Buggy","GcPlayerOwnershipData.xml",	"Inventory","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+2",
							REMOVE = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Buggy","GcPlayerOwnershipData.xml",	"Inventory","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+1",
							ADD = RoamerAddedInventory,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Bike","GcPlayerOwnershipData.xml",	"Inventory","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+2",
							REMOVE = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Bike","GcPlayerOwnershipData.xml",	"Inventory","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+1",
							ADD = NomadAddedInventory,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Bike","GcPlayerOwnershipData.xml",	"Inventory_TechOnly","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+2",
							REMOVE = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Bike","GcPlayerOwnershipData.xml",	"Inventory_TechOnly","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+1",
							ADD = NomadAddedTechInventory,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Submarine","GcPlayerOwnershipData.xml",	"Inventory","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+2",
							REMOVE = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Submarine","GcPlayerOwnershipData.xml",	"Inventory","GcInventoryContainer.xml"},
							["LINE_OFFSET"] = "+1",
							ADD = NautilonAddedInventory,
						},
						]]
					}
				},
            }
		}
    }
}	



local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

if FixAgilityStat then
ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"StatsType", "Ship_Maneuverability"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"StatsType", "Ship_BoostManeuverability"},		--In case HG ever corrects this typo, this redundant edit will make sure the edit below doesn't "overcorrect"
				}
			}
			
ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"StatsType", "Ship_BoostManeuverability"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"StatsType", "Ship_Maneuverability"},
				}
			}
end

if RemoveAgilitySpeed then
ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"BaseStatID","SHIP_AGILE",	"StatsType","Ship_Boost"},
				["SECTION_UP"] = 1,
				REMOVE = "SECTION",
			}
end

for i = 1, #ShuttleStatChanges do
	local ShuttleClass = ShuttleStatChanges[i][1][1]
	local ShuttleMin = ShuttleStatChanges[i][2][2]
	local ShuttleMax = ShuttleStatChanges[i][3][2]

	for j = 1, #ShipStats do
		ShuttleStat = ShipStats[j]
			
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["INTEGER_TO_FLOAT"] = "FORCE",
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
for i = 1, #ExplorerCShieldChanges do
	local ExplorerClass = ExplorerCShieldChanges[i][1][1]
	local ExplorerMin = ExplorerCShieldChanges[i][2][2]
	local ExplorerMax = ExplorerCShieldChanges[i][3][2]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData","Scientific","BaseStatsPerClass", ExplorerClass},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", "SHIP_SHIELD"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Min", ExplorerMin},
					{"Max", ExplorerMax}
				}
			}
end
for i = 1, #RoyalClassAddAgile do
	local RoyalClass = RoyalClassAddAgile[i]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", "Royal","BaseStatsPerClass",RoyalClass},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", "SHIP_HYPERDRIVE"},
				["LINE_OFFSET"] = "+5",
				ADD = RoyalAgileAdd
			}
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
				["INTEGER_TO_FLOAT"] = "FORCE",
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
for i = 1, #LivingShipStatChanges do
	local ShipType = LivingShipStatChanges[i][1][1]
	local StatIDs = LivingShipStatChanges[i][2]

	for j = 1, #StatIDs do
		local StatID = StatIDs[j][1]
		local Multiplier
		for k = 1, #LivingShipClass do
	
			Multiplier = StatIDs[j][k+4]
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", ShipType,"BaseStatsPerClass", LivingShipClass[k]},
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
for i = 1, #ShipAgileChanges do
	local ShipType = ShipAgileChanges[i][1][1]
	local AgClasses = ShipAgileChanges[i][2]

	for j = 1, #AgClasses do
		local AgClass = AgClasses[j]
		local AgileStatMin = ShipAgileChanges[i][1][j+1] - math.abs(0.05*ShipAgileChanges[i][1][j+1])
		local AgileStatMax = ShipAgileChanges[i][1][j+1] + math.abs(0.05*ShipAgileChanges[i][1][j+1])
		
	
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", ShipType,"BaseStatsPerClass",AgClass},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", "SHIP_AGILE"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Min", AgileStatMin},
					{"Max", AgileStatMax}
				}
			}
	end
end
for i = 1, #ShipBounds do
	local BoundType = ShipBounds[i][1][1]
	local Bounds = ShipBounds[i][2]
	local		MaxWidthSmall = Bounds[1]
	local		MaxHeightSmall = Bounds[2]
	local		MaxWidthStandard = Bounds[3]
	local		MaxHeightStandard = Bounds[4]
	local		MaxWidthLarge = Bounds[5]
	local		MaxHeightLarge = Bounds[6]
	
	for j = 1, #ShipTypeSizes do
	
	local ShipTypeSize = ShipTypeSizes[j]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {ShipTypeSize, "GcInventoryLayoutGenerationDataEntry.xml",	BoundType, "GcInventoryLayoutGenerationBounds.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxWidthSmall", MaxWidthSmall},
					{"MaxHeightSmall", MaxHeightSmall},
					{"MaxWidthStandard", MaxWidthStandard},
					{"MaxHeightStandard", MaxHeightStandard},
					{"MaxWidthLarge", MaxWidthLarge},
					{"MaxHeightLarge", MaxHeightLarge},
				}
			}
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
				["INTEGER_TO_FLOAT"] = "FORCE",
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
for i = 1, #ToolBounds do
	local ToolSize = ToolBounds[i][1][1]
	local BoundTypes = ToolBounds[i][2]
	
	for j = 1, #BoundTypes do
		local BoundType = BoundTypes[j][1][1]
		local MaxWidthSmall = BoundTypes[j][2][1]
		local MaxHeightSmall = BoundTypes[j][2][2]
		local MaxWidthStandard = BoundTypes[j][3][1]
		local MaxHeightStandard = BoundTypes[j][3][2]
		local MaxWidthLarge = BoundTypes[j][4][1]
		local MaxHeightLarge = BoundTypes[j][4][2]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {ToolSize, "GcInventoryLayoutGenerationDataEntry.xml",	BoundType, "GcInventoryLayoutGenerationBounds.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxWidthSmall", MaxWidthSmall},
					{"MaxHeightSmall", MaxHeightSmall},
					{"MaxWidthStandard", MaxWidthStandard},
					{"MaxHeightStandard", MaxHeightStandard},
					{"MaxWidthLarge", MaxWidthLarge},
					{"MaxHeightLarge", MaxHeightLarge},
				}
			}
	end
end
for i = 1, #ToolSizeChanges do
	local ToolSize = ToolSizeChanges[i][1]
	local MinSlots = ToolSizeChanges[i][2]
	local MaxSlots = ToolSizeChanges[i][3]
	local X = ToolSizeChanges[i][4]
	local Y = ToolSizeChanges[i][5]
	
			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
						{
							["MATH_OPERATION"] = "",
							--["PRECEDING_KEY_WORDS"] = {""},
							["REPLACE_TYPE"] 		= "",
							["SPECIAL_KEY_WORDS"] = {ToolSize,"GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinSlots",	MinSlots},
								{"MaxSlots",	MaxSlots},
								{"X",	X},
								{"Y",	Y},
							}
						}
end
for i = 1, #ToolUpgradeSizeChanges do
	local InvType = ToolUpgradeSizeChanges[i][1][1]
	local Toolsizes = ToolUpgradeSizeChanges[i][2]
	
	
			ReplacerC = Toolsizes[1]
			ReplacerB = Toolsizes[2]
			ReplacerA = Toolsizes[3]
			ReplacerS = Toolsizes[4]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", InvType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"C",	ReplacerC},
					{"B",	ReplacerB},		
					{"A",	ReplacerA},		
					{"S",	ReplacerS}
				}
			}
end
for i = 1, #ShipInitialSizeChanges do
	local ShipTypeSize = ShipInitialSizeChanges[i][1]
	local MinSlots = ShipInitialSizeChanges[i][2]
	local MaxSlots = ShipInitialSizeChanges[i][3]
	local MinTechSlots = ShipInitialSizeChanges[i][4]
	local MaxTechSlots = ShipInitialSizeChanges[i][5]
	local X = ShipInitialSizeChanges[i][6]
	local Y = ShipInitialSizeChanges[i][7]
	

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
					{"X", X},
					{"Y", Y},
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

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", ShipType, InvType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"C",	ReplacerC},
					{"B",	ReplacerB},		
					{"A",	ReplacerA},		
					{"S",	ReplacerS}
				}
			}
	end
end
for i = 1, #LivingShipUpgradeSizeChanges do
	local InvType = LivingShipUpgradeSizeChanges[i][1][1]
	local ShipTypes = LivingShipUpgradeSizeChanges[i][2]
	
	for j = 1, #ShipTypes do
	
	local ShipType = ShipTypes[j][1]
			ReplacerS = ShipTypes[j][5]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", ShipType, InvType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"S", ReplacerS},
				}
			}
	end
end
for i = 1, #VehicleBounds do
	local VehicleSize = VehicleBounds[i][1][1]
	local BoundTypes = VehicleBounds[i][2]
	
	for j = 1, #BoundTypes do
		local BoundType = BoundTypes[j][1][1]
		local MaxWidthSmall = BoundTypes[j][2][1]
		local MaxHeightSmall = BoundTypes[j][2][2]

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {VehicleSize, "GcInventoryLayoutGenerationDataEntry.xml",	BoundType, "GcInventoryLayoutGenerationBounds.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxWidthSmall", MaxWidthSmall},
					{"MaxHeightSmall", MaxHeightSmall},
				}
			}
	end
end
for i = 1, #VehicleInitialSizeChanges do
	local VehicleTypeSize = VehicleInitialSizeChanges[i][1]
	local MinSlots = VehicleInitialSizeChanges[i][2]
	local MaxSlots = VehicleInitialSizeChanges[i][3]
	local MinTechSlots = VehicleInitialSizeChanges[i][4]
	local MaxTechSlots = VehicleInitialSizeChanges[i][5]
	

			ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {VehicleTypeSize, "GcInventoryLayoutGenerationDataEntry.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MinSlots", MinSlots},
					{"MaxSlots", MaxSlots},
					{"MinTechSlots", MinTechSlots},
					{"MaxTechSlots", MaxTechSlots},
				}
			}
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
				["INTEGER_TO_FLOAT"] = "FORCE",
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
--Testing! WIP
--[[
ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"DrpSmall", "GcInventoryLayoutGenerationDataEntry.xml",	"Bounds", "GcInventoryLayoutGenerationBounds.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxWidthSmall", 3},			--8
					{"MaxHeightSmall", 3},			--5
					{"MaxWidthStandard", 5},		--10
					{"MaxHeightStandard", 5},		--5
					{"MaxWidthLarge", 7},			--10
					{"MaxHeightLarge", 7},			--12
				}
			}
ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"DrpMedium", "GcInventoryLayoutGenerationDataEntry.xml",	"Bounds", "GcInventoryLayoutGenerationBounds.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxWidthSmall", 4},			--8
					{"MaxHeightSmall", 4},			--5
					{"MaxWidthStandard", 6},		--10
					{"MaxHeightStandard", 6},		--5
					{"MaxWidthLarge", 8},			--10
					{"MaxHeightLarge", 8},			--12
				}
			}
ChangesToInventoryTable[#ChangesToInventoryTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"DrpLarge", "GcInventoryLayoutGenerationDataEntry.xml",	"Bounds", "GcInventoryLayoutGenerationBounds.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxWidthSmall", 10},			--8
					{"MaxHeightSmall", 10},			--5
					{"MaxWidthStandard", 10},		--10
					{"MaxHeightStandard", 10},		--5
					{"MaxWidthLarge", 10},			--10
					{"MaxHeightLarge", 10},			--12
				}
			}
]]

local ChangesToDefaultSaveDataTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #VehicleRemoveChargedSlots do
	local Vehicle = VehicleRemoveChargedSlots[i]

			ChangesToDefaultSaveDataTable[#ChangesToDefaultSaveDataTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Vehicle,"GcPlayerOwnershipData.xml",	"Inventory_TechOnly","GcInventoryContainer.xml"},
				["PRECEDING_KEY_WORDS"] = "SpecialSlots",
				REMOVE = "SECTION",
			}
end
for i = 1, #VehiclesAdd3ChargedSlots do
	local Vehicle = VehiclesAdd3ChargedSlots[i]

			ChangesToDefaultSaveDataTable[#ChangesToDefaultSaveDataTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Vehicle,"GcPlayerOwnershipData.xml",	"Inventory_TechOnly","GcInventoryContainer.xml",	"InventoryStackSizeGroup","Default"},
				["LINE_OFFSET"] = "+2",
				ADD = Add3ChargedSlots
			}
end
for i = 1, #VehiclesAdd4ChargedSlots do
	local Vehicle = VehiclesAdd4ChargedSlots[i]

			ChangesToDefaultSaveDataTable[#ChangesToDefaultSaveDataTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Vehicle,"GcPlayerOwnershipData.xml",	"Inventory_TechOnly","GcInventoryContainer.xml",	"InventoryStackSizeGroup","Default"},
				["LINE_OFFSET"] = "+2",
				ADD = Add4ChargedSlots
			}
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE