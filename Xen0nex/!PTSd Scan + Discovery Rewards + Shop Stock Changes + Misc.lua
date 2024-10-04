Author = "Xen0nex"
ModName = "PTSd Scan + Discovery Rewards + Shop Stock Changes + Misc"
Description = "Adjusts scan & discovery rewards and items available in shops. Also changes % chance to spawn jellyfish / anglerfish underwater."
GameVersion = "5_03"

--UnderwaterProtectionMultiplier = 2				--Default Range 0 - 310

JellyfishSpawnChance = 0.2							--0.3		Chance to spawn Jellyfish when mining objects underwater
AnglerfishSpawnChance = 0.45						--0.5		Chance to spawn Anglerfish when collecting an Alluring Specimen

  --Multipliers to apply to the reward in units or Nanites for Scanning or Recording different things
	--Currently experiencing some odd behaviour where in-game, the base OnScan Units reward for Fauna & Flora is set to double whatever I put here? But bonus units from Scan reward upgrades do seem to work based off the value I put here?
  DiscoveryChanges =
  {
	{
		{"SolarSystem"},
		{
			{"Record",		2}						--15 Nanites
		}
	},
	{
		{"Planet"},
		{
			{"Record",		3}						--10 Nanites
		}
	},
	{
		{"Animal"},
		{
			{"OnScan",		0.75},					--500, 800, 1500 depending on rarity					Boosted up to ~200k, 320k, 600k with maxed Scanner upgrades
			{"Record",		1}						--5, 10, 15 depending on rarity
		}
	},
	{
		{"Flora"},
		{
			{"OnScan",		0.75},					--250													Boosted up to ~100k with maxed Scanner upgrades
			{"Record",		3}						--3, 5, or 8 Nanites, but the game only ever seems to use 3?
		}
	},
	{
		{"Mineral"},
		{
			{"OnScan",		0.75},					--200													Guessing that it is boosted up to ~80k with maxed Scanner upgrades
			{"Record",		3}						--3, 5, or 12 Nanites, but the game only ever seems to use 3
		}
	},
	{
		{"Sector"},
		{
			{"Record",		10}						--3 Nanites
		}
	}
  }

--Removes items from shops
ShopStockRemoved =
{
	{
		{"NAV_DATA_DROP"},							--Item to be removed
		{"Shop",}									--Shops to remove it from
	},
	{
		{"NAV_DATA"},								--Navigation Data
		{"Shop"}									--"Regular" Galactic Trade Terminals, such as embedded in the wall in Minor Settlements? TechShop is the NPC trader behind the counter in Minor Settlements
	},
	{
		{"ALLOY1"},
		{"Shop",	"SpaceStation"}
	},
	{
		{"ALLOY2"},
		{"Shop",	"SpaceStation"}
	},
	{
		{"ALLOY4"},
		{"Shop",	"SpaceStation"}
	},
	{
		{"ALLOY5"},
		{"Shop",	"SpaceStation"}
	}
}

--Adds Products to shops
ShopAddedProducts =
{
	{
		{"SALVAGE_TECH10"},							--Product to be added		Starship AI Valves
		{"SpaceStation",	"TechShop"}				--Shops add it to
	},
	{
		{"SALVAGE_TECH7"},							--Product to be added		Recycled Circuitry
		{"SpaceStation",	"TechShop"}				--Shops add it to
	},
}

--Changes to items offered by or donated to Guild shops on Space Stations
GuildShopChanges =
{
	{
		{"TradeGuild"},
		{	--Items sold / offered by the shop
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"LAUNCHFUEL",		"BAIT_BASIC",		2,		0,			"Units",		3},				--Starship Launch Fuel		3,		0,		"Units",	3
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"HYPERFUEL1",		"BAIT_BASIC"},														--Warp Cell
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"SCRAP_GOODS",		"LAUNCHFUEL",		1,		0.3,		"Units",		4},				--Suspicious Packet (Goods)			1,		0,		"Units",	4
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"ASTEROID2",		"TRA_ALLOY2",		300,	0.75,		"Units",		5},				--Gold						500,	0.4,	"Units",	5
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"ASTEROID3",		"TRA_COMMODITY2"},													--Platinum
					{"GAS1",			"TRA_COMPONENT2"},													--Sulphurine
					{"GAS2",			"TRA_ENERGY2"},														--Radon
					{"GAS3",			"TRA_MINERALS2"},													--Nitrogen
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"COMPOUND1",		"COMPOUND1",		5,		0.7,		"Units",		6},				--Organic Catalyst			5,		0.5,	"Units",	6
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"COMPOUND2",		"COMPOUND2"},														--Semiconductor
					{"COMPOUND3",		"COMPOUND3"},														--Hot Ice
					{"COMPOUND4",		"COMPOUND4"},														--Fusion Accelerant
					{"COMPOUND5",		"COMPOUND5"},														--Superconductor
					{"COMPOUND6",		"COMPOUND6"},														--Cryo-Pump
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"FARMPROD9",		"TRA_EXOTICS5",		100,	0.85,		"Units",		8},				--Circuit Board				1,		0.5,	"Units",	8
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"FARMPROD7",		"TRA_TECH5"},														--Liquid Explosive
					{"FARMPROD8",		"TRA_MINERALS5"},													--Living Glass
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"FREI_INV_TOKEN",	"FREI_INV_TOKEN",	1,		25,			"Units",		10},			--Cargo Bulkhead			1,		0,		"Units",	10
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"SHIP_INV_TOKEN",	"SUIT_INV_TOKEN"},													--Storage Augmentation
					{"FRIG_TOKEN",		"FRIG_TOKEN"},														--Salvaged Frigate Module
				},
			},
		},
		{	--Items the player can donate to the Guild for Standing
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"BP_SALVAGE",			"SALVAGE_TECH7",		2,				3},							--Salvaged Data			1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"FRIGATE_FUEL_3",			"TRA_CURIO2",			1,				3},						--Frigate Fuel (200 Tonnes)		1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
					{"REPAIRKIT",		"REPAIRKIT"},														--Repair Kit
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"ILLEGAL_PROD6",		"ILLEGAL_PROD6",		1,				3},							--Counterfeit Circuits	1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
					{"ILLEGAL_PROD4",	"ILLEGAL_PROD7"},													--Prismatic Feathers
					{"ILLEGAL_PROD3",	"SHIP_CORE_B"},														--Moon Ether
					{"ILLEGAL_PROD2",	"ILLEGAL_PROD8"},													--Stolen DNA Samples
					{"ILLEGAL_PROD5",	"ILLEGAL_PROD5"},													--GrahGrah
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"TRA_ALLOY5",			"FOOD_CB_SCUST",		1,				3},							--Superconducting Fibre	1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
					{"TRA_COMMODITY5",	"FOOD_CB_CUST"},													--Teleport Coordinators
					{"TRA_COMPONENT5",	"FOOD_W_MEAT"},														--Vector Compressors
					{"TRA_ALLOY5",		"FOOD_DNUT_HONB"},													--Stolen DNA Samples
					{"TRA_ENERGY5",		"FOOD_CK_MCUST"},													--Fusion Core
					{"TRA_EXOTICS5",	"FOOD_DNUT_CUST"},													--Neural Duct
					{"TRA_MINERALS5",	"FOOD_MM_CUST"},													--Re-latticed Arc Crystal
					{"TRA_TECH5",		"SUIT_INV_TOKEN"},													--Quantum Accelerator
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"SHIP_INV_TOKEN",		"SHIP_INV_TOKEN",		3,				3},							--Storage Augmentation	2,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
					{"FACT_TOKEN",		"SHIP_CORE_A"},														--Factory Override Unit
					{"FREI_INV_TOKEN",	"MEGAPROD1"},														--Cargo Bulkhead
					{"WEAP_INV_TOKEN",	"MEGAPROD2"},														--Multi-Tool Expansion Slot
					{"SUIT_INV_TOKEN",	"MEGAPROD3"},													--Exosuit Expansion Unit
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"FARMPROD7",			"ULTRAPROD1",			8,				3},							--Liquid Explosive		2,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
					{"FARMPROD9",		"ULTRAPROD2"},														--Circuit Board
					{"FARMPROD8",		"SHIP_CORE_S"},														--Living Glass
				},
			},
		}
	},
	{
		{"WarriorGuild"},
		{	--Items sold / offered by the shop
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"AMMO",			"AMMO",				500,	0,			"Units",		3},				--Projectile Ammunition		25000,	0,		"Units",	3
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"GRENFUEL1",		"GRENFUEL1",		1,		0.6,		"Units",		4},				--Unstable Plasma			1,		0,		"Units",	4
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"ROBOT1",			"ROBOT1",			500,	0.15,		"Units",		5},				--Pugneum					500,	0.5,	"Units",	5
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"CREATURE1",		"CREATURE1"},														--Mordite
					{"SPACEGUNK3",		"CATALYST2"},														--Rusted Metal
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"U_BOLT3",			"U_BOLT3",			1,		0.7,		"Nanites",		6},				--Boltcaster A Class Upgrade	1,		0.33,	"Nanites",	6
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"U_GRENADE3",		"U_GRENADE3"},														--Plasma Launcher A Class Upgrade
					{"U_RAIL3",			"U_RAIL3"},															--Blaze Javelin A Class Upgrade
					{"U_SHOTGUN3",		"U_SHOTGUN3"},														--Scatter Blaster A Class Upgrade
					{"U_SMG3",			"U_SMG3"},															--Pulse Spitter A Class Upgrade
					{"U_CANNON3",		"U_CANNON3"},														--Neutron Cannon A Class Upgrade
					{"U_SHIELDBOOST3",	"U_SHIELDBOOST3"},													--Shield A Class Upgrade
					{"U_SHIPGUN3",		"U_SHIPGUN3"},														--Photon Cannon A Class Upgrade
					{"U_SHIPLAS3",		"U_SHIPLAS3"},														--Phase Beam A Class Upgrade
					{"U_SHIPSHOT3",		"U_SHIPSHOT3"},														--Positron Ejector A Class Upgrade
					{"U_SHIPMINI3",		"U_SHIPMINI3"},														--Infra-Knife Accelerator A Class Upgrade
					{"U_SHIPBLOB3",		"U_SHIPBLOB3"},														--Cyclotron Ballista A Class Upgrade
					{"U_SHIPSHIELD3",	"U_SHIPSHIELD3"},													--Deflector Shield A Class Upgrade
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"CHART_HIVE",		"CHART_HIVE",		1,		40,			"Units",		8},				--Sentinel Boundary Map			1,		0,	"Units",	8
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"WEAP_INV_TOKEN",	"WEAP_INV_TOKEN"},													--Multi-Tool Expansion Slot
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"U_BOLT4",			"U_BOLT4",			1,		0.6,		"Nanites",		10},			--Boltcaster S Class Upgrade	1,		0.33,	"Nanites",	10
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"U_GRENADE4",		"U_GRENADE4"},														--Plasma Launcher S Class Upgrade
					{"U_RAIL4",			"U_RAIL4"},															--Blaze Javelin S Class Upgrade
					{"U_SHOTGUN4",		"U_SHOTGUN4"},														--Scatter Blaster S Class Upgrade
					{"U_SMG4",			"U_SMG4"},															--Pulse Spitter S Class Upgrade
					{"U_CANNON4",		"U_CANNON4"},														--Neutron Cannon S Class Upgrade
					{"U_SHIELDBOOST4",	"U_SHIELDBOOST4"},													--Shield S Class Upgrade
					{"U_SHIPGUN4",		"U_SHIPGUN4"},														--Photon Cannon S Class Upgrade
					{"U_SHIPLAS4",		"U_SHIPLAS4"},														--Phase Beam S Class Upgrade
					{"U_SHIPSHOT4",		"U_SHIPSHOT4"},														--Positron Ejector S Class Upgrade
					{"U_SHIPMINI4",		"U_SHIPMINI4"},														--Infra-Knife Accelerator S Class Upgrade
					{"U_SHIPBLOB4",		"U_SHIPBLOB4"},														--Cyclotron Ballista S Class Upgrade
					{"U_SHIPSHIELD4",	"U_SHIPSHIELD4"},													--Deflector Shield S Class Upgrade
				},
			},
		},
		{	--Items the player can donate to the Guild for Standing
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"SENTINEL_LOOT",		"U_SENTGUN",			1,				3},							--Salvaged Glass		1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"PIRATE_PROD",			"PIRATE_PROD",			1,				3},							--Pirate Transponder	1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"QUAD_PROD",			"MECH_PROD",			2,				3},							--Quad Servo			1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"SPIDER_PROD",			"SPIDER_PROD",			2,				3},							--Crystallised Heart	1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"MECH_PROD",			"WALKER_PROD",			3,				3},							--Hardframe Engine		1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"WALKER_PROD",			"SENTFREI_PROD",		5,				3},							--Walker Brain			2,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
		}
	},
	{
		{"ExplorerGuild"},
		{	--Items sold / offered by the shop
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"POWERCELL",		"POWERCELL",		1,		0,			"Units",		3},				--Ion Battery				5,		0,		"Units",	3
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"HYPERFUEL2",		"HYPERFUEL1",		1,		0.2,		"Units",		4},				--Warp Hypercore			1,		0,		"Units",	4
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"CATALYST2",		"ROCKETSUB",		500,	0.15,		"Units",		5},				--Sodium Nitrate			500,	0.4,	"Units",	5
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"LAUNCHSUB2",		"LAUNCHSUB"},														--Deuterium
					{"FUEL2",			"FUEL2"},															--Condensed Carbon
					{"OXYGEN",			"OXYGEN"},															--Oxygen
					{"CAVE2",			"CAVE2"},															--Ionised Cobalt
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"SACVENOM",		"U_SCANNER3",		1,		0.7,		"Nanites",		6},				--Storm Crystal				1,		0,		"Units",	6
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"EYEBALL",			"U_HYPER3"},														--Hadal Core
					{"FIENDCORE",		"U_JETBOOST3"},														--Larval Core
					{"U_UNW2",			"U_EXO_ENG3"},														--A Class Underwater protection upgrade
					{"U_RAD2",			"U_EXOBOOST3"},														--A Class Radiation protection upgrade
					{"U_TOX2",			"U_MECH_ENG3"},														--A Class Toxic protection upgrade
					{"U_COLDPROT2",		"U_EXO_SUB3"},														--A Class Cold protection upgrade
					{"U_HOTPROT2",		"U_LAUNCH3"},														--A Class Heat protection upgrade
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"CHART_TREASURE",	"CHART_TREASURE",	1,		0.6,		"Units",		8},				--Artifact Chart			1,		0,		"Units",	8
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"FRIG_TOKEN",		"NAV_DATA"},														--Salvaged Frigate Module
					{"SUIT_INV_TOKEN",	"BP_SALVAGE"},														--Exosuit Expansion Unit
					{"SHIP_INV_TOKEN",	"FIENDCORE"},														--Storage Augmentation
					{"POI_LOCATOR",		"POI_LOCATOR"},														--Anomaly Detector
				},
			},
			{	--Old Item ID		New Item ID			Amount	PriceMult	Currency		Reputation Level
				{"U_SCANNER4",		"U_SCANNER4",		1,		0.6,		"Nanites",		10},			--Scanner S Class Upgrade	1,		0,		"Units",	10
				{	--Old Item ID		New Item ID		(Other possible items that can appear in this slot)
					{"U_LASER3",		"U_EXO_ENG4"},														--Mining Laser A Class Upgrade
					{"U_LASER4",		"U_LASER4"},														--Mining Laser S Class Upgrade
					{"U_SCANNER3",		"U_MECH_ENG4"},														--Scanner A Class Upgrade
					{"U_ENERGY3",		"U_ENERGY3"},														--Life Support S Class Upgrade
					{"U_JETBOOST4",		"U_JETBOOST4"},														--Movement S Class Upgrade
					{"U_SHIELDBOOST4",	"U_EXOBOOST4"},														--Shield S Class Upgrade
					{"U_PULSE4",		"U_PULSE4"},														--Pulse Engine S Class Upgrade
					{"U_LAUNCH4",		"U_LAUNCH4"},														--Launcher S Class Upgrade
					{"U_HYPER4",		"U_HYPER4"},														--Hyperdrive S Class Upgrade
				},
			},
		},
		{	--Items the player can donate to the Guild for Standing
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"GEODE_RARE",			"CHART_SETTLE",			1,				3},							--Glowing Mineral		1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"STORM_CRYSTAL",		"PROC_LUMP",			1,				3},							--Storm Crystal			1,		3
										--Further adjustments needed in ChangesToDefaultReality for procedural products like this
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"NAV_DATA_DROP",		"U_ROBOSUIT",			1,				3},							--Exosuit Upgrade Chart		1,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"FISHCORE",			"PROC_CREW",			4,				3},							--Hadal Core			2,		3
										--Further adjustments needed in ChangesToDefaultReality for procedural products like this
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"ARTIFACT_KEY",		"ABAND_LOCATOR",		8,				3},							--Ancient Key			2,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
				},
			},
			{	--Old Item ID			New Item ID				Donation Value	Max Donations (unclear if this is per-vist or total for all time)
				{"PROC_ITEM",			"PROC_ITEM",			2,				3},							--Procedural loot that comes in Common, Uncommon, and Rare varieties 	2,		3
				{	--Old Item ID		New Item ID		(Other possible items that can be used in this slot)
					--Not any actual IDs, but this entry has special categories set for which types of procedural loot are accepted, e.g. Document, BioSample, Fossil, etc.
				},
			},
		}
	}
}

--Adds AltIDs (Other possible items that can be used in this slot) to certain entries in a Guild Shop
GuildShopAddAlts =
{		--Guild type		Shop type			New Item to add alts to		First Alt item to add
	{
		{"WarriorGuild",	"RepItems",			"GRENFUEL1",				"POLICE_TOKEN"},
		--Additional Alt items to add
		{"QUAD_PROD"}
	},
	{
		{"WarriorGuild",	"DonatableItems",	"U_SENTGUN",				"WAR_CURIO2"},
		--Additional Alt items to add
		{}
	},
	{
		{"ExplorerGuild",	"DonatableItems",	"CHART_SETTLE",				"BP_SALVAGE"},
		--Additional Alt items to add
		{}
	},
	{
		{"ExplorerGuild",	"DonatableItems",	"PROC_LUMP",				"PROC_COG"},
		--Additional Alt items to add
		{"PROC_DATA"}
	},
	{
		{"ExplorerGuild",	"DonatableItems",	"U_ROBOSUIT",				"EXP_CURIO2"},
		--Additional Alt items to add
		{}
	},
	{
		{"ExplorerGuild",	"DonatableItems",	"PROC_CREW",				"PROC_CAPT"},
		--Additional Alt items to add
		{}
	}
}

GuildRankingLevels =
{	--Ranks (0-10)		Standing required
	{"BAD",				-10},		--	-5		Rank 0
	{"LOW",				-3},		--	-2
	{"NORMAL",			0},			--	0
	{"IMPROVED",		9},			--	3
	{"MEDIUM",			24},		--	8
	{"GOOD",			42},		--	14
	{"HIGH",			63},		--	21
	{"HIGHEST",			90},		--	30
	{"HIGHEST1",		120},		--	40
	{"HIGHEST2",		180},		--	60
	{"HIGHEST3",		300},		--	100		Rank 10
}

RaceRankingLevels =
{	--Ranks (0-10)		Standing required
	{"BAD",				-10},		--	-5		Rank 0
	{"LOW",				-3},		--	-2
	{"NORMAL",			0},			--	0
	{"IMPROVED",		9},			--	3
	{"MEDIUM",			24},		--	8
	{"GOOD",			42},		--	14
	{"HIGH",			63},		--	21
	{"HIGHEST",			90},		--	30
	{"HIGHEST1",		120},		--	40
	{"HIGHEST2",		180},		--	60
	{"HIGHEST3",		300},		--	100		Rank 10
}

PirateRankingLevels =
{	--Ranks (0-10)		Standing required
	{"PIRATE_PLAYER_RANK_BAD",			-10},		--	-5		Rank 0
	{"PIRATE_PLAYER_RANK_LOW",			-3},		--	-2
	{"PIRATE_PLAYER_RANK_NORMAL",		0},			--	0
	{"PIRATE_PLAYER_RANK_IMPROVED",		15},		--	5
	{"PIRATE_PLAYER_RANK_MEDIUM",		36},		--	12
	{"PIRATE_PLAYER_RANK_GOOD",			60},		--	20
	{"PIRATE_PLAYER_RANK_HIGH",			96},		--	32
	{"PIRATE_PLAYER_RANK_HIGHEST",		150},		--	50
	{"PIRATE_PLAYER_RANK_HIGHEST1",		225},		--	75
	{"PIRATE_PLAYER_RANK_HIGHEST2",		300},		--	100
	{"PIRATE_PLAYER_RANK_HIGHEST3",		450},		--	150		Rank 10
}

--Changes various enemy spawn amounts so that the "Normal" amount is closer to the old pre-4.0 "Survival" amounts.
FiendCrimeChanges =
{
	{
		{"UnderwaterPropDamaged"},	--The "crime" committed to spawn the enemies
		{
			{
				{"FiendFishSmall",	1},	--The type of enemy spawned
			--Number of enemies spawned on:	Off		Slow	Normal	Fast	Difficulty Setting
				{"MinNum",					0,		2,		3,		4},				--0,	1,	3,	3
				{"MaxNum",					0,		4,		6,		8},				--0,	2,	5,	6
			},
		}
	},
	{
		{"UnderwaterPropCollected"},	--The "crime" committed to spawn the enemies
		{
			{
				{"FiendFishBig",	2},	--The type of enemy spawned
			--Number of enemies spawned on:	Off		Slow	Normal	Fast	Difficulty Setting
				{"MinNum",					0,		1,		1,		1},				--0,	0,	1,	1
				{"MaxNum",					0,		1,		1,		1},				--0,	1,	1,	1
			},
			{
				{"FiendFishSmall",	3},	--The type of enemy spawned
			--Number of enemies spawned on:	Off		Slow	Normal	Fast	Difficulty Setting
				{"MinNum",					0,		2,		3,		4},				--0, 0, 0, 1	(0, 0, 1, 2)
				{"MaxNum",					0,		4,		6,		8},				--0, 0, 0, 3	(0, 1, 3, 4)
			},
		}
	},
	{
		{"FishCarnage"},	--The "crime" committed to spawn the enemies	(Unclear what this is, added in NMS v5.0)
		{
			{
				{"FiendFishBig",	4},	--The type of enemy spawned
			--Number of enemies spawned on:	Off		Slow	Normal	Fast	Difficulty Setting
				{"MinNum",					0,		1,		3,		4},				--0,	1,	3,	3
				{"MaxNum",					0,		1,		3,		4},				--0,	1,	3,	3
			},
			{
				{"FiendFishSmall",	5},	--The type of enemy spawned
			--Number of enemies spawned on:	Off		Slow	Normal	Fast	Difficulty Setting
				{"MinNum",					0,		3,		10,		12},			--0, 3, 10, 10
				{"MaxNum",					0,		3,		10,		12},			--0, 3, 10, 10
			},
		}
	},
	{
		{"GroundPropDamage"},	--The "crime" committed to spawn the enemies
		{
			{
				{"MiniFiend",	6},	--The type of enemy spawned
			--Number of enemies spawned on:	Off		Slow	Normal	Fast	Difficulty Setting
				{"MinNum",					0,		2,		3,		4},				--0,	1,	2,	2
				{"MaxNum",					0,		4,		8,		10},			--0,	1,	2,	7
			},
		}
	},
}

function AddProduct(Product)
    return
    [[<Property value="NMSString0x10.xml">
          <Property name="Value" value="]]..Product..[[" />
        </Property>]]
end

function AddAltIDsFromNone(ProductID)
    return
    [[<Property name="AltIDs">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..ProductID..[[" />
            </Property>
          </Property>]]
end

GuildRankingPrefixes =
{"TGUILD_PLAYER_RANK_", "EGUILD_PLAYER_RANK_", "WGUILD_PLAYER_RANK_"}

RaceRankingPrefixes =
{"TRA_PLAYER_RANK_", "EXP_PLAYER_RANK_", "WAR_PLAYER_RANK_", 
--"BUI_PLAYER_RANK_"
}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
["EXML_CHANGE_TABLE"] = {
	--[[{
		["MATH_OPERATION"] 		= "*",
		["SPECIAL_KEY_WORDS"] = {"StatsType", "Suit_Underwater"},
		["SECTION_UP"] = 1, 
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"RangeMax", UnderwaterProtectionMultiplier}
		}
	},]]
	{
		["SPECIAL_KEY_WORDS"] = {"FiendCrime", "UnderwaterPropDamaged"},
		["SECTION_UP"] = 1, 
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"ResponseRate", JellyfishSpawnChance}
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"FiendCrime", "UnderwaterPropCollected"},
		["SECTION_UP"] = 1, 
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"ResponseRate", AnglerfishSpawnChance}
		}
	},
	{
		["REPLACE_TYPE"] 		= "ALL",
		["SPECIAL_KEY_WORDS"] = {"Value", "SHIP_TELEPORT"},
		["ADD_OPTION"]  = "ADDafterSECTION", 
		["ADD"] = AddProduct ("UT_QUICKWARP")
	}
}},
{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the loops at the bottom of this script
		}
},
{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the loops at the bottom of this script
		}
},
}}}}


local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #DiscoveryChanges do
	local Type = DiscoveryChanges[i][1][1]
	local ScanRecords = DiscoveryChanges[i][2]
	
	for j=1, #ScanRecords do
		ScanRecord = ScanRecords[j][1]
		Mult = ScanRecords[j][2]
	
			ChangesToDefaultReality[#ChangesToDefaultReality+1] = 
		{
			["MATH_OPERATION"] = "*",
			["PRECEDING_KEY_WORDS"] = {"DiscoveryWorth", Type, ScanRecord},
			["REPLACE_TYPE"] 		= "ALL",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IGNORE",Mult}
			}
		}
	end
end
for i = 1, #ShopStockRemoved do
	local ItemID = ShopStockRemoved[i][1][1]
	local ShopIDs = ShopStockRemoved[i][2]

	for j = 1, #ShopIDs do
		ShopID = ShopIDs[j]
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["SPECIAL_KEY_WORDS"] = {ShopID, "GcTradeData.xml"},
				["PRECEDING_KEY_WORDS"] = {"OptionalProducts"},
				["VALUE_MATCH"] 	= ItemID,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Value", "TempItemToDelete"}
				},
			}
	end
end
ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"Value", "TempItemToDelete"},
				["REMOVE"] = "SECTION",
			}
for i = 1, #ShopAddedProducts do
	local ItemID = ShopAddedProducts[i][1][1]
	local ShopIDs = ShopAddedProducts[i][2]

	for j = 1, #ShopIDs do
		ShopID = ShopIDs[j]
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["SPECIAL_KEY_WORDS"] = {ShopID, "GcTradeData.xml"},
				["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts",	"NMSString0x10.xml"},
				["ADD"] = AddProduct(ItemID),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
	end
end

for i = 1, #FiendCrimeChanges do
	--local FiendCrime = FiendCrimeChanges[i][1][1]
	local Enemies = FiendCrimeChanges[i][2]

	for j = 1, #Enemies do
		--CreatureType = Enemies[j][1][1]
		ActiveSection = Enemies[j][1][2]
		Off = Enemies[j][2][2]
		Slow = Enemies[j][2][3]
		Normal = Enemies[j][2][4]
		Fast = Enemies[j][2][5]
		
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["SPECIAL_KEY_WORDS"] = {"CreatureType", CreatureType},
				["PRECEDING_KEY_WORDS"] = {"MinNum"},
				["SECTION_ACTIVE"] = ActiveSection,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Off", Off},
					{"Slow", Slow},
					{"Normal", Normal},
					{"Fast", Fast},
				}
			}
			
		Off = Enemies[j][3][2]
		Slow = Enemies[j][3][3]
		Normal = Enemies[j][3][4]
		Fast = Enemies[j][3][5]
		
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["SPECIAL_KEY_WORDS"] = {"CreatureType", CreatureType},
				["PRECEDING_KEY_WORDS"] = {"MaxNum"},
				["SECTION_ACTIVE"] = ActiveSection,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Off", Off},
					{"Slow", Slow},
					{"Normal", Normal},
					{"Fast", Fast},
				}
			}
	end
end

for i = 1, #GuildShopChanges do
	local GuildName = GuildShopChanges[i][1][1]
	local ShopItems = GuildShopChanges[i][2]
	local DonateItems = GuildShopChanges[i][3]

	for j = 1, #ShopItems do
		OldItemID = ShopItems[j][1][1]
		NewItemID = ShopItems[j][1][2]
		AmountForSale = ShopItems[j][1][3]
		PriceMul = ShopItems[j][1][4]
		Currency = ShopItems[j][1][5]
		RepLevelRequired = ShopItems[j][1][6]
		AltIDs = ShopItems[j][2]
		
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"RepShops", GuildName,	"RepItems"},
				["SPECIAL_KEY_WORDS"] = {"ProductID", OldItemID},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ProductID",	NewItemID},
					{"AmountForSale",	AmountForSale},
					{"PriceMul",	PriceMul},
					--{"Currency",	Currency},
					{"RepLevelRequired",	RepLevelRequired}
				}
			}
			
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"RepShops", GuildName,	"RepItems"},
				["SPECIAL_KEY_WORDS"] = {"ProductID", NewItemID},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_MATCH"] = {"Units", "Nanites",},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Currency",	Currency}
				}
			}
			
		for k=1, #AltIDs do
			OldAltID = AltIDs[k][1]
			NewAltID = AltIDs[k][2]
		
				ChangesToDefaultReality[#ChangesToDefaultReality+1] =
				{
					["PRECEDING_FIRST"] = "TRUE",
					["PRECEDING_KEY_WORDS"] = {"RepShops", GuildName,	"RepItems"},
					["SPECIAL_KEY_WORDS"] = {"ProductID", NewItemID,	"Value", OldAltID},
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"Value",	NewAltID}
					}
				}
		end
	end
	
	for l = 1, #DonateItems do
		OldItemID = DonateItems[l][1][1]
		NewItemID = DonateItems[l][1][2]
		DonationValue = DonateItems[l][1][3]
		MaxDonations = DonateItems[l][1][4]
		AltIDs = DonateItems[l][2]
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"RepShops", GuildName,	"DonatableItems"},
				["SPECIAL_KEY_WORDS"] = {"ProductID", OldItemID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ProductID",	NewItemID},
					{"DonationValue",	DonationValue},
					{"MaxDonations",	MaxDonations}
				}
			}
			
		for m=1, #AltIDs do
			OldAltID = AltIDs[m][1]
			NewAltID = AltIDs[m][2]
		
				ChangesToDefaultReality[#ChangesToDefaultReality+1] =
				{
					["PRECEDING_FIRST"] = "TRUE",
					["PRECEDING_KEY_WORDS"] = {"RepShops", GuildName,	"DonatableItems"},
					["SPECIAL_KEY_WORDS"] = {"ProductID", NewItemID,	"Value", OldAltID},
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"Value",	NewAltID}
					}
				}
		end
	end
end

for i = 1, #GuildShopAddAlts do
	local GuildName = GuildShopAddAlts[i][1][1]
	local ShopType = GuildShopAddAlts[i][1][2]
	local NewItemID = GuildShopAddAlts[i][1][3]
	local NewAltID = GuildShopAddAlts[i][1][4]
	local AdditionalAlts = GuildShopAddAlts[i][2]
	
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["SPECIAL_KEY_WORDS"] = {GuildName, "GcRepShopData.xml",	"ProductID", NewItemID},
				["PRECEDING_KEY_WORDS"] = {"AltIDs"},
				["REMOVE"] = "LINE",
			}
			
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["SPECIAL_KEY_WORDS"] = {GuildName, "GcRepShopData.xml",	"ProductID", NewItemID},
				["ADD_OPTION"]  = "ADDendSECTION",  
				["ADD"] = AddAltIDsFromNone(NewAltID),
			}

	for j = 1, #AdditionalAlts do
		AddedAlt = AdditionalAlts[j]
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"RepShops", GuildName,	ShopType},
				["SPECIAL_KEY_WORDS"] = {"ProductID", NewItemID,	"Value", NewAltID},
				["ADD_OPTION"]  = "ADDafterSECTION", 
				["ADD"] = AddProduct(AddedAlt),
				
			}
	end
end

	ChangesToDefaultReality[#ChangesToDefaultReality+1] =
	{
		["PRECEDING_FIRST"] = "TRUE",
		["PRECEDING_KEY_WORDS"] = {"RepShops", "ExplorerGuild",	"DonatableItems"},
		["SPECIAL_KEY_WORDS"] = {"ProductID", "PROC_ITEM"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"Bones",	"False"},
			--{"FreighterCaptLog",	"True"},
			--{"FreighterCrewList",	"True"},
			--{"DismantleBio",	"True"},
			--{"DismantleTech",	"True"},
			--{"DismantleData",	"True"}
		}
	}

	ChangesToDefaultReality[#ChangesToDefaultReality+1] =
	{
		["PRECEDING_FIRST"] = "TRUE",
		["PRECEDING_KEY_WORDS"] = {"RepShops", "ExplorerGuild",	"DonatableItems"},
		["SPECIAL_KEY_WORDS"] = {"ProductID", "PROC_LUMP"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			--{"ProductID",	"PROC_ITEM"},
			{"DismantleBio",	"True"},
			{"DismantleTech",	"True"},
			{"DismantleData",	"True"}
		}
	}
	
	ChangesToDefaultReality[#ChangesToDefaultReality+1] =
	{
		["PRECEDING_FIRST"] = "TRUE",
		["PRECEDING_KEY_WORDS"] = {"RepShops", "ExplorerGuild",	"DonatableItems"},
		["SPECIAL_KEY_WORDS"] = {"ProductID", "PROC_CREW"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			--{"ProductID",	"PROC_ITEM"},
			{"FreighterCaptLog",	"True"},
			{"FreighterCrewList",	"True"}
		}
	}

local ChangesToLeveledStats = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #GuildRankingLevels do
	local RankSuffix = GuildRankingLevels[i][1]
	local NewStanding = GuildRankingLevels[i][2]
	
	for j=1, #GuildRankingPrefixes do
		RankPrefix = GuildRankingPrefixes[j]
	
			ChangesToLeveledStats[#ChangesToLeveledStats+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"LevelName", RankPrefix..RankSuffix},
			["REPLACE_TYPE"] 		= "",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IntValue",	NewStanding}
			}
		}
	end
end
for i = 1, #RaceRankingLevels do
	local RankSuffix = RaceRankingLevels[i][1]
	local NewStanding = RaceRankingLevels[i][2]
	
	for j=1, #RaceRankingPrefixes do
		RankPrefix = RaceRankingPrefixes[j]
	
			ChangesToLeveledStats[#ChangesToLeveledStats+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"LevelName", RankPrefix..RankSuffix},
			["REPLACE_TYPE"] 		= "",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IntValue",	NewStanding}
			}
		}
	end
end
for i = 1, #PirateRankingLevels do
	local Rank = PirateRankingLevels[i][1]
	local NewStanding = PirateRankingLevels[i][2]
	
			ChangesToLeveledStats[#ChangesToLeveledStats+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"LevelName", Rank},
			["REPLACE_TYPE"] 		= "",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IntValue",	NewStanding}
			}
		}
end

local ChangesToLeveledStatsSurv = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #GuildRankingLevels do
	local RankSuffix = GuildRankingLevels[i][1]
	local NewStanding = GuildRankingLevels[i][2]
	
	for j=1, #GuildRankingPrefixes do
		RankPrefix = GuildRankingPrefixes[j]
	
			ChangesToLeveledStatsSurv[#ChangesToLeveledStatsSurv+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"LevelName", RankPrefix..RankSuffix},
			["REPLACE_TYPE"] 		= "",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IntValue",	NewStanding}
			}
		}
	end
end
for i = 1, #RaceRankingLevels do
	local RankSuffix = RaceRankingLevels[i][1]
	local NewStanding = RaceRankingLevels[i][2]
	
	for j=1, #RaceRankingPrefixes do
		RankPrefix = RaceRankingPrefixes[j]
	
			ChangesToLeveledStatsSurv[#ChangesToLeveledStatsSurv+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"LevelName", RankPrefix..RankSuffix},
			["REPLACE_TYPE"] 		= "",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IntValue",	NewStanding}
			}
		}
	end
end
for i = 1, #PirateRankingLevels do
	local Rank = PirateRankingLevels[i][1]
	local NewStanding = PirateRankingLevels[i][2]
	
			ChangesToLeveledStatsSurv[#ChangesToLeveledStatsSurv+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"LevelName", Rank},
			["REPLACE_TYPE"] 		= "",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IntValue",	NewStanding}
			}
		}
end