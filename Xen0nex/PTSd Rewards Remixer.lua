ModName = "PTSd Rewards Remixer test"
GameVersion = "4_52"
Description = "Rebalances rewards for many actions & activities, such as defeating starships or sentinels or certain fauna, pirate bounties, space station missions, frigate expeditions, certain planetary Points of Interest, etc. Makes Archive Vaults always give rare artifacts."

TeachCreaturePelletsEarly = true		--false	 	Set true to teach the Creature Pellet Recipe during the tutorial when teaching the Hermetic Seal recipe instead of later on, false otherwise

--Changes the Class & inventory size when redeeming the three unique expedition reward starships or one unique Multi-Tool: Golden Vector, Utopia Speeder, and Starborn Runner starships and Atlas Sceptre Multi-Tool
ExpShipClass = 							"C"						--"S"
ExpShipCargoSlots = 					8						--36				The game adds 1 to whatever value is entered here
ExpShipSize = 							"FgtSmall"				--"FgtLarge"		Affects how many Tech slots it will start with based on INVENTORYTABLE.MBIN, list of options detailed in "PTSd Ship+MultiTool Rebalance.lua" (Seems to pick exactly between the Min & Max range)

--If set to "true", makes all starships & multitools rewarded from Expeditions & Twitch streams come as C Class and with the inventory sizes defined below
AllTwitchExpRewardsC =					false					--false
AllTwitchExpRewardsCargo =				8						--Varies	Only used if AllTwitchExpRewardsC = true		The game adds 1 to whatever value is entered here
AllTwitchExpRewardsShipSize =			"FgtSmall"				--Varies	Only used if AllTwitchExpRewardsC = true		Affects how many Tech slots it will start with based on INVENTORYTABLE.MBIN, list of options detailed in "PTSd Ship+MultiTool Rebalance.lua" (Seems to pick exactly between the Min & Max range, or sometimes uses the Max value?)
AllTwitchExpRewardsToolSlots =			8						--Varies	Only used if AllTwitchExpRewardsC = true
--AllTwitchExpRewardsToolSize =			"WeaponLarge"			--Varies	Only used if AllTwitchExpRewardsC = true

--This controls what the COST (not reward) is certain dialogue choices with Travellers, such as asking directions to a grave
TravellerNaniteCost =					"TECHFRAG_TRAV"			--"TECHFRAG_MD" 100 Nanites		"PTSd Expensive Pilots + Broadcast Receivers.lua" changes the value of TECHFRAG_MD and adds TECHFRAG_TRAV as a new entry costing 800 Nanites

--These multipleirs control the new reward for giving Travellers 15 nanites (vanilla gives 5,000-70,000 units before PTSd multipliers)
TravRewardDiHydrMult =					1						--20 - 40 Di-Hydrogen
TravRewardTritMult =					1						--20 - 40 Tritium

TravTechChance =						100						--200	Relative chance weight to receive tech memory fragment from certain traveller dialogue rewards instead of inventory memory fragment or products (Vanilla total chance weight pool is 500)
MemFragInvBulkChance =					20						--0		Relative chance weight to receive Freighter Bulkhead from Inventory Memory Fragments (Vanilla total chance weight pool is 100)
MemFragProcChanceMult =					4						--Multiplier to apply to the relative chance weight for the ~25 proc tech options in tech memory fragments (as opposed to the ~44 regular tech options)
MemFragProcLauncherChanceMult =			0.4						--Multiplier to apply to the relative chance weight for Launcher proc tech, base of 300 (Most other proc tech have ~100 for their chance weight, with a few hazard/weapon ones having 15~25 instead)
MemFragOutlierTechChance =				200						--500	Relative chance weight for certain regular techs in the tech memory fragment option pool, which normally have ~5x as much chance as others to be received (Specifically, Neural Stimulator, Advanced Mining Laser, Optical Drill, Launch Auto-Charger)

--Replacers for the relative chance weighting for getting certain techs / upgrades when opening Psychonic Eggs (all 6 kinds of procedural upgrdaes have chance weighting = 50)
PsychonicWormhole =						250						--500	"Wormhole Brain" Conflict/Economy Scanner equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)
PsychonicChloroplast =					30						--500	"Chloroplast Membrane" Launcher Autocharger equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)
PsychonicNeural =						250						--500	"Neural Shielding" Cargo Scan Deflector equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)

--Changes how many Nanites you receive for choosing "Extract Nanites" at a Manufacturing Facility
FactoryMin = 							300						--90 Nanites
FactoryMax = 							500						--120 Nanites

--Multiplier for rewards of small amounts of Units from various sources (Not frigate expeditions)
SmallUnitsMin =							4						--Applies to all Min rewards under 50000 units
SmallUnitsMax =							5						--Applies to all Max rewards under 100000 units
VerySmallUnitsMin =						3						--Applies to all Min rewards under 10000 units		(Stacks multiplicatively with the above bonus, i.e. 3 x 4 = 12x) 
VerySmallUnitsMax =						5						--Applies to all Max rewards under 35000 units		(Stacks multiplicatively with the above bonus) 
ExtremelySmallUnitsMin =				5						--Applies to all Min rewards under 500 units		(Stacks multiplicatively with the above bonuses) i.e. 5 x 3 x 4 = 60x
ExtremelySmallUnitsMax =				5						--Applies to all Max rewards under 1000 units		(Stacks multiplicatively with the above bonuses) 

--Multipliers for Bounties for the random space encounter with pirates having a bounty on them.
	--TODO:	Check if the vanilla bug of often getting no bounty still persists in 3.87
PirateBounty1 = 						2						--100,000	~	180,000
PirateBounty2 = 						4						--200,000	~	350,000
PirateBounty3 = 						8						--300,000	~	500,000

PirateRaidDefenseRewardMult = 			1.5						--200,000	~	300,000		Reward for defeating pirates raiding a building???
--Additional reward for defeating a pirate raid
PirateRaidDefenseNanitesMin = 			100
PirateRaidDefenseNanitesMax = 			300
PirateRaidDefenseNanitesChance = 		100

--Rewards for the Space Station missions to hunt down pirates.
	--Options for Reward are R_MB_LOW, R_MB_MED, R_MB_HIGH, R_MB_MEGA, and options for increased Standing with the missiongiver are MB_STAND_LOW, MB_STAND_MED, MB_STAND_HIGH, MB_STAND_GUILD
PirateMissionEasyReward =				"R_MB_MED"				--"R_MB_LOW"
PirateMissionMediumReward =				"R_MB_HIGH"				--"R_MB_LOW"
PirateMissionHardReward =				"R_MB_MEGA"				--"R_MB_LOW"
PirateMissionEasyStanding =				"MB_STAND_LOW"			--"MB_STAND_LOW"
PirateMissionMediumStanding =			"MB_STAND_MED"			--"MB_STAND_LOW"
PirateMissionHardStanding =				"MB_STAND_HIGH"			--"MB_STAND_LOW"

--Changes the direct rewards received from destroying pirate ships and collecting the floating canisters in space (Vanilla Mag. Ferrite or Chromatic Metal are removed and replaced with Nanites)
	--NOTE: These rewards appear to be on a "per container picked up" not a "per destroyed Pirate ship" basis, as each destroyed ship drops several (2 to 4) containers
	--TODO: find out how shield-restoring drops are handled now in 3.85+	Maybe instead you just use the starshield batteries that are now dropped?
ShipLootChanges =
{
	{	--Pirates:	per destroyed ship containers
		{"PIRATELOOT"},							--Ships with this reward drop 1x containers	(Except Raids, Dogfights, and Planetary Flybys drop 2x)
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SCRAP_GOODS",			"SCRAP_GOODS",			1,			1,			200},				--"SCRAP_GOODS",		1,			1,			100
			{"SCRAP_TECH",			"SCRAP_TECH",			1,			1,			50},				--"SCRAP_TECH",			1,			1,			100
			{"SCRAP_WEAP",			"SCRAP_WEAP",			1,			1,			50},				--"SCRAP_WEAP",			1,			1,			100
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			4,			100},				--"SHIPCHARGE",			3,			3,			100
			{"TRA_CURIO1",			"TRA_CURIO1",			1,			1,			10},				--"TRA_CURIO1",			1,			3,			40
			{"WAR_CURIO1",			"WAR_CURIO1",			1,			1,			10},				--"WAR_CURIO1",			1,			3,			40
			{"EXP_CURIO1",			"EXP_CURIO1",			1,			1,			10},				--"EXP_CURIO1",			1,			3,			40
		}
	},
	{	--Easy Pirates:	per destroyed ship containers	(Added by this mod)
		{"PIRATLTEASY"},						--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SCRAP_GOODS",			"SCRAP_GOODS",			1,			1,			100},				--"SCRAP_GOODS",		1,			1,			100
			{"SCRAP_TECH",			"SCRAP_TECH",			1,			1,			20},				--"SCRAP_TECH",			1,			1,			100
			{"SCRAP_WEAP",			"SCRAP_WEAP",			1,			1,			20},				--"SCRAP_WEAP",			1,			1,			100
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			4,			100},				--"SHIPCHARGE",			3,			3,			100
			{"TRA_CURIO1",			"TRA_CURIO1",			1,			1,			40},				--"TRA_CURIO1",			1,			3,			40
			{"WAR_CURIO1",			"WAR_CURIO1",			1,			1,			40},				--"WAR_CURIO1",			1,			3,			40
			{"EXP_CURIO1",			"EXP_CURIO1",			1,			1,			40},				--"EXP_CURIO1",			1,			3,			40
		}
	},
	{	--Hard Pirates:	per destroyed ship containers	(Added by this mod)
		{"PIRATLTHARD"},						--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SCRAP_GOODS",			"SCRAP_GOODS",			1,			2,			150},				--"SCRAP_GOODS",		1,			1,			100
			{"SCRAP_TECH",			"SCRAP_TECH",			1,			2,			66},				--"SCRAP_TECH",			1,			1,			100
			{"SCRAP_WEAP",			"SCRAP_WEAP",			1,			2,			66},				--"SCRAP_WEAP",			1,			1,			100
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			4,			100},				--"SHIPCHARGE",			3,			3,			100
		}
	},
	{	--Sentinel Interceptors:	per destroyed ship containers
		{"POLICELOOT"},							--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			2,			80},				--"SHIPCHARGE",			1,			1,			70		100
			{"ROBOT1",				"ROBOT1",				80,			120,		50},				--"ROBOT1",				80,			120,		60		100
			{"SENTINEL_LOOT",		"SENTINEL_LOOT",		1,			1,			50},				--"SENTINEL_LOOT",		1,			1,			45
			{"SHIPBRAIN",			"SHIPBRAIN",			1,			1,			50},				--"SHIPBRAIN",			1,			1,			50
		}
	},
	{	--Trade Ships:	per destroyed ship containers
		{"TRADERLOOT"},							--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"HYPERFUEL2",			"HYPERFUEL2",			1,			1,			100},				--"HYPERFUEL2",			1,			1,			100
			{"SPACEGUNK3",			"SPACEGUNK3",			99,			299,		100},				--"SPACEGUNK3",			99,			299,		100
			{"TRA_ALLOY1",			"TRA_ALLOY1",			15,			25,			100},				--"TRA_ALLOY1",			15,			25,			100
			{"TRA_COMMODITY2",		"TRA_COMMODITY2",		15,			25,			100},				--"TRA_COMMODITY2",		15,			25,			100
			{"TRA_MINERALS1",		"TRA_MINERALS1",		15,			25,			100},				--"TRA_MINERALS1",		15,			25,			100
			{"TRA_EXOTICS1",		"FRIG_BOOST_TRA",		1,			1,			100},				--"TRA_EXOTICS1",		15,			25,			100
		}	--(Also drop random upgrade modules for starship Launcher, Pulse Engine(Removed by this mod), and Shields(Removed by this mod) at 100 chance weight each)
	},
	{	--Trader Escorts:	per destroyed ship containers	(Added by this mod)
		{"ESCORTLOOT"},							--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			2,			50},				--"SHIPCHARGE",			1,			1,			100
			{"FRIG_BOOST_TRA",		"FRIG_BOOST_TRA",		1,			1,			50},				--"FRIG_BOOST_TRA",			1,			1,			100
		}	--(Also drop random upgrade modules for starship Pulse Engine, and Shields at 100 chance weight each)
	},
	{	--Smugglers? Seems to be Smuggler freighter cargo pods in pirate systems???		
		{"SMUGGLELOOT"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"FRIGATE_FUEL_3",		"FRIGATE_FUEL_3",		1,			3,			100},				--"FRIGATE_FUEL_3",		1,			3,			100
			{"FRIG_TOKEN",			"FRIG_TOKEN",			1,			1,			80},				--"FRIG_TOKEN",			1,			1,			20
			{"LAND3",				"LAND3",				200,		250,		80},				--"LAND3",				200,		250,		100
			{"STELLAR2",			"STELLAR2",				200,		250,		80},				--"STELLAR2",			200,		250,		100
			{"CAVE2",				"CAVE2",				200,		250,		80},				--"CAVE2",				200,		250,		100
			{"ASTEROID2",			"ASTEROID2",			200,		250,		80},				--"ASTEROID2",			200,		250,		100
			{"RADIO1",				"RADIO1",				200,		250,		80},				--"RADIO1",				200,		250,		100
			{"ILLEGAL_PROD8",		"ILLEGAL_PROD8",		1,			4,			40},				--"ILLEGAL_PROD8",		1,			2,			100
			{"ILLEGAL_PROD2",		"ILLEGAL_PROD2",		10,			20,			100},				--"ILLEGAL_PROD2",		5,			10,			100
			{"ILLEGAL_PROD3",		"ILLEGAL_PROD3",		8,			20,			100},				--"ILLEGAL_PROD3",		4,			10,			100
			{"ILLEGAL_PROD4",		"ILLEGAL_PROD4",		6,			16,			70},				--"ILLEGAL_PROD4",		3,			8,			100
			{"ILLEGAL_PROD5",		"FRIG_BOOST_SPD",		1,			1,			100},				--"ILLEGAL_PROD5",		3,			6,			100
			{"ILLEGAL_PROD6",		"ILLEGAL_PROD6",		4,			8,			60},				--"ILLEGAL_PROD6",		2,			4,			100
			{"ILLEGAL_PROD7",		"ILLEGAL_PROD7",		2,			5,			50},				--"ILLEGAL_PROD7",		1,			2,			100
		}
	},
	{	--Freighter Cargo pods
		{"FREIGHTERLOOT"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"FRIGATE_FUEL_3",		"FRIGATE_FUEL_3",		1,			3,			100},				--"FRIGATE_FUEL_3",		1,			3,			100
			{"FRIG_TOKEN",			"FRIG_TOKEN",			1,			1,			60},				--"FRIG_TOKEN",			1,			1,			20
			{"LAND3",				"LAND3",				200,		250,		100},				--"LAND3",				200,		250,		100
			{"STELLAR2",			"STELLAR2",				200,		250,		100},				--"STELLAR2",			200,		250,		100
			{"CAVE2",				"CAVE2",				200,		250,		100},				--"CAVE2",				200,		250,		100
			{"ASTEROID2",			"ASTEROID2",			200,		250,		100},				--"ASTEROID2",			200,		250,		100
			{"RADIO1",				"RADIO1",				200,		250,		100},				--"RADIO1",				200,		250,		100
			{"TRA_COMMODITY3",		"TRA_COMMODITY3",		16,			20,			100},				--"TRA_COMMODITY3",		8,			10,			100
			{"TRA_COMPONENT1",		"TRA_COMPONENT1",		35,			50,			100},				--"TRA_COMPONENT1",		25,			25,			100
			{"TRA_ENERGY4",			"TRA_ENERGY4",			16,			20,			100},				--"TRA_ENERGY4",		8,			10,			100
			{"TRA_EXOTICS5",		"TRA_EXOTICS5",			2,			6,			100},				--"TRA_EXOTICS5",		1,			3,			100
			{"TRA_MINERALS3",		"TRA_MINERALS3",		16,			20,			100},				--"TRA_MINERALS3",		8,			10,			100
			{"TRA_MINERALS2",		"FRIG_BOOST_SPD",		1,			1,			80},				--"TRA_MINERALS2",		15,			25,			100
			{"TRA_TECH3",			"TRA_TECH3",			16,			20,			100},				--"TRA_TECH3",			8,			10,			100
		}
	},
	{	--Reward for rescuing a Freighter from Pirates, unlike above you have the listed chance to receive ALL listed rewards
		{"FREIGHTER_SAVED"},							--Must decline choose to request a reward instead of buying the freighter to recieve this (confirm with 3.87)
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance
			{"FREI_INV_TOKEN",		"FREI_INV_TOKEN",		1,			1,			100},				--"FREI_INV_TOKEN",		1,			1,			100
			{"ASTEROID2",			"ROCKETSUB",			300,		500,		100},				--"ASTEROID2",			300,		500,		100
		}
	},
	--[[{	--Pirate Type			Min	&	Max	Nanites		Shield restored (Vanilla 50)
		{"PIRAT_LOOT_EASY",		80,		90,				75},							--Ships with this reward drop 2x containers (confirm with 3.87)
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance
			
		}
	},
	{	--Pirate Type			Min	&	Max	Nanites		Shield restored (Vanilla 50)
		{"PIRAT_LOOT_MED",		65,		80,				75},							--Ships with this reward drop 3x containers (confirm with 3.87)
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance
			{"ALLOY4",			"ALLOY4",			2,			2,			30}							--"ALLOY4",				1,			1,			30
		}
	},
	{	--Pirate Type			Min	&	Max	Nanites		Shield restored (Vanilla 50)
		{"PIRAT_LOOT_HARD",		75,		100,			75},							--Ships with this reward drop 4x containers (confirm with 3.87)
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance
			{"ALLOY3",			"ALLOY3",			3,			3,			30},						--"ALLOY3",				1,			1,			30
			{"ALLOY4",			"ALLOY4",			3,			3,			30}							--"ALLOY4",				1,			1,			30
		}
	}]]
}

ShipCurrencyChanges =
{
	{
		{"PIRATELOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	80,			200,		100}			--100,			250,		100		
		}
	},
	{
		{"PIRATLTEASY"},		--Added by this mod
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	50,			150,		100}			--100,			250,		100		
		}
	},
	{
		{"PIRATLTHARD"},		--Added by this mod
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	120,		300,		100}			--100,			250,		100		
		}
	},
	{
		{"POLICELOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	90,			160,		100}			--90,			160,		100
		}
	},
	{
		{"TRADERLOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	40,			60,			100}			--20,			30,			100		
		}
	},
	{
		{"ESCORTLOOT"},			--Added by this mod
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	80,			160,		100}			--20,			30,			100		
		}
	},
	{
		{"SMUGGLELOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	40,			60,			100}			--20,			30,			100		
		}
	},
	{
		{"FREIGHTERLOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	40,			60,			100}			--20,			30,			100		
		}
	},
	{
		{"FREIGHTER_SAVED"},
		{	--Currency	Min			Max			%Chance
			{"Nanites",	300,		500,		100}			--200,			300,		100		
		}
	},
}

--New Additional rewards for destroying POLICE (Sentinel Interceptors)
PoliceFrigComMin = 					1			--Explosive Drones
PoliceFrigComMax = 					1
PoliceFrigComChance = 				60

--New additional rewards for rescuing a Freighter from Pirates in starships
FreighterRescueUnitsMin = 			400000
FreighterRescueUnitsMax = 			1000000
FreighterRescueUnitsChance = 		100

FreighterRescueFrigModMin = 		1			--Salvaged Frigate Module
FreighterRescueFrigModMax = 		1
FreighterRescueFrigModChance = 		100

--Presumably rewards for rescuing Civilian Freighters from Pirate Freighters (added in NMS v4.4) and for making a pirate freighter surrender (added in NMS v4.5)
CivilianFreighterRewardChanges =
{
	{
		{"R_CIV_SAVED_SM"},		--Presumably the reward for saving "small" civilian freighters?
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	800000,		1200000,	100}		--400000,		600000,		100
		}
	},
	{
		{"R_CIV_SAVED_LG"},		--Presumably the reward for saving "large" civilian freighters?
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	1200000,	1800000,	100},		--600000,		900000,		100
			{"Nanites",	800,		1000,		100}		--400,			500,		100		
		}
	},
	{
		{"R_PIR_TRIBUTE"},		--Presumably the "reward" / tribute for defeating a pirate freighter / dreadnought and forcing it to surrender
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	4000000,	8000000,	100}		--5000000,		10000000,	100
		}
	}
}

--Presumably rewards for destroying Pirate Freighters (added in NMS v4.4)
PirateFreighterLootChanges =
{
	{
		{"R_PIR_FREI"},		--This seems to be the reward pool for the first few missions you take from space stations. Unsure when it switches from these to the other rewards below
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"FREI_INV_TOKEN",			"FREI_INV_TOKEN",		3,	6,		300},	--3,	3,		300		Cargo Bulkhead
			--Also has all 7 of the Freighter/Frigate procedural upgrade modules as possible rewards, each at 100 relative Chance %
		}
	},
}

--Changes % Chance and amounts for different reward lootpools for Missions, typically from Space Stations but sometimes from NPCs at POIs on planets or a few other mission sources
SpaceStationMissionLootChanges =
{
	{
		{"R_MB_FIRST"},		--This seems to be the reward pool for the first few missions you take from space stations. Unsure when it switches from these to the other rewards below
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		6},		--1,	1,		150		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			1,	2,		2},		--1,	1,		1		Repair Kit
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		2},		--1,	2,		2		Warp Hypercore
			{"BP_SALVAGE",				"BP_SALVAGE",			3,	5,		6},		--3,	5,		2		Salvaged Data
			{"POWERCELL",				"POWERCELL",			5,	10,		2},		--5,	5,		1		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			5,	10,		2},		--5,	5,		1		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			6,	12,		2},		--5,	5,		1		Starshield Battery
			{"EYEBALL",					"EYEBALL",				1,	3,		1},		--1,	3,		1		Hypnotic Eye
			{"NIPNIPBUDS",				"NAV_DATA",				3,	5,		6},		--1,	3,		1		NipNip Buds		(Navigation Data)
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		3,	5,		1},		--1,	3,		1		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			3,	5,		1},		--1,	3,		1		Larval Core
			{"FISHCORE",				"FISHCORE",				3,	5,		1},		--1,	3,		1		Hadal Core
			{"TRA_MINERALS3",			"TRA_MINERALS3",		10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_TECH3",				"TRA_TECH3",			10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_COMPONENT3",			"TRA_COMPONENT3",		10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_ENERGY3",				"TRA_ENERGY3",			10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_EXOTICS3",			"TRA_EXOTICS3",			10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_COMMODITY3",			"TRA_COMMODITY3",		10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"SPACEGUNK2",				"SPACEGUNK2",			500,1000,	0.2},	--100,	100,	0.2		Runaway Mould
			{"FOOD_EGGPIE_GM",			"FOOD_EGGPIE_GM",		2,	3,		0.1},	--1,	1,		0.2		Food worth 102000
			{"FOOD_CK_CACTUS",			"FOOD_CK_CACTUS",		4,	6,		0.1},	--1,	1,		0.2		Food worth 57800
			{"FOOD_R_EYESTEW",			"FOOD_R_EYESTEW",		2,	3,		0.1},	--1,	1,		0.2		Food worth 90000
			{"FOOD_ICE_GRAH",			"FOOD_ICE_GRAH",		4,	6,		0.1},	--1,	1,		0.2		Food worth 44000
			{"FOOD_CG_JGLITCH",			"FOOD_CG_JGLITCH",		1,	1,		0.1},	--1,	1,		0.2		Food worth 80800
			{"FOOD_CB_FCUST",			"FOOD_CB_FCUST",		2,	3,		0.1},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CB_SCUST",			"FOOD_CB_SCUST",		2,	3,		0.1},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CM_CHOC",			"FOOD_CM_CHOC",			2,	3,		0.1},	--1,	1,		0.2		Food worth 148000
			{"FOOD_MM_CARM",			"FOOD_MM_CARM",			2,	3,		0.1},	--1,	1,		0.2		Food worth 128000
			{"FOOD_CG_HONEY",			"FOOD_CG_HONEY",		4,	6,		0.1},	--1,	1,		0.2		Food worth 62200
			{"FOOD_STEW_M_CH",			"FOOD_STEW_M_CH",		4,	6,		0.1},	--1,	1,		0.2		Food worth 36000
			{"FOOD_PIE_CRABJ",			"FOOD_PIE_CRABJ",		4,	6,		0.1},	--1,	1,		0.2		Food worth 54000
			{"FOOD_PIE_CRAB",			"FOOD_PIE_CRAB",		4,	6,		0.1},	--1,	1,		0.2		Food worth 40000
			{"FOOD_DNUT_MEAT",			"FOOD_DNUT_MEAT",		4,	6,		0.1},	--1,	1,		0.2		Food worth 65000
			{"FOOD_DNUT_AJAM",			"FOOD_DNUT_AJAM",		4,	6,		0.1},	--1,	1,		0.2		Food worth 70000
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	1,		1},		--1,	1,		1		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		6},		--1,	1,		30		Multi-Tool Expansion Slot
		}
	},
	{
		{"R_MB_LOW"},		--"Low" reward, e.g. from low-level Space Station missions
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		2},		--1,	2,		2		Warp Hypercore
			{"LAUNCHFUEL",				"LAUNCHFUEL",			4,	4,		2},		--4,	4,		1		Launch Fuel
			{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	1,		2},		--1,	1,		2		Defence Chit
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		1,	3,		0},		--1,	3,		1		Frigate Fuel (200 tonnes)
			{"FRIG_BOOST_TRA",			"FRIG_BOOST_TRA",		1,	1,		0},		--1,	1,		1		Mind Control Device
			{"FRIG_BOOST_EXP",			"FRIG_BOOST_EXP",		1,	1,		0},		--1,	1,		1		Holographic Analyser
			{"FRIG_BOOST_MIN",			"FRIG_BOOST_MIN",		1,	1,		0},		--1,	1,		1		Mineral Compressor
			{"FRIG_BOOST_COM",			"FRIG_BOOST_COM",		1,	1,		0},		--1,	1,		1		Explosive Drones
			{"FRIG_BOOST_SPD",			"FRIG_BOOST_SPD",		1,	1,		0},		--1,	1,		1		Fuel Oxidiser
			{"POWERCELL",				"POWERCELL",			5,	10,		2},		--5,	5,		1		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			5,	10,		2},		--5,	5,		1		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			6,	12,		2},		--5,	5,		1		Starshield Battery
			{"EYEBALL",					"EYEBALL",				1,	3,		1},		--1,	3,		1		Hypnotic Eye
			{"NIPNIPBUDS",				"NIPNIPBUDS",			3,	5,		0},		--1,	3,		1		NipNip Buds
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		3,	5,		1},		--1,	3,		1		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			3,	5,		1},		--1,	3,		1		Larval Core
			{"FISHCORE",				"FISHCORE",				3,	5,		1},		--1,	3,		1		Hadal Core
			{"TRA_MINERALS3",			"TRA_MINERALS3",		10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_TECH3",				"TRA_TECH3",			10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_COMPONENT3",			"TRA_COMPONENT3",		10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_ENERGY3",				"TRA_ENERGY3",			10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_EXOTICS3",			"TRA_EXOTICS3",			10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"TRA_COMMODITY3",			"TRA_COMMODITY3",		10,	18,		0.2},	--3,	5,		1		Trade item worth 15000
			{"SPACEGUNK2",				"SPACEGUNK2",			500,1000,	1},		--100,	100,	1		Runaway Mould
			{"FOOD_EGGPIE_GM",			"FOOD_EGGPIE_GM",		2,	3,		0.1},	--1,	1,		0.2		Food worth 102000
			{"FOOD_CK_CACTUS",			"FOOD_CK_CACTUS",		4,	6,		0.1},	--1,	1,		0.2		Food worth 57800
			{"FOOD_R_EYESTEW",			"FOOD_R_EYESTEW",		2,	3,		0.1},	--1,	1,		0.2		Food worth 90000
			{"FOOD_ICE_GRAH",			"FOOD_ICE_GRAH",		4,	6,		0.1},	--1,	1,		0.2		Food worth 44000
			{"FOOD_CG_JGLITCH",			"FOOD_CG_JGLITCH",		1,	1,		0.1},	--1,	1,		0.2		Food worth 80800
			{"FOOD_CB_FCUST",			"FOOD_CB_FCUST",		2,	3,		0.1},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CB_SCUST",			"FOOD_CB_SCUST",		2,	3,		0.1},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CM_CHOC",			"FOOD_CM_CHOC",			2,	3,		0.1},	--1,	1,		0.2		Food worth 148000
			{"FOOD_MM_CARM",			"FOOD_MM_CARM",			2,	3,		0.1},	--1,	1,		0.2		Food worth 128000
			{"FOOD_CG_HONEY",			"FOOD_CG_HONEY",		4,	6,		0.1},	--1,	1,		0.2		Food worth 62200
			{"FOOD_STEW_M_CH",			"FOOD_STEW_M_CH",		4,	6,		0.1},	--1,	1,		0.2		Food worth 36000
			{"FOOD_PIE_CRABJ",			"FOOD_PIE_CRABJ",		4,	6,		0.1},	--1,	1,		0.2		Food worth 54000
			{"FOOD_PIE_CRAB",			"FOOD_PIE_CRAB",		4,	6,		0.1},	--1,	1,		0.2		Food worth 40000
			{"FOOD_DNUT_MEAT",			"FOOD_DNUT_MEAT",		4,	6,		0.1},	--1,	1,		0.2		Food worth 65000
			{"FOOD_DNUT_AJAM",			"FOOD_DNUT_AJAM",		4,	6,		0.1},	--1,	1,		0.2		Food worth 70000
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	1,		2},		--1,	1,		5		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		4},		--1,	1,		5		Multi-Tool Expansion Slot
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		1},		--1,	1,		5		Exosuit Expansion Slot
			{"NAV_DATA",				"NAV_DATA",				3,	6,		3},		--2,	2,		3		Navigation Data
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		5},		--1,	1,		5		Exosuit Upgrade Chart
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	1,		1},		--1,	1,		2		Salvaged Frigate Module
			{"REPAIRKIT",				"REPAIRKIT",			1,	2,		2},		--1,	1,		1		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			3,	5,		5},		--3,	5,		5		Salvaged Data
		}
	},
	{
		{"R_MB_MED"},		--"Medium" reward
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			2,	3,		1},		--1,	2,		1		Warp Hypercore
			{"LAUNCHFUEL",				"LAUNCHFUEL",			5,	6,		0.5},	--4,	4,		1		Launch Fuel
			{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	2,		2},		--1,	1,		1		Defence Chit
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		1,	3,		0},		--1,	3,		1		Frigate Fuel (200 tonnes)
			{"FRIG_BOOST_TRA",			"FRIG_BOOST_TRA",		1,	1,		0.5},	--1,	1,		1		Mind Control Device
			{"FRIG_BOOST_EXP",			"FRIG_BOOST_EXP",		1,	1,		0.5},	--1,	1,		1		Holographic Analyser
			{"FRIG_BOOST_MIN",			"FRIG_BOOST_MIN",		1,	1,		0.5},	--1,	1,		1		Mineral Compressor
			{"FRIG_BOOST_COM",			"FRIG_BOOST_COM",		1,	1,		0.5},	--1,	1,		1		Explosive Drones
			{"FRIG_BOOST_SPD",			"FRIG_BOOST_SPD",		1,	1,		0.5},	--1,	1,		1		Fuel Oxidiser
			{"POWERCELL",				"POWERCELL",			10,	15,		0.5},	--5,	15,		1		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			10,	15,		0.5},	--5,	15,		1		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			8,	14,		1},		--5,	5,		1		Starshield Battery
			{"EYEBALL",					"EYEBALL",				3,	5,		1},		--3,	5,		1		Hypnotic Eye
			{"WALKER_PROD",				"MECH_PROD",			1,	1,		0.5},	--1,	1,		0.5		Walker Brain	(Hardframe Engine)
			{"NIPNIPBUDS",				"NIPNIPBUDS",			5,	8,		0.5},	--3,	5,		1		NipNip Buds
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		5,	8,		1},		--5,	5,		1		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			5,	8,		1},		--5,	5,		1		Larval Core
			{"FISHCORE",				"FISHCORE",				5,	8,		1},		--5,	5,		1		Hadal Core
			{"TRA_MINERALS4",			"TRA_MINERALS4",		14,	20,		0.2},	--3,	5,		1		Trade item worth 30000
			{"TRA_TECH4",				"TRA_TECH4",			14,	20,		0.2},	--3,	5,		1		Trade item worth 30000
			{"TRA_COMPONENT4",			"TRA_COMPONENT4",		14,	20,		0.2},	--3,	5,		1		Trade item worth 30000
			{"TRA_ENERGY4",				"TRA_ENERGY4",			14,	20,		0.2},	--3,	5,		1		Trade item worth 30000
			{"TRA_EXOTICS4",			"TRA_EXOTICS4",			14,	20,		0.2},	--3,	5,		1		Trade item worth 30000
			{"TRA_COMMODITY4",			"TRA_COMMODITY4",		14,	20,		0.2},	--3,	5,		1		Trade item worth 30000
			{"SPACEGUNK2",				"SPACEGUNK2",			100,100,	0},		--100,	100,	1		Runaway Mould
			{"FOOD_EGGPIE_GM",			"FOOD_EGGPIE_GM",		4,	6,		0.1},	--1,	1,		0.2		Food worth 102000
			{"FOOD_CK_CACTUS",			"FOOD_CK_CACTUS",		8,	12,		0.1},	--1,	1,		0.2		Food worth 57800
			{"FOOD_R_EYESTEW",			"FOOD_R_EYESTEW",		4,	6,		0.1},	--1,	1,		0.2		Food worth 90000
			{"FOOD_ICE_GRAH",			"FOOD_ICE_GRAH",		8,	12,		0.1},	--1,	1,		0.2		Food worth 44000
			{"FOOD_CG_JGLITCH",			"FOOD_CG_JGLITCH",		1,	1,		0.1},	--1,	1,		0.2		Food worth 80800
			{"FOOD_CB_FCUST",			"FOOD_CB_FCUST",		4,	6,		0.1},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CB_SCUST",			"FOOD_CB_SCUST",		4,	6,		0.1},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CM_CHOC",			"FOOD_CM_CHOC",			4,	6,		0.1},	--1,	1,		0.2		Food worth 148000
			{"FOOD_MM_CARM",			"FOOD_MM_CARM",			4,	6,		0.1},	--1,	1,		0.2		Food worth 128000
			{"FOOD_CG_HONEY",			"FOOD_CG_HONEY",		8,	12,		0.1},	--1,	1,		0.2		Food worth 62200
			{"FOOD_STEW_M_CH",			"FOOD_STEW_M_CH",		8,	12,		0.1},	--1,	1,		0.2		Food worth 36000
			{"FOOD_PIE_CRABJ",			"FOOD_PIE_CRABJ",		8,	12,		0.1},	--1,	1,		0.2		Food worth 54000
			{"FOOD_PIE_CRAB",			"REACTION1",			5,	5,		2},		--1,	1,		0.2		Food worth 40000		(Thermic Condensate)
			{"FOOD_DNUT_MEAT",			"REACTION2",			5,	5,		2},		--1,	1,		0.2		Food worth 65000		(Enriched Carbon)
			{"FOOD_DNUT_AJAM",			"REACTION3",			5,	5,		2},		--1,	1,		0.2		Food worth 70000		(Nitrogen Salt)
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	1,		4},		--1,	1,		6		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		6},		--1,	1,		6		Multi-Tool Expansion Slot
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		3},		--1,	1,		6		Exosuit Expansion Slot
			{"NAV_DATA",				"NAV_DATA",				6,	8,		4},		--2,	4,		4		Navigation Data
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		5},		--1,	1,		6		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			2,	3,		2},		--1,	2,		2		Repair Kit
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	1,		3},		--1,	1,		3		Salvaged Frigate Module
			{"BP_SALVAGE",				"BP_SALVAGE",			6,	8,		6},		--3,	5,		6		Salvaged Data
		}
	},
	{
		{"R_MB_HIGH"},		--"High" reward
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			3,	4,		1},		--1,	2,		2		Warp Hypercore
			{"LAUNCHFUEL",				"POLICE_TOKEN",			2,	3,		1},		--4,	4,		1		Launch Fuel					(Defence Chit)
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		2,	3,		1},		--1,	3,		1		Frigate Fuel (200 tonnes)
			{"FRIG_BOOST_TRA",			"FRIG_BOOST_TRA",		1,	2,		1},		--1,	1,		1		Mind Control Device
			{"FRIG_BOOST_EXP",			"FRIG_BOOST_EXP",		1,	2,		1},		--1,	1,		1		Holographic Analyser
			{"FRIG_BOOST_MIN",			"FRIG_BOOST_MIN",		1,	2,		1},		--1,	1,		1		Mineral Compressor
			{"FRIG_BOOST_COM",			"FRIG_BOOST_COM",		1,	2,		1},		--1,	1,		1		Explosive Drones
			{"FRIG_BOOST_SPD",			"FRIG_BOOST_SPD",		1,	2,		1},		--1,	1,		1		Fuel Oxidiser
			{"POWERCELL",				"POWERCELL",			5,	15,		0},		--5,	15,		0.5		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			5,	15,		0},		--5,	15,		0.5		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			12,	18,		0.5},	--5,	5,		1		Starshield Battery
			{"EYEBALL",					"EYEBALL",				5,	8,		1},		--3,	5,		1		Hypnotic Eye
			{"WALKER_PROD",				"WALKER_PROD",			1,	1,		1},		--1,	1,		1		Walker Brain
			{"NIPNIPBUDS",				"NIPNIPBUDS",			10,	12,		1},		--3,	5,		1		NipNip Buds
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		10,	12,		1},		--10,	10,		1		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			10,	12,		1},		--10,	10,		1		Larval Core
			{"FISHCORE",				"FISHCORE",				10,	12,		1},		--10,	10,		1		Hadal Core
			{"TRA_MINERALS5",			"TRA_MINERALS5",		12,	20,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_TECH5",				"TRA_TECH5",			12,	20,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_COMPONENT5",			"TRA_COMPONENT5",		12,	20,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_ENERGY5",				"TRA_ENERGY5",			12,	20,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_EXOTICS5",			"TRA_EXOTICS5",			12,	20,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_COMMODITY5",			"TRA_COMMODITY5",		12,	20,		0.2},	--3,	5,		1		Trade item worth 50000
			{"SPACEGUNK2",				"SPACEGUNK2",			100,100,	0},		--100,	100,	1		Runaway Mould
			{"FOOD_EGGPIE_GM",			"FOOD_EGGPIE_GM",		5,	10,		0.3},	--1,	1,		0.2		Food worth 102000
			{"FOOD_CK_CACTUS",			"FOOD_CK_CACTUS",		1,	1,		0.0},	--1,	1,		0.2		Food worth 57800
			{"FOOD_R_EYESTEW",			"FOOD_R_EYESTEW",		1,	1,		0.0},	--1,	1,		0.2		Food worth 90000
			{"FOOD_ICE_GRAH",			"FOOD_ICE_GRAH",		1,	1,		0.0},	--1,	1,		0.2		Food worth 44000
			{"FOOD_CG_JGLITCH",			"FOOD_CG_JGLITCH",		1,	1,		0.0},	--1,	1,		0.2		Food worth 80800
			{"FOOD_CB_FCUST",			"FOOD_CB_FCUST",		1,	1,		0.0},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CB_SCUST",			"FOOD_CB_SCUST",		1,	1,		0.0},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CM_CHOC",			"FOOD_CM_CHOC",			5,	10,		0.3},	--1,	1,		0.2		Food worth 148000
			{"FOOD_MM_CARM",			"FOOD_MM_CARM",			5,	10,		0.3},	--1,	1,		0.2		Food worth 128000
			{"FOOD_CG_HONEY",			"FOOD_CG_HONEY",		1,	1,		0.0},	--1,	1,		0.2		Food worth 62200
			{"FOOD_STEW_M_CH",			"FOOD_STEW_M_CH",		1,	1,		0.0},	--1,	1,		0.2		Food worth 36000
			{"FOOD_PIE_CRABJ",			"FOOD_PIE_CRABJ",		1,	1,		0.0},	--1,	1,		0.2		Food worth 54000
			{"FOOD_PIE_CRAB",			"ABAND_LOCATOR",		1,	1,		1},		--1,	1,		0.2		Food worth 40000		(Emergency Signal Scanner)
			{"FOOD_DNUT_MEAT",			"MECH_PROD",			1,	2,		1},		--1,	1,		0.2		Food worth 65000		(Hardframe Engine)
			{"FOOD_DNUT_AJAM",			"FREI_INV_TOKEN",		1,	1,		1},		--1,	1,		0.2		Food worth 70000		(Freighter Bulkhead)
			{"REACTION1",				"REACTION1",			5,	5,		0},		--5,	5,		3		Thermic Condensate
			{"REACTION2",				"REACTION2",			5,	5,		0},		--5,	5,		3		Enriched Carbon
			{"REACTION3",				"REACTION3",			5,	5,		0},		--5,	5,		3		Nitrogen Salt
			{"COMPOUND1",				"COMPOUND1",			5,	5,		2},		--5,	5,		3		Organic Catalyst
			{"COMPOUND2",				"COMPOUND2",			5,	5,		2},		--5,	5,		3		Semiconductor
			{"COMPOUND3",				"COMPOUND3",			5,	5,		2},		--5,	5,		3		Hot Ice
			{"COMPOUND4",				"COMPOUND4",			2,	3,		1},		--5,	5,		3		Fusion Accelerant
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	2,		6},		--1,	1,		5		Salvaged Frigate Module
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	1,		6},		--1,	1,		6		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	2,		4},		--1,	1,		6		Multi-Tool Expansion Slot
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	2,		5},		--1,	1,		7		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			4,	5,		4},		--3,	3,		5		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			8,	12,		5},		--3,	5,		6		Salvaged Data
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		1},		--1,	1,		6		Exosuit Expansion Slot
			{"NAV_DATA",				"NAV_DATA",				9,	12,		2},		--3,	5,		4		Navigation Data
		}
	},
	{
		{"R_MB_MEGA"},		--"Mega" reward
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		0},		--1,	2,		2		Warp Hypercore
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		3,	5,		1},		--1,	3,		1		Frigate Fuel (200 tonnes)
			{"FRIG_BOOST_TRA",			"FRIG_BOOST_TRA",		2,	3,		1},		--1,	1,		1		Mind Control Device
			{"FRIG_BOOST_EXP",			"FRIG_BOOST_EXP",		2,	3,		1},		--1,	1,		1		Holographic Analyser
			{"FRIG_BOOST_MIN",			"FRIG_BOOST_MIN",		2,	3,		1},		--1,	1,		1		Mineral Compressor
			{"FRIG_BOOST_COM",			"FRIG_BOOST_COM",		2,	3,		1},		--1,	1,		1		Explosive Drones
			{"FRIG_BOOST_SPD",			"FRIG_BOOST_SPD",		2,	3,		1},		--1,	1,		1		Fuel Oxidiser
			{"EYEBALL",					"EYEBALL",				8,	11,		0},		--3,	5,		1		Hypnotic Eye
			{"WALKER_PROD",				"WALKER_PROD",			2,	3,		2},		--1,	1,		1		Walker Brain
			{"NIPNIPBUDS",				"NIPNIPBUDS",			12,	15,		1},		--3,	5,		1		NipNip Buds
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		12,	15,		1},		--10,	10,		1		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			12,	15,		1},		--10,	10,		1		Larval Core
			{"FISHCORE",				"FISHCORE",				12,	15,		1},		--10,	10,		1		Hadal Core
			{"TRA_MINERALS5",			"TRA_MINERALS5",		20,	28,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_TECH5",				"TRA_TECH5",			20,	28,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_COMPONENT5",			"TRA_COMPONENT5",		20,	28,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_ENERGY5",				"TRA_ENERGY5",			20,	28,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_EXOTICS5",			"TRA_EXOTICS5",			20,	28,		0.2},	--3,	5,		1		Trade item worth 50000
			{"TRA_COMMODITY5",			"TRA_COMMODITY5",		20,	28,		0.2},	--3,	5,		1		Trade item worth 50000
			{"SPACEGUNK2",				"SPACEGUNK2",			100,100,	0},		--100,	100,	1		Runaway Mould
			{"FOOD_EGGPIE_GM",			"FOOD_EGGPIE_GM",		10,	15,		0.3},	--1,	1,		0.2		Food worth 102000
			{"FOOD_CK_CACTUS",			"FOOD_CK_CACTUS",		1,	1,		0.0},	--1,	1,		0.2		Food worth 57800
			{"FOOD_R_EYESTEW",			"FOOD_R_EYESTEW",		1,	1,		0.0},	--1,	1,		0.2		Food worth 90000
			{"FOOD_ICE_GRAH",			"FOOD_ICE_GRAH",		1,	1,		0.0},	--1,	1,		0.2		Food worth 44000
			{"FOOD_CG_JGLITCH",			"FOOD_CG_JGLITCH",		1,	1,		0.0},	--1,	1,		0.2		Food worth 80800
			{"FOOD_CB_FCUST",			"FOOD_CB_FCUST",		1,	1,		0.0},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CB_SCUST",			"FOOD_CB_SCUST",		1,	1,		0.0},	--1,	1,		0.2		Food worth 92300
			{"FOOD_CM_CHOC",			"FOOD_CM_CHOC",			10,	15,		0.3},	--1,	1,		0.2		Food worth 148000
			{"FOOD_MM_CARM",			"FOOD_MM_CARM",			10,	15,		0.3},	--1,	1,		0.2		Food worth 128000
			{"FOOD_CG_HONEY",			"FOOD_CG_HONEY",		1,	1,		0.0},	--1,	1,		0.2		Food worth 62200
			{"FOOD_STEW_M_CH",			"FOOD_STEW_M_CH",		1,	1,		0.0},	--1,	1,		0.2		Food worth 36000
			{"FOOD_PIE_CRABJ",			"FOOD_PIE_CRABJ",		1,	1,		0.0},	--1,	1,		0.2		Food worth 54000
			{"FOOD_PIE_CRAB",			"ABAND_LOCATOR",		1,	1,		2},		--1,	1,		0.2		Food worth 40000		(Emergency Signal Scanner)
			{"FOOD_DNUT_MEAT",			"MECH_PROD",			2,	3,		2},		--1,	1,		0.2		Food worth 65000		(Hardframe Engine)
			{"FOOD_DNUT_AJAM",			"FREI_INV_TOKEN",		1,	1,		5},		--1,	1,		0.2		Food worth 70000		(Freighter Bulkhead)
			{"MEGAPROD1",				"MEGAPROD1",			2,	3,		2},		--1,	1,		3		Portable Reactor
			{"MEGAPROD2",				"MEGAPROD2",			2,	3,		2},		--1,	1,		3		Quantum Processor
			{"MEGAPROD3",				"MEGAPROD3",			2,	3,		2},		--1,	1,		3		Cryogenic Chamber
			{"COMPOUND6",				"COMPOUND6",			3,	5,		1},		--2,	3,		3		Cryo-Pump
			{"COMPOUND5",				"COMPOUND5",			3,	5,		1},		--2,	3,		3		Superconductor
			{"COMPOUND4",				"COMPOUND4",			3,	5,		1},		--2,	3,		3		Fusion Accelerant
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		3},		--1,	1,		4		Exosuit Expansion Slot
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	2,		7},		--1,	1,		7		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		2,	2,		2},		--1,	1,		7		Multi-Tool Expansion Slot
			{"FRIG_TOKEN",				"FRIG_TOKEN",			2,	2,		6},		--1,	1,		6		Salvaged Frigate Module
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		2,	2,		0},		--1,	1,		6		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			6,	8,		2},		--3,	3,		6		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			10,	14,		5},		--3,	5,		5		Salvaged Data
			{"NAV_DATA",				"NAV_DATA",				16,	16,		2},		--5,	5,		4		Navigation Data
		}
	},
	{
		{"R_PIRATEBOARD_A"},		--Outlaw Station board mission items
		{	--Old Item					New Item				Min	Max		%Chance (relative weight)
			{"REPAIRKIT",				"REPAIRKIT",			2,	3,		50},	--1,	3,		100		Repair Kit
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		50},	--1,	2,		100		Warp Hypercore
			--{"LAUNCHFUEL",				"LAUNCHFUEL",			4,	4,		2},		--4,	4,		1		Launch Fuel
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	1,		50},	--1,	1,		50		Salvaged Frigate Module
			--{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	1,		2},		--1,	1,		2		Defence Chit
			{"BP_SALVAGE",				"BP_SALVAGE",			3,	8,		50},	--3,	8,		50		Salvaged Data
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		2,	3,		50},	--2,	3,		100		Frigate Fuel (200 tonnes)
			{"NAV_DATA_DROP",			"SUIT_INV_TOKEN",		1,	1,		20},	--1,	1,		20		Exosuit Upgrade Chart		(Exosuit Expansion Slot)
			{"CHART_HIVE",				"CHART_HIVE",			1,	1,		20},	--1,	1,		40		Sentinel Pillar Chart
			{"STATION_KEY",				"STATION_KEY",			1,	1,		20},	--1,	1,		20		Forged Passport ???
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		60},	--1,	1,		60		Multi-Tool Expansion Slot
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	1,		60},	--1,	1,		60		Storage Augmentation
			{"FREI_INV_TOKEN",			"FREI_INV_TOKEN",		1,	1,		60},	--1,	1,		60		Freighter Bulkhead
			{"EYEBALL",					"EYEBALL",				4,	6,		66},	--1,	3,		66		Hypnotic Eye
			{"WALKER_PROD",				"WALKER_PROD",			1,	3,		40},	--1,	3,		66		Walker Brain
			{"NIPNIPBUDS",				"NIPNIPBUDS",			5,	8,		66},	--3,	5,		66		NipNip Buds
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		10,	10,		66},	--10,	10,		66		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			10,	10,		66},	--10,	10,		66		Larval Core
			{"FISHCORE",				"FISHCORE",				10,	10,		66},	--10,	10,		66		Hadal Core
			{"TRA_MINERALS5",			"TRA_MINERALS5",		12,	20,		10},	--3,	5,		50		Trade item worth 50000
			{"TRA_TECH5",				"TRA_TECH5",			12,	20,		10},	--3,	5,		50		Trade item worth 50000
			{"TRA_COMPONENT5",			"TRA_COMPONENT5",		12,	20,		10},	--3,	5,		50		Trade item worth 50000
			{"TRA_ENERGY5",				"TRA_ENERGY5",			12,	20,		10},	--3,	5,		50		Trade item worth 50000
			{"TRA_EXOTICS5",			"TRA_EXOTICS5",			12,	20,		10},	--3,	5,		50		Trade item worth 50000
			{"TRA_COMMODITY5",			"TRA_COMMODITY5",		12,	20,		10},	--3,	5,		50		Trade item worth 50000
			{"WORMDUST",				"WORMDUST",				100,100,	100},	--100,	100,	100		Worm Dust ???
			{"ILLEGAL_PROD1",			"ILLEGAL_PROD1",		10,	16,		0},		--10,	16,		100		Illegal trade item worth 2000
			{"ILLEGAL_PROD2",			"ILLEGAL_PROD2",		54,	84,		0},		--5,	15,		100		Illegal trade item worth 9000
			{"ILLEGAL_PROD3",			"ILLEGAL_PROD3",		27,	42,		40},	--5,	10,		100		Illegal trade item worth 18000
			{"ILLEGAL_PROD4",			"ILLEGAL_PROD4",		15,	24,		40},	--4,	8,		100		Illegal trade item worth 32000
			{"ILLEGAL_PROD5",			"ILLEGAL_PROD5",		9,	14,		40},	--3,	5,		100		Illegal trade item worth 58000
			{"ILLEGAL_PROD6",			"ILLEGAL_PROD6",		7,	12,		40},	--2,	4,		100		Illegal trade item worth 68000
			{"ILLEGAL_PROD7",			"ILLEGAL_PROD7",		6,	10,		40},	--1,	3,		100		Illegal trade item worth 83000
			{"ILLEGAL_PROD8",			"ILLEGAL_PROD8",		5,	8,		40},	--1,	2,		100		Illegal trade item worth 98000
			{"FOOD_V_BONE",				"FOOD_V_BONE",			10,	20,		0},		--10,	20,		2		Food worth 3200
			{"FOOD_PIE_CRAB",			"FOOD_PIE_CRAB",		12,	25,		2},		--2,	7,		2		Food worth 40000
			{"FOOD_PIE_BONE",			"FOOD_PIE_BONE",		10,	20,		2},		--2,	5,		2		Food worth 62000
			{"FOOD_STEW_DIG",			"FOOD_STEW_DIG",		2,	6,		0},		--2,	6,		2		Food worth 6400
			{"FOOD_J_HOT",				"FOOD_J_HOT",			3,	6,		0},		--3,	6,		2		Food worth 1800
			{"FOOD_J_SALT",				"ABAND_LOCATOR",		1,	1,		20},	--3,	6,		2		Food worth 1800		(Emergency Signal Scanner)
			{"FOOD_ICE_FISH",			"MECH_PROD",			1,	3,		30},	--3,	6,		2		Food worth 36000	(Hardframe Engine)
			{"FOOD_MM_APPLE",			"FOOD_MM_APPLE",		5,	10,		2},		--2,	5,		2		Food worth 149400
		}
	},
	{
		{"R_PIRATEBOARD_B"},		--Outlaw Station board mission currency
		{	--Old Item					New Item				Min	Max		%Chance (relative weight)
			{"REP_TOKEN",				"REP_TOKEN",			1,	1,		50},	--1,	1,		50		Forged Passport
		}
	},
}

SpaceStationMissionCurrencyChanges =
{
	{
		{"R_MB_FIRST"},		--This seems to be the reward pool for the first few missions you take from space stations. Unsure when it switches from these to the other rewards below
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	50000,		150000,		16},		--25000,		50000,		30
			{"Nanites",	150,		250,		16}			--100,			150,		29		
		}
	},
	{
		{"R_MB_LOW"},		--"Low" reward
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	50000,		150000,		20},		--25000,		50000,		30
			{"Nanites",	150,		250,		20}			--100,			150,		29		
		}
	},
	{
		{"R_MB_MED"},		--"Medium" reward
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	250000,		650000,		20},		--70000,		120000,		30
			{"Nanites",	250,		500,		20}			--150,			250,		29		
		}
	},
	{
		{"R_MB_HIGH"},		--"High" reward
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	750000,		1000000,	20},		--300000,		500000,		30
			{"Nanites",	500,		750,		20}			--250,			350,		29		
		}
	},
	{
		{"R_MB_MEGA"},		--"Mega" reward
		{	--Currency	Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	1100000,	1500000,	20},		--400000,		750000,		32
			{"Nanites",	750,		1000,		20}			--250,			400,		29		
		}
	},
	{
		{"R_PIRATEBOARD_B"},--Outlaw Station board mission set B
		{	--Currency	Min			Max			%Chance (relative weight)
			{"Units",	750000,		1000000,	100},		--250000,		500000,		100
			{"Nanites",	500,		750,		100}		--250,			400,		100		
		}
	}
}



--Replaces certain gifts from Guild Envoys in Space Stations
GuildGiftChanges =
{
	{	--Guild Giftpool ID
		{"R_WGUILD_GIFT2"},
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance (weight?)
			{"WALKER_PROD",		"SHIPCHARGE",		2,			6,			100},						--"WALKER_PROD",			1,			5,			100
			{"QUAD_PROD",		"QUAD_PROD",		1,			1,			100},						--"QUAD_PROD",				1,			3,			100
		}
	},
	{	--Guild Giftpool ID
		{"R_WGUILD_GIFT3"},
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance (weight?)
			{"WALKER_PROD",		"MECH_PROD",		1,			1,			100},						--"WALKER_PROD",			2,			4,			100
			{"QUAD_PROD",		"QUAD_PROD",		1,			2,			100},						--"QUAD_PROD",				2,			5,			100
		}
	},
	{	--Guild Giftpool ID
		{"R_WGUILD_GIFT4"},
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance (weight?)
			{"WALKER_PROD",		"WALKER_PROD",		1,			1,			100},						--"WALKER_PROD",			3,			5,			100
			{"QUAD_PROD",		"MECH_PROD",		1,			2,			100},						--"QUAD_PROD",				3,			5,			100
		}
	}
}

--Multiplier to all rewards of Tainted Metal (to balance out the increased price of Suspicious Packets when buying from Scrap Dealers)
TaintedMetalMult =						3						--1

--Replacers for how much Standing is awarded for turning over Derelict Freighter Crew Manifest / Captain's Log to Guild Envoys instead of Scrap Dealers
CrewManGuildStand =						4						--2
CaptLogGuildStand =						6						--3
--Adds a Units Reward for turning over Derelict Freighter Crew Manifest / Captain's Log to Guild Envoys instead of Scrap Dealers
CrewManGuildUnits =						600000					--0
CaptLogGuildUnits =						900000					--0

--Replacers for the Min and Max Units awarded for the repeatable mission from the Exocraft Technician NPC, in addition to the other random rewards
ExocraftMinUnits =						100001					--1000 or 0
ExocraftMaxUnits =						600000					--5000 or 0
--Adds a Nanites Reward for the repeatable mission from the Exocraft Technician NPC, in addition to the other random rewards
ExocraftMinNanites =					200						--0
ExocraftMaxNanites =					500						--0
--Replacers for the quality chance % (C, B, A, S Class) for random Exocraft upgrades from the repeatable mission from the Exocraft Technician NPC
ExoClassCChance =						0						--55
ExoClassBChance =						60						--25
ExoClassAChance =						30						--15
ExoClassSChance =						10						--5

--Multipliers to the quality chance % (C, B, A, S Class) for random various upgrade modules rarely found (~12% of the time) in Damaged Machinery on planets
DmgMachClassCChanceMult =				1						--55 (0 for hazard & life support upgrades)
DmgMachClassBChanceMult =				1						--25 (60 for hazard and 65 for life support upgrades)
DmgMachClassAChanceMult =				1						--15 (30 for hazard & life support upgrades)
DmgMachClassSChanceMult =				1						--5 (10 for hazard & life support upgrades)

--Multipliers to apply to the various kinds of rewards from Frigate Expedition missions
ExpeditionUnitsMultiplier =				0.8
ExpeditionNanitesMultiplier =			1						
ExpeditionResourcesMultiplier =			0.2
ExpeditionProductsMultiplier =			0.6						--If you use a value lower than 0.5 here, some rewards with an amount of "1" by default will get rounded down to "0".
ExpeditionReward0Replacer =				1						--If you use a value lower than 0.5 above, choose what value to replace any rewards which now get rounded down to "0". Use 0 here to leave those rewards rounded down to "0".

ExpeditionActivatedMetalMultiplier =	0.5						--Certain encounters reward 250-750 of the various Activated Metals		(Multiplier stacks with ExpeditionResourcesMultiplier)

IndiumReplacement =						"ASTEROID3"				--Replacement Substance for Indium (reward for certain Combat Expeditions)		Platinum
IndiumReplacementAmount =				100						--500
IndiumReplacementAmountEasy =			10						--50		For the Easy version of Expeditions while you still only have a few Frigates

-- Vanilla Expedition Reward Percentage chances seem to be always be either 100, 66, 50, 20, 10, or 1.
ExpeditionRewardChanceMultiplier100 =						1				--Multiplier to apply to the percentage chance for rewards which normally have a 100% chance of receiving
ExpeditionRewardChanceMultiplierlessthan100 =				1				--Multiplier to apply to the percentage chance for rewards which normally have less than a 100% chance of receiving. If you use a value lower than 0.5 here, rewards with a vanilla chance of 1% will get rounded down to 0%
ExpeditionRewardChance0Replacer =							1				--If you use a value lower than 0.5 above, choose what value to replace any rewards which now have a % chance rounded down to 0%. Use 0 here to leave those reward chances rounded down to "0".

--Replaces the possible Stellar Metal rewards when dismantling the "broken tech" consumable (from Buried Caches) with their Activated version instead
BreakTechAmountMult =					0.5					--1			Default is 50 - 150 of Cadmium/Emeril/Indium
BreakTechRed =							"EX_RED"			--"RED2"	Default is Cadmium
BreakTechGreen =						"EX_GREEN"			--"GREEN2"	Default is Emeril
BreakTechBlue =							"EX_BLUE"			--"BLUE2"	Default is Indium

--Replaces the possible rewards from dismantling the consumable plant item from Subterranean Organic Structure
	--Default Amount is 50-120, then multiplied by the "Amount Multiplier" below
BreakPlantsChangesSubstance =
{		--Old Reward			New Reward			Amount Multiplier
	{	--Residual Goop 		Marrow Bulb   
		"SPACEGUNK1",			"PLANT_CAVE",		1.5,
	},
	{	--Runaway Mould    		Runaway Mould
		"SPACEGUNK2",			"SPACEGUNK2",		2,	
	},
	{	--Faecium 				Faecium
		"PLANT_POOP",			"PLANT_POOP",		1.5,
	},
	{	--Mordite 				Mordite
		"CREATURE1",			"CREATURE1",		1,	
	},
	{	--Cyto-Phosphate 		Cyto-Phosphate
		"WATERPLANT",			"WATERPLANT",		1,	
	},
	{	--Condensed Carbon 		Condensed Carbon
		"FUEL2",				"FUEL2",			1,	
	},
	{	--Carbon 				Carbon
		"FUEL1",				"FUEL1",			1.5,
	}
}
--The same as above, but changes these rewards into Products instead of Substances
BreakPlantsChangesProduct =
{		--Old Reward			New Reward			Amount Multiplier
	{	--Living Slime    		Sweetroot
		"SPACEGUNK4",			"FOOD_P_ALL2",		0.25,
	},
	{	--Viscous Fluids    	Pulpy Roots
		"SPACEGUNK5",			"FOOD_P_ALL3",		0.25,
	},
}

--Multipliers to how many Factory Override Tokens you get awarded
FactoryOverrideTokenMult	=	10						--This should match the multiplier for "RecipeCost" in the Unlock Costs mod, to balance it out

--% Chance & amounts to drop the "Salvaged Glass" item when opening the loot capsules from dead sentinels
DroneGlassDropChance	=	1			--66
DroneGlassMin			=	1			--1
DroneGlassMax			=	1			--1
QuadGlassDropChance		=	100			--0
QuadGlassMin			=	1			--0
QuadGlassMax			=	1			--0
MechGlassDropChance		=	100			--0
MechGlassMin			=	2			--0
MechGlassMax			=	2			--0
WalkerGlassDropChance	=	100			--0
WalkerGlassMin			=	4			--0
WalkerGlassMax			=	4			--0
PillarGlassDropChance	=	33			--66		This is the reward for destroying each one of the 3 control units surrounding a planetary Sentinal Pillar
PillarGlassMin			=	1			--1
PillarGlassMax			=	1			--1

--% Chance to receive upgrade modules when opening Salvaged Glass
SentGunChance			=	10			--20
SentSuitChance			=	10			--20

--% Chance to receive Sentinel Boundary Map from various sources
SalvageSentMapChance	=	5			--10		Chance from destroying Salvageable Scrap

--% Chance to receive Echo Locators from various sources
SpiderMapChance			=	11			--7			Chance to drop from the large Arachnid Sentinels
DisResMapChance			=	15			--20		Chance to drop from Dissonance Resonator

--Changes to how many items are found when "cleaning" / "repairing" certain large green crates and broken sentinel machinery on Corrupt Planets
	--Set these to "0" to go back to using the vanilla random ranges
ChestRustedMetalMult	=	0.67		--50-100 Rusted Metal		Applies multiplier from common green chests scattered on planets, normally gives a random amount between 50-100
RobotheadMaxCap			=	1			--	-1			This sets a cap on how large the itemstack received from broken sentinel machinery on Corrupt Planets can be. -1 seems to be unlimited

RobotheadMaintGroup		=	"Sentinels"	--"Sentinels"	This sets what pool of rewards is chosen randomly. "Cleaning" is the only other one which gives items, the others require repairing tech instead
RobotheadRandMin		=	71			--71			This value gets ignored for some reason if the MaintenanceGroup is set to "Sentinels"
RobotheadRandMax		=	71			--71			This value gets ignored for some reason if the MaintenanceGroup is set to "Sentinels"

--Attempts to limit the amount of items received from broken sentinel machinery on Corrupt Planets that had no effect for some reason
--[[
SentGlass				=	2			--??? Salvaged Glass		From interacting with damaged sentinel machinery on Corrupt planets. Normally gives a random amount, up to ???
SentBrain				=	2			--???-10? Walker Brain		From interacting with damaged sentinel machinery on Corrupt planets. Normally gives a random amount, up to 10?
SentMirror				=	2			--??? Inverted Mirror		From interacting with damaged sentinel machinery on Corrupt planets. Normally gives a random amount, up to ???
SentQuad				=	2			--??? Quad Servo			From interacting with damaged sentinel machinery on Corrupt planets. Normally gives a random amount, up to ???
]]

--Changes the relative chances of rewards from Ancient Data Structures
ADSNavDataChance		=	100			--100
ADSExosuitChartChance	=	5			--10

--Multipliers to apply to rewards from some rare resource nodes
MutantPlantSulphurine	=	0.75		--250 - 400
CuriousDepositMould		=	0.6			--300 - 500
	--Note: in practice, The following seem to only yield around half of these values
OrganicRockChlorine		=	4			--25 - 60	
OrganicRockMordite		=	0.27		--250 - 500			Unlike the other rare resource nodes here, this is unaffected by your Multi-Tool's Mining yield bonus
MetalFingerGold			=	0.6			--                                                                                        100 - 200
MetalFingerUranium		=	0.4			--200 - 250
MetalFingerUraniumChance=	0.5			--100	(Relative % Chance a Metal Finger will yield Uranium instead of Gold)

GassyPods				=	0.5			--20 - 30		The 3 red "Gassy Pods" you can harvest from the common Gas Exploding plant hazardous flora on most planets

--Changes how many crops are gathered from certain plants, and what the chance is to receive nanites in addition to the normal yield
	--WIP: P_GRAVBALL doesn't control wild Gravitino balls, haven't tested P_ALBUMENPEARL or DE_URCHIN
CropYieldChanges =
{	--PlantID					% Chance	Amount
	{"PLANT_PEARL",				100,		1},				--100,	1		Albumen Pearl (farm crop)
	{"RARE_OBJECT",				100,		2},				--100,	1		Gravitino Ball (wild)
	{"PLANT_GRAV",				100,		1},				--100,	1		Gravitino Ball (farm crop)
	{"DE_URCHIN",				100,		2},				--100,	1		Sac Venom (wild)				UNTESTED
	{"PLANT_SACVENOM",			100,		1},				--100,	1		Sac Venom (farm crop)
	{"PLANT_NIP",				100,		1}				--100,	1		NipNip Buds (farm crop)
}
AlbumenPearlWildChance	=		100							--100			From Humming Sacs or Sentient Plants
AlbumenPearlWildAmount	=					2				--1				From Humming Sacs or Sentient Plants

AlbumenPearlFarmNanitesChance =	100							--0			% Chance to receive Nanites from an Albumen Pearl (farm crop) in addition to crop
AlbumenPearlFarmNanitesAmount =				1				--0
GravitinoFarmNanitesChance	=	100							--0			% Chance to receive Nanites from a Gravitino Ball (farm crop) in addition to crop
GravitinoFarmNanitesAmount	=				8				--0
SacVenomFarmNanitesChance	=	100							--0			% Chance to receive Nanites from a Sac Venom (farm crop) in addition to crop
SacVenomFarmNanitesAmount	=				12				--0

GravitinoWildNanitesChance	=	33							--0			% Chance to receive Nanites from a Gravitino Ball (wild) in addition to Gravitino Ball(s)
GravitinoWildNanitesAmount	=				16				--0
VortexCubeNanitesChance	=		66							--0			% Chance to receive Nanites from a Vortex Cube in addition to a Vortex Cube
VortexCubeNanitesAmount	=					4				--0
StormCrystalNanitesChance	=	50							--0			% Chance to receive Nanites from a Storm Crystal in addition to a Storm Crystal
StormCrystalNanitesAmount	=				8				--0

--Multipliers to reduce certain plant yields. This is mainly to nerf farming slightly in relation to wild gathering
	--pre-4.0, this was also to balance out the increased crop yield from a Multi-Tool's Mining Stat with my PTSd Scanner and Mining Bonus.lua /  More Meaningful Multitools
CropYieldReduction = 
{
	--Wild plants		Multiplier		(Wild plants values / 0.9 to counter the * 0.9 factor I use in "Substance Collection" intended just for minable objects)
	{"WILD_BARREN",		1.25/0.9},				--40 - 60	Cactus Flesh
	{"WILD_LUSH",		2.5/0.9},				--10 - 15	Star Bulb
	{"WILD_RADIO",		1.75/0.9},				--18 - 30	Gamma Root
	{"WILD_SNOW",		1.75/0.9},				--18 - 30	Frost Crystal
	{"WILD_SCORCHED",	1.75/0.9},				--18 - 30	Solanium
	{"WILD_TOXIC",		1.75/0.9},				--18 - 30	Fungal Mould
	{"PLANT_COMMODITY",	1.33/0.9},				--9  - 18	Sodium			(1.333333 HardModeMultiplier pre-NMS 4.0)
	{"PLANT_FUEL",		1.33/0.9},				--20 - 25	Oxygen			(1.333333 HardModeMultiplier pre-NMS 4.0)
	--Farm plants
	{"PLANT_BARREN",	1},						--100		Cactus Flesh
	{"PLANT_LUSH",		1},						--25		Star Bulb
	{"PLANT_RADIO",		1},						--50		Gamma Root
	{"PLANT_SNOW",		1},						--50		Frost Crystal
	{"PLANT_SCORCHED",	1},						--50		Solanium
	{"PLANT_TOXIC",		1},						--50		Fungal Mould
	{"PLANT_CREATURE",	1},						--25		Mordite
	{"PLANT_POOP",		1}						--25		Faecium
}

--Multiplier to appy to the carbon reward from Standing Planters
StandingPlanterMult = 0.5									--Vanilla gives 40 - 80 carbon
--New reward for harvesting plants on the walls of certain new freighter rooms.  "INTERIORPLANTS" gives 5 - 20 carbon
FreighterCarbonWallReward = "INTERIORPLANTS"				--"PLANTER_CARBON" in vanilla copies reward of standing planters above (40 - 80 carbon)

--WIP attempt: Swaps the reward for "DE_SEAHORROR", which I am guessing is defeating an Abyssal Horror (anglerfish), which currently seems to drop no loot?
	--Tested and this doesn't seem to be the case... Anglerfish seems to be refered to as FIENDFISHBIG in most files
--SeaHorrorReward = "SeaHorror"			--"SeaHorror"

--WIP attempt: for making Sentinel Pillars require defeating all nearby sentinels first
	--DRONE_HIVE_COMBAT_SHUTDOWN in NMS_DIALOG_GCALIENPUZZLETABLE.MBIN
	--UI_SENTINELS_DISABLED in REWARDTABLE.MBIN
	--C_SENTINELS_OFF in COSTTABLE.MBIN
	--"defeat guards" and/or "destroy the locks" in COREMISSIONTABLE.MBIN
		--Conditions "GcMissionConditionAreDroneHivePartsDestroyed.xml"
HiveConditionTest = "AnyFalse"														--"AnyFalse"		("AnyTrue")
HiveEnablingConditionId = ""		--""			("GcMissionConditionAreDroneHivePartsDestroyed.xml")

--Changes the amount of items harvested from various underwater objects
CrystalSulphide = 2						--1
AlluringSpecHadalCore = 1				--1

--Adds additional rewards to harvesting Aluuring Specimens
	--NOTE: Currently rewarding 1 of each item instead of 2 of each item, since a side effect of making ship weapons not mine objects (disable explosions damaging objects) makes the Alluring Specimen no longer get destroyed by the Anglerfish when it spawns. 
NewAlluringSpecRewards =
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="VENTGEM" />
              <Property name="AmountMin" value="2" />
              <Property name="AmountMax" value="2" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="CLAMPEARL" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
            </Property>
          </Property>]]

--Loot from Crashed Freighters and Harmonic Scrap wheelbarrows at Abandoned Camps
CrashedFreighterLootChances =
{
	{
		{"CRASHCONT_M"},
		{	--Item						%Chance (relative weight, roughly but not necessarily out of 100)
			{"FRIG_TOKEN",				16},					--10		Salvaged Frigate Module
			{"WEAP_INV_TOKEN",			10},					--8			Multi-Tool Expansion Slot
			{"FREI_INV_TOKEN",			15},					--5			Freighter Bulkhead
			--{"",						8},						--8			Chooses 1x random ILLEGAL_PROD trade good
			{"HYPERFUEL2",				7},						--10		Warp Hypercore
			{"BP_SALVAGE",				5},						--25		1-3 Salvaged Data
			--{"",						20},					--20		Chooses 20x random TRA_ trade goods
			{"FARMPROD6",				9},						--15		Unstable Gel
			{"FARMPROD5",				7},						--9			Poly Fibre
			{"FARMPROD1",				5},						--5			Acid
			{"FARMPROD4",				5},						--5			Heat Capacitor
			{"FARMPROD7",				1},						--1			Liquid Explosive
			{"COMPOUND4",				1},						--1			Fusion Accelerant
			{"COMPOUND5",				1},						--1			Superconductor
			{"COMPOUND6",				1},						--1			Cryo-Pump
			{"COMPOUND3",				3},						--3			Hot Ice
		}
	},
	{
		{"CRASHCONT_S"},		--Seems to be if you loot a crashed freighter during the tutorial missions
		{
			{"FRIG_TOKEN",				15},					--8			Salvaged Frigate Module
			{"WEAP_INV_TOKEN",			15},					--8			Multi-Tool Expansion Slot
			{"ANTIMATTER",				10},					--15		Antimatter
			{"AM_HOUSING",				10},					--15		Antimatter Housing
			{"HYPERFUEL1",				10},					--15		Warp Cell
			{"LAUNCHFUEL",				10},					--35		Launch Fuel
		}
	},
	{
		{"R_ROBOTCRATE"},
		{	--Item						%Chance (relative weight, roughly but not necessarily out of 100)
			--{"",						35},					--35		Chooses 1x random procedural artifact
			{"SCRAP_GOODS",				20},					--20		1x Suspicious Packet (Goods)
			{"SCRAP_TECH",				16},					--20		1x Suspicious Packet (Tech)
			{"SCRAP_WEAP",				16},					--20		1x Suspicious Packet (Arms)
			{"SHIP_INV_TOKEN",			20},					--20		1x Storage Augmentation
			{"WEAP_INV_TOKEN",			20},					--20		1x Multi-Tool Expansion Slot
			{"SUIT_INV_TOKEN",			20},					--20		1x Exosuit Expansion Unit
			{"SPACEGUNK1",				25},					--35		24-64 Residual Goop
			{"SPACEGUNK2",				25},					--35		24-64 Runaway Mould   
			{"SPACEGUNK3",				25},					--35		24-64 Rusted Metal   
			{"SPACEGUNK4",				25},					--35		24-64 Living Slime   
			{"SPACEGUNK5",				25},					--35		24-64 Viscous Fluids   
			{"ROBOT2",					25},					--35		24-64 Atlantideum
			{"AF_METAL",				25},					--25		24-64 Tainted Metal   
		}
	}
}
--Adds freighter bulkheads as loot to CRASHCONT_S
CrashFreightBulkheadChance =			15						--0			Freighter Bulkhead

--try reverting, then remove one of the units sections to just have one?
--Multiplies the currency rewards from Crashed Freighteres and Harmonic Scrap wheelbarrows at Abandoned Camps
CrashedFreighterCurrencyChances =
{
	{
		{"CRASHCONT_M"},
		{	--Old Currency	New Currency	Reward Mult	Old %Chance 	New %Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",		"Units",		1,			5,				5},			--150000-	250000,			5%			
			--{"Units",		"Units",		4,			25,				5}			--25000	-	75000,			25%			(By default, This will get boosted by SmallUnitsMin)
		}
	},
	{
		{"CRASHCONT_S"},
		{	--Old Currency	New Currency	Reward Mult	Old %Chance 	New %Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",		"Units",		1,			25,				5},			--25000	-	75000,			25%			(By default, This will get boosted by SmallUnitsMin)
			{"Nanites",		"Nanites",		2,			100,			15}			--20	-	20,				100%
		}
	},
	{
		{"R_ROBOTCRATE"},
		{	--Old Currency	New Currency	Reward Mult	Old %Chance 	New %Chance (relative weight, roughly but not necessarily out of 100)
			{"Nanites",		"Nanites",		2,			50,				50}			--25	-	45,				50%
		}
	}
}

--Large Artifact Chests awlays give a guaranteed Common Rarity "Lost Artifact" (Tool) in addition to a random artifact	 (The Tool Artifact should usually be exchangeable at a Colossal Archive for a better rarity)
ExtraChestArtifact = [[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="Tool" />
              </Property>
              <Property name="OSDMessage" value="" />
              <Property name="SubIfPlayerAlreadyHasOne" value="False" />
              <Property name="OverrideRarity" value="True" />
              <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Common" />
              </Property>
            </Property>
          </Property>]]

--Set which recipes for Storage Containers to remove from most rewards where the game normally awards all 10 recipes
RemoveContainerRewards = {"CONTAINER3", "CONTAINER4", "CONTAINER5", "CONTAINER6", "CONTAINER7", "CONTAINER8", "CONTAINER9", }		

--Nothing below this should need to be changed. All values can be edited in the sections above this line

PirateMissionChanges	=	
{
	{
		{"BOUNTY_NEW1"},
		{
			{"R_MB_LOW",				PirateMissionEasyReward},
			{"MB_STAND_LOW",			PirateMissionEasyStanding},
		}
	},
	{
		{"BOUNTY_NEW2"},
		{
			{"R_MB_LOW",				PirateMissionMediumReward},
			{"MB_STAND_LOW",			PirateMissionMediumStanding},
		}
	},
	{
		{"BOUNTY_NEW3"},
		{
			{"R_MB_LOW",				PirateMissionHardReward},
			{"MB_STAND_LOW",			PirateMissionHardStanding},
		}
	},
}

NewNaniteReward = [[<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="TECHFRAG_XXX" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..FactoryMin..[[" />
              <Property name="AmountMax" value="]]..FactoryMax..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

function CurrencyReward (Currency, Min, Max, Chance)
    return
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..Chance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..Min..[[" />
              <Property name="AmountMax" value="]]..Max..[[" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..Currency..[[" />
              </Property>
            </Property>
          </Property>]]
end

function ProductReward (Product, Min, Max, Chance)
    return
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..Chance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="]]..Product..[[" />
              <Property name="AmountMin" value="]]..Min..[[" />
              <Property name="AmountMax" value="]]..Max..[[" />
			  <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
			  <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>]]
end

function SubstanceReward (Substance, Min, Max, Chance)
    return
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..Chance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificSubstance.xml">
              <Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
                <Property name="DefaultSubstanceType" value="None" />
              </Property>
              <Property name="ID" value="]]..Substance..[[" />
              <Property name="AmountMin" value="]]..Min..[[" />
              <Property name="AmountMax" value="]]..Max..[[" />
              <Property name="DisableMultiplier" value="False" />
              <Property name="RewardAsBlobs" value="False" />
              <Property name="UseFuelMultiplier" value="False" />
              <Property name="Silent" value="False" />
            </Property>
          </Property>]]
end

function CropNanites (NanitesChance, NanitesAmount)
    return
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..NanitesChance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..NanitesAmount..[[" />
              <Property name="AmountMax" value="]]..NanitesAmount..[[" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>]]
end

InvBoxBulkheadReward =
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..MemFragInvBulkChance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="FREI_INV_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>]]

CrewManGuildUnitReward =
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..CrewManGuildUnits..[[" />
              <Property name="AmountMax" value="]]..CrewManGuildUnits..[[" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Units" />
              </Property>
            </Property>
          </Property>]]

CaptLogGuildUnitReward =
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..CaptLogGuildUnits..[[" />
              <Property name="AmountMax" value="]]..CaptLogGuildUnits..[[" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Units" />
              </Property>
            </Property>
          </Property>]]

NewCrashedFreighterLoot = 
[[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..CrashFreightBulkheadChance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="FREI_INV_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>]]

GlassDrop = [[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SENTINEL_LOOT" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>]]

ExpeditionMetalChanges	=	
{
	{"EX_YELLOW",	ExpeditionActivatedMetalMultiplier},
	{"EX_RED",	ExpeditionActivatedMetalMultiplier},
	{"EX_GREEN",	ExpeditionActivatedMetalMultiplier},
	{"EX_BLUE",	ExpeditionActivatedMetalMultiplier}
}

PIRATLTEASYRewards =
[[<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="PIRATLTEASY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="True" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_GOODS" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_TECH" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_WEAP" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SHIPCHARGE" />
              <Property name="AmountMin" value="3" />
              <Property name="AmountMax" value="3" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="40" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="TRA_CURIO1" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="3" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="40" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="WAR_CURIO1" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="3" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="40" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="EXP_CURIO1" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="3" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="100" />
              <Property name="AmountMax" value="250" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

PIRATLTHARDRewards =
[[<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="PIRATLTHARD" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="True" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_GOODS" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_TECH" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_WEAP" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SHIPCHARGE" />
              <Property name="AmountMin" value="3" />
              <Property name="AmountMax" value="3" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="100" />
              <Property name="AmountMax" value="250" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

ESCORTLOOTRewards =
[[<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="ESCORTLOOT" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="True" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="20" />
              <Property name="AmountMax" value="30" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SHIPCHARGE" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="FRIG_BOOST_TRA" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProcTechProduct.xml">
              <Property name="Group" value="SHIPJUMP_NAME_L" />
              <Property name="WeightedChanceNormal" value="55" />
              <Property name="WeightedChanceRare" value="25" />
              <Property name="WeightedChanceEpic" value="15" />
              <Property name="WeightedChanceLegendary" value="5" />
              <Property name="ForceRelevant" value="False" />
              <Property name="ForceQualityRelevant" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProcTechProduct.xml">
              <Property name="Group" value="SHIPSHIELD_NAME_L" />
              <Property name="WeightedChanceNormal" value="55" />
              <Property name="WeightedChanceRare" value="25" />
              <Property name="WeightedChanceEpic" value="15" />
              <Property name="WeightedChanceLegendary" value="5" />
              <Property name="ForceRelevant" value="False" />
              <Property name="ForceQualityRelevant" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]
	
PlaqueChanges =
{
	{"TEACHWORD_EXP", "Explorers"},
	{"TEACHWORD_TRA", "Traders"},
	{"TEACHWORD_WAR", "Warriors"}
}

--Makes Knowledge Stones & Encyclopedias teach 2 words instead of 1 (doesn't affect NPCs teaching words)
function AddOneWord(AlienType)
    return
    [[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..AlienType..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>]]
end

--Makes Ancient Plaques & Ruins & Monoliths teach 4 more words than normal
function AddFourWords(AlienType)
    return
    [[<Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..AlienType..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..AlienType..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..AlienType..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..AlienType..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>]]
end

AddedExocraftNPCMoney =
[[<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_D_EXOTUT_MONEY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..ExocraftMinUnits..[[" />
              <Property name="AmountMax" value="]]..ExocraftMaxUnits..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Units" />
              </Property>
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..ExocraftMinNanites..[[" />
              <Property name="AmountMax" value="]]..ExocraftMaxNanites..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

AddedExocraftNPCMoneyID =
[[<Property value="NMSString0x10.xml">
                    <Property name="Value" value="R_D_EXOTUT_MONEY" />
                  </Property>]]

NewTravReward =
[[<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="TRAV_PACKAGE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificSubstance.xml">
              <Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
                <Property name="DefaultSubstanceType" value="None" />
              </Property>
              <Property name="ID" value="LAUNCHSUB" />
              <Property name="AmountMin" value="]]..math.floor(20*TravRewardDiHydrMult)..[[" />
              <Property name="AmountMax" value="]]..math.floor(40*TravRewardDiHydrMult)..[[" />
              <Property name="DisableMultiplier" value="False" />
              <Property name="RewardAsBlobs" value="False" />
              <Property name="UseFuelMultiplier" value="False" />
              <Property name="Silent" value="False" />
              <Property name="UseMissionBoardDifficultyScale" value="False" />
            </Property>
          </Property>
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificSubstance.xml">
              <Property name="Default" value="GcDefaultMissionSubstanceEnum.xml">
                <Property name="DefaultSubstanceType" value="None" />
              </Property>
              <Property name="ID" value="ROCKETSUB" />
              <Property name="AmountMin" value="]]..math.floor(20*TravRewardTritMult)..[[" />
              <Property name="AmountMax" value="]]..math.floor(40*TravRewardTritMult)..[[" />
              <Property name="DisableMultiplier" value="False" />
              <Property name="RewardAsBlobs" value="False" />
              <Property name="UseFuelMultiplier" value="False" />
              <Property name="Silent" value="False" />
              <Property name="UseMissionBoardDifficultyScale" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

function AddUpgrade(UpgradeGroup, NormalChance, RareChance, EpicChance, LegendChance)
    return
	[[<Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
				<Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardProcTechProduct.xml">
                  <Property name="Group" value="]]..UpgradeGroup..[[" />
                  <Property name="WeightedChanceNormal" value="]]..NormalChance..[[" />
                  <Property name="WeightedChanceRare" value="]]..RareChance..[[" />
                  <Property name="WeightedChanceEpic" value="]]..EpicChance..[[" />
                  <Property name="WeightedChanceLegendary" value="]]..LegendChance..[[" />
                  <Property name="ForceRelevant" value="False" />
                  <Property name="ForceQualityRelevant" value="False" />
                </Property>
              </Property>]]
end

TeachPellets =
[[<Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
				<Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardSpecificProductRecipe.xml">
                  <Property name="ID" value="BAIT_BASIC" />
                  <Property name="Silent" value="False" />
                  <Property name="HideInSeasonRewards" value="False" />
                  <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
                </Property>
              </Property>]]

MemFragOutlierTechs =
{"UP_T_JET", "UP_STRONGLASER", "UP_T_MINER", "UP_T_LAUNCHCHAR"}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\NPCMISSIONTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the PirateMissionChanges at the bottom of this script
		}
	},
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S9_SHIP"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					{"UseOverrideSizeType",	"True"},
					{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S9_COMPLETE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					{"UseOverrideSizeType",	"True"},
					{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S1_SHIP"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					{"UseOverrideSizeType",	"True"},
					{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S1_COMPLETE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					{"UseOverrideSizeType",	"True"},
					{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S12_SHIP"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					{"UseOverrideSizeType",	"True"},
					{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S12_COMPLETE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					{"UseOverrideSizeType",	"True"},
					{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S12_PHASE3"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					--{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RS_S12_STAFF"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipCargoSlots},
					{"InventoryClass",	ExpShipClass},
					--{"SizeType",	ExpShipSize}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FTH_USEFUL_PROD",	"ID","TECHBOX"},
				["MATH_OPERATION"] 		= "", 
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	TravTechChance},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY1","Reward","GcRewardMoney.xml"},
				["MATH_OPERATION"] 		= "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateBounty1},
					{"AmountMax",	PirateBounty1} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY2","Reward","GcRewardMoney.xml"},
				["MATH_OPERATION"] 		= "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateBounty2}, 
					{"AmountMax",	PirateBounty2} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY3","Reward","GcRewardMoney.xml"},
				["MATH_OPERATION"] 		= "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateBounty3}, 
					{"AmountMax",	PirateBounty3} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_DEFEND_RAID","Reward","GcRewardMoney.xml"},
				["MATH_OPERATION"] 		= "*", 
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateRaidDefenseRewardMult}, 
					{"AmountMax",	PirateRaidDefenseRewardMult} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","FACT_TOKEN"},
				["MATH_OPERATION"] 		= "*", 
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	FactoryOverrideTokenMult}, 
					{"AmountMax",	FactoryOverrideTokenMult} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FACT_TOKEN"},
				["MATH_OPERATION"] 		= "*", 
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount",	FactoryOverrideTokenMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CREW_GUILD"},
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CrewManGuildStand},
					{"AmountMax",	CrewManGuildStand}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CAPT_GUILD"},
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CaptLogGuildStand},
					{"AmountMax",	CaptLogGuildStand}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NPC_VEHICLE16S"},
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	ExocraftMinUnits},
					{"AmountMax",	ExocraftMaxUnits}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NPC_VEHICLE16S"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CurrencyReward ("Nanites", ExocraftMinNanites, ExocraftMaxNanites, "100"),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_INVBOX"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = InvBoxBulkheadReward,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_TECHBOX",	"Reward", "GcRewardProcTechProduct.xml"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MemFragProcChanceMult},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_TECHBOX",	"Group", "LAUNCHER_NAME_L"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MemFragProcLauncherChanceMult},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_CARGOSHIELD"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicNeural},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_LAUNCHCHARGE"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicChloroplast},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_SHIPSCAN"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicWormhole},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CREW_GUILD"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CrewManGuildUnitReward,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CAPT_GUILD"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CaptLogGuildUnitReward,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","AF_METAL"},
				["MATH_OPERATION"] 		= "*", 
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	TaintedMetalMult},
					{"AmountMax",	TaintedMetalMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","AF_METAL"},
				["MATH_OPERATION"] 		= "*", 
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount",	TaintedMetalMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TRADERLOOT",	"Group","SHIPJUMP_NAME_L"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TRADERLOOT",	"Group","SHIPSHIELD_NAME_L"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DRONE_LOOT"},
				["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DroneGlassDropChance}, 
					{"AmountMin",	DroneGlassMin}, 
					{"AmountMax",	DroneGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","QUAD_LOOT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = GlassDrop,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","QUAD_LOOT","ID","SENTINEL_LOOT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	QuadGlassDropChance}, 
					{"AmountMin",	QuadGlassMin}, 
					{"AmountMax",	QuadGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MECH_LOOT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = GlassDrop,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MECH_LOOT","ID","SENTINEL_LOOT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MechGlassDropChance}, 
					{"AmountMin",	MechGlassMin}, 
					{"AmountMax",	MechGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = GlassDrop,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT","ID","SENTINEL_LOOT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	WalkerGlassDropChance}, 
					{"AmountMin",	WalkerGlassMin}, 
					{"AmountMax",	WalkerGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_HIVESUB","ID","SENTINEL_LOOT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PillarGlassDropChance}, 
					{"AmountMin",	PillarGlassMin}, 
					{"AmountMax",	PillarGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAPHEAP","ID","CHART_HIVE"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SalvageSentMapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","SPIDER_LOOT","ID","CHART_ROBOT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SpiderMapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_MINIHIVE","ID","CHART_ROBOT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DisResMapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","U_SENTGUN"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SentGunChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","U_SENTSUIT"},
				--["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SentSuitChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_DEFEND_RAID"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CurrencyReward("Nanites", PirateRaidDefenseNanitesMin, PirateRaidDefenseNanitesMax, PirateRaidDefenseNanitesChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","POLICELOOT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = ProductReward("FRIG_BOOST_COM", PoliceFrigComMin, PoliceFrigComMax, PoliceFrigComChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SAVED"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CurrencyReward("Units", FreighterRescueUnitsMin, FreighterRescueUnitsMax, FreighterRescueUnitsChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SAVED"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = ProductReward("FRIG_TOKEN", FreighterRescueFrigModMin, FreighterRescueFrigModMax, FreighterRescueFrigModChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NAVDATA_RARE",	"ID","NAV_DATA_DROP"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ADSExosuitChartChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NAVDATA_RARE",	"ID","NAV_DATA"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ADSNavDataChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_COLD"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	MutantPlantSulphurine},
					{"AmountMax",	MutantPlantSulphurine}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_DUSTY"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	OrganicRockMordite},
					{"AmountMax",	OrganicRockMordite}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_HOT"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	OrganicRockChlorine},
					{"AmountMax",	OrganicRockChlorine}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_ROLLER"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CuriousDepositMould},
					{"AmountMax",	CuriousDepositMould}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_GOLD",	"ID","ASTEROID2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	MetalFingerGold},
					{"AmountMax",	MetalFingerGold}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_GOLD",	"ID","RADIO1"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MetalFingerUraniumChance},
					{"AmountMin",	MetalFingerUranium},
					{"AmountMax",	MetalFingerUranium}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","SPOREVENT"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	GassyPods},
					{"AmountMax",	GassyPods}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_SPHERE",	"Rare","GcRewardTableCategory.xml",	"Medium","GcRewardTableItemList.xml"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	AlbumenPearlWildChance},
					{"AmountMin",	AlbumenPearlWildAmount},
					{"AmountMax",	AlbumenPearlWildAmount}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PLANT_PEARL"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(AlbumenPearlFarmNanitesChance, AlbumenPearlFarmNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PLANT_GRAV"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(GravitinoFarmNanitesChance, GravitinoFarmNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PLANT_SACVENOM"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(SacVenomFarmNanitesChance, SacVenomFarmNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_OBJECT"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"GiveAll"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_OBJECT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(GravitinoWildNanitesChance, GravitinoWildNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			--[[{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_SPHERE",	"Rare","GcRewardTableCategory.xml",	"Large","GcRewardTableItemList.xml"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(VortexCubeNanitesChance, VortexCubeNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},]]
			--Try this if the above one doesn't work
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_CAVE"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(VortexCubeNanitesChance, VortexCubeNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_STORMCRYSTAL"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CropNanites(StormCrystalNanitesChance, StormCrystalNanitesAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "PLANTER_CARBON"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	StandingPlanterMult},
					{"AmountMax",	StandingPlanterMult},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_PROD_CHEST"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = ExtraChestArtifact,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			--[[{
				["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_M"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = NewCrashedFreighterLoot,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},]]
			{
				["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_S"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = NewCrashedFreighterLoot,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Currency", "Units"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["VALUE_MATCH"] 		= "500",
				["VALUE_MATCH_OPTIONS"]	= "<",
				["SECTION_UP"]			= 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	ExtremelySmallUnitsMin} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Currency", "Units"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["VALUE_MATCH"] 		= "10000",
				["VALUE_MATCH_OPTIONS"]	= "<",
				["SECTION_UP"]			= 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	VerySmallUnitsMin} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Currency", "Units"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["VALUE_MATCH"] 		= "35000",
				["VALUE_MATCH_OPTIONS"]	= "<=",
				["SECTION_UP"]			= 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	SmallUnitsMin} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Currency", "Units"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["VALUE_MATCH"] 		= "1000",
				["VALUE_MATCH_OPTIONS"]	= "<",
				["SECTION_UP"]			= 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMax",	ExtremelySmallUnitsMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Currency", "Units"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["VALUE_MATCH"] 		= "10000",
				["VALUE_MATCH_OPTIONS"]	= "<=",
				["SECTION_UP"]			= 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMax",	VerySmallUnitsMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Currency", "Units"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["VALUE_MATCH"] 		= "100000",
				["VALUE_MATCH_OPTIONS"]	= "<",
				["SECTION_UP"]			= 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMax",	SmallUnitsMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_C",	"Rarity","Common"},
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_C",	"Rarity","Uncommon"},
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_C"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	"100"} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_U",	"Rarity","Uncommon"},
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{	--Removes Cadmium, Emeril, Indium Drives from random tech reward pool
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_TECH_ALL",	"Value","HDRIVEBOOST1"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				--["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_TECH_ALL",	"Value","HDRIVEBOOST2"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				--["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_TECH_ALL",	"Value","HDRIVEBOOST3"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				--["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_TECH_SHIP",	"Value","HDRIVEBOOST1"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				--["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_TECH_SHIP",	"Value","HDRIVEBOOST2"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				--["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_TECH_SHIP",	"Value","HDRIVEBOOST3"},
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				--["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","WORD"},
				--["REPLACE_TYPE"] 		= "",
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddOneWord("None")
			},
			--[[
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SEAHORROR"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ProceduralProductCategory",	SeaHorrorReward} 	
				}
			},
			]]
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_VENTGEM", "ID", "VENTGEM"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CrystalSulphide},
					{"AmountMax",	CrystalSulphide}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_FISHCORE", "ID", "FISHCORE"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	AlluringSpecHadalCore},
					{"AmountMax",	AlluringSpecHadalCore}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_FISHCORE"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = NewAlluringSpecRewards,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "RED2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BreakTechAmountMult},
					{"AmountMax",	BreakTechAmountMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "RED2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	BreakTechRed}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "GREEN2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BreakTechAmountMult},
					{"AmountMax",	BreakTechAmountMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "GREEN2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	BreakTechGreen}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "BLUE2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BreakTechAmountMult},
					{"AmountMax",	BreakTechAmountMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "BLUE2"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	BreakTechBlue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TECHDEBRIS"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"WeightedChanceNormal",	DmgMachClassCChanceMult},
					{"WeightedChanceRare",	DmgMachClassBChanceMult},
					{"WeightedChanceEpic",	DmgMachClassAChanceMult},
					{"WeightedChanceLegendary",	DmgMachClassSChanceMult},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "FTH_NPC_OPT_B_16"},
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost",	TravellerNaniteCost}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "FTH_REQUEST_DIRECTIONS"},
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost",	TravellerNaniteCost}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "ALL_OFFER_NANITES"},
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Value",	"TRAV_PACKAGE"}			--"SEC_MONEY"
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "ALL_FAC_REWARD_OPT_A"},
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "TECHFRAG_M",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Value",	"TECHFRAG_XXX"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "?DRONE_HIVE_COMBAT_SHUTDOWN"},
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				--["VALUE_MATCH"] 		= "TECHFRAG_M",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ConditionTest",	HiveConditionTest},
					{"EnablingConditionId",	HiveEnablingConditionId}
				}
			},
		}
	},
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
	["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionUnitsMultiplier}, 
					{"AmountMax",	ExpeditionUnitsMultiplier} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionNanitesMultiplier}, 
					{"AmountMax",	ExpeditionNanitesMultiplier} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"]	= {"DefaultSubstanceType", "None"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionResourcesMultiplier}, 
					{"AmountMax",	ExpeditionResourcesMultiplier} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"]	= {"DefaultProductType", "None"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionProductsMultiplier}, 
					{"AmountMax",	ExpeditionProductsMultiplier} 
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionReward0Replacer}, 
					{"AmountMax",	ExpeditionReward0Replacer} 
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",	
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "100", 
				["VALUE_MATCH_OPTIONS"] = "<",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PercentageChance",	ExpeditionRewardChanceMultiplierlessthan100},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",	
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "100", 
				["VALUE_MATCH_OPTIONS"] = "=",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PercentageChance",	ExpeditionRewardChanceMultiplier100},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",	
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0", 
				["VALUE_MATCH_OPTIONS"] = "=",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PercentageChance",	ExpeditionRewardChance0Replacer},
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_1",	"ID", "BLUE2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", IndiumReplacementAmountEasy},
					{"AmountMax", IndiumReplacementAmountEasy}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_1",	"ID", "BLUE2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", IndiumReplacementAmount},
					{"AmountMax", IndiumReplacementAmount}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"ID", "BLUE2"},
				["VALUE_MATCH"] 		= "BLUE2", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID", IndiumReplacement}
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\PLANTROOM\PARTS\WALLBB0\ENTITIES\INTERACTION.ENTITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"GcSimpleInteractionComponentData.xml"},
				--["SPECIAL_KEY_WORDS"] = {"Id", "PLANTER_CARBON"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Id",	FreighterCarbonWallReward}		--PLANTER_CARBON
				}
			},
		}
	},
	--[[
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\MAINTENANCEGROUPSTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup.xml",		"Id", "SENTINEL_LOOT"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentGlass}		--0
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup.xml",		"Id", "WALKER_PROD"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentBrain}		--0
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup.xml",		"Id", "DRONE_SALVAGE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentMirror}		--0
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup.xml",		"Id", "QUAD_PROD"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentQuad}		--0
				}
			},
		}
	},
	]]
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE_RARE\ENTITIES\CRATE_LARGE_RARE.ENTITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","SPACEGUNK3"},
				["MATH_OPERATION"] 		= "*", 
				["REPLACE_TYPE"] = "",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"MinRandAmount", ChestRustedMetalMult},
					{"MaxRandAmount", ChestRustedMetalMult},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\ROBOTHEADS\ENTITIES\DATA.ENTITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"PreInstalledTech"},
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"MaintenanceGroup", RobotheadMaintGroup},
					{"MaxCapacity", RobotheadMaxCap},
					{"MinRandAmount", RobotheadRandMin},
					{"MaxRandAmount", RobotheadRandMax},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\MISSIONTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_EXOTUT_LOOP"},
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	math.floor(1*ExocraftMinUnits)},
					{"AmountMax",	math.floor(1*ExocraftMaxUnits)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_EXOTUT_LOOP"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = CurrencyReward ("Nanites", math.floor(1*ExocraftMinNanites), math.floor(1*ExocraftMaxNanites), "100"),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\RECURRINGMISSIONTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"WeightedChanceNormal",	ExoClassCChance},
					{"WeightedChanceRare",	ExoClassBChance},
					{"WeightedChanceEpic",	ExoClassAChance},
					{"WeightedChanceLegendary",	ExoClassSChance},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Value","R_D_EXOTUT"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = AddedExocraftNPCMoneyID,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = AddedExocraftNPCMoney,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = AddUpgrade("UI_MECH_LASER_NAME_L", "0", math.floor(ExoClassCChance+ExoClassBChance), ExoClassAChance, ExoClassSChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = AddUpgrade("UI_MECH_GUN_NAME_L", "0", math.floor(ExoClassCChance+ExoClassBChance), ExoClassAChance, ExoClassSChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["ADD"] = AddUpgrade("UI_MECH_ENGINE_NAME_L", "0", math.floor(ExoClassCChance+ExoClassBChance), ExoClassAChance, ExoClassSChance),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
		}
	},
	
}}}}

local ChangesToPirateMissions = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #PirateMissionChanges do
	local Mission = PirateMissionChanges[i][1][1]
	local Rewards = PirateMissionChanges[i][2]

	for j = 1, #Rewards do
		local OldReward = Rewards[j][1]
		local NewReward = Rewards[j][2]

			ChangesToPirateMissions_temp =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				--["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"MissionID", Mission},
				["VALUE_MATCH"] 		= OldReward, 	
				["VALUE_MATCH_OPTIONS"] = "=",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Reward", NewReward}
				}
			}
			ChangesToPirateMissions[#ChangesToPirateMissions+1] = ChangesToPirateMissions_temp
	end
end

local ChangesToExpeditionMetals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]

for i = 1, #ExpeditionMetalChanges do
	local MetalID = ExpeditionMetalChanges[i][1]
	local MetalMult = ExpeditionMetalChanges[i][2]

			ChangesToExpeditionMetals[#ChangesToExpeditionMetals+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"ID", MetalID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", MetalMult},
					{"AmountMax", MetalMult}
				}
			}
end

local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

if AllTwitchExpRewardsC then
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"InventoryClass", "C"},
				}
			}
			
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"ShipType", "GcSpaceshipClasses.xml"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SizeType", AllTwitchExpRewardsShipSize},
				}
			}

--[[ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"WeaponType", "GcWeaponClasses.xml"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SizeType", AllTwitchExpRewardsToolSize},
				}
			}
]]
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"ShipLayout", "GcInventoryLayout.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots", AllTwitchExpRewardsCargo}
				}
			}
			
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"WeaponLayout", "GcInventoryLayout.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots", AllTwitchExpRewardsToolSlots}
				}
			}
end

if TeachCreaturePelletsEarly then

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "TUT_INGREDS"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = TeachPellets
			}
end

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcGenericRewardTableEntry.xml"},
				["ADD"] = PIRATLTEASYRewards,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcGenericRewardTableEntry.xml"},
				["ADD"] = PIRATLTHARDRewards,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcGenericRewardTableEntry.xml"},
				["ADD"] = ESCORTLOOTRewards,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcGenericRewardTableEntry.xml"},
				["ADD"] = NewNaniteReward,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcGenericRewardTableEntry.xml"},
				["ADD"] = NewTravReward,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}

for i = 1, #GuildGiftChanges do
	local GiftPool = GuildGiftChanges[i][1][1]
	local Items = GuildGiftChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"Id", GiftPool, "ID", OldItemID},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance", Chance},
					{"ID", NewItemID},
					{"AmountMin", AmountMin},
					{"AmountMax", AmountMax}
				}
			}
	end
end
for i = 1, #ShipLootChanges do
	local ShipId = ShipLootChanges[i][1][1]
	--local PirateNanitesMin = ShipLootChanges[i][1][2]
	--local PirateNanitesMax = ShipLootChanges[i][1][3]
	--local Shield = ShipLootChanges[i][1][4]
	local Items = ShipLootChanges[i][2]
	
			--[[ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				--["REPLACE_TYPE"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = PirateNanites(PirateNanitesMin, PirateNanitesMax)
			}
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REMOVE"] = "SECTION"
			}
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId, "Reward", "GcRewardShield.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", Shield},
					{"AmountMax", Shield}
				}
			}]]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				--["PRECEDING_KEY_WORDS"] = {""},
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId, "ID", OldItemID},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance", Chance},
					{"ID", NewItemID},
					{"AmountMin", AmountMin},
					{"AmountMax", AmountMax}
				}
			}
	end
end
for i = 1, #ShipCurrencyChanges do
	local ShipType = ShipCurrencyChanges[i][1][1]
	local Items = ShipCurrencyChanges[i][2]
	
	for j=1, #Items do
		Currency = Items[j][1]
		AmountMin = Items[j][2]
		AmountMax = Items[j][3]
		Chance = Items[j][4]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",ShipType,	"Currency", Currency},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end
for i = 1, #PlaqueChanges do
	local PlaqueType = PlaqueChanges[i][1]
	local AlienType = PlaqueChanges[i][2]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",PlaqueType},
				--["REPLACE_TYPE"] 		= "",
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddFourWords(AlienType)
			}
end
for i = 1, #BreakPlantsChangesSubstance do
	local OldReward = BreakPlantsChangesSubstance[i][1]
	local NewReward = BreakPlantsChangesSubstance[i][2]
	local AmountMult = BreakPlantsChangesSubstance[i][3]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_BREAK_BIO",	"ID", OldReward},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	AmountMult},
					{"AmountMax",	AmountMult}
				}
			}
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_BREAK_BIO",	"ID", OldReward},
				["REPLACE_TYPE"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	NewReward}
				}
			}
end
for i = 1, #BreakPlantsChangesProduct do
	local OldReward = BreakPlantsChangesProduct[i][1]
	local NewReward = BreakPlantsChangesProduct[i][2]
	local AmountMult = BreakPlantsChangesProduct[i][3]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_BREAK_BIO",	"ID", OldReward},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_BREAK_BIO"},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = ProductReward (NewReward, math.floor(50*AmountMult), math.floor(120*AmountMult), "100")
			}
end
for i = 1, #CropYieldChanges do
	local PlantID = CropYieldChanges[i][1]
	local Chance = CropYieldChanges[i][2]
	local Amount = CropYieldChanges[i][3]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",PlantID},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					--{"RewardChoice",	"SelectAlways"},
					{"PercentageChance",	Chance},
					{"AmountMin",	Amount},
					{"AmountMax",	Amount}
				}
			}
end
for i = 1, #CropYieldReduction do
	local PlantID = CropYieldReduction[i][1]
	local Mult = CropYieldReduction[i][2]
	--local Option = CropYieldReduction[i][3]
	--local OldAmount = CropYieldReduction[i][4]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",PlantID},
				["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				--["VALUE_MATCH"] 	= OldAmount,
				--["VALUE_MATCH_OPTIONS"] = Option, 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	Mult},
					{"AmountMax",	Mult}
				}
			}
end
for i = 1, #CrashedFreighterLootChances do
	local CrashType = CrashedFreighterLootChances[i][1][1]
	local Items = CrashedFreighterLootChances[i][2]
	
	for j=1, #Items do
		ItemID = Items[j][1]
		Chance = Items[j][2]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",CrashType,	"ID", ItemID},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance}
				}
			}
	end
end
for i = 1, #CrashedFreighterCurrencyChances do
	local CrashType = CrashedFreighterCurrencyChances[i][1][1]
	local Items = CrashedFreighterCurrencyChances[i][2]
	
	for j=1, #Items do
		OldCurrency = Items[j][1]
		NewCurrency = Items[j][2]
		RewardMult = Items[j][3]
		OldChance = Items[j][4]
		NewChance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",CrashType,	"Currency", OldCurrency},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 2,
				["VALUE_MATCH"] 	= OldChance,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	NewChance},
				}
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",CrashType,	"Currency", OldCurrency},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	RewardMult},
					{"AmountMax",	RewardMult},
				}
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",CrashType,	"Currency", OldCurrency},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["VALUE_MATCH"] 	= OldCurrency,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Currency",	NewCurrency},
				}
			}
	end
end
for i = 1, #CivilianFreighterRewardChanges do
	local RewardType = CivilianFreighterRewardChanges[i][1][1]
	local Items = CivilianFreighterRewardChanges[i][2]
	
	for j=1, #Items do
		Currency = Items[j][1]
		AmountMin = Items[j][2]
		AmountMax = Items[j][3]
		Chance = Items[j][4]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"Currency", Currency},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end
for i = 1, #PirateFreighterLootChanges do
	local RewardType = PirateFreighterLootChanges[i][1][1]
	local Items = PirateFreighterLootChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"ID", OldItemID},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"ID",	NewItemID},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end
for i = 1, #SpaceStationMissionLootChanges do
	local RewardType = SpaceStationMissionLootChanges[i][1][1]
	local Items = SpaceStationMissionLootChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"ID", OldItemID},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"ID",	NewItemID},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end
for i = 1, #SpaceStationMissionCurrencyChanges do
	local RewardType = SpaceStationMissionCurrencyChanges[i][1][1]
	local Items = SpaceStationMissionCurrencyChanges[i][2]
	
	for j=1, #Items do
		Currency = Items[j][1]
		AmountMin = Items[j][2]
		AmountMax = Items[j][3]
		Chance = Items[j][4]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"Currency", Currency},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end
for i = 1, #MemFragOutlierTechs do
	local TechID = MemFragOutlierTechs[i]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_TECHBOX",	"ID", TechID},
				--["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MemFragOutlierTechChance},
				}
			}
end
for i = 1, #RemoveContainerRewards do
	local ContainerID = RemoveContainerRewards[i]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "NPC_BUILD_GOTO",	"Value",	ContainerID},
				["REMOVE"] = "SECTION"
			}
end