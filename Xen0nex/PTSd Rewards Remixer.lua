ModName = "PTSd Rewards Remixer"
GameVersion = "6_18"
Description = "Rebalances rewards for many actions & activities, such as defeating starships or sentinels or certain fauna, pirate bounties, space station missions, frigate expeditions, certain planetary Points of Interest, etc. Makes Archive Vaults always give rare artifacts."

--Note: When using this file to replace an item with a different item, try keep the new item of the same type (Product vs. Substance) as the replaced item, unless the section also lets you define it explicitly as "Product" or "Substance"

--NOTE: Almost all rewards of substances in this file are also affected by the "Substance Collection" difficulty multiplier in "PTSD Other Difficulty Settings.lua" (adjustable with in-game difficulty setting)
	--The exceptions in this file are any substance rewards with "DisableMultiplier" set to "true" in REWARDTABLE.MBIN, which is mostly just the "domesticated" version crops that are plantable in hydroponic trays, which instead have fixed values
--Extra multipliers to apply to any substance rewards which are also affected by the "Substance Collection" difficulty multiplier
MinableSubstanceMult =					0.85/1.2				--Multiplier for substance rewards for destroying minable objects like rocks or plants. Stacks with the "Substance Collection" difficulty multiplier. Divided by 1.2 to balance out how supercharging the mining laser increases yields by 1.2x
RuinsExtraMiningMult =					0.42					--Extra multiplier for mining Polished Stone from small & medium "ruins" objects since they yield roughly double what medium & large rocks do in vanilla despite having 0.75x as much health. Stacks with the above MinableSubstanceMult multiplier
NonMinableSubstanceMult =				1						--Multiplier for certain substance rewards from other sources, like harvesting wild plants, destroying Depots, Frigate Expeditions, various other rewards. Stacks with the "Substance Collection" difficulty multiplier

TeachCreaturePelletsEarly = true		--false	 	Set true to teach the Creature Pellet Recipe during the tutorial when teaching the Hermetic Seal recipe instead of later on, false otherwise
NoNewTechAtCrashsites = true			--false		Set true to ensure all starship crashsite Distress Beacon rewards only give random-Class Upgrade Modules, not teaching a new core tech blueprint
RevealPurpleSystemsEarly = true			--false	 	Set true to allow using Discordant Interfaces at Korvax Monoliths to reveal all Purple Systems on the Galaxy Map

--Changes the Class & inventory size when redeeming the six unique expedition reward starships or two unique Multi-Tools: Golden Vector, Utopia Speeder, Starborn Runner, Iron Vulture, Boundary Herald, and Wraith starships or Atlas Sceptre and Pillar of Titan Multi-Tool
ExpShipClass = 							"C"						--"S"		Sets the Class for redeeming the expedition ships & tools
--Changes Cargo inventory size for expedition reward starships. The game adds 1 to whatever value is entered here
ExpShipFighterCargoSlots = 				8						--36	(For Golden Vector/Utopia Speeder)
ExpShipHaulerCargoSlots = 				19						--36	(For Iron Vulture)
ExpShipExplorerCargoSlots = 			8						--36	(For Boundary Herald)
ExpShipExoticCargoSlots = 				7						--36	(For StarbornRunner/Phoenix)
ExpShipAlienCargoSlots = 				10						--36	(For Wraith)
--Changes Tech inventory size for expedition reward starships. based on INVENTORYTABLE.MBIN, list of options detailed in "PTSd Ship+MultiTool Rebalance.lua" (Seems to pick exactly between the Min & Max range)
ExpShipFighterTechSize = 				"SciSmall"				--"FgtLarge"	(16)	(For Golden Vector/Utopia Speeder)
ExpShipHaulerTechSize = 				"DrpSmall"				--"DrpLarge"	(9)		(For Iron Vulture)
ExpShipExplorerTechSize = 				"ShtMedium"				--"SciLarge"	(17)	(For Boundary Herald)
ExpShipExoticTechSize = 				"DrpLarge"				--"RoyLarge"	(19-2=17)	(For StarbornRunner/Phoenix)	For some reason the game appears to deduct -2 tech slots for this ship?
ExpShipAlienTechSize = 					"ShtMedium"				--"SciLarge"	(17)	(For Wraith)
--Sets the Hyperdrive of all expedition/Twitch reward starships to be empty like when buying a regular starship, instead of coming fully fueled.
RewardShipHyperdriveEmpty =				true					--false

--If set to "true", makes all other starships & multitools rewarded from Expeditions & Twitch streams come as C Class and with the inventory sizes defined below
AllTwitchExpRewardsC =					false					--false
AllTwitchExpRewardsCargo =				8						--Varies	Only used if AllTwitchExpRewardsC = true		The game adds 1 to whatever value is entered here
AllTwitchExpRewardsShipSize =			"DrpMedium"				--Varies	(14)	Only used if AllTwitchExpRewardsC = true		Affects how many Tech slots it will start with based on INVENTORYTABLE.MBIN, list of options detailed in "PTSd Ship+MultiTool Rebalance.lua" (Seems to pick exactly between the Min & Max range, or sometimes uses the Max value?)
AllTwitchExpRewardsToolSlots =			8						--Varies	Only used if AllTwitchExpRewardsC = true
--AllTwitchExpRewardsToolSize =			"WeaponLarge"			--Varies	Only used if AllTwitchExpRewardsC = true

--Allows salvaging Reactor Cores from Shuttle & Exotic starships (Also requires changes in "PTSd More Expensive Pilots + Receivers + Ship&Tool slots etc.lua")
ReactorSalvage = true					--false		Enables this test

--Changes the reward for interacting with the "black orbs" on pedestals in the first few Atlas Stations during the Atlas Path missions
AtlasOrbReward =						"ANTIMATTER"			--"HYPERFUEL1"
AtlasOrbNanites =						"80"					--N/A	Amount of nanites to receive instead of the other reward 50% of the time

--This controls what the COST (not reward) is certain dialogue choices with Travellers, such as asking directions to a grave
TravellerNaniteCost =					"TECHFRAG_TRAV"			--"TECHFRAG_MD" 100 Nanites		"PTSd Expensive Pilots + Broadcast Receivers.lua" changes the value of TECHFRAG_MD and adds TECHFRAG_TRAV as a new entry costing 800 Nanites

--These multipliers control the new reward for giving Travellers 20 nanites (vanilla is giving 15 nanites for 5,000-70,000 units before PTSd multipliers)
TravRewardDiHydrMult =					1						--30 - 50 Di-Hydrogen
TravRewardTritMult =					1						--30 - 50 Tritium

TravTechChance =						100.000000				--200	Relative chance weight to receive tech memory fragment from certain traveller dialogue rewards instead of inventory memory fragment or products (Vanilla total chance weight pool is 500)
MemFragInvBulkChance =					20.000000				--0		Relative chance weight to receive Freighter Bulkhead from Inventory Memory Fragments (Vanilla total chance weight pool is 100)
MemFragProcChanceMult =					4.000000				--Multiplier to apply to the relative chance weight for the ~25 proc tech options in tech memory fragments (as opposed to the ~44 regular tech options)
MemFragProcLauncherChanceMult =			0.400000				--Multiplier to apply to the relative chance weight for Launcher proc tech, base of 300 (Most other proc tech have ~100 for their chance weight, with a few hazard/weapon ones having 15~25 instead)
MemFragOutlierTechChance =				200.000000				--500	Relative chance weight for certain regular techs in the tech memory fragment option pool, which normally have ~5x as much chance as others to be received (Specifically, Neural Stimulator, Advanced Mining Laser, Optical Drill, Launch Auto-Charger)

--Replacers for the relative chance weighting for getting certain techs / upgrades when opening Psychonic Eggs (all 6 kinds of procedural upgrades have chance weighting = 50)
PsychonicWormhole =						250.000000				--500	"Wormhole Brain" Conflict/Economy Scanner equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)
PsychonicChloroplast =					30.000000				--500	"Chloroplast Membrane" Launch Auto-Charger equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)
PsychonicNeural =						250.000000				--500	"Neural Shielding" Cargo Scan Deflector equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)
PsychonicWaterLand =					30.000000				--500	"Saline Carapace" Aqua-Jets equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)
PsychonicTeleport =						200.000000				--500	"Grasping Tendrils" Teleport Receiver equivalent (will not spawn if this tech is currently in an accessible cargo/storage inventory or already installed in active starship)

--Changes how many Nanites you receive for choosing "Extract Nanites" at a Manufacturing Facility
FactoryMin = 							300						--90 Nanites
FactoryMax = 							500						--120 Nanites

--Multipliers to how many Factory Override Tokens you get awarded
FactoryOverrideTokenMult	=			10						--This should match the multiplier for "RecipeCost" in the Unlock Costs mod, to balance it out

--Replaces the amount of nanites you receive directly in addition to Navigation Data from activating the little "waypoints" / "save beacons" found outside many buildings. Nanites for recording/discovering the waypoint location are handled in "!PTSd Scan Rewards + Shops etc.lua"
WaypointNanites		=					30						--10

--Multiplier for rewards of small amounts of Units from various sources (Not frigate expeditions)
	--Note these multipliers will generally not be applied to any unit rewards set further below in this file, unless otherwise noted.
SmallUnitsMin =							4						--Applies to all Min rewards under 50000 units
SmallUnitsMax =							5						--Applies to all Max rewards under 100000 units
VerySmallUnitsMin =						3						--Applies to all Min rewards under 10000 units		(Stacks multiplicatively with the above bonus, i.e. 3 x 4 = 12x) 
VerySmallUnitsMax =						5						--Applies to all Max rewards under 35000 units		(Stacks multiplicatively with the above bonus) 
ExtremelySmallUnitsMin =				5						--Applies to all Min rewards under 500 units		(Stacks multiplicatively with the above bonuses) i.e. 5 x 3 x 4 = 60x
ExtremelySmallUnitsMax =				5						--Applies to all Max rewards under 1000 units		(Stacks multiplicatively with the above bonuses) 

--Multipliers for Bounties for the random space encounter with pirates having a bounty on them.
	--TODO:	Check if the vanilla bug of often getting no bounty still persists in 3.87
PirateBounty1 = 						3						--100,000	~	180,000
PirateBounty2 = 						4						--200,000	~	350,000
PirateBounty3 = 						8						--300,000	~	500,000

PirateRaidDefenseRewardMult = 			1.5						--200,000	~	300,000		Reward for defeating pirates raiding a building???
--Additional reward for defeating a pirate raid
PirateRaidDefenseNanitesMin = 			100
PirateRaidDefenseNanitesMax = 			300
PirateRaidDefenseNanitesChance = 		100.000000

--Rewards for the Space Station missions to hunt down pirates.
	--Options for Reward are R_MB_LOW, R_MB_MED, R_MB_HIGH, R_MB_MEGA, and options for increased Standing with the missiongiver are MB_STAND_LOW, MB_STAND_MED, MB_STAND_HIGH, MB_STAND_GUILD
PirateMissionEasyReward =				"R_MB_MED"				--"R_MB_LOW"
PirateMissionMediumReward =				"R_MB_HIGH"				--"R_MB_LOW"
PirateMissionHardReward =				"R_MB_MEGA"				--"R_MB_LOW"
PirateMissionEasyStanding =				"MB_STAND_LOW"			--"MB_STAND_LOW"
PirateMissionMediumStanding =			"MB_STAND_MED"			--"MB_STAND_LOW"
PirateMissionHardStanding =				"MB_STAND_HIGH"			--"MB_STAND_LOW"

--Changes the direct rewards received from destroying pirate ships and collecting the floating canisters in space (Vanilla Mag. Ferrite or Chromatic Metal are removed and replaced with Nanites)
	--NOTE: These rewards appear to be on a "per container picked up" not a "per destroyed Pirate ship" basis, as each destroyed ship can potentially drop several containers depending on the "RewardCount" set in "Space Combat+Larger Space BattlesX.lua"
ShipLootChanges =
{
	{	--Pirates:	per destroyed ship containers
		{"PIRATELOOT"},							--Ships with this reward drop 1x containers	(Except Raids, Dogfights, and Planetary Flybys drop 2x)
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SCRAP_GOODS",			"SCRAP_GOODS",			1,			1,			200.000000},			--"SCRAP_GOODS",		1,			1,			100.000000
			{"SCRAP_TECH",			"SCRAP_TECH",			1,			1,			50.000000},				--"SCRAP_TECH",			1,			1,			100.000000
			{"SCRAP_WEAP",			"SCRAP_WEAP",			1,			1,			50.000000},				--"SCRAP_WEAP",			1,			1,			100.000000
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			4,			100.000000},			--"SHIPCHARGE",			3,			3,			100.000000
			{"TRA_CURIO1",			"TRA_CURIO1",			1,			1,			10.000000},				--"TRA_CURIO1",			1,			3,			40.000000
			{"WAR_CURIO1",			"WAR_CURIO1",			1,			1,			10.000000},				--"WAR_CURIO1",			1,			3,			40.000000
			{"EXP_CURIO1",			"EXP_CURIO1",			1,			1,			10.000000},				--"EXP_CURIO1",			1,			3,			40.000000
			--{<One of 73 Corvette parts>,					1,			1,			33},					--<One of 73 Corvette parts>,	1,	1,			33	 Worth 236,694 units on average
			--{<One of 35 Corvette parts>,					1,			1,			20},					--<One of 35 Corvette parts>,	1,	1,			20	 Worth 1,052,400 units on average
		}
	},
	{	--Easy Pirates:	per destroyed ship containers	(Added by this mod)
		{"PIRATLTEASY"},						--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SCRAP_GOODS",			"SCRAP_GOODS",			1,			1,			100.000000},			--"SCRAP_GOODS",		1,			1,			100.000000
			{"SCRAP_TECH",			"SCRAP_TECH",			1,			1,			20.000000},				--"SCRAP_TECH",			1,			1,			100.000000
			{"SCRAP_WEAP",			"SCRAP_WEAP",			1,			1,			20.000000},				--"SCRAP_WEAP",			1,			1,			100.000000
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			4,			100.000000},			--"SHIPCHARGE",			3,			3,			100.000000
			{"TRA_CURIO1",			"TRA_CURIO1",			1,			1,			40.000000},				--"TRA_CURIO1",			1,			3,			40.000000
			{"WAR_CURIO1",			"WAR_CURIO1",			1,			1,			40.000000},				--"WAR_CURIO1",			1,			3,			40.000000
			{"EXP_CURIO1",			"EXP_CURIO1",			1,			1,			40.000000},				--"EXP_CURIO1",			1,			3,			40.000000
			--{<One of 73 Corvette parts>,					1,			1,			33},					--<One of 73 Corvette parts>,	1,	1,			33	 Worth 236,694 units on average
			--{<One of 35 Corvette parts>,					1,			1,			10},					--<One of 35 Corvette parts>,	1,	1,			10	 Worth 1,052,400 units on average
		}
	},
	{	--Hard Pirates:	per destroyed ship containers	(Added by this mod)
		{"PIRATLTHARD"},						--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SCRAP_GOODS",			"SCRAP_GOODS",			1,			2,			150.000000},			--"SCRAP_GOODS",		1,			1,			100.000000
			{"SCRAP_TECH",			"SCRAP_TECH",			1,			2,			66.000000},				--"SCRAP_TECH",			1,			1,			100.000000
			{"SCRAP_WEAP",			"SCRAP_WEAP",			1,			2,			66.000000},				--"SCRAP_WEAP",			1,			1,			100.000000
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			4,			100.000000},			--"SHIPCHARGE",			3,			3,			100.000000
			--{<One of 73 Corvette parts>,					1,			1,			20},					--<One of 73 Corvette parts>,	1,	1,			20	 Worth 236,694 units on average
			--{<One of 35 Corvette parts>,					1,			1,			30},					--<One of 35 Corvette parts>,	1,	1,			30	 Worth 1,052,400 units on average
		}
	},
	{	--Sentinel Interceptors:	per destroyed ship containers
		{"POLICELOOT"},							--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			2,			80.000000},				--"SHIPCHARGE",			1,			1,			70.000000		100.000000
			{"ROBOT1",				"ROBOT1",				80,			120,		50.000000},				--"ROBOT1",				80,			120,		60.000000		100.000000
			{"SENTINEL_LOOT",		"SENTINEL_LOOT",		1,			1,			50.000000},				--"SENTINEL_LOOT",		1,			1,			45.000000
			{"SHIPBRAIN",			"SHIPBRAIN",			1,			1,			50.000000},				--"SHIPBRAIN",			1,			1,			50.000000
		}
	},
	{	--Trade Ships:	per destroyed ship containers
		{"TRADERLOOT"},							--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"HYPERFUEL2",			"HYPERFUEL2",			1,			1,			100.000000},			--"HYPERFUEL2",			1,			1,			100.000000
			{"SPACEGUNK3",			"SPACEGUNK3",			99,			299,		100.000000},			--"SPACEGUNK3",			99,			299,		100.000000
			{"TRA_ALLOY1",			"TRA_ALLOY1",			15,			25,			100.000000},			--"TRA_ALLOY1",			15,			25,			100.000000
			{"TRA_COMMODITY2",		"TRA_COMMODITY2",		15,			25,			100.000000},			--"TRA_COMMODITY2",		15,			25,			100.000000
			{"TRA_MINERALS1",		"TRA_MINERALS1",		15,			25,			100.000000},			--"TRA_MINERALS1",		15,			25,			100.000000
			{"TRA_EXOTICS1",		"FRIG_BOOST_TRA",		1,			1,			100.000000},			--"TRA_EXOTICS1",		15,			25,			100.000000
		}	--(Also drop random upgrade modules for starship Launcher, Pulse Engine(Removed by this mod), and Shields(Removed by this mod) at 100 chance weight each)
	},
	{	--Trader Escorts:	per destroyed ship containers	(Added by this mod)
		{"ESCORTLOOT"},							--Ships with this reward drop 1x containers
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"SHIPCHARGE",			"SHIPCHARGE",			2,			2,			50.000000},				--"SHIPCHARGE",			1,			1,			100.000000
			{"FRIG_BOOST_TRA",		"FRIG_BOOST_TRA",		1,			1,			50.000000},				--"FRIG_BOOST_TRA",		1,			1,			100.000000
		}	--(Also drop random upgrade modules for starship Pulse Engine, and Shields at 100 chance weight each)
	},
	{	--Seems to be Smuggler Freighter Cargo Pods, found in pirate/outlaw systems	
			--NOTE: For some reason in-game the substance amounts are roughly ~1/5 of the values set here
		{"SMUGGLELOOT"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"FRIGATE_FUEL_3",		"FRIGATE_FUEL_1",		1,			3,			100.000000},			--"FRIGATE_FUEL_3",		1,			3,			100.000000
			{"FRIG_TOKEN",			"FRIG_TOKEN",			1,			1,			30.000000},				--"FRIG_TOKEN",			1,			1,			20.000000
			{"LAND3",				"LAND3",				100*5,		150*5,		80.000000},				--"LAND3",				200,		250,		100.000000
			{"STELLAR2",			"STELLAR2",				100*5,		150*5,		120.000000},			--"STELLAR2",			200,		250,		100.000000
			{"CAVE2",				"CAVE2",				100*5,		150*5,		120.000000},			--"CAVE2",				200,		250,		100.000000
			{"ASTEROID2",			"ASTEROID2",			100*5,		150*5,		80.000000},				--"ASTEROID2",			200,		250,		100.000000
			{"ASTEROID3",			"ASTEROID3",			100*5,		150*5,		120.000000},			--"ASTEROID3",			100,		250,		100.000000
			{"RADIO1",				"RADIO1",				100*5,		150*5,		80.000000},				--"RADIO1",				200,		250,		100.000000
			{"ILLEGAL_PROD8",		"ILLEGAL_PROD8",		1,			2,			20.000000},				--"ILLEGAL_PROD8",		1,			2,			100.000000		(588,000 units sale value in PTSd)
			{"ILLEGAL_PROD2",		"ILLEGAL_PROD2",		3,			5,			120.000000},			--"ILLEGAL_PROD2",		5,			10,			100.000000		(54,000 units sale value in PTSd)
			{"ILLEGAL_PROD3",		"ILLEGAL_PROD3",		2,			3,			100.000000},			--"ILLEGAL_PROD3",		4,			10,			100.000000		(108,000 units sale value in PTSd)
			{"ILLEGAL_PROD4",		"ILLEGAL_PROD4",		1,			4,			50.000000},				--"ILLEGAL_PROD4",		3,			8,			100.000000		(192,000 units sale value in PTSd)
			{"ILLEGAL_PROD5",		"FRIG_BOOST_SPD",		1,			1,			80.000000},				--"ILLEGAL_PROD5",		3,			6,			100.000000		(348,000 units sale value in PTSd)
			{"ILLEGAL_PROD6",		"ILLEGAL_PROD6",		1,			3,			40.000000},				--"ILLEGAL_PROD6",		2,			4,			100.000000		(408,000 units sale value in PTSd)
			{"ILLEGAL_PROD7",		"ILLEGAL_PROD7",		1,			2,			30.000000},				--"ILLEGAL_PROD7",		1,			2,			100.000000		(498,000 units sale value in PTSd)
			--{<One of 35 Corvette parts>,					1,			1,			7},						--<One of 35 Corvette parts>,	1,	1,			7	 Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,					1,			1,			15},					--<One of 73 Corvette parts>,	1,	1,			15	 Worth 236,694 units on average
		}
	},
	{	--Freighter Cargo Pods
			--NOTE: For some reason in-game the substance amounts are roughly ~1/5 of the values set here
		{"FREIGHTERLOOT"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			{"FRIGATE_FUEL_3",		"FRIGATE_FUEL_3",		1,			3,			100.000000},			--"FRIGATE_FUEL_3",		1,			3,			100.000000
			{"FRIG_TOKEN",			"FRIG_TOKEN",			1,			1,			60.000000},				--"FRIG_TOKEN",			1,			1,			20.000000
			{"LAND3",				"LAND3",				200*5,		250*5,		100.000000},			--"LAND3",				200,		250,		100.000000
			{"STELLAR2",			"STELLAR2",				200*5,		250*5,		100.000000},			--"STELLAR2",			200,		250,		100.000000
			{"CAVE2",				"CAVE2",				200*5,		250*5,		100.000000},			--"CAVE2",				200,		250,		100.000000
			{"ASTEROID2",			"ASTEROID2",			200*5,		250*5,		100.000000},			--"ASTEROID2",			200,		250,		100.000000
			{"ASTEROID3",			"ASTEROID3",			100*5,		250*5,		100.000000},			--"ASTEROID3",			100,		250,		100.000000
			{"RADIO1",				"RADIO1",				200*5,		250*5,		100.000000},			--"RADIO1",				200,		250,		100.000000
			{"TRA_COMMODITY3",		"TRA_COMMODITY3",		16,			20,			100.000000},			--"TRA_COMMODITY3",		8,			10,			100.000000
			{"TRA_COMPONENT1",		"TRA_COMPONENT1",		35,			50,			100.000000},			--"TRA_COMPONENT1",		25,			25,			100.000000
			{"TRA_ENERGY4",			"TRA_ENERGY4",			12,			16,			100.000000},			--"TRA_ENERGY4",		8,			10,			100.000000
			{"TRA_EXOTICS5",		"TRA_EXOTICS5",			8,			12,			100.000000},			--"TRA_EXOTICS5",		1,			3,			100.000000
			{"TRA_MINERALS3",		"TRA_MINERALS3",		16,			20,			100.000000},			--"TRA_MINERALS3",		8,			10,			100.000000
			{"TRA_MINERALS2",		"FRIG_BOOST_SPD",		1,			1,			80.000000},				--"TRA_MINERALS2",		15,			25,			100.000000
			{"TRA_TECH3",			"TRA_TECH3",			16,			20,			100.000000},			--"TRA_TECH3",			8,			10,			100.000000
			--{<One of 35 Corvette parts>,					1,			1,			7},						--<One of 35 Corvette parts>,	1,	1,			7	 Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,					1,			1,			15},					--<One of 73 Corvette parts>,	1,	1,			15	 Worth 236,694 units on average
		}
	},
	{	--Reward for rescuing a Freighter from Pirates, unlike above you have the listed chance to receive ALL listed rewards
		{"FREIGHTER_SAVED"},							--Must decline choose to request a reward instead of buying the freighter to recieve this (confirm with 3.87)
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance
			{"FREI_INV_TOKEN",		"FREI_INV_TOKEN",		1,			1,			100.000000},			--"FREI_INV_TOKEN",		1,			1,			100.000000
			{"ASTEROID2",			"ROCKETSUB",			300,		500,		100.000000},			--"ASTEROID2",			300,		500,		100.000000
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
			{"ALLOY4",			"ALLOY4",			2,			2,			30.000000}							--"ALLOY4",				1,			1,			30.000000
		}
	},
	{	--Pirate Type			Min	&	Max	Nanites		Shield restored (Vanilla 50)
		{"PIRAT_LOOT_HARD",		75,		100,			75},							--Ships with this reward drop 4x containers (confirm with 3.87)
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance
			{"ALLOY3",			"ALLOY3",			3,			3,			30.000000},						--"ALLOY3",				1,			1,			30.000000
			{"ALLOY4",			"ALLOY4",			3,			3,			30.000000}						--"ALLOY4",				1,			1,			30.000000
		}
	}]]
}

ShipCurrencyChanges =
{
	{
		{"PIRATELOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	120,		300,		100.000000}			--100,			250,		100.000000		
		}
	},
	{
		{"PIRATLTEASY"},		--Added by this mod
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	65,			215,		100.000000}			--100,			250,		100.000000		
		}
	},
	{
		{"PIRATLTHARD"},		--Added by this mod
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	180,		450,		100.000000}			--100,			250,		100.000000		
		}
	},
	{
		{"POLICELOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	90,			160,		100.000000}			--90,			160,		100.000000
		}
	},
	{
		{"TRADERLOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	40,			60,			100.000000}			--20,			30,			100.000000		
		}
	},
	{
		{"ESCORTLOOT"},			--Added by this mod
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	80,			160,		100.000000}			--20,			30,			100.000000		
		}
	},
	{
		{"SMUGGLELOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	40,			60,			100.000000}			--20,			30,			100.000000		
		}
	},
	{
		{"FREIGHTERLOOT"},
		{	--Currency	Min			Max			%Chance (relative weight, not necessarily out of 100)
			{"Nanites",	40,			60,			100.000000}			--20,			30,			100.000000		
		}
	},
	{
		{"FREIGHTER_SAVED"},
		{	--Currency	Min			Max			%Chance
			{"Nanites",	300,		500,		100.000000}			--200,			300,		100.000000		
		}
	},
}

--New Additional rewards for destroying POLICE (Sentinel Interceptors)
PoliceFrigComMin = 					1			--Explosive Drones
PoliceFrigComMax = 					1
PoliceFrigComChance = 				60.000000

--New additional rewards for rescuing a Freighter from Pirates in starships
FreighterRescueUnitsMin = 			400000
FreighterRescueUnitsMax = 			800000
FreighterRescueUnitsChance = 		100.000000

FreighterRescueFrigModMin = 		1			--Salvaged Frigate Module
FreighterRescueFrigModMax = 		1
FreighterRescueFrigModChance = 		100.000000

--Rewards for rescuing Civilian Freighters from Pirate Freighters (added in NMS v4.4) and for making a pirate freighter surrender (added in NMS v4.5)
DreadnoughtBattleRewardChanges =
{
	{
		{"R_CIV_SAVED_SM"},		--Appears to be the reward for saving the civilian freighter if the Dreadnought warps away
		{	--Currency	Min			Max			%Chance	(Gives All)
			{"Units",	4000000,	6000000,	100.000000},	--400000,		600000,		100.000000
			{"Nanites",	300,		400,		100.000000}		--200,			250,		100.000000		Added by PTSd
		}
	},
	{
		{"R_CIV_SAVED_LG"},		--Appears to be the reward for saving the civilian freighter if the Dreadnought is destroyed or surrenders
		{	--Currency	Min			Max			%Chance	(Gives All)
			{"Units",	6000000,	9000000,	100.000000},	--600000,		900000,		100.000000
			{"Nanites",	600,		800,		100.000000}		--400,			500,		100.000000
		}
	},
	{
		{"R_PIR_TRIBUTE"},		--The "reward" / tribute for defeating a pirate freighter / dreadnought and forcing it to surrender but not claim the Dreadnought for yourself. Awards both units & nanites. Note that R_CIV_SAVED above will also be received beforehand if the civilian freighter survived. May also receive R_PIR_FREI sometimes too, perhaps when civilian freighter is destroyed or waiting long enough before landing for negotiating terms?
		{	--Currency	Min			Max			%Chance	(Gives All)
			{"Units",	9000000,	12000000,	100.000000},	--5000000,		10000000,	100.000000
			{"Nanites",	1000,		1600,		100.000000}		--400,			500,		100.000000		Added by PTSd
		}
	}
}
--Adds new additional rewards for the "R_CIV_SAVED_SM" and "R_CIV_SAVED_LG" rewards for saving the civilian freighter from the Dreadnought
CivSavedSmallItemID =				"FRIG_TOKEN"	--N/A		(Salvaged Frigate Module)
CivSavedSmallItemCount =			1				--0
CivSavedLargeItemID1 =				"FRIG_TOKEN"	--N/A		(Salvaged Frigate Module)
CivSavedLargeItemCount1 =			1				--0
CivSavedLargeItemID2 =				"FREI_INV_TOKEN"--N/A		(Cargo Bulkhead)
CivSavedLargeItemCount2 =			1				--0
--Adds new additional rewards for demanding tribute from surrendered Dreadnoughts "R_PIR_TRIBUTE"
DreadTributeFrigModMin = 			1				--Salvaged Frigate Module
DreadTributeFrigModMax = 			1
DreadTributeBulkheadMin = 			1				--Cargo Bulkhead
DreadTributeBulkheadMax = 			1

DreadnoughtClaimCost =		"C_DREAD_FLAT"			--""		Adds a cost to claiming a Pirate Dreadnought, defined in PTSd More Expensive Pilots + Receivers + Ship&Tool slots etc.lua, or set to "" to keep it free like in vanilla

NewBossFreighterPartsLoot =			--Defines new Rewards for destroying various freighter parts during "boss" encounters as set in "Space Combat+Larger Space BattlesX.lua"
{
	--Anti-Freighter Cannons during Pirate Dreadnought battles
	{	--RewardId			% Chance		ItemId				Item type	(Min  ,	Max) Amount
		"CANNONLOOT",		"100.000000",	"TECHFRAG",			"Nanites",	"80",	"120"			--N/A, no loot in vanilla
	},
	--Freighter Warp Drives during Pirate Dreadnought battles
	{	--RewardId			% Chance		ItemId				Item type	(Min  ,	Max) Amount
		"WARPLOOT",			"75.000000",	"FRIGATE_FUEL_1",	"Product",	"1",	"1"				--N/A, no loot in vanilla
	},
	--Anti-Ship Turrets during Pirate Dreadnought battles
	{	--RewardId			% Chance		ItemId				Item type	(Min  ,	Max) Amount
		"TURRETLOOT",		"100.000000",	"TECHFRAG",			"Nanites",	"12",	"20"			--N/A, no loot in vanilla
	},
	--Exposed Fuel Rods during Pirate Dreadnought battles
	{	--RewardId			% Chance		ItemId				Item type	(Min  ,	Max) Amount
		"FUELRODLOOT",		"20.000000",	"FRIGATE_FUEL_1",	"Product",	"1",	"1"				--N/A, no loot in vanilla
	},
	--Freighter Shield Generators during Pirate Dreadnought battles
	{	--RewardId			% Chance		ItemId				Item type	(Min  ,	Max) Amount
		"SHIELDGENLOOT",	"50.000000",	"SHIPCHARGE",		"Product",	"1",	"1"				--N/A, no loot in vanilla
	},
}

--Seems to be rewards for destroying both civilian Freighters or Pirate Dreadnoughts (added in NMS v4.4)
	--Is possible to sometimes also be awarded when a Dreadnought surrenders, if waiting long enough before landed to negotiate terms, or perhaps when civilian freighter is destroyed?
FreighterLootChanges =
{
	{
		{"R_PIR_FREI"},
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_A",				"FRIG_TOKEN",			1,	1,		0.000000},		--1,	1,		5.000000		A-Class Reactor
			{"SHIP_CORE_S",				"FREI_INV_TOKEN",		1,	1,		300.000000},	--1,	1,		2.000000		S-Class Reactor
			--{"FREI_INV_TOKEN",			"FREI_INV_TOKEN",		3,	6,		300.000000},	--3,	3,		300.000000		Cargo Bulkhead
			--Also has all 7 of the Freighter/Frigate procedural upgrade modules set to S Class as possible rewards, each at 100 relative Chance %
		}
	},
}
FreighterLootTechQualityOverride = 0					--3		Sets the class of procedural Freighter Upgrade Modules founds from destroying civilian freighters or Pirate Dreadnoughts under "R_PIR_FREI". 3 = S Class, 2 = A Class, etc. -1 = based on System seed
--Adds 2 items as guaranteed loot from destroying freighters, in addition to the random loot defined above under "R_PIR_FREI"
GuaranteedFreighterLoot1 =			"FRIG_TOKEN"		--N/A		Salvaged Frigate Module
GuaranteedFreighterLoot1Amount =	"1"					--N/A
GuaranteedFreighterLoot2 =			"FRIGATE_FUEL_1"	--N/A		Frigate Fuel (50 Tonnes)
GuaranteedFreighterLoot2Amount =	"1"					--N/A

--Changes % Chance and amounts for different reward lootpools for Missions, typically from Space Stations but sometimes from NPCs at POIs on planets or a few other mission sources
SpaceStationMissionLootChanges =
{
	{
		{"R_MB_FIRST"},		--This seems to be the reward pool for the first few missions you take from space stations. Unsure when it switches from these to the other rewards below
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		6.000000},		--1,	1,		150		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			1,	2,		2.000000},		--1,	1,		1		Repair Kit
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		2.000000},		--1,	2,		2		Warp Hypercore
			{"BP_SALVAGE",				"BP_SALVAGE",			3,	5,		6.000000},		--3,	5,		2		Salvaged Data
			{"POWERCELL",				"POWERCELL",			5,	10,		2.000000},		--5,	5,		1		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			5,	10,		2.000000},		--5,	5,		1		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			6,	12,		2.000000},		--5,	5,		1		Starshield Battery
			{"EYEBALL",					"EYEBALL",				1,	3,		1.000000},		--1,	3,		1		Hypnotic Eye
			{"NIPNIPBUDS",				"NAV_DATA",				3,	5,		6.000000},		--1,	3,		1		NipNip Buds		(Navigation Data)
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		3,	5,		1.000000},		--1,	3,		1		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			3,	5,		1.000000},		--1,	3,		1		Larval Core
			{"FISHCORE",				"FISHCORE",				3,	5,		1.000000},		--1,	3,		1		Hadal Core
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
			{"FOOD_DNUT_AJAM",			"POLICE_TOKEN",			1,	1,		9},		--1,	1,		0.2		Food worth 70000		(Defence Chit)
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	1,		1},		--1,	1,		1		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		6},		--1,	1,		30		Multi-Tool Expansion Slot
		}
	},
	{
		{"R_MB_LOW"},		--"Low" reward, e.g. from low-level Space Station missions
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		2},		--1,	2,		2		Warp Hypercore
			{"LAUNCHFUEL",				"LAUNCHFUEL",			2,	2,		2},		--4,	4,		1		Launch Fuel
			{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	1,		7},		--1,	1,		2		Defence Chit
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
			{"LAUNCHFUEL",				"LAUNCHFUEL",			3,	3,		0.5},	--4,	4,		1		Launch Fuel
			{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	2,		5},		--1,	1,		1		Defence Chit
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
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		5},		--1,	1,		6		Multi-Tool Expansion Slot
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
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		5		C-Class Reactor
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		3		C-Class Reactor
			{"HYPERFUEL2",				"HYPERFUEL2",			3,	4,		1},		--1,	2,		2		Warp Hypercore
			{"LAUNCHFUEL",				"POLICE_TOKEN",			2,	3,		2},		--4,	4,		1		Launch Fuel					(Defence Chit)
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
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	2,		3},		--1,	1,		6		Multi-Tool Expansion Slot
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	2,		3},		--1,	1,		7		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			3,	4,		4},		--3,	3,		5		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			8,	12,		5},		--3,	5,		6		Salvaged Data
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		1},		--1,	1,		6		Exosuit Expansion Slot
			{"NAV_DATA",				"NAV_DATA",				9,	12,		2},		--3,	5,		4		Navigation Data
		}
	},
	{
		{"R_MB_MEGA"},		--"Mega" reward
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		5		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},		--1,	1,		3		B-Class Reactor
			{"SHIP_CORE_A",				"SHIP_CORE_A",			1,	1,		0},		--1,	1,		2		A-Class Reactor
			{"SHIP_CORE_S",				"SHIP_CORE_S",			1,	1,		0},		--1,	1,		1		S-Class Reactor
			{"HYPERFUEL2",				"HYPERFUEL2",			3,	4,		0},		--1,	2,		2		Warp Hypercore
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
			{"FOOD_CK_CACTUS",			"POLICE_TOKEN",			3,	4,		1},		--1,	1,		0.2		Food worth 57800		(Defence Chit)
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
			{"FRIG_TOKEN",				"FRIG_TOKEN",			2,	2,		7},		--1,	1,		6		Salvaged Frigate Module
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		2,	2,		0},		--1,	1,		6		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			4,	5,		2},		--3,	3,		6		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			10,	14,		5},		--3,	5,		5		Salvaged Data
			{"NAV_DATA",				"NAV_DATA",				16,	16,		2},		--5,	5,		4		Navigation Data
		}
	},
	{
		{"R_PIRATEBOARD_A"},		--Outlaw Station board mission items
		{	--Old Item					New Item				Min	Max		%Chance (relative weight)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		5		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},		--1,	1,		4		B-Class Reactor
			{"SHIP_CORE_A",				"SHIP_CORE_A",			1,	1,		0},		--1,	1,		2		A-Class Reactor
			{"SHIP_CORE_S",				"SHIP_CORE_S",			1,	1,		0},		--1,	1,		1		S-Class Reactor
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
			--{<One of 35 Corvette parts>,						1,	1,		7},		--1,	1,		7		<One of 35 Corvette parts>	 Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,						1,	1,		15},	--1,	1,		15		<One of 73 Corvette parts>	 Worth 236,694 units on average
		}
	},
	{
		{"R_PIRATEBOARD_B"},		--Outlaw Station board mission currency
		{	--Old Item					New Item				Min	Max		%Chance (relative weight)
			{"REP_TOKEN",				"REP_TOKEN",			1,	1,		50},	--1,	1,		50		Forged Passport
		}
	},
	{
		{"R_NEXUS_MED"},			--Nexus mission "Medium" rewards (Possibly sometimes shows up in certain Space Station missions?)
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		3		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},		--1,	1,		3		B-Class Reactor
			{"SENTFREI_PROD",			"SENTFREI_PROD",		1,	1,		1},		--1,	1,		3		Carrier AI Fragment
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		5},		--1,	2,		10		Warp Hypercore
			{"REPAIRKIT",				"REPAIRKIT",			3,	4,		4},		--3,	3,		3		Repair Kit
			{"LAUNCHFUEL",				"LAUNCHFUEL",			2,	4,		1},		--4,	4,		1		Launch Fuel
			{"GRENFUEL1",				"GRENFUEL1",			4,	4,		3},		--4,	4,		3		Unstable Plasma
			{"FACT_TOKEN",				"FACT_TOKEN",			math.floor(1*FactoryOverrideTokenMult),	math.floor(1*FactoryOverrideTokenMult),		5},		--1,	1,		5		Factory Override Unit
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	1,		5},		--1,	1,		5		Salvaged Frigate Module
			{"POLICE_TOKEN",			"POLICE_TOKEN",			2,	2,		2},		--1,	1,		2		Defence Chit
			{"BP_SALVAGE",				"BP_SALVAGE",			4,	6,		10},	--3,	5,		10		Salvaged Data
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		1,	3,		1},		--1,	3,		5		Frigate Fuel (200 tonnes)
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		3},		--1,	1,		3		Exosuit Upgrade Chart
			{"FRIG_BOOST_TRA",			"FRIG_BOOST_TRA",		1,	2,		2},		--1,	1,		2		Mind Control Device
			{"FRIG_BOOST_EXP",			"FRIG_BOOST_EXP",		1,	2,		2},		--1,	1,		2		Holographic Analyser
			{"FRIG_BOOST_MIN",			"FRIG_BOOST_MIN",		1,	2,		2},		--1,	1,		2		Mineral Compressor
			{"FRIG_BOOST_COM",			"FRIG_BOOST_COM",		1,	2,		2},		--1,	1,		2		Explosive Drones
			{"FRIG_BOOST_SPD",			"FRIG_BOOST_SPD",		1,	2,		2},		--1,	1,		2		Fuel Oxidiser
			{"POWERCELL",				"POWERCELL",			5,	15,		0.5},	--5,	15,		10		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			5,	15,		0.5},	--5,	15,		10		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			10,	15,		3},		--5,	5,		3.5		Starshield Battery
			{"EYEBALL",					"EYEBALL",				4,	6,		5},		--3,	5,		5		Hypnotic Eye
			{"WALKER_PROD",				"WALKER_PROD",			1,	1,		1},		--1,	1,		3		Walker Brain
			{"NIPNIPBUDS",				"NIPNIPBUDS",			4,	8,		5},		--3,	5,		5		NipNip Buds
			{"FARMPROD1",				"FARMPROD1",			3,	5,		1},		--3,	5,		1		Acid
			{"FARMPROD2",				"FARMPROD2",			3,	5,		1},		--3,	5,		1		Lubricant
			{"FARMPROD4",				"FARMPROD4",			3,	5,		1},		--3,	5,		1		Heat Capacitor
			{"FARMPROD5",				"FARMPROD5",			3,	5,		1},		--3,	5,		1		Poly Fibre
			{"FARMPROD6",				"FARMPROD6",			3,	5,		1},		--3,	5,		1		Unstable Gel
			{"FARMPROD7",				"FARMPROD7",			1,	1,		5},		--1,	1,		5		Liquid Explosive
			{"FARMPROD8",				"FARMPROD8",			1,	1,		5},		--1,	1,		5		Living Glass
			{"FARMPROD9",				"FARMPROD9",			1,	1,		5},		--1,	1,		5		Circuit Board
			{"SPEC_FIREWORK01",			"SPEC_FIREWORK01",		5,	5,		1},		--5,	5,		1		Blue Firework
			{"SPEC_FIREWORK02",			"SPEC_FIREWORK02",		5,	5,		1},		--5,	5,		1		Red Firework
			{"SPEC_FIREWORK03",			"SPEC_FIREWORK03",		5,	5,		1},		--5,	5,		1		Green Firework
			{"TECH_COMP",				"TECH_COMP",			5,	15,		5},		--5,	15,		5		Wiring Loom
		}
	},
	{
		{"R_NEXUS_MEGA"},			--Nexus mission "Mega" rewards (Possibly sometimes shows up in certain Space Station missions?)
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SENTFREI_PROD",			"SENTFREI_PROD",		1,	1,		3},		--1,	1,		3		Carrier AI Fragment
			{"ABAND_LOCATOR",			"ABAND_LOCATOR",		1,	1,		5},		--1,	1,		5		Emergency Signal Scanner
			{"MEGAPROD1",				"MEGAPROD1",			2,	3,		5},		--1,	1,		5		Portable Reactor
			{"MEGAPROD2",				"MEGAPROD2",			2,	3,		5},		--1,	1,		5		Quantum Processor
			{"MEGAPROD3",				"MEGAPROD3",			2,	3,		5},		--1,	1,		5		Cryogenic Chamber
			{"ULTRAPROD1",				"ULTRAPROD1",			1,	2,		1},		--1,	1,		1		Fusion Ignitor
			{"ULTRAPROD2",				"ULTRAPROD2",			1,	2,		1},		--1,	1,		1		Stasis Device
			{"STORM_CRYSTAL",			"STORM_CRYSTAL",		25,	25,		5},		--25,	25,		25		Storm Crystal
			{"FIENDCORE",				"FIENDCORE",			25,	25,		5},		--25,	25,		25		Larval Core
			{"FISHCORE",				"FISHCORE",				25,	25,		5},		--25,	25,		25		Hadal Core
			{"TRA_MINERALS5",			"TRA_MINERALS5",		20,	28,		2},		--3,	5,		15		Trade item worth 50000
			{"TRA_TECH5",				"TRA_TECH5",			20,	28,		2},		--3,	5,		15		Trade item worth 50000
			{"TRA_COMPONENT5",			"TRA_COMPONENT5",		20,	28,		2},		--3,	5,		15		Trade item worth 50000
			{"TRA_ENERGY5",				"TRA_ENERGY5",			20,	28,		2},		--3,	5,		15		Trade item worth 50000
			{"TRA_EXOTICS5",			"TRA_EXOTICS5",			20,	28,		2},		--3,	5,		15		Trade item worth 50000
			{"TRA_COMMODITY5",			"TRA_COMMODITY5",		20,	28,		2},		--3,	5,		15		Trade item worth 50000
			{"SPECIAL_POOP",			"SPECIAL_POOP",			50,	50,		0},		--50,	50,		10		Hexite
			{"SPACEGUNK2",				"SPACEGUNK2",			100,100,	0},		--100,	100,	10		Runaway Mould
			{"WALKER_PROD",				"WALKER_PROD",			2,	3,		5},		--1,	1,		5		Walker Brain
			{"BP_SALVAGE",				"BP_SALVAGE",			10,	14,		20},	--1,	1,		25		Salvaged Data
			{"FOOD_EGGPIE_GM",			"FOOD_EGGPIE_GM",		10,	15,		2},		--1,	1,		2		Food worth 102000
			{"FOOD_CK_CACTUS",			"HEXCORE",				64,	64,		2},		--1,	1,		2		Food worth 57800		(Hex Core)
			{"FOOD_R_EYESTEW",			"FOOD_R_EYESTEW",		1,	1,		0.0},	--1,	1,		2		Food worth 90000
			{"FOOD_ICE_GRAH",			"FOOD_ICE_GRAH",		1,	1,		0.0},	--1,	1,		2		Food worth 44000
			{"FOOD_CG_JGLITCH",			"FOOD_CG_JGLITCH",		1,	1,		0.0},	--1,	1,		2		Food worth 80800
			{"FOOD_CB_FCUST",			"FOOD_CB_FCUST",		1,	1,		0.0},	--1,	1,		2		Food worth 92300
			{"FOOD_CB_SCUST",			"TECH_COMP",			5,	15,		5},		--1,	1,		2		Food worth 92300		(Wiring Loom)
			{"FOOD_CM_CHOC",			"FOOD_CM_CHOC",			10,	15,		2},		--1,	1,		2		Food worth 148000
			{"FOOD_MM_CARM",			"FOOD_MM_CARM",			10,	15,		2},		--1,	1,		2		Food worth 128000
			{"FOOD_CG_HONEY",			"FOOD_CG_HONEY",		1,	1,		0.0},	--1,	1,		2		Food worth 62200
			{"FOOD_STEW_M_CH",			"FOOD_STEW_M_CH",		1,	1,		0.0},	--1,	1,		2		Food worth 36000
			{"FOOD_PIE_CRABJ",			"FOOD_PIE_CRABJ",		1,	1,		0.0},	--1,	1,		2		Food worth 54000
			{"FOOD_PIE_CRAB",			"FOOD_PIE_CRAB",		1,	1,		0},		--1,	1,		2		Food worth 40000
			{"FOOD_DNUT_MEAT",			"MECH_PROD",			2,	3,		2},		--1,	1,		2		Food worth 65000		(Hardframe Engine)
			{"FOOD_DNUT_AJAM",			"FREI_INV_TOKEN",		1,	2,		8},		--1,	1,		2		Food worth 70000		(Freighter Bulkhead)
			{"SPEC_FIREWORK01",			"SPEC_FIREWORK01",		20,	20,		5},		--20,	20,		5		Blue Firework
			{"SPEC_FIREWORK02",			"SPEC_FIREWORK02",		20,	20,		5},		--20,	20,		5		Red Firework
			{"SPEC_FIREWORK03",			"SPEC_FIREWORK03",		20,	20,		5},		--20,	20,		5		Green Firework
			{"SHIP_INV_TOKEN",			"SHIP_INV_TOKEN",		1,	2,		7},		--1,	1,		5		Storage Augmentation
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		2,	2,		2},		--1,	1,		5		Multi-Tool Expansion Slot
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		5		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},		--1,	1,		4		B-Class Reactor
			{"SHIP_CORE_A",				"SHIP_CORE_A",			1,	1,		0},		--1,	1,		2		A-Class Reactor
			{"SHIP_CORE_S",				"SHIP_CORE_S",			1,	1,		0},		--1,	1,		1		S-Class Reactor
			--{<One of 35 Corvette parts>,						1,	1,		7},		--1,	1,		7		<One of 35 Corvette parts>	 Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,						1,	1,		15},	--1,	1,		15		<One of 73 Corvette parts>	 Worth 236,694 units on average
		}
	},
	{
		{"R_CV_LOW"},		--"Low" reward for Corvette missions / Mission Radar
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		2},		--1,	2,		2		Warp Hypercore
			{"LAUNCHFUEL",				"LAUNCHFUEL",			2,	2,		2},		--4,	4,		1		Launch Fuel
			{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	1,		7},		--1,	1,		2		Defence Chit
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
		{"R_CV_MED"},		--"Medium" reward for Corvette missions / Mission Radar
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"HYPERFUEL2",				"HYPERFUEL2",			2,	3,		1},		--1,	2,		1		Warp Hypercore
			{"LAUNCHFUEL",				"LAUNCHFUEL",			3,	3,		0.5},	--4,	4,		1		Launch Fuel
			{"POLICE_TOKEN",			"POLICE_TOKEN",			1,	2,		5},		--1,	1,		1		Defence Chit
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
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	1,		5},		--1,	1,		6		Multi-Tool Expansion Slot
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		3},		--1,	1,		6		Exosuit Expansion Slot
			{"NAV_DATA",				"NAV_DATA",				6,	8,		4},		--2,	4,		4		Navigation Data
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		5},		--1,	1,		6		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			2,	3,		2},		--1,	2,		2		Repair Kit
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	1,		3},		--1,	1,		3		Salvaged Frigate Module
			{"BP_SALVAGE",				"BP_SALVAGE",			6,	8,		6},		--3,	5,		6		Salvaged Data
		}
	},
	{
		{"R_CV_HIGH"},		--"High" reward for Corvette missions / Mission Radar
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		5		C-Class Reactor
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		3		C-Class Reactor
			{"HYPERFUEL2",				"HYPERFUEL2",			3,	4,		1},		--1,	2,		2		Warp Hypercore
			{"LAUNCHFUEL",				"POLICE_TOKEN",			2,	3,		2},		--4,	4,		1		Launch Fuel					(Defence Chit)
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
			{"WEAP_INV_TOKEN",			"WEAP_INV_TOKEN",		1,	2,		3},		--1,	1,		6		Multi-Tool Expansion Slot
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	2,		3},		--1,	1,		7		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			3,	4,		4},		--3,	3,		5		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			8,	12,		5},		--3,	5,		6		Salvaged Data
			{"SUIT_INV_TOKEN",			"SUIT_INV_TOKEN",		1,	1,		1},		--1,	1,		6		Exosuit Expansion Slot
			{"NAV_DATA",				"NAV_DATA",				9,	12,		2},		--3,	5,		4		Navigation Data
			--{<One of 35 Corvette parts>,						1,	1,		7},		--1,	1,		7		<One of 35 Corvette parts>	 Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,						1,	1,		15},	--1,	1,		15		<One of 73 Corvette parts>	 Worth 236,694 units on average
		}
	},
	{
		{"R_CV_MEGA"},		--"Mega" reward for Corvette missions / Mission Radar
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		5		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},		--1,	1,		3		B-Class Reactor
			{"SHIP_CORE_A",				"SHIP_CORE_A",			1,	1,		0},		--1,	1,		2		A-Class Reactor
			{"SHIP_CORE_S",				"SHIP_CORE_S",			1,	1,		0},		--1,	1,		1		S-Class Reactor
			{"HYPERFUEL2",				"HYPERFUEL2",			3,	4,		0},		--1,	2,		2		Warp Hypercore
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
			{"FOOD_CK_CACTUS",			"POLICE_TOKEN",			3,	4,		1},		--1,	1,		0.2		Food worth 57800		(Defence Chit)
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
			{"FRIG_TOKEN",				"FRIG_TOKEN",			2,	2,		7},		--1,	1,		6		Salvaged Frigate Module
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		2,	2,		0},		--1,	1,		6		Exosuit Upgrade Chart
			{"REPAIRKIT",				"REPAIRKIT",			4,	5,		2},		--3,	3,		6		Repair Kit
			{"BP_SALVAGE",				"BP_SALVAGE",			10,	14,		5},		--3,	5,		5		Salvaged Data
			{"NAV_DATA",				"NAV_DATA",				16,	16,		2},		--5,	5,		4		Navigation Data
			--{<One of 35 Corvette parts>,						1,	1,		7},		--1,	1,		7		<One of 35 Corvette parts> Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,						1,	1,		15},	--1,	1,		15		<One of 73 Corvette parts> Worth 236,694 units on average
		}
	},
	--Deprecated in NMS v6.10
	--[[
	{
		{"R_CVBOARD_MED"},		--Presumably additional / alternative reward for Corvette missions / Mission Radar?
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},		--1,	1,		3		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},		--1,	1,		3		B-Class Reactor
			{"SENTFREI_PROD",			"SENTFREI_PROD",		1,	1,		1},		--1,	1,		3		Carrier AI Fragment
			{"HYPERFUEL2",				"HYPERFUEL2",			1,	2,		5},		--1,	2,		10		Warp Hypercore
			{"REPAIRKIT",				"REPAIRKIT",			3,	4,		4},		--3,	3,		3		Repair Kit
			{"LAUNCHFUEL",				"LAUNCHFUEL",			2,	4,		1},		--4,	4,		1		Launch Fuel
			{"GRENFUEL1",				"GRENFUEL1",			4,	4,		3},		--4,	4,		3		Unstable Plasma
			{"FACT_TOKEN",				"FACT_TOKEN",			math.floor(1*FactoryOverrideTokenMult),	math.floor(1*FactoryOverrideTokenMult),		5},		--1,	1,		5		Factory Override Unit
			{"FRIG_TOKEN",				"FRIG_TOKEN",			1,	1,		5},		--1,	1,		5		Salvaged Frigate Module
			{"POLICE_TOKEN",			"POLICE_TOKEN",			2,	2,		2},		--1,	1,		2		Defence Chit
			{"BP_SALVAGE",				"BP_SALVAGE",			4,	6,		10},	--3,	5,		10		Salvaged Data
			{"FRIGATE_FUEL_3",			"FRIGATE_FUEL_3",		1,	3,		1},		--1,	3,		5		Frigate Fuel (200 tonnes)
			{"NAV_DATA_DROP",			"NAV_DATA_DROP",		1,	1,		3},		--1,	1,		3		Exosuit Upgrade Chart
			{"FRIG_BOOST_TRA",			"FRIG_BOOST_TRA",		1,	2,		2},		--1,	1,		2		Mind Control Device
			{"FRIG_BOOST_EXP",			"FRIG_BOOST_EXP",		1,	2,		2},		--1,	1,		2		Holographic Analyser
			{"FRIG_BOOST_MIN",			"FRIG_BOOST_MIN",		1,	2,		2},		--1,	1,		2		Mineral Compressor
			{"FRIG_BOOST_COM",			"FRIG_BOOST_COM",		1,	2,		2},		--1,	1,		2		Explosive Drones
			{"FRIG_BOOST_SPD",			"FRIG_BOOST_SPD",		1,	2,		2},		--1,	1,		2		Fuel Oxidiser
			{"POWERCELL",				"POWERCELL",			5,	15,		0.5},	--5,	15,		10		Ion Battery
			{"PRODFUEL2",				"PRODFUEL2",			5,	15,		0.5},	--5,	15,		10		Life Support Gel
			{"SHIPCHARGE",				"SHIPCHARGE",			10,	15,		3},		--5,	5,		3.5		Starshield Battery
			{"EYEBALL",					"EYEBALL",				4,	6,		5},		--3,	5,		5		Hypnotic Eye
			{"WALKER_PROD",				"WALKER_PROD",			1,	1,		1},		--1,	1,		3		Walker Brain
			{"NIPNIPBUDS",				"NIPNIPBUDS",			4,	8,		5},		--3,	5,		5		NipNip Buds
			{"FARMPROD1",				"FARMPROD1",			3,	5,		1},		--3,	5,		1		Acid
			{"FARMPROD2",				"FARMPROD2",			3,	5,		1},		--3,	5,		1		Lubricant
			{"FARMPROD4",				"FARMPROD4",			3,	5,		1},		--3,	5,		1		Heat Capacitor
			{"FARMPROD5",				"FARMPROD5",			3,	5,		1},		--3,	5,		1		Poly Fibre
			{"FARMPROD6",				"FARMPROD6",			3,	5,		1},		--3,	5,		1		Unstable Gel
			{"FARMPROD7",				"FARMPROD7",			1,	1,		5},		--1,	1,		5		Liquid Explosive
			{"FARMPROD8",				"FARMPROD8",			1,	1,		5},		--1,	1,		5		Living Glass
			{"FARMPROD9",				"FARMPROD9",			1,	1,		5},		--1,	1,		5		Circuit Board
			{"SPEC_FIREWORK01",			"SPEC_FIREWORK01",		5,	5,		1},		--5,	5,		1		Blue Firework
			{"SPEC_FIREWORK02",			"SPEC_FIREWORK02",		5,	5,		1},		--5,	5,		1		Red Firework
			{"SPEC_FIREWORK03",			"SPEC_FIREWORK03",		5,	5,		1},		--5,	5,		1		Green Firework
			{"TECH_COMP",				"TECH_COMP",			5,	15,		5},		--5,	15,		5		Wiring Loom
		}
	},
	]]
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

NexusMissionCurrencyChanges =
{
	{
		{"R_NEXUS_MED_C"},		--Nexus mission "Medium" rewards
		{	--Currency	Min			Max			Old %Chance	New % Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	400000,		600000,		50.000000,	50.000000},		--400000,		500000,		50,		50
			{"Units",	750000,		1000000,	5.000000,	5.000000},		--400000,		500000,		5,		5
			{"Nanites",	400,		550,		45.000000,	45.000000}		--300,			350,		45,		45
		}
	},
	{
		{"R_NEXUS_MEGA_C"},		--Nexus mission "Mega" rewards
		{	--Currency	Min			Max			Old %Chance	New % Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",	750000,		1000000,	50.000000,	50},		--650000,		750000,		50,		50
			{"Units",	1200000,	1800000,	5.000000,	5},			--500000,		1500000,	5,		5
			{"Nanites",	500,		750,		45.000000,	45}			--400,			550,		45,		45
		}
	}
}

--Replaces the amount of standing gained with races / guilds from rewards for procedural Space Station & Planetary missions (Doesn't affect other sources of standing, such as starship battles, killing pirates, certain dialogue choices with NPCs, rescuing stranded pilots, etc.)
LowStandingReward =					2							--1		Reward for certain Space Station / Planetary missions for either the local race or a Guild
MedStandingReward =					4							--2		Reward for certain Space Station / Planetary missions for either the local race or a Guild
HighStandingReward =				6							--3		Reward for certain Space Station / Planetary missions for either the local race or a Guild
GuildStandingReward =				10							--5		May be just for missions posted by Guilds in Space Stations?
OutlawMissStandReward =				9							--2		Reward for certain Outlaw station missions

--Alters the daily "items for nanites" trades offered by Iteration Ares at the Anomaly
AresTradeChanges =
{--Item amount	Trade Item Id			Min /	Max nanites per INDIVIDUAL item traded (final reward will be multiplied by item amount traded)
	{"6",		"STORM_CRYSTAL",		"76",	"114"},		--"1",		"STORM_CRYSTAL",		"5",	"10"		(123,600 units)
	{"8",		"CLAMPEARL",			"27",	"41"},		--"1",		"CLAMPEARL",			"5",	"15"		(45,450 units)
	{"3",		"DEEPSEA_PROD",			"192",	"288"},		--"1",		"GEODE_ASTEROID",		"3",	"3"			(319,200 units)
	{"5",		"GEODE_RARE",			"29",	"44"},		--"1",		"GRAVBALL",				"5",	"10"		(48,960 units)
	{"10",		"CAVECUBE",				"14",	"20"},		--"1",		"CAVECUBE",				"5",	"10"		(23,200 units)
	{"4",		"PIRATE_PROD",			"51",	"77"},		--"1",		"BP_SALVAGE",			"5",	"10"		(85,000 units)
} 

--Replaces certain gifts from Guild Envoys in Space Stations (may be obsolete in NMS v4.6+)
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

--Changes rewards from various interactable objects in Space Stations added in NMS v4.6
StationLootChanges =
{
	{	--Data Silos, Insecure Repositories, or Vulnerable Servers
		{"STATION_S_DATA"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Substances
			{"SPACEGUNK1",			"SPACEGUNK1",			5,			20,			1},					--Residual Goop,		5,			20,			1
			{"SPACEGUNK2",			"SPACEGUNK2",			5,			20,			1},					--Runaway Mould,		5,			20,			1
			{"SPACEGUNK3",			"SPACEGUNK3",			5,			20,			1},					--Rusted Metal,			5,			20,			1
			{"SPACEGUNK4",			"SPACEGUNK4",			5,			20,			1},					--Living Slime,			5,			20,			1
			{"SPACEGUNK5",			"SPACEGUNK5",			5,			20,			1},					--Viscous Fluids,		5,			20,			1
			
			--Products
			{"ILLEGAL_PROD2",		"ILLEGAL_PROD2",		1,			1,			1},					--Stolen DNA Samples,	1,			1,			1
			{"NAV_DATA",			"NAV_DATA",				1,			1,			10},				--Navigation Data,		1,			1,			2
		}
	},
	{	--Storage Containers
		{"STATION_L_DATA"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Substances
			{"SPACEGUNK1",			"SPACEGUNK1",			5,			20,			1},					--Residual Goop,		5,			20,			1
			{"SPACEGUNK2",			"SPACEGUNK2",			5,			20,			1},					--Runaway Mould,		5,			20,			1
			{"SPACEGUNK3",			"SPACEGUNK3",			5,			20,			1},					--Rusted Metal,			5,			20,			1
			{"SPACEGUNK4",			"SPACEGUNK4",			5,			20,			1},					--Living Slime,			5,			20,			1
			{"SPACEGUNK5",			"SPACEGUNK5",			5,			20,			1},					--Viscous Fluids,		5,			20,			1
			
			--Products
			{"GEODE_CAVE",			"GEODE_CAVE",			1,			1,			2},					--Geode (Cobalt),		1,			1,			2
			{"GEODE_RARE",			"GEODE_RARE",			1,			1,			2},					--Glowing Mineral,		1,			1,			2
			{"GEODE_SPACE",			"GEODE_SPACE",			1,			1,			2},					--Tritium Hypercluster,	1,			1,			2
			{"GEODE_ASTEROID",		"GEODE_ASTEROID",		1,			1,			2},					--Gold Nugget,			1,			1,			2
			{"LAND1",				"LAND1",				10,			25,			20},				--Ferrite Dust,			100,		200,		20
			{"LAND1",				"LAND2",				10,			25,			15},				--Pure Ferrite,			100,		200,		20
			{"LAND3",				"LAND3",				10,			25,			10},				--Magnetised Ferrite,	100,		200,		15
			{"NAV_DATA",			"NAV_DATA",				1,			1,			5},					--Navigation Data,		1,			1,			2
		}
	}
}

StationLootCurrencyChanges =
{
	{	--Data Silos, Insecure Repositories, or Vulnerable Servers
		{"STATION_S_DATA"},
		{	--Currency		Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",		6000,		25000,		50},		--100,			200,		50
			{"Nanites",		10,			15,			50}			--10,			15,			50		(Note, in Vanilla this is Units, PTSd changes it to Nanites below)
		}
	},
	{	--Storage Containers
		{"STATION_L_DATA"},
		{	--Currency		Min			Max			%Chance (relative weight, roughly but not necessarily out of 100)
			{"Units",		6000,		37500,		50}			--100,			300,		50
		}
	},
}

--Changes the amounts & chances of rewards from claiming supplies at the entrance room for Derelict Freighters
DerelictSuppliesChanges =
{
	{
		{"R_ABAND_AMMO"},	--The physical crate you can open outside the main airlock door
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance (All possible items are given, at the chance listed for each)
			--Substances
			{"LAND1",			"LAND1",			100,		200,		100},						--"LAND1",			250,		350,		100
			{"FUEL2",			"FUEL2",			100,		200,		100},						--"FUEL2",			150,		250,		100
			{"CATALYST1",		"CATALYST1",		40,			100,		100},						--"CATALYST1",		40,			100,		100
			--Products
			{"REPAIRKIT",		"REPAIRKIT",		1,			2,			100},						--"REPAIRKIT",		3,			3,			100
		}
	},
	{
		{"R_ABAND_GIFT"},	--The optional supplies you can choose in the dialogue tree when using the computer terminal to unlock the main airlock door
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance (All possible items are given, at the chance listed for each)
			--Products
			{"AMMO",			"AMMO",				1000,		2000,		100},						--"AMMO",			4000,		6000,		100
			{"PRODFUEL2",		"PRODFUEL2",		1,			2,			100},						--"PRODFUEL2",		3,			3,			100
			{"POWERCELL",		"POWERCELL",		1,			2,			100},						--"POWERCELL",		3,			3,			100
		}
	}
}

--Changes the amount of nanites found in various containers / datapads on Derelict Freighters (weight is the relative % chance weight to receive this reward from the container)
DerelictNaniteChanges =
{--Container			New /	Old weight %	Min	/	Max	Nanites
	{"R_ABAND_LOCK",	"20",	"20.000000",	"100",	"200"},		--"20",	"50" Nanites	(Locker)	Total weight of rewards is 240 in vanilla
	{"R_ABAND_CASE",	"40",	"40.000000",	"80",	"160"},		--"20",	"50" Nanites	(Case)		Total weight of rewards is 141 in vanilla
	{"R_ABAND_CASE",	"10",	"10.000000",	"400",	"600"},		--"50",	"200" Nanites	(Case)		Total weight of rewards is 141 in vanilla
	{"R_ABAND_NAN",		"60",	"60.000000",	"80",	"160"},		--"15",	"30" Nanites	(Datapad)	Total weight of rewards is 100 in vanilla (but the only other option is a one-time password which gets passed over after you get it once)
}

--Rewards for choosing a tech upgrade at the end of a Derelict Freighter
FreighterTechLootChanges =
{
	{
		{"R_FREI_TECH"},
		{	--Old Item					New Item				Min	Max		%Chance (relative weight, roughly but not necessarily out of 100)
			{"SHIP_CORE_C",				"SHIP_CORE_C",			1,	1,		0},	--1,	1,		20		C-Class Reactor
			{"SHIP_CORE_B",				"SHIP_CORE_B",			1,	1,		0},	--1,	1,		25		B-Class Reactor
			{"SHIP_CORE_A",				"SHIP_CORE_A",			1,	1,		0},	--1,	1,		15		A-Class Reactor
			{"SHIP_CORE_S",				"SHIP_CORE_S",			1,	1,		0},	--1,	1,		5		S-Class Reactor
			--Also has all 7 of the Freighter/Frigate procedural upgrade modules as possible rewards, each at 100 relative Chance %
		}
	},
}

UsePTSdFreiUpgradeClassChances = true					--false			Set to true to replace the vanilla method of choosing Derelict Freighter reward Upgrade Class (set by the system) with PTSd's method (random each time using the weights below)
PTSdFreiUpgrClassChances =			--Only has an effect if UsePTSdFreiUpgradeClassChances above is set to true
{--Sets the relative % weight chances for Freighter Upgrade Modules awarded at the end of Derelict Freighters to be a particular Class
	--C		B		A		S	Class 
	10,		40,		30,		20
}

TaintedMetalMult =						3						--1		Multiplier to all rewards of Tainted Metal (to balance out the increased price of Suspicious Packets when buying from Scrap Dealers)
ScrapTaintIgnoreNatResSetting =			"true"					--"false"	Set to "true" to make the Tainted Metal reward from Scrap Dealers for turning in Crew Manifests / Captain's Logs be a set amount that ignores the in-game "Natural Resources" Difficulty Setting (e.g. if set to "false" on the Standard setting it will multiply the reward  amounts by 0.8x)
DerelictNaniteRewardMult =				3						--1		Multiplier applied to the 400-600 nanites awarded if choosing the nanite reward at the end of a Derelict Freighter
DerelictGoodCorvChance =				100						--60		Chance to get one of the "good" 35 Corvette parts in addition to 2-3 of the "OK" 73 Corvette parts at the end of a Derelict Freighter

--Replacers for how much Standing is awarded for turning over Derelict Freighter Crew Manifest / Captain's Log to Guild Envoys instead of Scrap Dealers
CrewManGuildStand =						4						--2
CaptLogGuildStand =						6						--3
--Adds a Units Reward for turning over Derelict Freighter Crew Manifest / Captain's Log to Guild Envoys instead of Scrap Dealers
CrewManGuildUnits =						600000					--0
CaptLogGuildUnits =						900000					--0

--Rewards from destroying reactors on "derelict corvettes" added in the Breach update. Chances are not mutually exculsive (can potentially recieve multiple different rewards at once)
DerCorvProceduralLootChance =			10						--10	Drops 1 procedural "Salvage" loot item
DerCorvGoodModuleMin =					2						--1		Minimum amount of "Good" corvette modules (from 35 options) to drop (40% chance)
DerCorvGoodModuleMax =					4						--2		Maximum amount of "Good" corvette modules (from 35 options) to drop (40% chance)
DerCorvOKModuleMin =					2						--1		Minimum amount of "OK" corvette modules (from 73 options) to drop (100% chance)
DerCorvOKModuleMax =					4						--2		Maximum amount of "OK" corvette modules (from 73 options) to drop (100% chance)

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
	--NOTE: This doesn't set the chance of a Damaged Machinery yielding an upgrade module when looted, but the chances for it to be a particular Class when it does spawn one.
	--You can increase/decrease the relative chance to yield upgrade modules by decreasing/increasing the chances for Starship Luanch Fuel / Nanites to spawn in the section below
DmgMachClassCChanceMult =				1						--55 (0 for hazard & life support upgrades)
DmgMachClassBChanceMult =				1						--25 (60 for hazard and 65 for life support upgrades)
DmgMachClassAChanceMult =				1						--15 (30 for hazard & life support upgrades)
DmgMachClassSChanceMult =				1						--5 (10 for hazard & life support upgrades)

--Multipliers for the chance weighting for other loot from Damaged Machinery (upgrade modules have a chance weighting of 1 each, for all 15 of them)
DmgMachFuelChance =						1						--10	1 Starship Launch Fuel
DmgMachNaniteChance =					1						--100	25-35 Nanites

--Multipliers to apply to the various kinds of rewards from Frigate Expedition missions
ExpeditionPosUnitsMultiplier =			0.8						--Only applies to positive amounts of Units (i.e. the player gains units)
ExpeditionNegUnitsMultiplier =			4						--Some Expedition Intervention failures subtract between -10,000 to -100,000 units (Expedition Intervention successes can award between 200,000 to 1,000,000 units)
ExpeditionNanitesMultiplier =			1						
ExpeditionSubstancesMultiplier =		0.2
ExpeditionProductsMultiplier =			0.6						--If you use a value lower than 0.5 here, some rewards with an amount of "1" by default will get rounded down to "0".
ExpeditionReward0Replacer =				1						--If you use a value lower than 0.5 above, choose what value to replace any rewards which now get rounded down to "0". Use 0 here to leave those rewards rounded down to "0".

ExpeditionActivatedMetalMultiplier =	0.5						--Certain encounters reward 250-750 of the various Activated Metals		(Multiplier stacks with ExpeditionSubstancesMultiplier)

IndiumReplacement =						"ASTEROID3"				--Replacement Substance for Indium (reward for certain Combat Expeditions)		Platinum
IndiumReplacementAmount =				100						--500
IndiumReplacementAmountEasy =			10						--50		For the Easy version of Expeditions while you still only have a few Frigates

-- Vanilla Expedition Reward Percentage chances seem to be always be either 100, 66, 50, 20, 10, or 1.
ExpeditionRewardChanceMultiplier100 =						1				--Multiplier to apply to the percentage chance for rewards which normally have a 100% chance of receiving
ExpeditionRewardChanceMultiplierlessthan100 =				1				--Multiplier to apply to the percentage chance for rewards which normally have less than a 100% chance of receiving. If you use a value lower than 0.5 here, rewards with a vanilla chance of 1% will get rounded down to 0%
ExpeditionRewardChance0Replacer =							1				--If you use a value lower than 0.5 above, choose what value to replace any rewards which now have a % chance rounded down to 0%. Use 0 here to leave those reward chances rounded down to "0".

--Replaces the possible Stellar Metal rewards when dismantling the "broken tech" consumable (from Buried Caches) with their Activated version instead
BreakTechAmountMult =					0.6					--1			Default is 50 - 150 of Cadmium/Emeril/Indium
BreakTechRed =							"EX_RED"			--"RED2"	Default is Cadmium
BreakTechGreen =						"EX_GREEN"			--"GREEN2"	Default is Emeril
BreakTechBlue =							"EX_BLUE"			--"BLUE2"	Default is Indium

--Replaces the possible rewards from dismantling the consumable plant item from Subterranean Organic Structure
	--Default Amount is 50-120, then multiplied by the "Amount Multiplier" below
	--The "Substance Collection" in-game difficulty modifier applies to substances here (modified in "PTSD Other Difficulty Settings.lua")
BreakPlantsChangesSubstance =
{		--Old Reward			New Reward			Amount Multiplier
	{	--Residual Goop 		Marrow Bulb   
		"SPACEGUNK1",			"PLANT_CAVE",		1.5/0.8,
	},
	{	--Runaway Mould    		Runaway Mould
		"SPACEGUNK2",			"SPACEGUNK2",		2/0.8,	
	},
	{	--Faecium 				Faecium
		"PLANT_POOP",			"PLANT_POOP",		1.5/0.8,
	},
	{	--Mordite 				Mordite
		"CREATURE1",			"CREATURE1",		1/0.8,	
	},
	{	--Cyto-Phosphate 		Cyto-Phosphate
		"WATERPLANT",			"WATERPLANT",		1/0.8,	
	},
	{	--Condensed Carbon 		Condensed Carbon
		"FUEL2",				"FUEL2",			1/0.8,	
	},
	{	--Carbon 				Carbon
		"FUEL1",				"FUEL1",			1.5/0.8,
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

--Controls the chances & amounts of rewards from the unsalvageable small destroyed shipwrecks added in NMS 5.0
LittleWreckRewards =
{		--Old Reward			New Reward			AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
	{
		"SCRAP_GOODS",			"SCRAP_GOODS",		1,			1,			100,				--Suspicious Packet (Goods),		1,			1,			100
	},
	{
		"SCRAP_TECH",			"SCRAP_TECH",		1,			1,			50,					--Suspicious Packet (Tech),			1,			1,			100
	},
	{
		"POI_LOCATOR",			"POI_LOCATOR",		1,			1,			40,					--Anomaly Detector,					1,			1,			50
	},
}
LittleWreckBrokTechChance =		100					--100		(This is the "broken tech" consumable normally found in Buried Caches above)

--Changes the amounts & chances of standard rewards from opening Buried Caches buried underground in Abandoned Mode 
AbandCrateChanges =
{
	{	--Abandoned Mode Buried Cache
		{"DE_ABAND_CRATE"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Products
			{"SHIP_INV_TOKEN",		"SHIP_INV_TOKEN",		1,			1,			1},					--Storage Augmentation,		1,			1,			10
			{"WEAP_INV_TOKEN",		"WEAP_INV_TOKEN",		1,			1,			2},					--Multi-Tool Expansion Slot,1,			1,			15
			{"SUIT_INV_TOKEN",		"NAV_DATA_DROP",		1,			1,			2},					--Exosuit Expansion Slot,	1,			1,			15		
			{"ABAND_LOCATOR",		"ABAND_LOCATOR",		1,			1,			5},					--Emergency Signal Scanner,	1,			1,			10
		}
	}
}
--Changes to the chances for the procedural rewards sometimes found in Buried Caches in Abandoned Mode
AbandCrateBrokTechChance =		35					--50		(This is the "broken tech" consumable normally found in Buried Caches above)
AbandCrateDataRecordChance =	35					--50		(This is the "species/mineral record" consumable normally found from killing Walking Buildings, awards ~75 nanites on average, with rare chance for a Sentinel Boundary Map)
AbandCrateUpgradeChance =		20					--50		(This is a random procedural upgrade module)
AbandCrateUpgradeChanceC =		70					--70		This is the chance that the above random procedural upgrade module will be C Class
AbandCrateUpgradeChanceB =		19					--20		This is the chance that the above random procedural upgrade module will be B Class
AbandCrateUpgradeChanceA =		8					--10		This is the chance that the above random procedural upgrade module will be A Class
AbandCrateUpgradeChanceS =		3					--5			This is the chance that the above random procedural upgrade module will be S Class

--Changes the amounts & chances of standard rewards from opening various types of Suspicious Packets 
SusPacketChanges =
{
	{	--Suspicious Packet (Goods)
		{"R_SCRAP_GOODS"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Products
			{"HYPERFUEL2",			"HYPERFUEL2",			1,			1,			100},				--Warp Hypercore,		1,			1,			100
			{"WALKER_PROD",			"WALKER_PROD",			1,			1,			50},				--Walker Brain,			1,			1,			100
			{"QUAD_PROD",			"QUAD_PROD",			1,			2,			100},				--Quad Servos,			1,			1,			100
			{"REPAIRKIT",			"REPAIRKIT",			1,			3,			250},				--Repair Kit,			1,			3,			500
			{"SHIP_INV_TOKEN",		"SHIP_INV_TOKEN",		1,			1,			10},				--Storage Augmentation,	1,			1,			10
			{"WEAP_INV_TOKEN",		"WEAP_INV_TOKEN",		1,			1,			10},				--Multi-Tool Expansion Slot,	1,			1,			10
			{"GEODE_RARE",			"GEODE_RARE",			2,			3,			50},				--Glowing Mineral,		1,			1,			50
			{"GEODE_LAND",			"GEODE_LAND",			2,			3,			50},				--Geode (Ferrite),		1,			1,			50
			{"GEODE_CAVE",			"GEODE_CAVE",			2,			3,			50},				--Geode (Cobalt),		1,			1,			50
			{"GEODE_CRYSTAL",		"GEODE_CRYSTAL",		2,			3,			50},				--Crystal Fragment,		1,			1,			50
			{"GEODE_SPACE",			"GEODE_SPACE",			2,			3,			50},				--Tritium Hypercluster,	1,			1,			50
			{"GEODE_ASTEROID",		"GEODE_ASTEROID",		2,			3,			50},				--Gold Nugget,			1,			1,			50
			{"FIENDCORE",			"FIENDCORE",			1,			2,			100},				--Larval Core,			1,			1,			100
			{"GRAVBALL",			"GRAVBALL",				2,			4,			100},				--Gravitino Ball,		1,			1,			100
			{"STORM_CRYSTAL",		"STORM_CRYSTAL",		1,			1,			100},				--Storm Crystal,		1,			1,			100
			{"CLAMPEARL",			"CLAMPEARL",			1,			3,			100},				--Living Pearl,			1,			1,			100
			{"VENTGEM",				"VENTGEM",				2,			4,			100},				--Crystal Sulphide,		1,			1,			100
			{"FISHCORE",			"FISHCORE",				1,			1,			100},				--Hadal Core,			1,			1,			100
			{"EYEBALL",				"EYEBALL",				1,			1,			100},				--Hypnotic Eye,			1,			1,			100
			{"NAV_DATA_DROP",		"NAV_DATA_DROP",		1,			1,			100},				--Exosuit Upgrade Chart,1,			1,			100
			{"POLICE_TOKEN",		"ALBUMENPEARL",			4,			8,			100},				--Defence Chit,			1,			1,			100		(Albumen Pearl)
			{"POLICE_TOKEN",		"POLICE_TOKEN",			1,			2,			150},				--Defence Chit,			1,			1,			100		(Not sure why this item gets 2 separate entries in vanilla)
			{"HEXCORE",				"HEXCORE",				2,			4,			100},				--Hex Core,				1,			1,			100
			{"NIPNIPBUDS",			"NIPNIPBUDS",			1,			1,			100},				--NipNip Buds,			1,			1,			100
			{"TRA_ALLOY5",			"TRA_ALLOY5",			1,			3,			17},				--Superconducting Fibre,1,			1,			100
			{"TRA_COMMODITY5",		"TRA_COMMODITY5",		1,			3,			17},				--Teleport Coordinators,1,			1,			100
			{"TRA_COMPONENT5",		"TRA_COMPONENT5",		1,			3,			17},				--Vector Compressors,	1,			1,			100
			{"TRA_ENERGY5",			"TRA_ENERGY5",			1,			3,			17},				--Fusion Core,			1,			1,			100
			{"TRA_MINERALS5",		"TRA_MINERALS5",		1,			3,			17},				--Re-latticed Arc Crystal,	1,			1,			100
			{"TRA_TECH5",			"TRA_TECH5",			1,			3,			17},				--Quantum Accelerator,	1,			1,			100
			{"CHART_HIVE",			"CHART_HIVE",			1,			1,			100},				--Sentinel Boundary Map,1,			1,			100
		}
	},
	{	--Suspicious Packet (Tech)
		{"R_SCRAP_TECH"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Procedural Tech
			{"U_LASERX",			"U_LASERX",				1,			1,			100},				--X-Class Mining Laser upgrade,		1,			1,			100
			{"U_SCANNERX",			"U_SCANNERX",			1,			1,			100},				--X-Class Scanner upgrade,			1,			1,			100
			{"U_ENERGYX",			"U_ENERGYX",			1,			1,			100},				--X-Class Life Support upgrade,		1,			1,			100
			{"U_HAZARDX",			"U_HAZARDX",			1,			1,			100},				--X-Class Hazard Protection upgrade,1,			1,			100
			{"U_JETBOOSTX",			"U_JETBOOSTX",			1,			1,			100},				--X-Class Movement upgrade,			1,			1,			100
			{"U_SHIELDBOOSTX",		"U_SHIELDBOOSTX",		1,			1,			100},				--X-Class Shield upgrade,			1,			1,			100
			{"U_HYPERX",			"U_HYPERX",				1,			1,			100},				--X-Class Hyperdrive upgrade,		1,			1,			100
			{"U_SHIPSHIELDX",		"U_SHIPSHIELDX",		1,			1,			100},				--X-Class Starship Shield upgrade,	1,			1,			100
			{"U_PULSEX",			"U_PULSEX",				1,			1,			100},				--X-Class Pulse Engine upgrade,		1,			1,			100
			--Added by PTSd
			{"U_LAUNCHX",			"U_LAUNCHX",			1,			1,			100},				--X-Class Launcher upgrade,			1,			1,			100
			{"U_EXO_ENG1",			"U_EXO_ENG1",			1,			1,			40},				--C-Class Exocraft Engine upgrade,	1,			1,			100
			{"U_EXO_ENG2",			"U_EXO_ENG2",			1,			1,			30},				--B-Class Exocraft Engine upgrade,	1,			1,			100
			{"U_EXO_ENG3",			"U_EXO_ENG3",			1,			1,			20},				--A-Class Exocraft Engine upgrade,	1,			1,			100
			{"U_EXO_ENG4",			"U_EXO_ENG4",			1,			1,			10},				--S-Class Exocraft Engine upgrade,	1,			1,			100
			{"U_EXOBOOST1",			"U_EXOBOOST1",			1,			1,			40},				--C-Class Exocraft Boost upgrade,	1,			1,			100
			{"U_EXOBOOST2",			"U_EXOBOOST2",			1,			1,			30},				--B-Class Exocraft Boost upgrade,	1,			1,			100
			{"U_EXOBOOST3",			"U_EXOBOOST3",			1,			1,			20},				--A-Class Exocraft Boost upgrade,	1,			1,			100
			{"U_EXOBOOST4",			"U_EXOBOOST4",			1,			1,			10},				--S-Class Exocraft Boost upgrade,	1,			1,			100
			{"U_EXO_SUB1",			"U_EXO_SUB1",			1,			1,			20},				--C-Class Humboldt Drive upgrade,	1,			1,			100
			{"U_EXO_SUB2",			"U_EXO_SUB2",			1,			1,			15},				--B-Class Humboldt Drive upgrade,	1,			1,			100
			{"U_EXO_SUB3",			"U_EXO_SUB3",			1,			1,			10},				--A-Class Humboldt Drive upgrade,	1,			1,			100
			{"U_EXO_SUB4",			"U_EXO_SUB4",			1,			1,			5},					--S-Class Humboldt Drive upgrade,	1,			1,			100
			{"U_EXOLAS1",			"U_EXOLAS1",			1,			1,			40},				--C-Class Exocraft Laser upgrade,	1,			1,			100
			{"U_EXOLAS2",			"U_EXOLAS2",			1,			1,			30},				--B-Class Exocraft Laser upgrade,	1,			1,			100
			{"U_EXOLAS3",			"U_EXOLAS3",			1,			1,			20},				--A-Class Exocraft Laser upgrade,	1,			1,			100
			{"U_EXOLAS4",			"U_EXOLAS4",			1,			1,			10},				--S-Class Exocraft Laser upgrade,	1,			1,			100
			{"U_MECH_ENG2",			"U_MECH_ENG2",			1,			1,			70},				--B-Class Minotaur Engine upgrade,	1,			1,			100
			{"U_MECH_ENG3",			"U_MECH_ENG3",			1,			1,			20},				--A-Class Minotaur Engine upgrade,	1,			1,			100
			{"U_MECH_ENG4",			"U_MECH_ENG4",			1,			1,			10},				--S-Class Minotaur Engine upgrade,	1,			1,			100
			{"U_MECHLAS2",			"U_MECHLAS2",			1,			1,			70},				--B-Class Minotaur Laser upgrade,	1,			1,			100
			{"U_MECHLAS3",			"U_MECHLAS3",			1,			1,			20},				--A-Class Minotaur Laser upgrade,	1,			1,			100
			{"U_MECHLAS4",			"U_MECHLAS4",			1,			1,			10},				--S-Class Minotaur Laser upgrade,	1,			1,			100
		}
	},
	{	--Suspicious Packet (Arms)
		{"R_SCRAP_WEAP"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Procedural Tech
			{"U_SHIPBLOBX",			"U_SHIPBLOBX",			1,			1,			100},				--X-Class Cyclotron Ballista upgrade,	1,			1,			100
			{"U_SHIPMINIX",			"U_SHIPMINIX",			1,			1,			100},				--X-Class Infra-Knife Accelerator upgrade,	1,			1,			100
			{"U_SHIPSHOTX",			"U_SHIPSHOTX",			1,			1,			100},				--X-Class Positron Ejector upgrade,		1,			1,			100
			{"U_SHIPLASX",			"U_SHIPLASX",			1,			1,			100},				--X-Class Phase Beam upgrade,		1,			1,			100
			{"U_SHIPGUNX",			"U_SHIPGUNX",			1,			1,			100},				--X-Class Photon Cannon upgrade,	1,			1,			100
			{"U_SMGX",				"U_SMGX",				1,			1,			100},				--X-Class Pulse Spitter upgrade,	1,			1,			100
			{"U_SHOTGUNX",			"U_SHOTGUNX",			1,			1,			100},				--X-Class Scatter Blaster upgrade,	1,			1,			100
			{"U_RAILX",				"U_RAILX",				1,			1,			100},				--X-Class Blaze Javelin upgrade,	1,			1,			100
			{"U_TGRENADEX",			"U_TGRENADEX",			1,			1,			100},				--X-Class Geology Cannon upgrade,	1,			1,			100
			{"U_GRENADEX",			"U_GRENADEX",			1,			1,			100},				--X-Class Plasma Launcher upgrade,	1,			1,			100
			{"U_BOLTX",				"U_BOLTX",				1,			1,			100},				--X-Class Boltcaster upgrade,		1,			1,			100
			{"U_CANNONX",			"U_CANNONX",			1,			1,			100},				--X-Class Neutron Cannon upgrade,	1,			1,			100
				--Added by PTSd
			{"U_EXOGUN1",			"U_EXOGUN1",			1,			1,			20},				--C-Class Exocraft Cannon upgrade,	1,			1,			100
			{"U_EXOGUN2",			"U_EXOGUN2",			1,			1,			15},				--B-Class Exocraft Cannon upgrade,	1,			1,			100
			{"U_EXOGUN3",			"U_EXOGUN3",			1,			1,			10},				--A-Class Exocraft Cannon upgrade,	1,			1,			100
			{"U_EXOGUN4",			"U_EXOGUN4",			1,			1,			5},					--S-Class Exocraft Cannon upgrade,	1,			1,			100
			{"U_EXO_SUBGUN1",		"U_EXO_SUBGUN1",		1,			1,			20},				--C-Class Nautilon Cannon upgrade,	1,			1,			100
			{"U_EXO_SUBGUN2",		"U_EXO_SUBGUN2",		1,			1,			15},				--B-Class Nautilon Cannon upgrade,	1,			1,			100
			{"U_EXO_SUBGUN3",		"U_EXO_SUBGUN3",		1,			1,			10},				--A-Class Nautilon Cannon upgrade,	1,			1,			100
			{"U_EXO_SUBGUN4",		"U_EXO_SUBGUN4",		1,			1,			5},					--S-Class Nautilon Cannon upgrade,	1,			1,			100
			{"U_MECHFLAME2",		"U_MECHFLAME2",			1,			1,			35},				--B-Class Minotaur Flamethrower upgrade,	1,			1,			100
			{"U_MECHFLAME3",		"U_MECHFLAME3",			1,			1,			10},				--A-Class Minotaur Flamethrower upgrade,	1,			1,			100
			{"U_MECHFLAME4",		"U_MECHFLAME4",			1,			1,			5},					--S-Class Minotaur Flamethrower upgrade,	1,			1,			100
			{"U_MECHGUN2",			"U_MECHGUN2",			1,			1,			70},				--B-Class Minotaur Cannon upgrade,	1,			1,			100
			{"U_MECHGUN3",			"U_MECHGUN3",			1,			1,			20},				--A-Class Minotaur Cannon upgrade,	1,			1,			100
			{"U_MECHGUN4",			"U_MECHGUN4",			1,			1,			10},				--S-Class Minotaur Cannon upgrade,	1,			1,			100
		}
	}
}
--Changes to the chances for the procedural rewards sometimes found in various types of Suspicious Packets
SusPacketGoodsBrokTechChance =		100					--100		(This is the "broken tech" consumable normally found in Buried Caches above)
SusPacketTechBrokTechChance =		100					--100		(This is the "broken tech" consumable normally found in Buried Caches above)
SusPacketTechDataRecordChance =		100					--100		(This is the "species/mineral record" consumable normally found from killing Walking Buildings, awards ~75 nanites on average, with rare chance for a Sentinel Boundary Map)
SusPacketArmsProcToolChance =		50					--50		(This is a procedural "Tool" type artifact/treasure sometimes found in treasure chests, worth ~450,000 units on average)

--Changes the rewards & costs for using Memory Stones
MemStoneCostSubstance =				"RUINSUB"			--""
MemStoneCostAmount =				64					--0
MemStoneAltTreasureChanceWeight =	67					-- (The vanilla reward has a 100 chance weight)	In vanilla once all ruins blueprints are learnt, Memory Stones are intended to have a 100% chance to yield a random rarity "Loot" type procedural treasure. PTSd adds another possible reward of a fixed-rarity Common "Loot" treasure, and adjusting the weighted chance here affects how likely the Memory Stone is to award either the random or fixed-Common Loot treasure
	--In vanilla Memory Stones never award the procedural "Loot" Treasure due to a vanilla issue with "TryFirst_ThenSelectAlways" which causes them to default to a "fallback" reward of ~100-200 nanites anytime it tries to award a blueprint you already know, instead of trying other rewards from the rewardpool
MemStoneNaniteAmount =				350					--N/A		Sets the average amount of nanites for another posible reward from Memory Stones once all blueprints are known, instead of random/Common Loot treasure
MemStoneNaniteChanceWeight =		167					--N/A		Sets the chance weight for the nanite reward to be awarded instead of the other possible rewards. E.G. setting it equal to 167 will make it a 50/50 chance between either a random/Common Loot Treasure or this new reward

--Changes the amounts & chances of rewards from killing anomalous creatures on Weird / Exotic / Anomalous planets. All creatures on the same planet will drop the same loot
WeirdCreatureLootChanges =
{
	{
		{"CRT_WEIRD"},
		{	--Old Item ID			New Item ID				AmountMin	AmountMax	%Chance	(relative weight, not necessarily out of 100)
			--Substances
			{"SPACEGUNK1",			"SPACEGUNK1",			15,			25,			100},				--Residual Goop,		15,			25,			100
			{"SPACEGUNK4",			"SPACEGUNK4",			15,			25,			100},				--Living Slime,			15,			25,			100
			{"SPACEGUNK5",			"SPACEGUNK5",			15,			25,			100},				--Viscous Fluids,		15,			25,			100
			{"CREATURE1",			"CREATURE1",			6,			9,			100},				--Mordite,				20,			30,			100
			{"ROBOT1",				"ROBOT1",				20,			30,			100},				--Pugneum,				20,			30,			100
			{"OXYGEN",				"OXYGEN",				20,			30,			100},				--Oxygen,				20,			30,			100
			--Products
			{"HEXCORE",				"HEXCORE",				1,			1,			100},				--Hex Core,				1,			3,			100
		}
	}
}

--Changes nanite rewards for releasing fish 
ReplaceVanillaFishNanites = true							--false		Set true to replace the vanilla nanite reward when releasing fish with the custom PTSd version defined below
FishReleaseChanges =
{
	{	--Fish Quality			Min		Max Nanites on release
		"R_FISH_COMMON",		6,		10,					--Unclear, seems to be roughly ~15 - 30
	},
	{
		"R_FISH_RARE",			21,		31,					--Unclear, seems to be roughly ~50 - 100
	},
	{
		"R_FISH_EPIC",			88,		132,				--Unclear, seems to be roughly ~100 - 120
	},
	{
		"R_FISH_LEGEND",		280,	420,				--Unclear, seems to be roughly ~150 - 200
	},
}

--Adds new rewards for defeating Vile Queens
QueenSubstanceID		=				"SPACEGUNK2"		-- N/A		(Runaway Mould)	This substance loot is awarded every time you defeat a Vile Queen, in addition to a Vile Cortex
QueenSubstanceAmountMin	=				200					-- N/A
QueenSubstanceAmountMax	=				300					-- N/A
QueenProcType			=				"SpaceHorror"		-- N/A		This procedural loot is awarded 50% of the time when defeating a Vile Queen (the other 50% of the time is a chance to attempt getting one of the 4 bug helmets)
QueenProcRarity			=				"Uncommon"			-- N/A		The rarity of the procedural loot. Can be Common, Uncommon, or Rare

--Adds new rewards for defeating Deepsea Guardians
GuardianLoot1			=				"FOOD_F_JELLY"		-- N/A		Must be a product
GuardianLoot1Min		=				8					-- N/A
GuardianLoot1Max		=				12					-- N/A
GuardianLoot2			=				"WORMCORE"			-- N/A		Must be a product
GuardianLoot2Min		=				3					-- N/A
GuardianLoot2Max		=				5					-- N/A

--Changes what is received when disturbing Vigilant Eyes into a Substance
NewVigilantEyeItem		=	"RUINSUB"	--"STONE_EYE_PROD"	(PTSd changes to a Substance)
NewVigilantEyeItemAmount=	24			--1
--Applies a multiplier to how much Polished Stone is received from killing Mech/Floating Golems
GolemPolishedStoneMult	=	0.5			--1			16-32 for Floating Golem, 32-84 for Mech Golem
--Adds new rewards for defeating the Ancient Golem "Mech" and Golem floating "Living Stones" enemies, in addition to the Polished Stone they already drop
GolemMechItemChance		=	100
GolemMechItemAmountMin	=	1
GolemMechItemAmountMax	=	2
GolemMechItem			=	"STONE_EYE_PROD"		--	("STONE_EYE_PROD" is Vigilant Stone)
GolemFloatItemChance	=	66
GolemFloatItemAmountMin	=	1
GolemFloatItemAmountMax	=	1
GolemFloatItem			=	"STONE_EYE_PROD"		--	("STONE_EYE_PROD" is Vigilant Stone)

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

--% Chance to receive various items from the core of a Salvageable Scrap node (can receive all items simultaneously if lucky)
SalvageSentMapChance	=	5			--10		Chance for Sentinel Boundary Map
ScrapCoreScrapChance	=	40			--40		Chance for procedural Scrap loot item
ScrapCoreGoodCorvChance	=	24			--40		Chance for 1-2 of 26 "good" Corvette parts, worth 1,052,400 units on average
ScrapCoreOKCorvChance	=	100			--100		Chance for 1-2 of 63 "OK" Corvette parts, worth 237,000 units on average

--Changes substance & amount yielded from destroying the Protective Casing components surrounding a Salvageable Scrap core
SalvageScrapSubstance	=	"SPACEGUNK3"	--"LAND1"	
SalvageScrapSubAmountMult	=	0.33	--Applies multiplier to vanilla amount of 15-30
--% Chance to receive various additional items from each Protective Casing surrounding the core of a Salvageable Scrap node (can receive all items simultaneously if lucky)  (I'm assuming on average there are around ~3 Protective Casings per Scrap Core)
ScrapCaseGoodCorvChance	=	3			--20		Chance for 1 of 26 "good" Corvette parts, worth 1,052,400 units on average
ScrapCaseOKCorvChance	=	7			--33		Chance for 1 of 63 "OK" Corvette parts, worth 237,000 units on average
ExtraScrapChance		=	0			--0			Chance for an additional procedural Scrap item

--% Chance to receive Echo Locators from various sources
SpiderMapChance			=	20			--7			Chance to drop from the large Arachnid Sentinels
DisResMapChance			=	12			--20		Chance to drop from Dissonance Resonator

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

--Changes the amounts & chances of rewards from destroying Resource Depots
ResourceDepotChanges =
{
	{
		{"DE_DEPOT"},
		{	--Old Item ID		New Item ID			AmountMin	AmountMax	PercentageChance (relative weight to be compared against all other options combined?)
			--Substances
			{"ASTEROID1",		"ASTEROID1",		375,		625,		50},						--"ASTEROID1",		100,		250,		100
			{"ASTEROID2",		"ASTEROID2",		375,		625,		50},						--"ASTEROID2",		100,		250,		100
			{"ASTEROID3",		"ASTEROID3",		375,		625,		50},						--"ASTEROID3",		100,		250,		100
			{"GAS1",			"GAS1",				375,		625,		25},						--"GAS1",			100,		250,		100
			{"GAS2",			"GAS2",				375,		625,		25},						--"GAS2",			100,		250,		100
			{"GAS3",			"GAS3",				375,		625,		25},						--"GAS3",			100,		250,		100
			--Products
			{"REACTION1",		"REACTION1",		3,			5,			100},						--"REACTION1",		3,			5,			100
			{"REACTION2",		"REACTION2",		3,			5,			100},						--"REACTION2",		3,			5,			100
			{"REACTION3",		"REACTION3",		3,			5,			100},						--"REACTION3",		3,			5,			100
			{"ALLOY1",			"ALLOY1",			3,			5,			100},						--"ALLOY1",			3,			5,			100
			{"ALLOY2",			"ALLOY2",			3,			5,			100},						--"ALLOY2",			3,			5,			100
			{"ALLOY3",			"ALLOY3",			3,			5,			100},						--"ALLOY3",			3,			5,			100
			{"ALLOY4",			"ALLOY4",			3,			5,			100},						--"ALLOY4",			3,			5,			100
			{"ALLOY5",			"ALLOY5",			3,			5,			100},						--"ALLOY5",			3,			5,			100
			{"ALLOY6",			"ALLOY6",			3,			5,			100},						--"ALLOY6",			3,			5,			100
		}
	}
}

--Changes the relative chances of rewards from Ancient Data Structures
ADSNavDataChance		=	100			--100
ADSExosuitChartChance	=	5			--10

--Multipliers to apply to rewards from some rare resource nodes
MutantPlantSulphurine	=	0.75		--250 - 400
CuriousDepositMould		=	0.6			--300 - 500
OrganicRockChlorine		=	2.2			--25 - 60	
OrganicRockMordite		=	0.27		--250 - 500			Unlike the other rare resource nodes here, this is unaffected by your Multi-Tool's Mining yield bonus
MetalFingerGold			=	0.45		--100 - 200
MetalFingerUranium		=	0.3			--200 - 250
MetalFingerUraniumChance=	0.5			--100	(Relative % Chance a Metal Finger will yield Uranium instead of Gold)

GassyPods				=	0.2			--20 - 30		The 3 red "Gassy Pods" you can harvest from the common Gas Exploding plant hazardous flora on most planets

SimpleFoodHealth		=	1			--1~3		Various simple foods such as most raw meats, small cooked fish, etc. restore between 1-3 health when consumed. This changes it to always be a set amount instead
GoodFoodHealth			=	2			--3~3		Various higher quality foods such as certain cooked meals or larger cooked fish, etc. restore 3 health when consumed. This changes that set amount

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

--Multipliers to adjust certain plant yields. This is mainly to buff wild gathering slightly in relation to farming
	--pre-4.0, this was also to balance out the increased crop yield from a Multi-Tool's Mining Stat with my PTSd Scanner and Mining Bonus.lua /  More Meaningful Multitools
CropYieldReduction = 
{
	--Wild plants		Multiplier
	{"WILD_BARREN",		1.25},					--40 - 60	Cactus Flesh
	{"WILD_LUSH",		2.5},					--10 - 15	Star Bulb
	{"WILD_RADIO",		1.75},					--18 - 30	Gamma Root
	{"WILD_SNOW",		1.75},					--18 - 30	Frost Crystal
	{"WILD_SCORCHED",	1.75},					--18 - 30	Solanium
	{"WILD_TOXIC",		1.75},					--18 - 30	Fungal Mould
	{"PLANT_COMMODITY",	1.07},					--9  - 18	Sodium			(1.333333 HardModeMultiplier pre-NMS 4.0)
	{"PLANT_FUEL",		0.85},					--20 - 25	Oxygen			(1.333333 HardModeMultiplier pre-NMS 4.0)
	--Farm plants	(Notable exception that is not affected by "Substance Collection" difficulty multiplier in "PTSD Other Difficulty Settings.lua")
	{"PLANT_BARREN",	1},						--100		Cactus Flesh
	{"PLANT_LUSH",		1},						--25		Star Bulb
	{"PLANT_RADIO",		1},						--50		Gamma Root
	{"PLANT_SNOW",		1},						--50		Frost Crystal
	{"PLANT_SCORCHED",	1},						--50		Solanium
	{"PLANT_TOXIC",		1},						--50		Fungal Mould
	{"PLANT_CREATURE",	1},						--25		Mordite
	{"PLANT_POOP",		1}						--25		Faecium
}

--Multiplier to appy to the carbon reward from different types of indoor plants
StandingPlanterMult = 0.4									--Standing Planters, Vanilla gives 40 - 80 carbon
InteriorPlantsMult = 0.75									--Various indoor plants, often in pots, Vanilla gives 5 - 20 carbon
--New reward for harvesting plants on the walls of certain new freighter rooms.
FreighterCarbonWallReward = "INTERIORPLANTS"				--"PLANTER_CARBON" (Same reward as Standing Planters above)

--WIP attempt: Swaps the reward for "DE_SEAHORROR", which I am guessing is defeating an Abyssal Horror (anglerfish), which currently seems to drop no loot?
	--Tested and this doesn't seem to be the case... Anglerfish seems to be refered to as FIENDFISHBIG in most files
--SeaHorrorReward = "SeaHorror"			--"SeaHorror"

--WIP attempt: for making Sentinel Pillars require defeating all nearby sentinels first
	--DRONE_HIVE_COMBAT_SHUTDOWN in NMS_DIALOG_GCALIENPUZZLETABLE.MBIN
	--UI_SENTINELS_DISABLED in REWARDTABLE.MBIN
	--C_SENTINELS_OFF in COSTTABLE.MBIN
	--"defeat guards" and/or "destroy the locks" in COREMISSIONTABLE.MBIN
		--Conditions "GcMissionConditionAreDroneHivePartsDestroyed.xml"
--HiveConditionTest = "AnyFalse"														--"AnyFalse"		("AnyTrue")
--HiveEnablingConditionId = ""		--""			("GcMissionConditionAreDroneHivePartsDestroyed.xml")

--Multipliers to apply to the amounts of primary substances yielded from mining certain minerals / plants. Stacks with MinableSubstanceMult
PrimarySubstanceMults =
{	--Object ID				Substance		Multiplier
	{"DE_PLANT_SMALL",		"FUEL1",		1},				--Carbon, 			2-5
	{"DE_PLANT_MED",		"FUEL1",		1},				--Carbon, 			10-25
	{"DE_PLANT_LARGE",		"FUEL1",		1},				--Carbon, 			40-55
	{"DE_WATERPLANT_S",		"WATERPLANT",	1},				--Cyto-Phosphate, 	10-20
	{"DE_WATERPLANT_M",		"WATERPLANT",	1},				--Cyto-Phosphate, 	15-40
	{"DE_WATERPLANT_L",		"WATERPLANT",	1},				--Cyto-Phosphate, 	60-80
	{"DE_ROCK_SMALL",		"LAND1",		1},				--Ferrite Dust, 	4-8
	{"DE_ROCK_MED",			"LAND1",		1},				--Ferrite Dust, 	15-20
	{"DE_ROCK_LARGE",		"LAND2",		1},				--Pure Ferrite, 	20-40
	{"DE_GEM_R_SMALL",		"FUEL2",		1},				--Condensed Carbon, 3-5
	{"DE_GEM_R_MED",		"FUEL2",		1},				--Condensed Carbon, 10-20
	{"DE_GEM_R_LARGE",		"FUEL2",		1},				--Condensed Carbon, 20-50
	{"DE_GEM_B_SMALL",		"LAUNCHSUB",	1},				--Di-hydrogen, 		1-2
	{"DE_GEM_B_MED",		"LAUNCHSUB",	1},				--Di-hydrogen, 		3-6
	{"DE_GEM_B_LARGE",		"LAUNCHSUB",	1},				--Di-hydrogen, 		15-40
	{"DE_GEM_Y_SMALL",		"CATALYST2",	1},				--Sodium Nitrate, 	3-5
	{"DE_GEM_Y_MED",		"CATALYST2",	1},				--Sodium Nitrate, 	10-20
	{"DE_GEM_Y_LARGE",		"CATALYST2",	1},				--Sodium Nitrate, 	20-40
	{"DE_GEM_S_SMALL",		"ROBOT2",		1},				--Atlantideum, 		1-2
	{"DE_GEM_S_LARGE",		"ROBOT2",		1},				--Atlantideum, 		20-25
	{"DE_CAVE_MED",			"CAVE1",		1},				--Cobalt, 			10-20
	{"DE_CAVE_MED",			"ASTEROID1",	1},				--Silver, 			20-30
	{"DE_CAVE_MED",			"ASTEROID2",	1},				--Gold, 			20-30
	{"DE_CAVE_MED",			"ASTEROID3",	1},				--Platinum, 		20-30
	{"DE_CAVE_LARGE",		"CAVE1",		1},				--Cobalt, 			10-25
	{"DE_CAVE_LARGE",		"ASTEROID1",	1},				--Silver, 			30-50
	{"DE_CAVE_LARGE",		"ASTEROID2",	1},				--Gold, 			30-50
	{"DE_CAVE_LARGE",		"ASTEROID3",	1},				--Platinum, 		30-50
	{"DE_WATER_MED",		"WATER1",		0.83},			--Salt, 			25-50
	{"DE_WATER_LARGE",		"WATER2",		1.5},			--Chlorine,			20-30
	{"DE_GAS_PLANT",		"OXYGEN",		1.8},			--Oxygen, 			8-15
	{"DE_GAS_PLANT",		"CATALYST1",	1.8},			--Sodium, 			8-15
}

--Replacements for the amount of secondary substances (the optional secondary substance some plants/minerals have after scanning them) yielded from mining certain types of minerals / plants. The amount of secondary substances is set to duplicate a % of the primary substance amount. e.g. 0.25 means if you get 40 primary substance, you also get 40x25%= 10 secondary substance
SecondarySubstanceMults =
{	--Object Type ID		Substance		AmountFactor
	{"DE_WATERPLANT_A",		"OXYGEN",		0.3},			--Oxygen, 			1.0
	{"DE_WATERPLANT_A",		"FUEL1",		0.25},			--Carbon, 			0.25
	{"DE_WATERPLANT_A",		"WATER1",		0.25},			--Salt, 			0.25
	{"DE_PLANT_SECOND",		"FUEL2",		0.2},			--Condensed Carbon, 0.2
	{"DE_PLANT_SECOND",		"OXYGEN",		0.2},			--Oxygen, 			0.2
	{"DE_ROCK_SECOND",		"LAUNCHSUB",	0.1},			--Di-hydrogen,		0.1
	{"DE_ROCK_SECOND",		"OXYGEN",		0.1},			--Oxygen, 			0.1
	{"DE_ROCK_SECOND",		"CATALYST1",	0.1},			--Sodium, 			0.1
	{"DE_ROCK_SECOND",		"STELLAR2",		0.1},			--Chromatic Metal, 	0.1
	{"DE_GEM_SECOND",		"LAND2",		0.25},			--Pure Ferrite, 	0.25
	{"DE_GEM_SECOND",		"CAVE2",		0.25},			--Ionised Cobalt, 	0.25
	{"DE_GEM_SECOND",		"WATER2",		0.25},			--Chlorine, 		0.25
	{"DE_WATER_SECOND",		"LAND1",		0.3},			--Ferrite Dust, 	1.0
	{"DE_WATER_SECOND",		"OXYGEN",		0.25},			--Oxygen, 			0.25
	{"DE_WATER_SECOND",		"CATALYST1",	0.25},			--Sodium, 			0.25
	{"DE_WATER_L_SEC",		"LAUNCHSUB",	0.3},			--Di-hydrogen, 		1.0
	{"DE_CAVE_SECOND",		"ROCKETSUB",	0.25},			--Tritium, 			0.25
	{"DE_CAVE_SECOND",		"LAUNCHSUB",	0.25},			--Di-hydrogen, 		0.25
	{"DE_CAVE_SECOND",		"ASTEROID1",	0.25},			--Silver, 			0.25
	{"DE_CAVE_SECOND",		"YELLOW2",		0.25},			--Copper, 			0.25
	{"DE_CAVE_SECOND",		"CAVE2",		0.25},			--Ionised Cobalt, 	0.25
	{"DE_CAVE_GAS1",		"WATER1",		0.25},			--Salt, 			0.25
	{"DE_CAVE_GAS1",		"YELLOW2",		0.25},			--Copper, 			0.25
	{"DE_CAVE_GAS1",		"GAS1",			0.25},			--Sulphurine, 		0.25
	{"DE_CAVE_GAS1",		"LAND2",		0.25},			--Pure Ferrite, 	0.25
	{"DE_CAVE_GAS2",		"WATER1",		0.25},			--Salt, 			0.25
	{"DE_CAVE_GAS2",		"YELLOW2",		0.25},			--Copper, 			0.25
	{"DE_CAVE_GAS2",		"GAS2",			0.25},			--Radon, 			0.25
	{"DE_CAVE_GAS2",		"LAND2",		0.25},			--Pure Ferrite, 	0.25
	{"DE_CAVE_GAS3",		"WATER1",		0.25},			--Salt, 			0.25
	{"DE_CAVE_GAS3",		"YELLOW2",		0.25},			--Copper, 			0.25
	{"DE_CAVE_GAS3",		"GAS3",			0.25},			--Nitrogen, 		0.25
	{"DE_CAVE_GAS3",		"LAND2",		0.25},			--Pure Ferrite, 	0.25
}

--Changes the minimum depth that Sea Glass nodes can spawn underwater
SeaGlassMinDepth = -800					-- -220		(Must use a minus sign (-) to indicate depth below sea level)

--Changes the amount of items harvested from various underwater objects
CrystalSulphide = 2						--1		Changes the yield of Crystal Sulphide from underwater Thermal Vents
CrystalSulphideOther = 1				--1		Changes the yield of Crystal Sulphide from Glowing Mineral (Suspicious Packet (Goods) is controlled in SusPacketChanges above)
AlluringSpecHadalCore = 1				--1		Changes the yield of Hadal Core from underwater Alluring Specimens

--Adds additional rewards to harvesting Aluuring Specimens
	--NOTE: Currently rewarding 1 of each item instead of 2 of each item, since a side effect of making ship weapons not mine objects (disable explosions damaging objects) makes the Alluring Specimen no longer get destroyed by the Anglerfish when it spawns. 
NewAlluringSpecRewards =
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="VENTGEM" />
				  <Property name="AmountMin" value="2" />
				  <Property name="AmountMax" value="2" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="CLAMPEARL" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>]]


--Loot from Crashed Freighters in regular & Abandoned Mode, small boxes in Abandoned Stations, and Harmonic Scrap wheelbarrows at Abandoned Camps
CrashedFreighterLootChances =
{
	{
		{"CRASHCONT_M"},		--Crashed Freighter containers normally
		{	--Item						%Chance (relative weight, roughly but not necessarily out of 100)
			{"FRIG_TOKEN",				16},					--10		Salvaged Frigate Module
			{"WEAP_INV_TOKEN",			10},					--8			Multi-Tool Expansion Slot
			{"FREI_INV_TOKEN",			15},					--5			Freighter Bulkhead
			--{"",						8},						--8			Chooses 1x random ILLEGAL_PROD trade good
			{"HYPERFUEL2",				7},						--10		Warp Hypercore
			{"BP_SALVAGE",				5},						--25		1-3 Salvaged Data
			--{"",						20},					--20		Chooses 5x random TRA_XXX5 trade goods worth 50,000 each
			{"FARMPROD6",				3},						--15		Unstable Gel
			{"FARMPROD5",				5},						--9			Poly Fibre
			{"FARMPROD1",				5},						--5			Acid
			{"FARMPROD4",				5},						--5			Heat Capacitor
			{"FARMPROD7",				1},						--1			Liquid Explosive
			{"COMPOUND4",				1},						--1			Fusion Accelerant
			{"COMPOUND5",				1},						--1			Superconductor
			{"COMPOUND6",				1},						--1			Cryo-Pump
			{"COMPOUND3",				3},						--3			Hot Ice
			--{<One of 35 Corvette parts>,	7},					--7			<One of 35 Corvette parts>	Worth 1,052,400 units on average
			--{<One of 73 Corvette parts>,	15},				--15		<One of 73 Corvette parts>	Worth 236,694 units on average
		}
	},
	{
		{"CRASHCONT_S"},		--Crashed Freighter containers looted during the tutorial missions
		{
			{"FRIG_TOKEN",				8},						--8			Salvaged Frigate Module
			{"WEAP_INV_TOKEN",			8},						--8			Multi-Tool Expansion Slot
			{"ANTIMATTER",				10},					--15		Antimatter
			{"AM_HOUSING",				10},					--15		Antimatter Housing
			{"HYPERFUEL1",				20},					--15		Warp Cell
			{"LAUNCHFUEL",				25},					--35		Launch Fuel
		}
	},
	{
		{"ABAND_LOOTBOX_S"},	--Crashed Freighter containers in Abandoned Mode, and also 2/3 of the new salvage boxes added to Abandoned Stations in vanilla
		{	--Item						%Chance (relative weight, roughly but not necessarily out of 100)
			--{"",						20},					--10		Chooses 1 random procedural upgrade module with a 55/25/15/5% chance for C/B/A/S Class
			{"SUIT_INV_TOKEN",			2},						--10		Exosuit Expansion Slot
			{"WEAP_INV_TOKEN",			2},						--8			Multi-Tool Expansion Slot
			{"SHIP_INV_TOKEN",			3},						--5			Storage Augmentation
			{"ABAND_LOCATOR",			7},						--5			Emergency Signal Scanner
			--{"",						8},						--8			Chooses 1x random ILLEGAL_PROD trade good
			{"HYPERFUEL2",				10},					--10		Warp Hypercore
			{"BP_SALVAGE",				3},						--25		1-3 Salvaged Data
			--{"",						25},					--20		Chooses 5x random TRA_XXX5 trade goods worth 50,000 each
			{"FARMPROD6",				1},						--15		Unstable Gel
			{"FARMPROD5",				5},						--9			Poly Fibre
			{"FARMPROD1",				5},						--5			Acid
			{"FARMPROD4",				5},						--5			Heat Capacitor
			{"FARMPROD7",				5},						--1			Liquid Explosive
		}
	},
	{
		{"ABAND_LOOTBOX_L"},	--1/3 of the new salvage boxes added to Abandoned Stations in vanilla (3/3 in PTSd, outside of Abandoned Mode)
		{
			--{"",						20},					--50		Chooses 1 random procedural upgrade module with a 70/20/10/5% chance for C/B/A/S Class
			{"SHIP_INV_TOKEN",			1},						--10		Storage Augmentation
			{"WEAP_INV_TOKEN",			2},						--15		Multi-Tool Expansion Slot
			{"NAV_DATA_DROP",			2},						--15		Exosuit Upgrade Chart (Exosuit Expansion Slot in vanilla)
			{"ABAND_LOCATOR",			2},						--10		Emergency Signal Scanner
			--Added by PTSd
			{"SALVAGE_TECH3",			16},					--0			1-2 Reinforced Piping
			{"REPAIRKIT",				12},					--0			Repair Kit
			{"FIENDCORE",				16},					--0			Larval Core
			{"POI_LOCATOR",				13},					--0			Anomaly Detector
			{"NAV_DATA",				16},					--0			1-3 Navigation Data
		}
	},
	{
		{"ABAND_LOOTBOX_X1"},	--PTSd replacement for 2/3 of the new salvage boxes in Abandoned Stations in Abandoned Mode
		{
			--{"",						20},					--50		Chooses 1 random procedural upgrade module with a 70/20/10/5% chance for C/B/A/S Class
			--{"",						10},					--N/A		Teaches 1 unknown Atlas Seed recipe, in order from 1 - 10, otherwise gives ~100-200 nanites
			{"SHIP_INV_TOKEN",			1},						--10		Storage Augmentation
			{"WEAP_INV_TOKEN",			2},						--15		Multi-Tool Expansion Slot
			{"NAV_DATA_DROP",			2},						--15		Exosuit Upgrade Chart (Exosuit Expansion Slot in vanilla)
			{"ABAND_LOCATOR",			10},					--10		Emergency Signal Scanner
			{"SALVAGE_TECH3",			15},					--N/A		1-2 Reinforced Piping
			{"REPAIRKIT",				15},					--N/A		Repair Kit
			{"FIENDCORE",				10},					--N/A		Larval Core
			{"POI_LOCATOR",				5},						--N/A		Anomaly Detector
			{"NAV_DATA",				10},					--N/A		1-3 Navigation Data
		}
	},
	{
		{"ABAND_LOOTBOX_X"},	--PTSd replacement for 1/3 of the new salvage boxes in Abandoned Stations in Abandoned Mode
		{
			--{"",						1000},					--N/A		Teaches Creature Pellet recipe if not yet known, otherwise chance is 0
			--{"",						10},					--N/A		Teaches Discordant Key recipe if not yet known, otherwise chance is 0
			--{"",						0.1},					--N/A		Chooses 1 random procedural upgrade module with a 75/15/7/3% chance for C/B/A/S Class
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
ExtraChestArtifact = [[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProceduralProduct">
              <Property name="GcRewardProceduralProduct">
				  <Property name="Type" value="GcProceduralProductCategory">
					<Property name="ProceduralProductCategory" value="Tool" />
				  </Property>
				  <Property name="OSDMessage" value="" />
				  <Property name="SubIfPlayerAlreadyHasOne" value="false" />
				  <Property name="OverrideRarity" value="true" />
				  <Property name="Rarity" value="GcRarity">
					<Property name="Rarity" value="Common" />
				  </Property>
				  <Property name="FreighterTechQualityOverride" value="-1" />
			  </Property>
            </Property>
          </Property>]]

--Sets the amounts of Salvaged Data found in Buried Technology Modules
BuriedTechSalvageMin =					2						--2
BuriedTechSalvageMax =					4						--4

--Set which recipes for Storage Containers to remove from most rewards where the game normally awards all 10 recipes
RemoveContainerRewards = {"CONTAINER3", "CONTAINER4", "CONTAINER5", "CONTAINER6", "CONTAINER7", "CONTAINER8", "CONTAINER9", }		

--Adds various tech to the random tech reward loot pools
AddTechToPool =
{
	{	--Loot pool
		{"PROC_TECH_ALL"},
		{--Added tech				--Spot in TechList to place
			{"UT_TRANSLATE1",		"POWERGLOVE"},
			{"POWERGLOVE",			"UT_TRANSLATE1"},		--Adds another POWERGLOVE to the techlist since the one at the top of the list will get removed by a different change
			{"UT_PROTECT",			"GROUND_SHIELD"}, 
			{"UT_JET",				"SHIP_TELEPORT"}, 
			{"SUIT_REFINER",		"SHIPSCAN_ECON"},	
			{"UT_QUICKWARP",		"UT_PROTECT"},
			{"UT_SHIPSHIELD",		"UT_QUICKWARP"},
			{"UT_PULSEFUEL",		"SMG"},
			{"UT_SCAN",				"STRONGLASER"},
		}
	},
	{	--Loot pool
		{"PROC_TECH_SUIT"},
		{--Added tech				--Spot in TechList to place
			{"UT_TRANSLATE1",		"POWERGLOVE"},
			{"POWERGLOVE",			"UT_TRANSLATE1"},		--Adds another POWERGLOVE to the techlist since the one at the top of the list will get removed by a different change
			{"UT_PROTECT",			"POWERGLOVE"}, 
			{"UT_JET",				"UT_PROTECT"}, 
			{"SUIT_REFINER",		"UT_JET"},	
		}
	},
	{	--Loot pool
		{"PROC_TECH_SHIP"},
		{--Added tech				--Spot in TechList to place
			{"UT_QUICKWARP",		"SHIP_TELEPORT"},
			{"UT_SHIPSHIELD",		"UT_QUICKWARP"},
			{"UT_PULSEFUEL",		"UT_SHIPSHIELD"},
		}
	},
	{	--Loot pool
		{"PROC_TECH_WEAP"},
		{--Added tech				--Spot in TechList to place
			{"UT_SCAN",				"STRONGLASER"},
		}
	},
}

--Remove various tech from the random tech reward loot pools
RemoveTechFromPool =
{
	{	--Loot pool
		{"PROC_TECH_ALL"},
		{--Removed tech
			"POWERGLOVE", "HDRIVEBOOST1", "HDRIVEBOOST2", "HDRIVEBOOST3", "SHIPSCAN_COMBAT", "TERRAIN_GREN", "RAILGUN", "SHOTGUN", "SHIPSHOTGUN", "SHIPMINIGUN", "SHIPPLASMA", 
		}
	},
	{	--Loot pool
		{"PROC_TECH_SUIT"},
		{--Removed tech
			"POWERGLOVE",
		}
	},
	{	--Loot pool
		{"PROC_TECH_SHIP"},
		{--Removed tech
			"HDRIVEBOOST1", "HDRIVEBOOST2", "HDRIVEBOOST3", "SHIPSCAN_COMBAT", "SHIPSHOTGUN", "SHIPMINIGUN", "SHIPPLASMA", 
		}
	},
	{	--Loot pool
		{"PROC_TECH_WEAP"},
		{--Removed tech
			"TERRAIN_GREN", "RAILGUN", "SHOTGUN", 
		}
	},
}

ReplaceTECH =	true				--false		Set to true to replace any TECH_ALL, TECH_SUIT, TECH_WEAPON, or TECH_SHIP rewards with their PROC_TECH versions instead

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

function CurrencyReward (Currency, Min, Max, Chance)
    return
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..Chance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..Min..[[" />
				  <Property name="AmountMax" value="]]..Max..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="]]..Currency..[[" />
				  </Property>
			  </Property>
            </Property>
          </Property>]]
end

function SubstanceReward (Substance, Min, Max, Chance)
    return
[[<Property name="List" value="GcRewardTableItem">
			<Property name="PercentageChance" value="]]..Chance..[[" />
			<Property name="LabelID" value="" />
			<Property name="Reward" value="GcRewardSpecificSubstance">
				<Property name="GcRewardSpecificSubstance">
					<Property name="Default" value="GcDefaultMissionSubstanceEnum">
						<Property name="DefaultSubstanceType" value="None" />
					</Property>
					<Property name="ID" value="]]..Substance..[[" />
					<Property name="AmountMin" value="]]..Min..[[" />
					<Property name="AmountMax" value="]]..Max..[[" />
					<Property name="DisableMultiplier" value="false" />
					<Property name="RewardAsBlobs" value="false" />
					<Property name="UseFuelMultiplier" value="false" />
					<Property name="Silent" value="false" />
					<Property name="UseMissionBoardDifficultyScale" value="false" />
				</Property>
			</Property>
		</Property>]]
end

function ProductReward (Product, Min, Max, Chance)
    return
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..Chance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="]]..Product..[[" />
				  <Property name="AmountMin" value="]]..Min..[[" />
				  <Property name="AmountMax" value="]]..Max..[[" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>]]
end

function ProceduralProductReward (Category, OverrideRarity, Rarity, Chance)
    return
[[<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="]]..Chance..[[" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardProceduralProduct">
							<Property name="GcRewardProceduralProduct">
								<Property name="Type" value="GcProceduralProductCategory">
									<Property name="ProceduralProductCategory" value="]]..Category..[[" />
								</Property>
								<Property name="OSDMessage" value="" />
								<Property name="SubIfPlayerAlreadyHasOne" value="false" />
								<Property name="OverrideRarity" value="]]..OverrideRarity..[[" />
								<Property name="Rarity" value="GcRarity">
									<Property name="Rarity" value="]]..Rarity..[[" />
								</Property>
								<Property name="FreighterTechQualityOverride" value="-1" />
							</Property>
						</Property>
					</Property>]]
end

function AddWholeNewItemReward (RewardId, RewardChoice, Chance, ItemType, ItemID, AmountMin, AmountMax)
	return
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]]..RewardId..[[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="]]..RewardChoice..[[" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..Chance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecific]]..ItemType..[[">
              <Property name="GcRewardSpecific]]..ItemType..[[">
				  <Property name="Default" value="GcDefaultMission]]..ItemType..[[Enum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="]]..ItemID..[[" />
				  <Property name="AmountMin" value="]]..AmountMin..[[" />
				  <Property name="AmountMax" value="]]..AmountMax..[[" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]
end

function AddWholeNewCurrencyReward (RewardId, RewardChoice, Chance, Currency, AmountMin, AmountMax)
	return
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]]..RewardId..[[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="]]..RewardChoice..[[" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..Chance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..AmountMin..[[" />
				  <Property name="AmountMax" value="]]..AmountMax..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="]]..Currency..[[" />
				  </Property>
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]
end

function CropNanites (NanitesChance, NanitesAmount)
    return
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..NanitesChance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..NanitesAmount..[[" />
				  <Property name="AmountMax" value="]]..NanitesAmount..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Nanites" />
				  </Property>
			  </Property>
            </Property>
          </Property>]]
end

InvBoxBulkheadReward =
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..MemFragInvBulkChance..[[" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="FREI_INV_TOKEN" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>]]

CrewManGuildUnitReward =
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..CrewManGuildUnits..[[" />
				  <Property name="AmountMax" value="]]..CrewManGuildUnits..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Units" />
				  </Property>
			  </Property>
            </Property>
          </Property>]]

CaptLogGuildUnitReward =
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..CaptLogGuildUnits..[[" />
				  <Property name="AmountMax" value="]]..CaptLogGuildUnits..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Units" />
				  </Property>
			  </Property>
            </Property>
          </Property>]]

NewQueenLoot = 
[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="0.000000" />
            <Property name="LabelID" value="" />
			<Property name="Reward" value="GcRewardSpecificSubstance">
				<Property name="GcRewardSpecificSubstance">
					<Property name="Default" value="GcDefaultMissionSubstanceEnum">
						<Property name="DefaultSubstanceType" value="None" />
					</Property>
					<Property name="ID" value="]]..QueenSubstanceID..[[" />
					<Property name="AmountMin" value="]]..QueenSubstanceAmountMin..[[" />
					<Property name="AmountMax" value="]]..QueenSubstanceAmountMax..[[" />
					<Property name="DisableMultiplier" value="false" />
					<Property name="RewardAsBlobs" value="false" />
					<Property name="UseFuelMultiplier" value="false" />
					<Property name="Silent" value="false" />
					<Property name="UseMissionBoardDifficultyScale" value="false" />
				</Property>
			</Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="400.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProceduralProduct">
              <Property name="GcRewardProceduralProduct">
				  <Property name="Type" value="GcProceduralProductCategory">
					<Property name="ProceduralProductCategory" value="]]..QueenProcType..[[" />
				  </Property>
				  <Property name="OSDMessage" value="" />
				  <Property name="SubIfPlayerAlreadyHasOne" value="false" />
				  <Property name="OverrideRarity" value="true" />
				  <Property name="Rarity" value="GcRarity">
					<Property name="Rarity" value="]]..QueenProcRarity..[[" />
				  </Property>
				  <Property name="FreighterTechQualityOverride" value="-1" />
			  </Property>
            </Property>
          </Property>]]

GlassDrop = [[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="400.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SENTINEL_LOOT" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
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
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="PIRATLTEASY" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveFirst_ThenAlsoSelectAlwaysFromRest" />
        <Property name="OverrideZeroSeed" value="true" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="0.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="PIRATE_PROD" />
				  <Property name="AmountMin" value="0" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SCRAP_GOODS" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SCRAP_TECH" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SCRAP_WEAP" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SHIPCHARGE" />
				  <Property name="AmountMin" value="3" />
				  <Property name="AmountMax" value="3" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="40.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="TRA_CURIO1" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="3" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="40.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="WAR_CURIO1" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="3" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="40.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="EXP_CURIO1" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="3" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="100" />
				  <Property name="AmountMax" value="250" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Nanites" />
				  </Property>
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
				<Property name="PercentageChance" value="33.000000" />
				<Property name="LabelID" value="" />
				<Property name="Reward" value="GcRewardSpecificProductFromList">
					<Property name="GcRewardSpecificProductFromList">
						<Property name="ProductList">
							<Property name="ProductList" value="B_WNG_E" _index="0" />
							<Property name="ProductList" value="B_WNG_G" _index="1" />
							<Property name="ProductList" value="B_WNG_J" _index="2" />
							<Property name="ProductList" value="B_WNG_K" _index="3" />
							<Property name="ProductList" value="B_WNG_M" _index="4" />
							<Property name="ProductList" value="B_WNG_N" _index="5" />
							<Property name="ProductList" value="B_WNG_O_0" _index="6" />
							<Property name="ProductList" value="B_WNG_O_1" _index="7" />
							<Property name="ProductList" value="B_WNG_O_2" _index="8" />
							<Property name="ProductList" value="B_STR_A_NE" _index="9" />
							<Property name="ProductList" value="B_STR_B_NE" _index="10" />
							<Property name="ProductList" value="B_STR_B_N" _index="11" />
							<Property name="ProductList" value="B_STR_C_N" _index="12" />
							<Property name="ProductList" value="B_STR_D_NE" _index="13" />
							<Property name="ProductList" value="B_STR_D_N" _index="14" />
							<Property name="ProductList" value="B_STR_E_NE" _index="15" />
							<Property name="ProductList" value="B_STR_E_N" _index="16" />
							<Property name="ProductList" value="B_STR_F_NE" _index="17" />
							<Property name="ProductList" value="B_STR_F_N" _index="18" />
							<Property name="ProductList" value="B_STR_G_NE" _index="19" />
							<Property name="ProductList" value="B_STR_G_N" _index="20" />
							<Property name="ProductList" value="B_STR_H_NE" _index="21" />
							<Property name="ProductList" value="B_STR_H_N" _index="22" />
							<Property name="ProductList" value="B_STR_I_NE" _index="23" />
							<Property name="ProductList" value="B_STR_I_N" _index="24" />
							<Property name="ProductList" value="B_STR_J_NE" _index="25" />
							<Property name="ProductList" value="B_STR_J_N" _index="26" />
							<Property name="ProductList" value="B_STR_K_NE" _index="27" />
							<Property name="ProductList" value="B_STR_K_N" _index="28" />
							<Property name="ProductList" value="B_STR_L_NE" _index="29" />
							<Property name="ProductList" value="B_STR_L_N" _index="30" />
							<Property name="ProductList" value="B_STR_M_N" _index="31" />
							<Property name="ProductList" value="B_STR_M_NE" _index="32" />
							<Property name="ProductList" value="B_STR_N_N" _index="33" />
							<Property name="ProductList" value="B_STR_N_NE" _index="34" />
							<Property name="ProductList" value="B_STR_O_N" _index="35" />
							<Property name="ProductList" value="B_STR_Q_N" _index="36" />
							<Property name="ProductList" value="B_STR_P_N" _index="37" />
							<Property name="ProductList" value="B_STR_R_N" _index="38" />
							<Property name="ProductList" value="B_STR_S_N" _index="39" />
							<Property name="ProductList" value="B_STR_T_NETB" _index="40" />
							<Property name="ProductList" value="B_STR_U_NETB" _index="41" />
							<Property name="ProductList" value="B_STR_V_NETB" _index="42" />
							<Property name="ProductList" value="B_STR_W_NETB" _index="43" />
							<Property name="ProductList" value="B_STR_X_NETB" _index="44" />
							<Property name="ProductList" value="B_STR_Y_NETB" _index="45" />
							<Property name="ProductList" value="B_DECO_B" _index="46" />
							<Property name="ProductList" value="B_DECO_C" _index="47" />
							<Property name="ProductList" value="B_DECO_D" _index="48" />
							<Property name="ProductList" value="B_DECO_F" _index="49" />
							<Property name="ProductList" value="B_DECO_G" _index="50" />
							<Property name="ProductList" value="B_DECO_H" _index="51" />
							<Property name="ProductList" value="B_DECO_J" _index="52" />
							<Property name="ProductList" value="B_DECO_K" _index="53" />
							<Property name="ProductList" value="B_DECO_L" _index="54" />
							<Property name="ProductList" value="B_DECO_N_0" _index="55" />
							<Property name="ProductList" value="B_DECO_N_1" _index="56" />
							<Property name="ProductList" value="B_DECO_O" _index="57" />
							<Property name="ProductList" value="B_DECO_P" _index="58" />
							<Property name="ProductList" value="B_CON_L_0" _index="59" />
							<Property name="ProductList" value="B_CON_L_1" _index="60" />
							<Property name="ProductList" value="B_CON_L_3" _index="61" />
							<Property name="ProductList" value="B_CON_5" _index="62" />
							<Property name="ProductList" value="B_CON_6" _index="63" />
							<Property name="ProductList" value="B_CON_7" _index="64" />
							<Property name="ProductList" value="B_CON_8" _index="65" />
							<Property name="ProductList" value="B_CON_9" _index="66" />
							<Property name="ProductList" value="B_CON2_0" _index="67" />
							<Property name="ProductList" value="B_CON2_1" _index="68" />
							<Property name="ProductList" value="B_CON2_2" _index="69" />
							<Property name="ProductList" value="B_CON2_3" _index="70" />
							<Property name="ProductList" value="B_CON_L_2" _index="71" />
						</Property>
						<Property name="AmountMin" value="1" />
						<Property name="AmountMax" value="1" />
						<Property name="ForceSpecialMessage" value="false" />
						<Property name="IncrementGlobalStatOnSuccess" value="BIGGS_PART_GOT" />
					</Property>
				</Property>
			</Property>
			<Property name="List" value="GcRewardTableItem">
				<Property name="PercentageChance" value="10.000000" />
				<Property name="LabelID" value="" />
				<Property name="Reward" value="GcRewardSpecificProductFromList">
					<Property name="GcRewardSpecificProductFromList">
						<Property name="ProductList">
							<Property name="ProductList" value="B_COK_A" _index="0" />
							<Property name="ProductList" value="B_COK_B" _index="1" />
							<Property name="ProductList" value="B_HAB_A" _index="2" />
							<Property name="ProductList" value="B_HAB_C" _index="3" />
							<Property name="ProductList" value="B_HAB1_A" _index="4" />
							<Property name="ProductList" value="B_HAB1_B" _index="5" />
							<Property name="ProductList" value="B_HAB1_C" _index="6" />
							<Property name="ProductList" value="B_WNG_A" _index="7" />
							<Property name="ProductList" value="B_WNG_B" _index="8" />
							<Property name="ProductList" value="B_WNG_C" _index="9" />
							<Property name="ProductList" value="B_WNG_D" _index="10" />
							<Property name="ProductList" value="B_WNG_F" _index="11" />
							<Property name="ProductList" value="B_WNG_L" _index="12" />
							<Property name="ProductList" value="B_TRU_A" _index="13" />
							<Property name="ProductList" value="B_TRU_B" _index="14" />
							<Property name="ProductList" value="B_TRU_C" _index="15" />
							<Property name="ProductList" value="B_TRU_E" _index="16" />
							<Property name="ProductList" value="B_TRU_F" _index="17" />
							<Property name="ProductList" value="B_TRU_G" _index="18" />
							<Property name="ProductList" value="B_TRU_H" _index="19" />
							<Property name="ProductList" value="B_GEN_0" _index="20" />
							<Property name="ProductList" value="B_GEN_2" _index="21" />
							<Property name="ProductList" value="B_GEN_3" _index="22" />
							<Property name="ProductList" value="B_TUR_C" _index="23" />
							<Property name="ProductList" value="B_TUR_D" _index="24" />
							<Property name="ProductList" value="B_TUR_E" _index="25" />
							<Property name="ProductList" value="B_DECO_I" _index="26" />
							<Property name="ProductList" value="B_LND_B" _index="27" />
							<Property name="ProductList" value="B_LND_C" _index="28" />
							<Property name="ProductList" value="B_ALK_B" _index="29" />
							<Property name="ProductList" value="B_ALK_C" _index="30" />
							<Property name="ProductList" value="B_SHL_A" _index="31" />
							<Property name="ProductList" value="B_SHL_B" _index="32" />
							<Property name="ProductList" value="B_SHL_C" _index="33" />
							<Property name="ProductList" value="B_SHL_D" _index="34" />
						</Property>
						<Property name="AmountMin" value="1" />
						<Property name="AmountMax" value="1" />
						<Property name="ForceSpecialMessage" value="false" />
						<Property name="IncrementGlobalStatOnSuccess" value="BIGGS_PART_GOT" />
					</Property>
				</Property>
			</Property>
        </Property>
      </Property>
    </Property>]]

PIRATLTHARDRewards =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="PIRATLTHARD" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveFirst_ThenAlsoSelectAlwaysFromRest" />
        <Property name="OverrideZeroSeed" value="true" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="0.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="PIRATE_PROD" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="2" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SCRAP_GOODS" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SCRAP_TECH" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SCRAP_WEAP" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SHIPCHARGE" />
				  <Property name="AmountMin" value="3" />
				  <Property name="AmountMax" value="3" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="100" />
				  <Property name="AmountMax" value="250" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Nanites" />
				  </Property>
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
				<Property name="PercentageChance" value="20.000000" />
				<Property name="LabelID" value="" />
				<Property name="Reward" value="GcRewardSpecificProductFromList">
					<Property name="GcRewardSpecificProductFromList">
						<Property name="ProductList">
							<Property name="ProductList" value="B_WNG_E" _index="0" />
							<Property name="ProductList" value="B_WNG_G" _index="1" />
							<Property name="ProductList" value="B_WNG_J" _index="2" />
							<Property name="ProductList" value="B_WNG_K" _index="3" />
							<Property name="ProductList" value="B_WNG_M" _index="4" />
							<Property name="ProductList" value="B_WNG_N" _index="5" />
							<Property name="ProductList" value="B_WNG_O_0" _index="6" />
							<Property name="ProductList" value="B_WNG_O_1" _index="7" />
							<Property name="ProductList" value="B_WNG_O_2" _index="8" />
							<Property name="ProductList" value="B_STR_A_NE" _index="9" />
							<Property name="ProductList" value="B_STR_B_NE" _index="10" />
							<Property name="ProductList" value="B_STR_B_N" _index="11" />
							<Property name="ProductList" value="B_STR_C_N" _index="12" />
							<Property name="ProductList" value="B_STR_D_NE" _index="13" />
							<Property name="ProductList" value="B_STR_D_N" _index="14" />
							<Property name="ProductList" value="B_STR_E_NE" _index="15" />
							<Property name="ProductList" value="B_STR_E_N" _index="16" />
							<Property name="ProductList" value="B_STR_F_NE" _index="17" />
							<Property name="ProductList" value="B_STR_F_N" _index="18" />
							<Property name="ProductList" value="B_STR_G_NE" _index="19" />
							<Property name="ProductList" value="B_STR_G_N" _index="20" />
							<Property name="ProductList" value="B_STR_H_NE" _index="21" />
							<Property name="ProductList" value="B_STR_H_N" _index="22" />
							<Property name="ProductList" value="B_STR_I_NE" _index="23" />
							<Property name="ProductList" value="B_STR_I_N" _index="24" />
							<Property name="ProductList" value="B_STR_J_NE" _index="25" />
							<Property name="ProductList" value="B_STR_J_N" _index="26" />
							<Property name="ProductList" value="B_STR_K_NE" _index="27" />
							<Property name="ProductList" value="B_STR_K_N" _index="28" />
							<Property name="ProductList" value="B_STR_L_NE" _index="29" />
							<Property name="ProductList" value="B_STR_L_N" _index="30" />
							<Property name="ProductList" value="B_STR_M_N" _index="31" />
							<Property name="ProductList" value="B_STR_M_NE" _index="32" />
							<Property name="ProductList" value="B_STR_N_N" _index="33" />
							<Property name="ProductList" value="B_STR_N_NE" _index="34" />
							<Property name="ProductList" value="B_STR_O_N" _index="35" />
							<Property name="ProductList" value="B_STR_Q_N" _index="36" />
							<Property name="ProductList" value="B_STR_P_N" _index="37" />
							<Property name="ProductList" value="B_STR_R_N" _index="38" />
							<Property name="ProductList" value="B_STR_S_N" _index="39" />
							<Property name="ProductList" value="B_STR_T_NETB" _index="40" />
							<Property name="ProductList" value="B_STR_U_NETB" _index="41" />
							<Property name="ProductList" value="B_STR_V_NETB" _index="42" />
							<Property name="ProductList" value="B_STR_W_NETB" _index="43" />
							<Property name="ProductList" value="B_STR_X_NETB" _index="44" />
							<Property name="ProductList" value="B_STR_Y_NETB" _index="45" />
							<Property name="ProductList" value="B_DECO_B" _index="46" />
							<Property name="ProductList" value="B_DECO_C" _index="47" />
							<Property name="ProductList" value="B_DECO_D" _index="48" />
							<Property name="ProductList" value="B_DECO_F" _index="49" />
							<Property name="ProductList" value="B_DECO_G" _index="50" />
							<Property name="ProductList" value="B_DECO_H" _index="51" />
							<Property name="ProductList" value="B_DECO_J" _index="52" />
							<Property name="ProductList" value="B_DECO_K" _index="53" />
							<Property name="ProductList" value="B_DECO_L" _index="54" />
							<Property name="ProductList" value="B_DECO_N_0" _index="55" />
							<Property name="ProductList" value="B_DECO_N_1" _index="56" />
							<Property name="ProductList" value="B_DECO_O" _index="57" />
							<Property name="ProductList" value="B_DECO_P" _index="58" />
							<Property name="ProductList" value="B_CON_L_0" _index="59" />
							<Property name="ProductList" value="B_CON_L_1" _index="60" />
							<Property name="ProductList" value="B_CON_L_3" _index="61" />
							<Property name="ProductList" value="B_CON_5" _index="62" />
							<Property name="ProductList" value="B_CON_6" _index="63" />
							<Property name="ProductList" value="B_CON_7" _index="64" />
							<Property name="ProductList" value="B_CON_8" _index="65" />
							<Property name="ProductList" value="B_CON_9" _index="66" />
							<Property name="ProductList" value="B_CON2_0" _index="67" />
							<Property name="ProductList" value="B_CON2_1" _index="68" />
							<Property name="ProductList" value="B_CON2_2" _index="69" />
							<Property name="ProductList" value="B_CON2_3" _index="70" />
							<Property name="ProductList" value="B_CON_L_2" _index="71" />
						</Property>
						<Property name="AmountMin" value="1" />
						<Property name="AmountMax" value="1" />
						<Property name="ForceSpecialMessage" value="false" />
						<Property name="IncrementGlobalStatOnSuccess" value="BIGGS_PART_GOT" />
					</Property>
				</Property>
			</Property>
			<Property name="List" value="GcRewardTableItem">
				<Property name="PercentageChance" value="30.000000" />
				<Property name="LabelID" value="" />
				<Property name="Reward" value="GcRewardSpecificProductFromList">
					<Property name="GcRewardSpecificProductFromList">
						<Property name="ProductList">
							<Property name="ProductList" value="B_COK_A" _index="0" />
							<Property name="ProductList" value="B_COK_B" _index="1" />
							<Property name="ProductList" value="B_HAB_A" _index="2" />
							<Property name="ProductList" value="B_HAB_C" _index="3" />
							<Property name="ProductList" value="B_HAB1_A" _index="4" />
							<Property name="ProductList" value="B_HAB1_B" _index="5" />
							<Property name="ProductList" value="B_HAB1_C" _index="6" />
							<Property name="ProductList" value="B_WNG_A" _index="7" />
							<Property name="ProductList" value="B_WNG_B" _index="8" />
							<Property name="ProductList" value="B_WNG_C" _index="9" />
							<Property name="ProductList" value="B_WNG_D" _index="10" />
							<Property name="ProductList" value="B_WNG_F" _index="11" />
							<Property name="ProductList" value="B_WNG_L" _index="12" />
							<Property name="ProductList" value="B_TRU_A" _index="13" />
							<Property name="ProductList" value="B_TRU_B" _index="14" />
							<Property name="ProductList" value="B_TRU_C" _index="15" />
							<Property name="ProductList" value="B_TRU_E" _index="16" />
							<Property name="ProductList" value="B_TRU_F" _index="17" />
							<Property name="ProductList" value="B_TRU_G" _index="18" />
							<Property name="ProductList" value="B_TRU_H" _index="19" />
							<Property name="ProductList" value="B_GEN_0" _index="20" />
							<Property name="ProductList" value="B_GEN_2" _index="21" />
							<Property name="ProductList" value="B_GEN_3" _index="22" />
							<Property name="ProductList" value="B_TUR_C" _index="23" />
							<Property name="ProductList" value="B_TUR_D" _index="24" />
							<Property name="ProductList" value="B_TUR_E" _index="25" />
							<Property name="ProductList" value="B_DECO_I" _index="26" />
							<Property name="ProductList" value="B_LND_B" _index="27" />
							<Property name="ProductList" value="B_LND_C" _index="28" />
							<Property name="ProductList" value="B_ALK_B" _index="29" />
							<Property name="ProductList" value="B_ALK_C" _index="30" />
							<Property name="ProductList" value="B_SHL_A" _index="31" />
							<Property name="ProductList" value="B_SHL_B" _index="32" />
							<Property name="ProductList" value="B_SHL_C" _index="33" />
							<Property name="ProductList" value="B_SHL_D" _index="34" />
						</Property>
						<Property name="AmountMin" value="1" />
						<Property name="AmountMax" value="1" />
						<Property name="ForceSpecialMessage" value="false" />
						<Property name="IncrementGlobalStatOnSuccess" value="BIGGS_PART_GOT" />
					</Property>
				</Property>
			</Property>
        </Property>
      </Property>
    </Property>]]

ESCORTLOOTRewards =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="ESCORTLOOT" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="true" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="20" />
				  <Property name="AmountMax" value="30" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Nanites" />
				  </Property>
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SHIPCHARGE" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="FRIG_BOOST_TRA" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProcTechProduct">
              <Property name="GcRewardProcTechProduct">
				  <Property name="Group" value="SHIPJUMP_NAME_L" />
				  <Property name="WeightedChanceNormal" value="55" />
				  <Property name="WeightedChanceRare" value="25" />
				  <Property name="WeightedChanceEpic" value="15" />
				  <Property name="WeightedChanceLegendary" value="5" />
				  <Property name="ForceRelevant" value="false" />
				  <Property name="ForceQualityRelevant" value="false" />
				  <Property name="AllowAnyGroup" value="false" />
			  </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardProcTechProduct">
              <Property name="GcRewardProcTechProduct">
				  <Property name="Group" value="SHIPSHIELD_NAME_L" />
				  <Property name="WeightedChanceNormal" value="55" />
				  <Property name="WeightedChanceRare" value="25" />
				  <Property name="WeightedChanceEpic" value="15" />
				  <Property name="WeightedChanceLegendary" value="5" />
				  <Property name="ForceRelevant" value="false" />
				  <Property name="ForceQualityRelevant" value="false" />
				  <Property name="AllowAnyGroup" value="false" />
			  </Property>
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

--Makes Knowledge Stones & Encyclopedias teach 1 extra word, for a total of 2 (doesn't affect NPCs teaching words)
	--Changing the "PercentageChance" or "AmountMin" / "AmountMax" values below will affect the chance or amount of extra words added
function AddOneWord(AlienType)
    return
    [[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord">
              <Property name="GcRewardTeachWord">
				  <Property name="Race" value="GcAlienRace">
					<Property name="AlienRace" value="]]..AlienType..[[" />
				  </Property>
				  <Property name="UseCategory" value="false" />
				  <Property name="Category" value="GcWordCategoryTableEnum">
					<Property name="wordcategorytableEnum" value="MISC" />
				  </Property>
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
			  </Property>
            </Property>
          </Property>]]
end

--Makes Ancient Plaques & Ruins & Monoliths teach 4 extra words, for a total of 5
	--Changing the "PercentageChance" or "AmountMin" / "AmountMax" values below will affect the chance or amount of extra words added
function AddFourWords(AlienType)
    return
    [[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord">
              <Property name="GcRewardTeachWord">
				  <Property name="Race" value="GcAlienRace">
					<Property name="AlienRace" value="]]..AlienType..[[" />
				  </Property>
				  <Property name="UseCategory" value="false" />
				  <Property name="Category" value="GcWordCategoryTableEnum">
					<Property name="wordcategorytableEnum" value="MISC" />
				  </Property>
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord">
              <Property name="GcRewardTeachWord">
				  <Property name="Race" value="GcAlienRace">
					<Property name="AlienRace" value="]]..AlienType..[[" />
				  </Property>
				  <Property name="UseCategory" value="false" />
				  <Property name="Category" value="GcWordCategoryTableEnum">
					<Property name="wordcategorytableEnum" value="MISC" />
				  </Property>
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord">
              <Property name="GcRewardTeachWord">
				  <Property name="Race" value="GcAlienRace">
					<Property name="AlienRace" value="]]..AlienType..[[" />
				  </Property>
				  <Property name="UseCategory" value="false" />
				  <Property name="Category" value="GcWordCategoryTableEnum">
					<Property name="wordcategorytableEnum" value="MISC" />
				  </Property>
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord">
              <Property name="GcRewardTeachWord">
				  <Property name="Race" value="GcAlienRace">
					<Property name="AlienRace" value="]]..AlienType..[[" />
				  </Property>
				  <Property name="UseCategory" value="false" />
				  <Property name="Category" value="GcWordCategoryTableEnum">
					<Property name="wordcategorytableEnum" value="MISC" />
				  </Property>
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
			  </Property>
            </Property>
          </Property>]]
end

AddedExocraftNPCMoney =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="R_D_EXOTUT_MONEY" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..ExocraftMinUnits..[[" />
				  <Property name="AmountMax" value="]]..ExocraftMaxUnits..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Units" />
				  </Property>
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
			<Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney">
              <Property name="GcRewardMoney">
				  <Property name="AmountMin" value="]]..ExocraftMinNanites..[[" />
				  <Property name="AmountMax" value="]]..ExocraftMaxNanites..[[" />
				  <Property name="RoundNumber" value="false" />
				  <Property name="Currency" value="GcCurrency">
					<Property name="Currency" value="Nanites" />
				  </Property>
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

AddedExocraftNPCMoneyID =
[[<Property name="Rewards" value="R_D_EXOTUT_MONEY" />]]

function AddTechListItem (TechID)
    return
    [[<Property name="TechList" value="]]..TechID..[[" />]]
end

NewTravReward =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="TRAV_PACKAGE" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
		<Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificSubstance">
              <Property name="GcRewardSpecificSubstance">
				  <Property name="Default" value="GcDefaultMissionSubstanceEnum">
					<Property name="DefaultSubstanceType" value="None" />
				  </Property>
				  <Property name="ID" value="LAUNCHSUB" />
				  <Property name="AmountMin" value="]]..math.floor(30*TravRewardDiHydrMult)..[[" />
				  <Property name="AmountMax" value="]]..math.floor(50*TravRewardDiHydrMult)..[[" />
				  <Property name="DisableMultiplier" value="false" />
				  <Property name="RewardAsBlobs" value="false" />
				  <Property name="UseFuelMultiplier" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="UseMissionBoardDifficultyScale" value="false" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificSubstance">
              <Property name="GcRewardSpecificSubstance">
				  <Property name="Default" value="GcDefaultMissionSubstanceEnum">
					<Property name="DefaultSubstanceType" value="None" />
				  </Property>
				  <Property name="ID" value="ROCKETSUB" />
				  <Property name="AmountMin" value="]]..math.floor(20*TravRewardTritMult)..[[" />
				  <Property name="AmountMax" value="]]..math.floor(40*TravRewardTritMult)..[[" />
				  <Property name="DisableMultiplier" value="false" />
				  <Property name="RewardAsBlobs" value="false" />
				  <Property name="UseFuelMultiplier" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="UseMissionBoardDifficultyScale" value="false" />
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

SalvageExoticPuzzle =
[[<Property name="Options" value="GcAlienPuzzleOption">
          <Property name="Name" value="UI_COST_NO_SALVAGE" />
          <Property name="Text" value="UI_SALVAGE_PROD_RES" />
          <Property name="IsAlien" value="true" />
          <Property name="ResponseLanguageOverride" value="GcAlienRace">
			<Property name="AlienRace" value="None" />
          </Property>
		  <Property name="Cost" value="C_SALVAGE_ROY" />
          <Property name="Rewards">
            <Property name="Rewards" value="R_SALVAGE_ROY" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
          <Property name="ReseedInteractionOnUse" value="false" />
		  <Property name="AlienWordSpecificRace" value="GcAlienRace">
			  <Property name="AlienRace" value="None" />
		  </Property>
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
		  <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="DisablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="DisablingConditions" />
          <Property name="DisablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>]]

SalvageShuttlePuzzle =
[[<Property name="Options" value="GcAlienPuzzleOption">
          <Property name="Name" value="UI_COST_NO_SALVAGE" />
          <Property name="Text" value="UI_SALVAGE_PROD_RES" />
          <Property name="IsAlien" value="true" />
		  <Property name="ResponseLanguageOverride" value="GcAlienRace">
			<Property name="AlienRace" value="None" />
          </Property>
          <Property name="Cost" value="C_SALVAGE_SHT" />
          <Property name="Rewards">
            <Property name="Rewards" value="R_SALVAGE_SHT" />
          </Property>
          <Property name="Mood" value="GcAlienMood">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="false" />
		  <Property name="AlienWordSpecificRace" value="GcAlienRace">
			  <Property name="AlienRace" value="None" />
		  </Property>
          <Property name="ReseedInteractionOnUse" value="false" />
          <Property name="KeepOpen" value="false" />
          <Property name="DisplayCost" value="true" />
          <Property name="TruncateCost" value="false" />
          <Property name="MarkInteractionComplete" value="true" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="false" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
		  <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
          <Property name="DisablingConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="DisablingConditions" />
          <Property name="DisablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>]]

ExoticSalvageReward = 
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="R_SALVAGE_ROY" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SHIP_CORE_S" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SALVAGE_TECH7" />
				  <Property name="AmountMin" value="1" />
				  <Property name="AmountMax" value="1" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSalvageShip">
              <Property name="GcRewardSalvageShip">
				  <Property name="RewardShipParts" value="true" />
				  <Property name="SpecificCustomisationSlotIDs">
					<Property name="Freighter" value="" />
					<Property name="Dropship" value="DROPSHIP_CORE" />
					<Property name="Fighter" value="FIGHTER_CORE" />
					<Property name="Scientific" value="SCIENTIFIC_CORE" />
					<Property name="Shuttle" value="SHUTTLE_CORE" />
					<Property name="PlayerFreighter" value="" />
					<Property name="Royal" value="SCIENTIFIC_CORE" />
					<Property name="Alien" value="" />
					<Property name="Sail" value="DROPSHIP_CORE" />
					<Property name="Robot" value="FIGHTER_CORE" />
					<Property name="Corvette" value="" />
				  </Property>
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

ShuttleSalvageReward = 
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="R_SALVAGE_SHT" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
				  <Property name="Default" value="GcDefaultMissionProductEnum">
					<Property name="DefaultProductType" value="None" />
				  </Property>
				  <Property name="ID" value="SALVAGE_TECH4" />
				  <Property name="AmountMin" value="3" />
				  <Property name="AmountMax" value="3" />
				  <Property name="HideAmountInMessage" value="false" />
				  <Property name="ForceSpecialMessage" value="false" />
				  <Property name="HideInSeasonRewards" value="false" />
				  <Property name="Silent" value="false" />
				  <Property name="SeasonRewardListFormat" value="" />
				  <Property name="RequiresTech" value="" />
			  </Property>
            </Property>
          </Property>
		  <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSalvageShip">
              <Property name="GcRewardSalvageShip">
				  <Property name="RewardShipParts" value="true" />
				  <Property name="SpecificCustomisationSlotIDs">
					<Property name="Freighter" value="" />
					<Property name="Dropship" value="DROPSHIP_CORE" />
					<Property name="Fighter" value="FIGHTER_CORE" />
					<Property name="Scientific" value="SCIENTIFIC_CORE" />
					<Property name="Shuttle" value="SHUTTLE_CORE" />
					<Property name="PlayerFreighter" value="" />
					<Property name="Royal" value="SCIENTIFIC_CORE" />
					<Property name="Alien" value="" />
					<Property name="Sail" value="DROPSHIP_CORE" />
					<Property name="Robot" value="FIGHTER_CORE" />
					<Property name="Corvette" value="" />
				  </Property>
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]

RevealPurpleSystemsOption =
[[<Property name="Options" value="GcAlienPuzzleOption">
					<Property name="Name" value="Reveal All Purple Star Systems" />
					<Property name="Text" value="" />
					<Property name="IsAlien" value="false" />
					<Property name="ResponseLanguageOverride" value="GcAlienRace">
						<Property name="AlienRace" value="None" />
					</Property>
					<Property name="Cost" value="PURP_COST" />
					<Property name="Rewards">
						<Property name="Rewards" value="R_OPENMAP" />
						<Property name="Rewards" value="R_PURPSYS" />
					</Property>
					<Property name="Mood" value="GcAlienMood">
						<Property name="Mood" value="Neutral" />
					</Property>
					<Property name="Prop" value="GcNPCPropType">
						<Property name="NPCProp" value="DontCare" />
					</Property>
					<Property name="OverrideWithAlienWord" value="false" />
					<Property name="AlienWordSpecificRace" value="GcAlienRace">
						<Property name="AlienRace" value="None" />
					</Property>
					<Property name="ReseedInteractionOnUse" value="false" />
					<Property name="KeepOpen" value="false" />
					<Property name="DisplayCost" value="true" />
					<Property name="TruncateCost" value="false" />
					<Property name="MarkInteractionComplete" value="true" />
					<Property name="NextInteraction" value="" />
					<Property name="SelectedOnBackOut" value="false" />
					<Property name="AudioEvent" value="GcAudioWwiseEvents">
						<Property name="AkEvent" value="UI_NEW_DISCOVERY" />
					</Property>
					<Property name="TitleOverride" value="" />
					<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
					<Property name="DisablingConditionTest" value="GcMissionConditionTest">
						<Property name="ConditionTest" value="AnyFalse" />
					</Property>
					<Property name="DisablingConditions" />
					<Property name="DisablingConditionId" value="" />
					<Property name="WordCategory" value="GcWordCategoryTableEnum">
						<Property name="wordcategorytableEnum" value="MISC" />
					</Property>
				</Property>]]

RevealPurpleSystemsReward =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
			<Property name="Id" value="R_PURPSYS" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardPurpleSystems">
							<Property name="GcRewardPurpleSystems">
								<Property name="Allow" value="true" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>]]

OpenGalaxyMapReward =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
			<Property name="Id" value="R_OPENMAP" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardForceOpenGalaxyMap">
							<Property name="GcRewardForceOpenGalaxyMap">
								<Property name="BlockWarp" value="true" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>]]

function AddActivateMission (RewardId, MissionID)
	return
	[[<Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]]..RewardId..[[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAllSilent" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMission">
              <Property name="GcRewardMission">
				  <Property name="Mission" value="]]..MissionID..[[" />
				  <Property name="SetAsSelected" value="false" />
				  <Property name="Restart" value="false" />
				  <Property name="FailRewardIfMissionActive" value="true" />
				  <Property name="AlreadyActiveFailureMessage" value="" />
			  </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>]]
end

function Add2ItemMultiReward (Chance, Item1Type, Item1ID, Item1Amount, Item2Type, Item2ID, Item2Amount)
	return
	[[<Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..Chance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMultiSpecificItems">
              <Property name="GcRewardMultiSpecificItems">
				  <Property name="Silent" value="false" />
				  <Property name="Items">
					<Property name="Items" value="GcMultiSpecificItemEntry">
					  <Property name="MultiItemRewardType" value="]]..Item1Type..[[" />
					  <Property name="Id" value="]]..Item1ID..[[" />
					  <Property name="Amount" value="]]..Item1Amount..[[" />
					  <Property name="ProcTechGroup" value="" />
					  <Property name="ProcTechQuality" value="0" />
					  <Property name="IllegalProcTech" value="false" />
					  <Property name="SentinelProcTech" value="false" />
					  <Property name="AlsoTeachTechBoxRecipe" value="false" />
					  <Property name="ProcProdType" value="GcProceduralProductCategory">
						<Property name="ProceduralProductCategory" value="Loot" />
					  </Property>
					  <Property name="ProcProdRarity" value="GcRarity">
						<Property name="Rarity" value="Common" />
					  </Property>
					  <Property name="CommunityTierProductList" />
					  <Property name="HideInSeasonRewards" value="false" />
					  <Property name="SeasonRewardListFormat" value="" />
					  <Property name="CustomRewardLocID" value="" />
					</Property>
					<Property name="Items" value="GcMultiSpecificItemEntry">
					  <Property name="MultiItemRewardType" value="]]..Item2Type..[[" />
					  <Property name="Id" value="]]..Item2ID..[[" />
					  <Property name="Amount" value="]]..Item2Amount..[[" />
					  <Property name="ProcTechGroup" value="" />
					  <Property name="ProcTechQuality" value="0" />
					  <Property name="IllegalProcTech" value="false" />
					  <Property name="SentinelProcTech" value="false" />
					  <Property name="AlsoTeachTechBoxRecipe" value="false" />
					  <Property name="ProcProdType" value="GcProceduralProductCategory">
						<Property name="ProceduralProductCategory" value="Loot" />
					  </Property>
					  <Property name="ProcProdRarity" value="GcRarity">
						<Property name="Rarity" value="Common" />
					  </Property>
					  <Property name="CommunityTierProductList" />
					  <Property name="HideInSeasonRewards" value="false" />
					  <Property name="SeasonRewardListFormat" value="" />
					  <Property name="CustomRewardLocID" value="" />
					</Property>
				  </Property>
			  </Property>
            </Property>
          </Property>]]
end

function AddUpgrade(UpgradeGroup, NormalChance, RareChance, EpicChance, LegendChance)
    return
	[[<Property name="List" value="GcRewardTableItem">
                <Property name="PercentageChance" value="100.000000" />
				<Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardProcTechProduct">
                  <Property name="GcRewardProcTechProduct">
					  <Property name="Group" value="]]..UpgradeGroup..[[" />
					  <Property name="WeightedChanceNormal" value="]]..NormalChance..[[" />
					  <Property name="WeightedChanceRare" value="]]..RareChance..[[" />
					  <Property name="WeightedChanceEpic" value="]]..EpicChance..[[" />
					  <Property name="WeightedChanceLegendary" value="]]..LegendChance..[[" />
					  <Property name="ForceRelevant" value="false" />
					  <Property name="ForceQualityRelevant" value="false" />
					  <Property name="AllowAnyGroup" value="false" />
				  </Property>
                </Property>
              </Property>]]
end

function AddTechForShip (TechId, Amount)
	return
	[[<Property name="Slots" value="GcInventoryElement" _id="]]..TechId..[[">
                    <Property name="Type" value="GcInventoryType">
                      <Property name="InventoryType" value="Technology" />
                    </Property>
                    <Property name="Id" value="]]..TechId..[[" />
                    <Property name="Amount" value="]]..Amount..[[" />
                    <Property name="MaxAmount" value="]]..Amount..[[" />
                    <Property name="DamageFactor" value="0" />
                    <Property name="FullyInstalled" value="true" />
					<Property name="AddedAutomatically" value="false" />
                    <Property name="Index" value="GcInventoryIndex">
                      <Property name="X" value="-1" />
                      <Property name="Y" value="-1" />
                    </Property>
                  </Property>]]
end

ExpShipCoreTechs =
{"SHIPSHIELD", "HYPERDRIVE", "LAUNCHER", "SHIPJUMP1", }

ExpShipCoreTechsAlien =
{"SHIELD_ALIEN", "WARP_ALIEN", "LAUNCHER_ALIEN", "SHIPJUMP_ALIEN", "SHIPGUN_ALIEN", "SHIPLAS_ALIEN"}

ExpShipRewardIds =
{	--RewardId			Unit cost		Fighter, Hauler, Explorer, Exotic, or Alien
	{"RS_S1_SHIP", 		6000000,		"Fighter"},
	{"RS_S1_COMPLETE", 	0,				"Fighter"},
	{"RS_S9_SHIP", 		6000000,		"Fighter"},
	{"RS_S9_COMPLETE",	0,				"Fighter"},
	{"RS_S12_SHIP", 	6000000,		"Exotic"},
	{"RS_S12_COMPLETE", 0,				"Exotic"},
	{"R_TGA_SHIP01", 	6000000,		"Exotic"},
	{"RS_S13_SHIP", 	6000000,		"Hauler"},
	{"RS_S13_COMPLETE", 0,				"Hauler"},
	{"RS_S16_SHIP", 	6000000,		"Explorer"},
	{"RS_S16_COMPLETE", 0,				"Explorer"},
	{"RS_S17_SHIP", 	8000000,		"Alien"},
	{"RS_S17_COMPLETE", 0,				"Alien"},
}

ExpStaffRewardIds =
{"RS_S12_PHASE3", "RS_S12_STAFF", "RS_S17_PHASE4", "RS_S17_STAFF", "RS_S18_PHASE3", "RS_S18_STAFF"}

TeachPellets =
[[<Property name="List" value="GcRewardTableItem">
                <Property name="PercentageChance" value="100.000000" />
				<Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardSpecificProductRecipe">
                  <Property name="GcRewardSpecificProductRecipe">
					  <Property name="ID" value="BAIT_BASIC" />
					  <Property name="Silent" value="false" />
					  <Property name="HideInSeasonRewards" value="false" />
					  <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
				  </Property>
                </Property>
              </Property>]]

MemFragOutlierTechs =
{"UP_T_JET", "UP_STRONGLASER", "UP_T_MINER", "UP_T_LAUNCHCHAR"}

MinableObjects =
{
	"DE_PLANT_SMALL", "DE_PLANT_MED", "DE_PLANT_LARGE", "DE_WATERPLANT_S", "DE_WATERPLANT_M", "DE_WATERPLANT_L", "DE_ROCK_SMALL", "DE_ROCK_MED", "DE_ROCK_LARGE", "DE_GEM_R_SMALL", "DE_GEM_R_MED", "DE_GEM_R_LARGE", "DE_GEM_B_SMALL", "DE_GEM_B_MED", "DE_GEM_B_LARGE", "DE_GEM_Y_SMALL", "DE_GEM_Y_MED", "DE_GEM_Y_LARGE", "DE_GEM_S_SMALL", "DE_GEM_S_LARGE", "DE_CAVE_MED", "DE_CAVE_LARGE", "DE_WATER_MED", "DE_WATER_LARGE", "DE_RARE_HOT", "DE_RARE_RADIO", "DE_RARE_COLD", "DE_RARE_GOLD", "DE_RARE_ROLLER", "DE_SCRAP_PART", 
	"DE_TENTACLE", "DE_SPOREVENT", "DE_FLYTRAP", "DE_GAS_PLANT", 
}

CrashsiteTechRewards =
{
	"FOURTH_CRA_OPT_B_17", "FOURTH_CRA_OPT_B_15", "FOURTH_CRA_OPT_B_11", "FOURTH_CRA_OPT_A_9", "FOURTH_CRA_OPT_A_5", "FOURTH_CRA_OPT_A_4", "FOURTH_CRA_OPT_B_2", "WAR_CRA_OPT_A_20", "WAR_CRA_OPT_A_15", "WAR_CRA_OPT_A_12", "WAR_CRA_OPT_B_11", "WAR_CRA_OPT_A_11", "WAR_CRA_OPT_B_10", "WAR_CRA_OPT_A_10", "WAR_CRA_OPT_B_9", "WAR_CRA_OPT_A_9", "WAR_CRA_OPT_B_8", "WAR_CRA_OPT_B_7", "WAR_CRA_OPT_A_7", "WAR_CRA_OPT_A_6", "WAR_CRA_OPT_B_5", "WAR_CRA_OPT_A_5", "WAR_CRA_OPT_A_4", "WAR_CRA_OPT_B_3", "WAR_CRA_OPT_B_2", "WAR_CRA_OPT_B_1", "WAR_CRA_OPT_A_1", "EXP_CRA_OPT_A_20", "EXP_CRA_OPT_A_16", "EXP_CRA_OPT_A_15", "EXP_CRA_OPT_B_10", "EXP_CRA_OPT_B_9", "EXP_CRA_OPT_A_8", "EXP_CRA_OPT_B_7", "EXP_CRA_OPT_A_7", "EXP_CRA_OPT_A_6", "EXP_CRA_OPT_B_5", "EXP_CRA_OPT_A_5", "EXP_CRA_OPT_B_4", "EXP_CRA_OPT_B_3", "EXP_CRA_OPT_A_3", "EXP_CRA_OPT_B_2", "EXP_CRA_OPT_A_2", "EXP_CRA_OPT_B_1", "EXP_CRA_OPT_A_1", "TRA_CRA_OPT_A_20", "TRA_CRA_OPT_B_16", "TRA_CRA_OPT_A_15", "TRA_CRA_OPT_B_14", "TRA_CRA_OPT_A_12", "TRA_CRA_OPT_A_10", "TRA_CRA_OPT_A_8", "TRA_CRA_OPT_A_7", "TRA_CRA_OPT_A_6", "TRA_CRA_OPT_B_5", "TRA_CRA_OPT_A_5", "TRA_CRA_OPT_B_4", "TRA_CRA_OPT_A_4", "TRA_CRA_OPT_B_3", "TRA_CRA_OPT_A_3", "TRA_CRA_OPT_B_2", "TRA_CRA_OPT_A_2", "TRA_CRA_OPT_B_1", "TRA_CRA_OPT_A_1", 
	"FOURTH_CRA_OPT_A_6", 
}

AddedSuspiciousPacketTechs =
{
	"U_LAUNCHX", "U_EXO_ENG1", "U_EXO_ENG2", "U_EXO_ENG3", "U_EXO_ENG4", "U_EXOBOOST1", "U_EXOBOOST2", "U_EXOBOOST3", "U_EXOBOOST4", "U_EXO_SUB1", "U_EXO_SUB2", "U_EXO_SUB3", "U_EXO_SUB4", "U_EXOLAS1", "U_EXOLAS2", "U_EXOLAS3", "U_EXOLAS4", "U_MECH_ENG2", "U_MECH_ENG3", "U_MECH_ENG4", "U_MECHLAS2", "U_MECHLAS3", "U_MECHLAS4", 
}

AddedSuspiciousPacketWeaps =
{
	"U_EXOGUN1", "U_EXOGUN2", "U_EXOGUN3", "U_EXOGUN4", "U_EXO_SUBGUN1", "U_EXO_SUBGUN2", "U_EXO_SUBGUN3", "U_EXO_SUBGUN4", "U_MECHFLAME2", "U_MECHFLAME3", "U_MECHFLAME4", "U_MECHGUN2", "U_MECHGUN3", "U_MECHGUN4", 
}

OldFreighterUpgradeCategories =
{
	"FreighterTechHyp", "FreighterTechSpeed", "FreighterTechFuel", "FreighterTechTrade", "FreighterTechCombat", "FreighterTechMine", "FreighterTechExp", 
}

FreighterUpgradeGroups =
{
	"UT_FR_HYP_NAME", "UT_FR_SPEED_NAME", "UT_FR_FUEL_NAME", "UT_FR_COM_NAME", "UT_FR_TRADE_NAME", "UT_FR_EXP_NAME", "UT_FR_MINE_NAME", 
}

function AresCostId (Number)
    return
[[C_NEXMILE_]]..Number..[[B]]
end

function AresRewardId (Number)
    return
[[R_DM_NEXMILES_]]..Number..[[]]
end


AbandModeTeachCreaPellet =
[[<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="1000.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificProductRecipeFromList">
							<Property name="GcRewardSpecificProductRecipeFromList">
								<Property name="FailIfAllKnown" value="true" />
								<Property name="ProductList">
									<Property name="ProductList" value="BAIT_BASIC" _index="0" />
								</Property>
								<Property name="ProductListRewardOrder" value="InOrder" />
							</Property>
						</Property>
					</Property>]]

--AbandModeTeachCreaPellet =
--[[<Property name="List" value="GcRewardTableItem">
                <Property name="PercentageChance" value="1000.000000" />
				<Property name="LabelID" value="" />
                <Property name="Reward" value="GcRewardSpecificProductRecipe">
                  <Property name="GcRewardSpecificProductRecipe">
					  <Property name="ID" value="BAIT_BASIC" />
					  <Property name="Silent" value="false" />
					  <Property name="HideInSeasonRewards" value="false" />
					  <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
				  </Property>
                </Property>
              </Property>]]


function AbandModeRewardOverride (NewRewardID)
    return
[[<Property name="RewardOverrideTable" value="GcRewardMissionOverride">
						<Property name="Mission" value="ABAND_DUMMY" />
						<Property name="Reward" value="]]..NewRewardID..[[" />
						<Property name="ForceLocalMissionSelection" value="" />
					</Property>]]
end

AddNewAbandLootbox1 =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry" _id="ABAND_LOOTBOX_X1">
			<Property name="Id" value="ABAND_LOOTBOX_X1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectAlways" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="20.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardProcTechProduct">
							<Property name="GcRewardProcTechProduct">
								<Property name="Group" value="" />
								<Property name="WeightedChanceNormal" value="70" />
								<Property name="WeightedChanceRare" value="20" />
								<Property name="WeightedChanceEpic" value="10" />
								<Property name="WeightedChanceLegendary" value="5" />
								<Property name="ForceRelevant" value="true" />
								<Property name="ForceQualityRelevant" value="false" />
								<Property name="AllowAnyGroup" value="true" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="10.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificProductRecipeFromList">
							<Property name="GcRewardSpecificProductRecipeFromList">
								<Property name="FailIfAllKnown" value="true" />
								<Property name="ProductList">
									<Property name="ProductList" value="ATLAS_SEED_1" _index="0" />
									<Property name="ProductList" value="ATLAS_SEED_2" _index="1" />
									<Property name="ProductList" value="ATLAS_SEED_3" _index="2" />
									<Property name="ProductList" value="ATLAS_SEED_4" _index="3" />
									<Property name="ProductList" value="ATLAS_SEED_5" _index="4" />
									<Property name="ProductList" value="ATLAS_SEED_6" _index="5" />
									<Property name="ProductList" value="ATLAS_SEED_7" _index="6" />
									<Property name="ProductList" value="ATLAS_SEED_8" _index="7" />
									<Property name="ProductList" value="ATLAS_SEED_9" _index="8" />
									<Property name="ProductList" value="ATLAS_SEED_10" _index="9" />
								</Property>
								<Property name="ProductListRewardOrder" value="InOrder" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>]]

AddNewAbandLootbox =
[[<Property name="GenericTable" value="GcGenericRewardTableEntry" _id="ABAND_LOOTBOX_X">
			<Property name="Id" value="ABAND_LOOTBOX_X" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectFromSuccess" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="1000.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificProductRecipeFromList">
							<Property name="GcRewardSpecificProductRecipeFromList">
								<Property name="FailIfAllKnown" value="true" />
								<Property name="ProductList">
									<Property name="ProductList" value="BAIT_BASIC" _index="0" />
								</Property>
								<Property name="ProductListRewardOrder" value="InOrder" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="10.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificTechFromList">
							<Property name="GcRewardSpecificTechFromList">
								<Property name="TechList">
									<Property name="TechList" value="DISCORDKEY" _index="0" />
								</Property>
								<Property name="FailIfAllKnown" value="true" />
								<Property name="TechListRewardOrder" value="InOrder" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="0.100000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardProcTechProduct">
							<Property name="GcRewardProcTechProduct">
								<Property name="Group" value="" />
								<Property name="WeightedChanceNormal" value="75" />
								<Property name="WeightedChanceRare" value="15" />
								<Property name="WeightedChanceEpic" value="7" />
								<Property name="WeightedChanceLegendary" value="3" />
								<Property name="ForceRelevant" value="true" />
								<Property name="ForceQualityRelevant" value="false" />
								<Property name="AllowAnyGroup" value="true" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\TABLES\NPCMISSIONTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the PirateMissionChanges at the bottom of this script
		}
	},
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
	["MXML_CHANGE_TABLE"]	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD_OPTION"]  = "ADDafterSECTION",  
				["ADD"] = AddActivateMission ("R_RESTART_LIS", "ABAND_HANDIN"),		--Adds a reward which can be used in "PTSd Resource + Product + Construction Rebalance.lua" for restarting the "Lost in Space" mission if it fails to spawn / disappears due to a vanilla bug, which otherwise would prevent you from turning in Crew Manifests / Captain's logs for rewards.
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FTH_USEFUL_PROD",	"ID","TECHBOX"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	TravTechChance},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","HYPER"},
				["PRECEDING_KEY_WORDS"] = {"List"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	AtlasOrbReward}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "HYPER",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",  
				["ADD"] = CurrencyReward ("Nanites", AtlasOrbNanites, AtlasOrbNanites, "100"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY1","Reward","GcRewardMoney"},
				["MATH_OPERATION"] 		= "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateBounty1},
					{"AmountMax",	PirateBounty1} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY2","Reward","GcRewardMoney"},
				["MATH_OPERATION"] 		= "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateBounty2}, 
					{"AmountMax",	PirateBounty2} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY3","Reward","GcRewardMoney"},
				["MATH_OPERATION"] 		= "*", 
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateBounty3}, 
					{"AmountMax",	PirateBounty3} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_DEFEND_RAID","Reward","GcRewardMoney"},
				["MATH_OPERATION"] 		= "*", 
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	PirateRaidDefenseRewardMult}, 
					{"AmountMax",	PirateRaidDefenseRewardMult} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_WAYPOINT",		"Currency", "Nanites"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	WaypointNanites},
					{"AmountMax",	WaypointNanites}
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
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CrewManGuildStand},
					{"AmountMax",	CrewManGuildStand}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CAPT_GUILD"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CaptLogGuildStand},
					{"AmountMax",	CaptLogGuildStand}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NPC_VEHICLE16S"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	ExocraftMinUnits},
					{"AmountMax",	ExocraftMaxUnits}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NPC_VEHICLE16S",		"List", "GcRewardTableItem"},
				["ADD"] = CurrencyReward ("Nanites", ExocraftMinNanites, ExocraftMaxNanites, "100.000000"),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_INVBOX",		"List", "GcRewardTableItem"},
				["ADD"] = InvBoxBulkheadReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_TECHBOX",	"Reward", "GcRewardProcTechProduct"},
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
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MemFragProcLauncherChanceMult},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_CARGOSHIELD"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicNeural},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_LAUNCHCHARGE"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicChloroplast},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_SHIPSCAN"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicWormhole},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_WATERLAND"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicWaterLand},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ALIEN_TECH",	"ID", "UA_TELEPORT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PsychonicTeleport},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CREW_GUILD",		"List", "GcRewardTableItem"},
				["ADD"] = CrewManGuildUnitReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CAPT_GUILD",		"List", "GcRewardTableItem"},
				["ADD"] = CaptLogGuildUnitReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_LOW"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	LowStandingReward},
					{"AmountMax",	LowStandingReward}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_MED"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	MedStandingReward},
					{"AmountMax",	MedStandingReward}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_HIGH"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	HighStandingReward},
					{"AmountMax",	HighStandingReward}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_GUILD"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	GuildStandingReward},
					{"AmountMax",	GuildStandingReward}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_PIRATE"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	OutlawMissStandReward},
					{"AmountMax",	OutlawMissStandReward}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_END_NAN"},
				["MATH_OPERATION"] 		= "*", 
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	DerelictNaniteRewardMult},
					{"AmountMax",	DerelictNaniteRewardMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_END_CV",		"List", "GcRewardTableItem"},
				["SECTION_ACTIVE"] = {0,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DerelictGoodCorvChance},
				}
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
				["SPECIAL_KEY_WORDS"] = {
					{"Id","R_CREW_SHADY"}, {"Id","R_CAPT_SHADY"}
				},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"DisableMultiplier",	ScrapTaintIgnoreNatResSetting}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_SPACEBIGGS",		"List", "GcRewardTableItem"},
				["SECTION_ACTIVE"] = {0,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DerCorvProceduralLootChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_SPACEBIGGS",		"List", "GcRewardTableItem"},
				["SECTION_ACTIVE"] = {1,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	DerCorvGoodModuleMin},
					{"AmountMax",	DerCorvGoodModuleMax}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_SPACEBIGGS",		"List", "GcRewardTableItem"},
				["SECTION_ACTIVE"] = {2,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	DerCorvOKModuleMin},
					{"AmountMax",	DerCorvOKModuleMax}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TRADERLOOT",	"Group","SHIPJUMP_NAME_L"},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TRADERLOOT",	"Group","SHIPSHIELD_NAME_L"},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_QUEEN"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"GiveFirst_ThenAlsoSelectAlwaysFromRest"} 		--"TryEachSilent"
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_QUEEN",		"List", "GcRewardTableItem"},
				["ADD"] = NewQueenLoot,
				["ADD_OPTION"] = "ADDBEFORESECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_JELLYBOSS",		"List", "GcRewardTableItem"},
				["ADD"] = ProductReward (GuardianLoot1, GuardianLoot1Min, GuardianLoot1Max, 100),
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_JELLYBOSS",		"List", "GcRewardTableItem"},
				["ADD"] = ProductReward (GuardianLoot2, GuardianLoot2Min, GuardianLoot2Max, 100),
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_STONE_EYE",		"List", "GcRewardTableItem"},
				["ADD"] = SubstanceReward (NewVigilantEyeItem, NewVigilantEyeItemAmount, NewVigilantEyeItemAmount, "100.000000"),
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DE_STONE_EYE",	"ID", "STONE_EYE_PROD"},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddWholeNewItemReward ("GOLEM_MECH", "GiveAll", GolemMechItemChance, "Product", GolemMechItem, GolemMechItemAmountMin, GolemMechItemAmountMax),
				["ADD_OPTION"]  = "ADDafterSECTION", 
			},
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddWholeNewItemReward ("GOLEM_FLOAT", "GiveAll", GolemFloatItemChance, "Product", GolemFloatItem, GolemFloatItemAmountMin, GolemFloatItemAmountMax),
				["ADD_OPTION"]  = "ADDafterSECTION", 
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","GOLEM_MECH",		"List", "GcRewardTableItem"},
				["ADD"] = SubstanceReward ("RUINSUB", 32, 84, "100.000000"),
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","GOLEM_FLOAT",		"List", "GcRewardTableItem"},
				["ADD"] = SubstanceReward ("RUINSUB", 16, 32, "100.000000"),
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","GOLEM_MECH",		"ID", "RUINSUB"},
				["MATH_OPERATION"]         = "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	GolemPolishedStoneMult}, 
					{"AmountMax",	GolemPolishedStoneMult} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","GOLEM_FLOAT",		"ID", "RUINSUB"},
				["MATH_OPERATION"]         = "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	GolemPolishedStoneMult}, 
					{"AmountMax",	GolemPolishedStoneMult} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DRONE_LOOT",		"List", "GcRewardTableItem"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DroneGlassDropChance}, 
					{"AmountMin",	DroneGlassMin}, 
					{"AmountMax",	DroneGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","QUAD_LOOT",		"List", "GcRewardTableItem"},
				["ADD"] = GlassDrop,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","QUAD_LOOT","ID","SENTINEL_LOOT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	QuadGlassDropChance}, 
					{"AmountMin",	QuadGlassMin}, 
					{"AmountMax",	QuadGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MECH_LOOT",		"List", "GcRewardTableItem"},
				["ADD"] = GlassDrop,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","MECH_LOOT","ID","SENTINEL_LOOT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	MechGlassDropChance}, 
					{"AmountMin",	MechGlassMin}, 
					{"AmountMax",	MechGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT",		"List", "GcRewardTableItem"},
				["ADD"] = GlassDrop,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT","ID","SENTINEL_LOOT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	WalkerGlassDropChance}, 
					{"AmountMin",	WalkerGlassMin}, 
					{"AmountMax",	WalkerGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_HIVESUB","ID","SENTINEL_LOOT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	PillarGlassDropChance}, 
					{"AmountMin",	PillarGlassMin}, 
					{"AmountMax",	PillarGlassMax} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAPHEAP","ID","CHART_HIVE"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SalvageSentMapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAPHEAP",	"List","GcRewardTableItem"},
				["SECTION_ACTIVE"] = {0,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ScrapCoreScrapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAPHEAP",	"List","GcRewardTableItem"},
				["SECTION_ACTIVE"] = {1,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ScrapCoreGoodCorvChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAPHEAP",	"List","GcRewardTableItem"},
				["SECTION_ACTIVE"] = {2,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ScrapCoreOKCorvChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SCRAP_PART",	"List","GcRewardTableItem"},
				["SECTION_ACTIVE"] = {1,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ScrapCaseGoodCorvChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SCRAP_PART",	"List","GcRewardTableItem"},
				["SECTION_ACTIVE"] = {2,},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ScrapCaseOKCorvChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SCRAP_PART",		"List", "GcRewardTableItem"},
				["ADD"] = ProceduralProductReward ("Salvage", "false", "Common", ExtraScrapChance),
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SCRAP_PART",	"ID","LAND1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	SalvageScrapSubstance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SCRAP_PART",	"ID",SalvageScrapSubstance},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	SalvageScrapSubAmountMult}, 
					{"AmountMax",	SalvageScrapSubAmountMult}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","SPIDER_LOOT","ID","CHART_ROBOT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SpiderMapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_MINIHIVE","ID","CHART_ROBOT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DisResMapChance}, 
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SENT_LOOT",	"ID","U_SENTGUN"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SentGunChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SENT_LOOT",	"ID","U_SENTSUIT"},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SentSuitChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_DEFEND_RAID",		"List", "GcRewardTableItem"},
				["ADD"] = CurrencyReward("Nanites", PirateRaidDefenseNanitesMin, PirateRaidDefenseNanitesMax, PirateRaidDefenseNanitesChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","POLICELOOT",		"List", "GcRewardTableItem"},
				["ADD"] = ProductReward("FRIG_BOOST_COM", PoliceFrigComMin, PoliceFrigComMax, PoliceFrigComChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SAVED",		"List", "GcRewardTableItem"},
				["ADD"] = CurrencyReward("Units", FreighterRescueUnitsMin, FreighterRescueUnitsMax, FreighterRescueUnitsChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SAVED",		"List", "GcRewardTableItem"},
				["ADD"] = ProductReward("FRIG_TOKEN", FreighterRescueFrigModMin, FreighterRescueFrigModMax, FreighterRescueFrigModChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_PIR_FREI"},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"GiveFirst_ThenAlsoSelectAlwaysFromRest"},
					{"FreighterTechQualityOverride",	FreighterLootTechQualityOverride}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_PIR_FREI",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDbeforeSECTION", 
				["ADD"] = Add2ItemMultiReward ("0", "Product", GuaranteedFreighterLoot1, GuaranteedFreighterLoot1Amount, "Product", GuaranteedFreighterLoot2, GuaranteedFreighterLoot2Amount),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CIV_SAVED_SM",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION", 
				["ADD"] = CurrencyReward ("Nanites", "200", "250", "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CIV_SAVED_SM",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward(CivSavedSmallItemID, CivSavedSmallItemCount, CivSavedSmallItemCount, "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CIV_SAVED_LG",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward(CivSavedLargeItemID1, CivSavedLargeItemCount1, CivSavedLargeItemCount1, "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_CIV_SAVED_LG",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward(CivSavedLargeItemID2, CivSavedLargeItemCount2, CivSavedLargeItemCount2, "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_PIR_TRIBUTE",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION", 
				["ADD"] = CurrencyReward ("Nanites", "400", "500", "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_PIR_TRIBUTE",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward("FRIG_TOKEN", DreadTributeFrigModMin, DreadTributeFrigModMax, "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_PIR_TRIBUTE",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward("FREI_INV_TOKEN", DreadTributeBulkheadMin, DreadTributeBulkheadMax, "100.000000"),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NAVDATA_RARE",	"ID","NAV_DATA_DROP"},
				["SECTION_UP"] = 2,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ADSExosuitChartChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","NAVDATA_RARE",	"ID","NAV_DATA"},
				["SECTION_UP"] = 2,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	ADSNavDataChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_COLD"},
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
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 2,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	MetalFingerGold},
					{"AmountMax",	MetalFingerGold}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_GOLD",	"ID","RADIO1"},
				["MATH_OPERATION"] 		= "*",
				["SECTION_UP"] = 2,
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
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	GassyPods},
					{"AmountMax",	GassyPods}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_FOOD_HEALTH"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	SimpleFoodHealth},
					{"AmountMax",	SimpleFoodHealth}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_FOOD_HEALTH2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	GoodFoodHealth},
					{"AmountMax",	GoodFoodHealth}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_SPHERE",	"Rare","GcRewardTableCategory",	"Medium","GcRewardTableItemList",		"List", "GcRewardTableItem"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	AlbumenPearlWildChance},
					{"AmountMin",	AlbumenPearlWildAmount},
					{"AmountMax",	AlbumenPearlWildAmount}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PLANT_PEARL",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(AlbumenPearlFarmNanitesChance, AlbumenPearlFarmNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PLANT_GRAV",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(GravitinoFarmNanitesChance, GravitinoFarmNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PLANT_SACVENOM",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(SacVenomFarmNanitesChance, SacVenomFarmNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_OBJECT"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"GiveAll"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_OBJECT",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(GravitinoWildNanitesChance, GravitinoWildNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			--[[{
				["SPECIAL_KEY_WORDS"] = {"Id","RARE_SPHERE",	"Rare","GcRewardTableCategory",	"Large","GcRewardTableItemList",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(VortexCubeNanitesChance, VortexCubeNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},]]
			--Try this if the above one doesn't work
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RARE_CAVE",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(VortexCubeNanitesChance, VortexCubeNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_STORMCRYSTAL",		"List", "GcRewardTableItem"},
				["ADD"] = CropNanites(StormCrystalNanitesChance, StormCrystalNanitesAmount),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "PLANTER_CARBON"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	StandingPlanterMult},
					{"AmountMax",	StandingPlanterMult},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "INTERIORPLANTS"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	InteriorPlantsMult},
					{"AmountMax",	InteriorPlantsMult},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","PROC_PROD_CHEST",		"List", "GcRewardTableItem"},
				["ADD"] = ExtraChestArtifact,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "STATION_S_DATA",	"Reward", "GcRewardMoney",		"AmountMin", "10"},
				["VALUE_MATCH"] 		= "Units",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Currency",	"Nanites"} 	
				}
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
				["SECTION_UP"] = 3,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_C",	"Rarity","Uncommon"},
				["REPLACE_TYPE"] 		= "ALL",
				["SECTION_UP"] = 3,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_C"},
				["REPLACE_TYPE"] 		= "ALL",

				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	"100"} 	
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_LIB_VAULT_U",	"Rarity","Uncommon"},
				["REPLACE_TYPE"] 		= "ALL",
				["SECTION_UP"] = 3,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","WORD",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddOneWord("None")
			},
			--[[
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_SEAHORROR"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ProceduralProductCategory",	SeaHorrorReward} 	
				}
			},
			]]
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_VENTGEM", "ID", "VENTGEM"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CrystalSulphide},
					{"AmountMax",	CrystalSulphide}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_GEODE_RARE", "ID", "VENTGEM"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	CrystalSulphideOther},
					{"AmountMax",	CrystalSulphideOther}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_FISHCORE", "ID", "FISHCORE"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	AlluringSpecHadalCore},
					{"AmountMax",	AlluringSpecHadalCore}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_FISHCORE",		"List", "GcRewardTableItem"},
				["ADD"] = NewAlluringSpecRewards,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","BP_SALVAGE", "ID", "BP_SALVAGE"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BuriedTechSalvageMin},
					{"AmountMax",	BuriedTechSalvageMax}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "RED2"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BreakTechAmountMult},
					{"AmountMax",	BreakTechAmountMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "RED2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	BreakTechRed}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "GREEN2"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BreakTechAmountMult},
					{"AmountMax",	BreakTechAmountMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "GREEN2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	BreakTechGreen}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "BLUE2"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	BreakTechAmountMult},
					{"AmountMax",	BreakTechAmountMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_BREAK_TECH", "ID", "BLUE2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	BreakTechBlue}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_LITTLEWRECK", "Reward", "GcRewardProceduralProduct"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	LittleWreckBrokTechChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_ABAND_CRATE", "ProceduralProductCategory", "DismantleTech"},
				["SECTION_UP"] = 3,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	AbandCrateBrokTechChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_ABAND_CRATE", "ProceduralProductCategory", "DismantleData"},
				["SECTION_UP"] = 3,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	AbandCrateDataRecordChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_ABAND_CRATE", "Reward", "GcRewardProcTechProduct"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	AbandCrateUpgradeChance},
					{"WeightedChanceNormal",	AbandCrateUpgradeChanceC},
					{"WeightedChanceRare",	AbandCrateUpgradeChanceB},
					{"WeightedChanceEpic",	AbandCrateUpgradeChanceA},
					{"WeightedChanceLegendary",	AbandCrateUpgradeChanceS},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddNewAbandLootbox,
				["ADD_OPTION"]  = "ADDafterSECTION", 
			},
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddNewAbandLootbox1,
				["ADD_OPTION"]  = "ADDafterSECTION", 
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_L",		"ID", "SUIT_INV_TOKEN"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ID",	"NAV_DATA_DROP"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = 
				{
					{"Id", "ABAND_LOOTBOX_L",		"List", "GcRewardTableItem"},
					{"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("SALVAGE_TECH3", 1, 2, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = 
				{
					{"Id", "ABAND_LOOTBOX_L",		"List", "GcRewardTableItem"},
					{"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("REPAIRKIT", 1, 1, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = 
				{
					{"Id", "ABAND_LOOTBOX_L",		"List", "GcRewardTableItem"},
					{"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("FIENDCORE", 1, 1, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = 
				{
					{"Id", "ABAND_LOOTBOX_L",		"List", "GcRewardTableItem"},
					{"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("POI_LOCATOR", 1, 1, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = 
				{
					{"Id", "ABAND_LOOTBOX_L",		"List", "GcRewardTableItem"},
					{"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("NAV_DATA", 1, 3, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_S",		"ProductList", "TRA_TECH5"},
				["SECTION_UP"] = 4,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	25}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_S",		"Reward", "GcRewardProcTechProduct"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	20}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_L",		"Reward", "GcRewardProcTechProduct"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	20}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("SHIP_INV_TOKEN", 1, 1, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("WEAP_INV_TOKEN", 1, 1, 15.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("NAV_DATA_DROP", 1, 1, 15.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_X1",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward ("ABAND_LOCATOR", 1, 1, 10.000000),
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAP_GOODS", "Reward", "GcRewardProceduralProduct"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SusPacketGoodsBrokTechChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAP_TECH", "ProceduralProductCategory", "DismantleTech"},
				["SECTION_UP"] = 3,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SusPacketTechBrokTechChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAP_TECH", "ProceduralProductCategory", "DismantleData"},
				["SECTION_UP"] = 3,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SusPacketTechDataRecordChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_SCRAP_WEAP", "Reward", "GcRewardProceduralProduct"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	SusPacketArmsProcToolChance}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RUINPLANS"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"SelectFromSuccess"}	--"TryFirst_ThenSelectAlways"
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RUINPLANS", 		"Reward", "GcRewardSpecificProductRecipeFromList"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	1000},	--0.000000
					{"ProductListRewardOrder",	"InOrder"}	--"OneRandom"
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RUINPLANS",		"List", "GcRewardTableItem"},
				["ADD"] = ProceduralProductReward ("Loot", "true", "Common", MemStoneAltTreasureChanceWeight),
				["SECTION_UP"] = 1,
				["ADD_OPTION"] = "ADDendSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","DE_RUINPLANS",		"List", "GcRewardTableItem"},
				["ADD"] = CurrencyReward ("Nanites", math.floor(0.8*MemStoneNaniteAmount), math.floor(1.2*MemStoneNaniteAmount), MemStoneNaniteChanceWeight),
				["SECTION_UP"] = 1,
				["ADD_OPTION"] = "ADDendSECTION",
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
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TECHDEBRIS", 		"ID", "LAUNCHFUEL"},
				["SECTION_UP"] = 2,
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DmgMachFuelChance},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TECHDEBRIS", 		"Reward", "GcRewardMoney"},
				["SECTION_UP"] = 1,
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	DmgMachNaniteChance},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = RevealPurpleSystemsReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = OpenGalaxyMapReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DE_ABAND_CRATE",	"List", "GcRewardTableItem"},
				["ADD"] = AbandModeTeachCreaPellet,
				["ADD_OPTION"]  = "ADDbeforeSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DE_ABAND_CRATE"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"SelectFromSuccess"}
				}
			},
			--[[
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_S",	"List", "GcRewardTableItem"},
				["ADD"] = AbandModeTeachCreaPellet,
				["ADD_OPTION"]  = "ADDbeforeSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_LOOTBOX_S"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RewardChoice",	"SelectFromSuccess"}
				}
			},
			]]
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "FTH_NPC_OPT_B_16"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost",	TravellerNaniteCost}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "FTH_REQUEST_DIRECTIONS"},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost",	TravellerNaniteCost}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "UI_PIR_SURRENDER_OPT_A"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost",	DreadnoughtClaimCost},
					{"MarkInteractionComplete",	"true"}		--"true"
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "ALL_OFFER_NANITES"},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "SEC_MONEY",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Rewards",	"TRAV_PACKAGE"}			--"SEC_MONEY"
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "ALL_FAC_REWARD_OPT_A"},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "TECHFRAG_M",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Rewards",	"TECHFRAG_XXX"}			--"TECHFRAG_XXX"
				}
			},
			--[[
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "%?DRONE_HIVE_COMBAT_SHUTDOWN"},
				--["VALUE_MATCH"] 		= "TECHFRAG_M",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ConditionTest",	HiveConditionTest},
					{"EnablingConditionId",	HiveEnablingConditionId}
				}
			},
			]]
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "WAR_CRA_OPT_B_3",		"Rewards", "PROC_TECH_WEAP"},
				["REMOVE"] = "LINE"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "FOURTH_CRA_OPT_B_11",		"Rewards", "PROC_TECH_SHIP"},
				["REMOVE"] = "LINE"
			}
		}
	},
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
	["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0",
				["VALUE_MATCH_OPTIONS"]     = ">",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionPosUnitsMultiplier}, 
					{"AmountMax",	ExpeditionPosUnitsMultiplier} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0",
				["VALUE_MATCH_OPTIONS"]     = "<",  
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionNegUnitsMultiplier}, 
					{"AmountMax",	ExpeditionNegUnitsMultiplier} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
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
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionSubstancesMultiplier}, 
					{"AmountMax",	ExpeditionSubstancesMultiplier} 
				}
			},
			{
				["SPECIAL_KEY_WORDS"]	= {"DefaultProductType", "None"},
				["SECTION_UP"]			= 1,
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionProductsMultiplier}, 
					{"AmountMax",	ExpeditionProductsMultiplier} 
				}
			},
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= {"0", "0.000000"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"AmountMin",	ExpeditionReward0Replacer}, 
					{"AmountMax",	ExpeditionReward0Replacer} 
				}
			},
			{
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= {"100", "100.000000"}, 
				["VALUE_MATCH_OPTIONS"] = "<",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PercentageChance",	ExpeditionRewardChanceMultiplierlessthan100},
				}
			},
			{
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= {"100", "100.000000"}, 
				["VALUE_MATCH_OPTIONS"] = "=",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PercentageChance",	ExpeditionRewardChanceMultiplier100},
				}
			},
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= {"0", "0.000000"}, 
				["VALUE_MATCH_OPTIONS"] = "=",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PercentageChance",	ExpeditionRewardChance0Replacer},
				}
			},
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_1",	"ID", "BLUE2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", IndiumReplacementAmountEasy},
					{"AmountMax", IndiumReplacementAmountEasy}
				}
			},
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_1",	"ID", "BLUE2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", IndiumReplacementAmount},
					{"AmountMax", IndiumReplacementAmount}
				}
			},
			{
				["REPLACE_TYPE"] 		= "ALL",
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
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				--["PRECEDING_KEY_WORDS"] = {"LinkableNMSTemplate.xml"},
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
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup",		"Id", "SENTINEL_LOOT"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentGlass}		--0
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup",		"Id", "WALKER_PROD"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentBrain}		--0
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup",		"Id", "DRONE_SALVAGE"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"OverrideAmount",	SentMirror}		--0
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Sentinels", "GcMaintenanceGroup",		"Id", "QUAD_PROD"},
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
		["MXML_CHANGE_TABLE"] 	= 
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
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"PreInstalledTech"},
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
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\TABLES\MISSIONTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_EXOTUT_LOOP"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	math.floor(1*ExocraftMinUnits)},
					{"AmountMax",	math.floor(1*ExocraftMaxUnits)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_EXOTUT_LOOP",		"List", "GcRewardTableItem"},
				["ADD"] = CurrencyReward ("Nanites", math.floor(1*ExocraftMinNanites), math.floor(1*ExocraftMaxNanites), "100.000000"),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\TABLES\RECURRINGMISSIONTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
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
				["SPECIAL_KEY_WORDS"] = {"Rewards","R_D_EXOTUT"},
				["ADD"] = AddedExocraftNPCMoneyID,
				["ADD_OPTION"]  = "ADDafterLINE",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT"},
				["ADD"] = AddedExocraftNPCMoney,
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT",		"List", "GcRewardTableItem"},
				["ADD"] = AddUpgrade("UI_MECH_LASER_NAME_L", "0", math.floor(ExoClassCChance+ExoClassBChance), ExoClassAChance, ExoClassSChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT",		"List", "GcRewardTableItem"},
				["ADD"] = AddUpgrade("UI_MECH_GUN_NAME_L", "0", math.floor(ExoClassCChance+ExoClassBChance), ExoClassAChance, ExoClassSChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","R_D_EXOTUT",		"List", "GcRewardTableItem"},
				["ADD"] = AddUpgrade("UI_MECH_ENGINE_NAME_L", "0", math.floor(ExoClassCChance+ExoClassBChance), ExoClassAChance, ExoClassSChance),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","NPC_NEXUSMILES_OPT_B"},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"KeepOpen",	"true"},			--Allows the player to continually trade items with Ares, like in Reikokuu & Babscoole's "Keep Gifting"
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SEAGLASSCRYSTAL.SCENE.MBIN"},
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxHeight", SeaGlassMinDepth}
				}
			}
		}
	},
	{--Used for 2/3 of vanilla Abandoned Station boxes
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLB_ABANDONED1/ENTITIES/CRATESMALLBABANDONED1.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["VALUE_MATCH"] 		= "ABAND_LOOTBOX_S",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Id", "ABAND_LOOTBOX_L"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"RewardOverrideTable", "GcRewardMissionOverride"},
				["ADD"] = AbandModeRewardOverride ("ABAND_LOOTBOX_X1"),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"UsePersonalPersistentBuffer",	"true"},			--"false"		Speculation: based on some otehr entities where this is set "true", maybe this sets the object to be recorded into a longer list of "already looted" objects in the save file, to make it take longer to "respawn"/"refill"?
				}
			}
		}
	},
	{--Used for 1/3 of vanilla Abandoned Station boxes
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLB_ABANDONED/ENTITIES/CRATESMALLBABANDONED.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"RewardOverrideTable", "GcRewardMissionOverride"},
				["ADD"] = AbandModeRewardOverride ("ABAND_LOOTBOX_X"),
				["ADD_OPTION"]  = "ADDafterSECTION",
			},
			{
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"UsePersonalPersistentBuffer",	"true"},			--"false"		Speculation: based on some otehr entities where this is set "true", maybe this sets the object to be recorded into a longer list of "already looted" objects in the save file, to make it take longer to "respawn"/"refill"?
				}
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/COMMON/ROBOTS/MECH/ENTITIES/RUINMECH.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"GivesReward", "GOLEM_MECH"},
				}
			},
			{
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMax", 0},
					{"AmountMin", 0},
				}
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/ENEMIES/GOLEM/GOLEM/ENTITIES/GOLEMDATA.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"GivesReward", "GOLEM_FLOAT"},
				}
			},
			{
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMax", 0},
					{"AmountMin", 0},
				}
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/RUINS/ENTITIES/RUINSRESOURCE.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SubstanceId", MemStoneCostSubstance},
					{"Cost", MemStoneCostAmount},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/RUINS/ENTITIES/RUINSSMALLPHYSICS.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["MATH_OPERATION"]         = "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["PRECEDING_KEY_WORDS"] = {"GivesSubstances"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", MinableSubstanceMult*RuinsExtraMiningMult},
					{"AmountMax", MinableSubstanceMult*RuinsExtraMiningMult},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/RUINS/ENTITIES/RUINSMEDIUMPHYSICS.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["MATH_OPERATION"]         = "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["PRECEDING_KEY_WORDS"] = {"GivesSubstances"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", MinableSubstanceMult*RuinsExtraMiningMult},
					{"AmountMax", MinableSubstanceMult*RuinsExtraMiningMult},
				}
			},
		}
	},
	
}}}}

local ChangesToPirateMissions = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #PirateMissionChanges do
	local Mission = PirateMissionChanges[i][1][1]
	local Rewards = PirateMissionChanges[i][2]

	for j = 1, #Rewards do
		local OldReward = Rewards[j][1]
		local NewReward = Rewards[j][2]

			ChangesToPirateMissions_temp =
			{
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

local ChangesToDialogPuzzle = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
if NoNewTechAtCrashsites then
for i = 1, #CrashsiteTechRewards do
	local PuzzleName = CrashsiteTechRewards[i]

			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"Name", PuzzleName,},
				["VALUE_MATCH"] 		= "{^PROC_TECH_.+}",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Rewards", "PROC_TECH_ONLY"}
				}
			}
end
end
if ReactorSalvage then
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "%?SHIP_SALVAGE_PROD_CHOICE",		"Options", "GcAlienPuzzleOption"},
				["ADD"] = SalvageExoticPuzzle,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
			
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "%?SHIP_SALVAGE_PROD_CHOICE",		"Options", "GcAlienPuzzleOption"},
				["ADD"] = SalvageShuttlePuzzle,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
end
if ReplaceTECH then
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["VALUE_MATCH"] 		= "TECH_ALL",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Rewards", "PROC_TECH_ALL"}
				}
			}
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["VALUE_MATCH"] 		= "TECH_SHIP",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Rewards", "PROC_TECH_SHIP"}
				}
			}
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["VALUE_MATCH"] 		= "TECH_SUIT",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Rewards", "PROC_TECH_SUIT"}
				}
			}
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["VALUE_MATCH"] 		= "TECH_WEAPON",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Rewards", "PROC_TECH_WEAP"}
				}
			}
end
if RevealPurpleSystemsEarly then
			ChangesToDialogPuzzle[#ChangesToDialogPuzzle+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "MONO_NUB_GUN",		"Options", "GcAlienPuzzleOption"},
				["ADD"] = RevealPurpleSystemsOption,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
end

local ChangesToExpeditionMetals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]

ChangesToExpeditionMetals[#ChangesToExpeditionMetals+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"DisableMultiplier", "false"},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", NonMinableSubstanceMult},
					{"AmountMax", NonMinableSubstanceMult}
				}
			}
for i = 1, #ExpeditionMetalChanges do
	local MetalID = ExpeditionMetalChanges[i][1]
	local MetalMult = ExpeditionMetalChanges[i][2]

			ChangesToExpeditionMetals[#ChangesToExpeditionMetals+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"ID", MetalID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", MetalMult},
					{"AmountMax", MetalMult}
				}
			}
end

local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

if ReactorSalvage then
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = ExoticSalvageReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
			
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = ShuttleSalvageReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
end
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"DisableMultiplier", "false"},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", NonMinableSubstanceMult},
					{"AmountMax", NonMinableSubstanceMult}
				}
			}
for i = 1, #MinableObjects do
	local ObjectID = MinableObjects[i]

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"ID", ObjectID,	"DisableMultiplier", "false"},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", MinableSubstanceMult/NonMinableSubstanceMult},
					{"AmountMax", MinableSubstanceMult/NonMinableSubstanceMult}
				}
			}
end
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
				["SPECIAL_KEY_WORDS"] = {"ShipType", "GcSpaceshipClasses"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SizeType", AllTwitchExpRewardsShipSize},
				}
			}

--[[ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"WeaponType", "GcWeaponClasses"},
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
				["SPECIAL_KEY_WORDS"] = {"ShipLayout", "GcInventoryLayout"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots", AllTwitchExpRewardsCargo}
				}
			}
			
ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"WeaponLayout", "GcInventoryLayout"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots", AllTwitchExpRewardsToolSlots}
				}
			}
end

for i = 1, #ExpShipRewardIds do
	local ShipRewardId = ExpShipRewardIds[i][1]
	local ShipUnitCost = ExpShipRewardIds[i][2]
	local Shiptype = ExpShipRewardIds[i][3]
	local Class = ExpShipClass
	local Slots = 8
	local Size = "FgtSmall"
	if Shiptype == "Fighter" then
		 Slots = ExpShipFighterCargoSlots
		 Size = ExpShipFighterTechSize
	elseif Shiptype == "Hauler" then
		 Slots = ExpShipHaulerCargoSlots
		 Size = ExpShipHaulerTechSize
	elseif Shiptype == "Explorer" then
		 Slots = ExpShipExplorerCargoSlots
		 Size = ExpShipExplorerTechSize
	elseif Shiptype == "Exotic" then
		 Slots = ExpShipExoticCargoSlots
		 Size = ExpShipExoticTechSize
	elseif Shiptype == "Alien" then
		 Slots = ExpShipAlienCargoSlots
		 Size = ExpShipAlienTechSize
	end

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", ShipRewardId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	Slots},
					{"InventoryClass",	Class},
					{"CostAmount",	ShipUnitCost},
					{"Currency",	"Units"},
					{"UseOverrideSizeType",	"true"},
					{"SizeType",	Size}
				}
			}
	
	if Shiptype == "Alien" then
		for j = 1, #ExpShipCoreTechsAlien do
			local TechId = ExpShipCoreTechsAlien[j]
			local Amount = 200
			if TechId == "WARP_ALIEN" then
				Amount = 120
			elseif TechId == "SHIPGUN_ALIEN" or TechId == "SHIPLAS_ALIEN" then
				Amount = 100
			else
				Amount = 200
			end
			
				ChangesToRewardTable[#ChangesToRewardTable+1] =
				{
					["SPECIAL_KEY_WORDS"] = {"Id", ShipRewardId,	"ShipInventory", "GcInventoryContainer",	"Id", TechId},
					["REMOVE"] = "SECTION",
				}
				ChangesToRewardTable[#ChangesToRewardTable+1] =
				{
					["SPECIAL_KEY_WORDS"] = {"Id", ShipRewardId,	"ShipInventory", "GcInventoryContainer",	"Slots", "GcInventoryElement"},
					["ADD_OPTION"]  = "ADDbeforeSECTION",  
					["ADD"] = AddTechForShip (TechId, Amount),
				}
		end
	else
		for j = 1, #ExpShipCoreTechs do
			local TechId = ExpShipCoreTechs[j]
			local Amount = 200
			if TechId == "HYPERDRIVE" then
				Amount = 120
			else
				Amount = 200
			end
			
				ChangesToRewardTable[#ChangesToRewardTable+1] =
				{
					["SPECIAL_KEY_WORDS"] = {"Id", ShipRewardId,	"ShipInventory", "GcInventoryContainer",	"Id", TechId},
					["REMOVE"] = "SECTION",
				}
				ChangesToRewardTable[#ChangesToRewardTable+1] =
				{
					["SPECIAL_KEY_WORDS"] = {"Id", ShipRewardId,	"ShipInventory", "GcInventoryContainer",	"Slots", "GcInventoryElement"},
					["ADD_OPTION"]  = "ADDbeforeSECTION",  
					["ADD"] = AddTechForShip (TechId, Amount),
				}
		end
	end
end

if RewardShipHyperdriveEmpty then

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ShipInventory", "GcInventoryContainer",		"Id", "HYPERDRIVE"},
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount",	"0"}		--"120"
				}
			}
end

for i = 1, #ExpStaffRewardIds do
	local StaffRewardId = ExpStaffRewardIds[i]

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", StaffRewardId},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slots",	ExpShipFighterCargoSlots},
					{"InventoryClass",	ExpShipClass},
				}
			}
end

if TeachCreaturePelletsEarly then

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "TUT_INGREDS",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = TeachPellets
			}
end

			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = PIRATLTEASYRewards,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = PIRATLTHARDRewards,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = ESCORTLOOTRewards,
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddWholeNewCurrencyReward ("TECHFRAG_XXX", "GiveAll", "100", "Nanites", FactoryMin, FactoryMax),
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = NewTravReward,
				["ADD_OPTION"]  = "ADDafterSECTION",
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
				["SPECIAL_KEY_WORDS"] = {"Id", GiftPool, "ID", OldItemID},
				["SECTION_UP"] = 2,
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
for i = 1, #DerelictSuppliesChanges do
	local SupplyId = DerelictSuppliesChanges[i][1][1]
	local Items = DerelictSuppliesChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", SupplyId, "ID", OldItemID},
				["SECTION_UP"] = 2,
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
for i = 1, #LittleWreckRewards do
	OldItemID = LittleWreckRewards[i][1]
	NewItemID = LittleWreckRewards[i][2]
	AmountMin = LittleWreckRewards[i][3]
	AmountMax = LittleWreckRewards[i][4]
	Chance = LittleWreckRewards[i][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DE_LITTLEWRECK", "ID", OldItemID},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance", Chance},
					{"ID", NewItemID},
					{"AmountMin", AmountMin},
					{"AmountMax", AmountMax}
				}
			}
end
for i = 1, #AddedSuspiciousPacketTechs do
	local TechID = AddedSuspiciousPacketTechs[i]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "R_SCRAP_TECH",		"List", "GcRewardTableItem"},
				["ADD"] = ProductReward (TechID, "1", "1", "100.000000"),
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
end
for i = 1, #AddedSuspiciousPacketWeaps do
	local TechID = AddedSuspiciousPacketWeaps[i]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "R_SCRAP_WEAP",		"List", "GcRewardTableItem"},
				["ADD"] = ProductReward (TechID, "1", "1", "100.000000"),
				["ADD_OPTION"]  = "ADDafterSECTION",
			}
end
for i = 1, #AbandCrateChanges do
	local RewardID = AbandCrateChanges[i][1][1]
	local Items = AbandCrateChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RewardID, "ID", OldItemID},
				["SECTION_UP"] = 2,
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
for i = 1, #SusPacketChanges do
	local PacketID = SusPacketChanges[i][1][1]
	local Items = SusPacketChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", PacketID, "ID", OldItemID},
				["SECTION_UP"] = 2,
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
for i = 1, #WeirdCreatureLootChanges do
	local CreatureID = WeirdCreatureLootChanges[i][1][1]
	local Items = WeirdCreatureLootChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", CreatureID, "ID", OldItemID},
				["SECTION_UP"] = 2,
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

if ReplaceVanillaFishNanites then
	for i = 1, #FishReleaseChanges do
		local FishQuality = FishReleaseChanges[i][1]
		local MinNanites = FishReleaseChanges[i][2]
		local MaxNanites = FishReleaseChanges[i][3]
		
				ChangesToRewardTable[#ChangesToRewardTable+1] =
				{
					["SPECIAL_KEY_WORDS"] = {"Id", FishQuality,		"List", "GcRewardTableItem"},
					["ADD"] = CurrencyReward ("Nanites", MinNanites, MaxNanites, "100.000000"),
					["ADD_OPTION"]  = "ADDafterSECTION",
				}
				
				ChangesToRewardTable[#ChangesToRewardTable+1] =
				{
					["SPECIAL_KEY_WORDS"] = {"Id", FishQuality,		"Reward", "GcRewardFishRelease"},
					["REMOVE"] = "SECTION",
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
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId,		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = PirateNanites(PirateNanitesMin, PirateNanitesMax)
			}
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId,		"List", "GcRewardTableItem"},
				["REMOVE"] = "SECTION"
			}
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId, "Reward", "GcRewardShield"},
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
				["SPECIAL_KEY_WORDS"] = {"Id", ShipId, "ID", OldItemID},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance", Chance},
					{"ID", NewItemID},
					{"AmountMin", math.floor(AmountMin)},
					{"AmountMax", math.floor(AmountMax)}
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
				["SECTION_UP"] = 3,
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
				["SPECIAL_KEY_WORDS"] = {"Id",PlaqueType,		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
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
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			}
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_BREAK_BIO",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = ProductReward (NewReward, math.floor(50*AmountMult), math.floor(120*AmountMult), "100.000000")
			}
end
for i = 1, #ResourceDepotChanges do
	local DepotId = ResourceDepotChanges[i][1][1]
	local Items = ResourceDepotChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", DepotId, "ID", OldItemID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["SECTION_UP"] = 2,
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
for i = 1, #CropYieldChanges do
	local PlantID = CropYieldChanges[i][1]
	local Chance = CropYieldChanges[i][2]
	local Amount = CropYieldChanges[i][3]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",PlantID},
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
				["SPECIAL_KEY_WORDS"] = {"Id",PlantID,		"List", "GcRewardTableItem"},
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

for i = 1, #PrimarySubstanceMults do
	local ObjectID = PrimarySubstanceMults[i][1]
	local SubID = PrimarySubstanceMults[i][2]
	local SubMult = PrimarySubstanceMults[i][3]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",ObjectID,		"ID", SubID},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin",	SubMult},
					{"AmountMax",	SubMult}
				}
			}
end

for i = 1, #SecondarySubstanceMults do
	local GroupID = SecondarySubstanceMults[i][1]
	local SubID = SecondarySubstanceMults[i][2]
	local AmountFactor = SecondarySubstanceMults[i][3]
	
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",GroupID,		"ID", SubID},
				--["SECTION_UP"] = 2,
				--["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountFactor",	AmountFactor}
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
				["SECTION_UP"] = 2,
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
				["REPLACE_TYPE"] 		= "ALL",
				["SECTION_UP"] = 3,
				["VALUE_MATCH"] 	= OldChance,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	NewChance},
				}
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",CrashType,	"Currency", OldCurrency},
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
				["VALUE_MATCH"] 	= OldCurrency,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Currency",	NewCurrency},
				}
			}
	end
end
for i = 1, #DreadnoughtBattleRewardChanges do
	local RewardType = DreadnoughtBattleRewardChanges[i][1][1]
	local Items = DreadnoughtBattleRewardChanges[i][2]
	
	for j=1, #Items do
		Currency = Items[j][1]
		AmountMin = Items[j][2]
		AmountMax = Items[j][3]
		Chance = Items[j][4]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"Currency", Currency},
				["SECTION_UP"] = 3,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end
for i = 1, #NewBossFreighterPartsLoot do
	local RewardId = NewBossFreighterPartsLoot[i][1]
	local Chance = NewBossFreighterPartsLoot[i][2]
	local ItemId = NewBossFreighterPartsLoot[i][3]
	local ItemType = NewBossFreighterPartsLoot[i][4]
	local AmountMin = NewBossFreighterPartsLoot[i][5]
	local AmountMax = NewBossFreighterPartsLoot[i][6]
	
		if ItemType == "Product" or ItemType == "Substance" then
		ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddWholeNewItemReward (RewardId, "GiveAll", Chance, ItemType, ItemId, AmountMin, AmountMax),
				["ADD_OPTION"]  = "ADDafterSECTION", 
			}
		elseif ItemType == "Units" or ItemType == "Nanites" then
		ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"GenericTable", "GcGenericRewardTableEntry"},
				["ADD"] = AddWholeNewCurrencyReward (RewardId, "GiveAll", Chance, ItemType, AmountMin, AmountMax),
				["ADD_OPTION"]  = "ADDafterSECTION", 
			}
		end
end
for i = 1, #FreighterLootChanges do
	local RewardType = FreighterLootChanges[i][1][1]
	local Items = FreighterLootChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"ID", OldItemID},
				["SECTION_UP"] = 2,
				--["INTEGER_TO_FLOAT"] = "FORCE",
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
for i = 1, #DerelictNaniteChanges do
	local RewardID = DerelictNaniteChanges[i][1]
	local NewWeight = DerelictNaniteChanges[i][2]
	local OldWeight = DerelictNaniteChanges[i][3]
	local MinNanites = DerelictNaniteChanges[i][4]
	local MaxNanites = DerelictNaniteChanges[i][5]
		
		ChangesToRewardTable[#ChangesToRewardTable+1] =
		{
			["SPECIAL_KEY_WORDS"] = {"Id", RewardID,	"PercentageChance", OldWeight,		"Currency", "Nanites"},
			["REPLACE_TYPE"] = "ALL",
			["SECTION_UP"] = 3,
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"PercentageChance",	NewWeight},
				{"AmountMin",	MinNanites},
				{"AmountMax",	MaxNanites}
			}
		}
end
for i = 1, #FreighterTechLootChanges do
	local RewardType = FreighterTechLootChanges[i][1][1]
	local Items = FreighterTechLootChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"ID", OldItemID},
				["SECTION_UP"] = 2,
				--["INTEGER_TO_FLOAT"] = "FORCE",
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
if UsePTSdFreiUpgradeClassChances then
	for i = 1, #FreighterUpgradeGroups do
		local Group = FreighterUpgradeGroups[i]
		
		local Normal = PTSdFreiUpgrClassChances[1]
		local Rare = PTSdFreiUpgrClassChances[2]
		local Epic = PTSdFreiUpgrClassChances[3]
		local Legendary = PTSdFreiUpgrClassChances[4]
		
		ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_FREI_TECH",		"List", "GcRewardTableItem"},
				["ADD_OPTION"]  = "ADDbeforeSECTION",
				["ADD"] = AddUpgrade(Group, Normal, Rare, Epic, Legendary),
			}
	end
end
if UsePTSdFreiUpgradeClassChances then
	for i = 1, #OldFreighterUpgradeCategories do
		local Category = OldFreighterUpgradeCategories[i]
		
		ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "R_FREI_TECH",	"ProceduralProductCategory", Category},
				["SECTION_UP"] = 3,
				["REMOVE"] = "SECTION",
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
				["SECTION_UP"] = 2,
				--["INTEGER_TO_FLOAT"] = "FORCE",
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
				["SECTION_UP"] = 3,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	Chance},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax}
				}
			}
	end
end

for i = 1, #NexusMissionCurrencyChanges do
	local RewardType = NexusMissionCurrencyChanges[i][1][1]
	local Items = NexusMissionCurrencyChanges[i][2]
	
	for j=1, #Items do
		Currency = Items[j][1]
		AmountMin = Items[j][2]
		AmountMax = Items[j][3]
		OldChance = tostring(Items[j][4])
		NewChance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", RewardType,	"PercentageChance", OldChance.."00000"},
				["VALUE_MATCH"] = {"Units","Nanites",},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Currency",	Currency}
				}
			}
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"PercentageChance", OldChance.."00000"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PercentageChance",	NewChance},
					{"AmountMin",	AmountMin},
					{"AmountMax",	AmountMax},
				}
			}
			
			
	end
end
for i = 1, #StationLootChanges do
	local RewardType = StationLootChanges[i][1][1]
	local Items = StationLootChanges[i][2]
	
	for j=1, #Items do
		OldItemID = Items[j][1]
		NewItemID = Items[j][2]
		AmountMin = Items[j][3]
		AmountMax = Items[j][4]
		Chance = Items[j][5]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"ID", OldItemID},
				["SECTION_UP"] = 2,
				--["INTEGER_TO_FLOAT"] = "FORCE",
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

for i = 1, #StationLootCurrencyChanges do
	local RewardType = StationLootCurrencyChanges[i][1][1]
	local Items = StationLootCurrencyChanges[i][2]
	
	for j=1, #Items do
		Currency = Items[j][1]
		AmountMin = Items[j][2]
		AmountMax = Items[j][3]
		Chance = Items[j][4]
		
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id",RewardType,	"Currency", Currency},
				["SECTION_UP"] = 3,
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
				["SECTION_UP"] = 2,
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
				["SPECIAL_KEY_WORDS"] = {"Id", "NPC_BUILD_GOTO",	"ProductIds",	ContainerID},
				["REMOVE"] = "LINE"
			}
end
for i = 1, #AddTechToPool do
	local TechPool = AddTechToPool[i][1][1]
	local Techs = AddTechToPool[i][2]
		
		for j=1, #Techs do
			AddedTechID = Techs[j][1]
			TechlistSpotID = Techs[j][2]
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", TechPool,	"TechList",	TechlistSpotID},
				["ADD_OPTION"]  = "ADDafterLINE", 
				["ADD"] = AddTechListItem (AddedTechID)
			}
		end
end
for i = 1, #RemoveTechFromPool do
	local TechPool = RemoveTechFromPool[i][1][1]
	local Techs = RemoveTechFromPool[i][2]
		
		for j=1, #Techs do
			TechID = Techs[j]
			
			ChangesToRewardTable[#ChangesToRewardTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", TechPool,	"TechList",	TechID},
				["REMOVE"] = "LINE"
			}
		end
end

local ChangesToRecurringMissions = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][9]["MXML_CHANGE_TABLE"]

for i = 1, #AresTradeChanges do
	local ItemAmount = AresTradeChanges[i][1]
	local ItemID = AresTradeChanges[i][2]
	local MinNanites = AresTradeChanges[i][3]
	local MaxNanites = AresTradeChanges[i][4]

			ChangesToRecurringMissions[#ChangesToRecurringMissions+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", AresRewardId (i)},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AmountMin", math.floor(ItemAmount*MinNanites)},
					{"AmountMax", math.floor(ItemAmount*MaxNanites)}
				}
			}
			
			ChangesToRecurringMissions[#ChangesToRecurringMissions+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", AresCostId (i),		"Cost", "GcCostProduct"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Id", ItemID},
					{"Amount", ItemAmount}
				}
			}
end