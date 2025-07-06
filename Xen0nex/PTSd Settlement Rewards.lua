ModName = "PTSd Settlement Rewards"
GameVersion = "5_73"
Description = "Rebalances settlement produced items by race & wealth, Increases cap on stored settlement rewards, and can optionally change settlement timers"

--Multiplier to apply to the Max Production cap and Production StatProductivityContributionModifier
--MaxProductionCapMult = 					1						--Multiplier to apply to the vanilla cap for Production of 1,000,000 units per day		(Changing this has side effects, avoid for now)
DebtMult =								1/0.1					--Multiplier to apply to the DailyDebtPaymentModifier, increasing this speeds up how quickly debt is lowered. Multiplied by the inverse of the multiplier applied to ProductionCycleDurationInSeconds to keep the debt repayment rate roughly at vanilla speed.

--The following values set the "base" parameters for how quickly and how many items are produced, which are then modified by the multipliers for specific items in the ProducedItemChanges table below
	--NOTE: Actual production times seem to be multiplied by ~1.3 - 1.8 in practice? Also, the production times get slightly longer as the settlement improves in Productivity / Rank instead of getting shorter as one would assume. Perhaps the game increases production time by ~1.0x - 1.5x based on Settlement Productivity?
ProductionCycleMult =					0.12*0.6				--Multiplier to apply to the vanilla ProductionCycleDurationInSeconds of 72000 (20 hours), determines how often the settlement outputs its products
																	--The ProductionCycleMult above is multiplied by 0.667 to offset how the game increases the actual ProductionCycle time by roughly ~1.67 in many cases
ProductMult = 							0.2						--Multiplier to apply to the vanilla "default" amount of Products made per cycle of 5.
SubstanceMult =							0.05					--Multiplier to apply to the vanilla "default" amount of Substances made per day of 500.

--WIP
--ProductionContributionModifier =		30						--30 Not quite sure how this works, supposedly controls how strongly each settlement stat affects the final item output rate in some way, but changing it gives strange results
--DebtContributionModifier =				1						--0		Replacer for StatProductivityContributionModifiers for Debt

ConstructionTimeMultiplier = 			1						--Multiplier to apply to all Construction Timers, which typically range from 20min ~ 120min. Use values less than 0 to reduce timers.
JudgementTimeMultiplier = 				1						--Multiplier to apply to the Min and Max wait time between Settlment decisions, which is normally between 15min ~ 120min. Use values less than 0 to reduce timers.
FreeUpgradeTime =						2						--10 seconds		This is the time it takes to upgrade or construct buildings when Crafting/Purchase is set to Free in Difficulty Settings

BuildingUpgradeTimeInSeconds =			46800					--46800		Unclear what this controls
TowerRechargeTime =						72000					--86400	(24 hours)		The time in seconds it takes for a settlement Tower to recharge after any action such as collecting Navigation Data, searching for nearby buildings, etc. This .lua uses the same recharge time for all the actions instead of setting them individually
SettlementMiniExpeditionSuccessChance = 0.85					--0.7	Chance that a settlement "expedition" will succeeed

ProducedItemChanges =	
{
	{								--Multipliers for	Amount	Time	Cap (These multipliers apply to all the specific items in the table below)
		{"GekProductionElementsSelectable",				1,		0.8,	0.6},		--1.25x production speed, but can only hold 1.5 days worth instead of 3 days worth
														--Production Mults and Accumulation Cap:
		{	--Vanilla item			Replacement item	Amount	Time	Cap
				--Basic
			{"ASTEROID3",			"ASTEROID3",		1,		1,		750},		--Platinum,				(Added by PTSd)
			{"TRA_COMPONENT1",		"TRA_EXOTICS1",		1,		0.033*0.83,	900*1.2},--De-Scented Bottles,	(Added by PTSd)
			{"CASING",				"CASING",			1,		2,		15},		--Metal Plating,		1,		0.1,	100
			{"POWERCELL",			"POWERCELL",		1,		1,		30},		--Ion Battery,			1,		0.25,	50
			{"PRODFUEL2",			"PRODFUEL2",		1,		2,		15},		--Life Support Gel,		1,		0.25,	50
			{"FARMPROD3",			"FARMPROD3",		1,		1.5,	20},		--Glass,				1,		0.1,	150
			{"GAS1",				"GAS1",				1.6,	1,		750*1.6},	--Sulphurine,			0.1,	0.15,	999
			{"GAS2",				"GAS2",				1.6,	1,		750*1.6},	--Radon,				0.1,	0.15,	999
			{"GAS3",				"GAS3",				1.6,	1,		750*1.6},	--Nitrogen,				0.1,	0.15,	999
				--Agricultural
			{"PLANT_POOP",			"PLANT_POOP",		0.5,	1,		750/2},		--Faecium,				0.2,	0.2,	999
			{"PLANT_RADIO",			"PLANT_RADIO",		1,		1,		750},		--Gamma Root,			0.2,	0.2,	999
			{"PLANT_DUST",			"PLANT_DUST",		2,		2,		750},		--Cactus Root,			0.2,	0.2,	999
			{"PLANT_TOXIC",			"PLANT_TOXIC",		1,		1,		750},		--Fungal Mould,			0.2,	0.2,	999
			{"PLANT_HOT",			"PLANT_HOT",		1,		2,		750/2},		--Solanium,				0.1,	0.2,	999
			{"PLANT_SNOW",			"PLANT_SNOW",		1,		0.5,	750*2},		--Frost Crystal,		0.2,	0.1,	999
			{"PLANT_LUSH",			"PLANT_LUSH",		0.5,	1,		750/2},		--Star Bulb,			0.2,	0.2,	999
			{"PLANT_CAVE",			"PLANT_CAVE",		0.6,	1,		750*0.6},	--Marrow Bulb,			0.1,	0.2,	999
			{"PLANT_WATER",			"PLANT_WATER",		0.6,	1,		750*0.6},	--Kelp Sac,				0.1,	0.1,	999
				--Starport
			{"LAUNCHFUEL",			"LAUNCHSUB",		1.6,	1,		750*1.6},	--Starship Launch Fuel,	0.5,	0.2,	20
			{"HYPERFUEL1",			"ANTIMATTER",		1,		2,		15},		--Warp Cell,			0.1,	0.2,	20
			{"FRIGATE_FUEL_1",		"ROCKETSUB",		1.6,	1,		750*1.6},	--Frigate Fuel (50t),	0.1,	0.25,	20
				--Entertainment
			{"FOOD_R_PIECASE",		"FOOD_R_PIECASE",	1,		0.53,	56},		--Pie Case,				(Added by PTSd)
			{"TRA_CURIO1",			"TRA_CURIO1",		1,		2.5,	12},		--Gek Relic,			0.2,	0.3,	10
			{"FOOD_R_CAKEMIX",		"FOOD_R_CAKEMIX",	1,		0.87,	35},		--Cake Batter,			(Added by PTSd)
			{"TRA_CURIO2",			"NIPNIPBUDS",		1,		5,		6},			--Geknip,				0.1,	0.3,	10
				--Industrial
			{"OXYGEN",				"OXYGEN",			1.6,	1,		750*1.6},	--Oxygen,				(Added by PTSd)
			{"REACTION3",			"ALLOY5",			1,		1.56,	20},		--Nitrogen Salt,		0.1,	0.9,	10
			{"COMPOUND3",			"REACTION3",		1,		1.76,	17},		--Hot Ice,				0.1,	3,		5
			{"MEGAPROD3",			"COMPOUND3",		1,		4.17,	8},			--Cryogenic Chamber,	0.1,	15,		1
				--Commercial
			{"TRA_ALLOY1",			"TRA_COMMODITY2",	1,		0.15*0.83,	200*1.2},--Nanotube Crate,		1,		0.1,	50
			{"TRA_COMMODITY3",		"TRA_COMMODITY4",	1,		0.6*0.83,	50*1.2},--Comet Droplets,		0.1,	0.1,	50
			{"TRA_COMPONENT5",		"TRA_COMPONENT4",	1,		0.6*0.83,	50*1.2},--Vector Compressors,	0.1,	0.3,	50
			{"TRA_ENERGY5",			"TRA_ENERGY5",		1,		0.83*0.83,	36*1.2},--Fusion Core,			0.1,	0.3,	50
			{"TRA_EXOTICS5",		"TRA_EXOTICS5",		1,		0.83*0.83,	36*1.2},--Neural Duct,			0.1,	0.3,	50
			{"TRA_MINERALS5",		"TRA_MINERALS5",	1,		0.83*0.83,	36*1.2}	--Re-latticed Arc Crystal,0.1,	0.3,	50
		}
	},
	{								--Multipliers for	Amount	Time	Cap (These multipliers apply to all the specific items in the table below)
		{"VykeenProductionElementsSelectable",			1,		1.25,	1.6},		--0.8x production speed, but can hold 6 days worth instead of 3 days worth
														--Production Mults and Accumulation Cap:
		{	--Vanilla item			Replacement item	Amount	Time	Cap
				--Commercial
			{"TRA_MINERALS1",		"TRA_COMMODITY2",	1,		0.15,	200},		--Dirt,					0.75,	1,		140
			{"TRA_TECH3",			"TRA_TECH4",		1,		0.6,	50},		--Ion Capacitor,		0.66,	1,		140
			{"TRA_ALLOY5",			"TRA_ALLOY4",		1,		0.6,	50},		--Superconducting Fibre,0.5,	1,		140
			{"TRA_COMMODITY5",		"TRA_COMMODITY5",	1,		0.83,	36},		--Teleport Coordinators,0.5,	1,		140
			{"TRA_COMPONENT5",		"TRA_COMPONENT5",	1,		0.83,	36},		--Vector Compressors,	0.5,	1,		140
			{"TRA_ENERGY5",			"TRA_ALLOY5",		1,		0.83,	36},		--Fusion Core,			0.5,	1,		140
				--Basic
			{"CREATURE1",			"CREATURE1",		0.5,	0.83,	750*0.5*1.2},--Mordite,				(Added by PTSd)
			{"TRA_COMPONENT1",		"TRA_MINERALS1",	1,		0.033,	900},		--Dirt,					(Added by PTSd)
			{"CASING",				"CASING",			1,		2,		15},		--Metal Plating,		0.2,	1,		60
			{"POWERCELL",			"POWERCELL",		1,		1,		30},		--Ion Battery,			0.2,	1,		60
			{"PRODFUEL2",			"PRODFUEL2",		1,		2,		15},		--Life Support Gel,		0.2,	1,		60
			{"FARMPROD3",			"FARMPROD3",		1,		1.5,	20},		--Glass,				0.33,	1,		100
			{"GAS1",				"GAS1",				1.6,	1,		750*1.6},	--Sulphurine,			0.33,	1,		1500
			{"GAS2",				"GAS2",				1.6,	1,		750*1.6},	--Radon,				0.33,	1,		1500
			{"GAS3",				"GAS3",				1.6,	1,		750*1.6},	--Nitrogen,				0.33,	1,		1500
				--Agricultural
			{"PLANT_POOP",			"PLANT_POOP",		0.5,	0.83,	750*0.5*1.2},--Faecium,				0.33,	1,		1500
			{"PLANT_RADIO",			"PLANT_RADIO",		1,		0.83,	750*1.2},	--Gamma Root,			0.33,	1,		1100
			{"PLANT_DUST",			"PLANT_DUST",		2,		2*0.83,	750*1.2},	--Cactus Root,			0.33,	1,		1100
			{"PLANT_TOXIC",			"PLANT_TOXIC",		1,		0.83,	750*1.2},	--Fungal Mould,			0.33,	1,		1100
			{"PLANT_HOT",			"PLANT_HOT",		1,		2*0.83,	750*0.5*1.2},	--Solanium,			0.33,	1,		1500
			{"PLANT_SNOW",			"PLANT_SNOW",		1,		0.5*0.83,750*2*1.2},--Frost Crystal,		0.33,	1,		1100
			{"PLANT_LUSH",			"PLANT_LUSH",		0.5,	0.83,	750*0.5*1.2},--Star Bulb,			0.33,	1,		1500
			{"PLANT_CAVE",			"PLANT_CAVE",		0.6,	0.83,	750*0.6*1.2},--Marrow Bulb,			0.33,	1,		1500
			{"PLANT_WATER",			"PLANT_WATER",		0.6,	0.83,	750*0.6*1.2},--Kelp Sac,			0.33,	1,		1500
				--Starport
			{"LAUNCHFUEL",			"LAUNCHSUB",		1.6,	1,		750*1.6},	--Starship Launch Fuel,	0.1,	1,		20
			{"HYPERFUEL1",			"ANTIMATTER",		1,		2,		15},		--Warp Cell,			0.1,	1,		20
			{"FRIGATE_FUEL_1",		"ROCKETSUB",		1.6,	1,		750*1.6},	--Frigate Fuel (50t),	0.1,	1,		10
				--Entertainment
			{"FOOD_R_PIECASE",		"SHIPCHARGE",		1,		0.67,	45},		--Starshield Bat.,		(Added by PTSd)
			{"WAR_CURIO1",			"WAR_CURIO1",		1,		2.5,	12},		--Vy'keen Effigy,		0.1,	1,		10
			{"SENTINEL_LOOT",		"SENTINEL_LOOT",	1,		5,		6},			--Salvaged Glass,		(Added by PTSd)
			{"WAR_CURIO2",			"WAR_CURIO2",		1,		2.5,	12},		--Vy'keen Dagger,		0.5,	1,		210
				--Industrial
			{"OXYGEN",				"OXYGEN",			1.6,	1,		750*1.6},	--Oxygen,				(Added by PTSd)
			{"REACTION1",			"ALLOY6",			1,		1.56,	20},		--Thermic Condensate,	0.5,	1,		10
			{"COMPOUND1",			"REACTION1",		1,		1.76,	17},		--Organic Catalyst,		0.2,	1,		10
			{"MEGAPROD1",			"COMPOUND1",		1,		4.17,	8},			--Portable Reactor,		0.1,	1,		10
		}
	},
	{								--Multipliers for	Amount	Time	Cap (These multipliers apply to all the specific items in the table below)
		{"KorvaxProductionElementsSelectable",			1,		1,		1},			
														--Production Mults and Accumulation Cap:
		{	--Vanilla item			Replacement item	Amount	Time	Cap
				--Basic
			{"FUEL2",				"FUEL2",			1,		0.83,	750*1.2},	--Cond. Carbon,			(Added by PTSd)
			{"TRA_COMPONENT1",		"TRA_COMPONENT1",	1,		0.033,	900},		--Enormous Metal Cog,	(Added by PTSd)
			{"CASING",				"CASING",			1,		2,		15},		--Metal Plating,		0.2,	1,		60
			{"POWERCELL",			"POWERCELL",		1,		1,		30},		--Ion Battery,			0.2,	1,		60
			{"PRODFUEL2",			"PRODFUEL2",		1,		2,		15},		--Life Support Gel,		0.2,	1,		60
			{"FARMPROD3",			"FARMPROD3",		1,		1.5,	20},		--Glass,				0.33,	1,		100
			{"GAS1",				"GAS1",				1.6,	1,		750*1.6},	--Sulphurine,			0.33,	1,		1500
			{"GAS2",				"GAS2",				1.6,	1,		750*1.6},	--Radon,				0.33,	1,		1500
			{"GAS3",				"GAS3",				1.6,	1,		750*1.6},	--Nitrogen,				0.33,	1,		1500
				--Agricultural
			{"PLANT_POOP",			"PLANT_POOP",		0.5,	1,		750/2},		--Faecium,				0.33,	1,		1500
			{"PLANT_RADIO",			"PLANT_RADIO",		1,		1,		750},		--Gamma Root,			0.33,	1,		1100
			{"PLANT_DUST",			"PLANT_DUST",		2,		2,		750},		--Cactus Root,			0.33,	1,		1100
			{"PLANT_TOXIC",			"PLANT_TOXIC",		1,		1,		750},		--Fungal Mould,			0.33,	1,		1100
			{"PLANT_HOT",			"PLANT_HOT",		1,		2,		750/2},		--Solanium,				0.33,	1,		1500
			{"PLANT_SNOW",			"PLANT_SNOW",		1,		0.5,	750*2},		--Frost Crystal,		0.33,	1,		1100
			{"PLANT_LUSH",			"PLANT_LUSH",		0.5,	1,		750/2},		--Star Bulb,			0.33,	1,		1500
			{"PLANT_CAVE",			"PLANT_CAVE",		0.6,	1,		750*0.6},	--Marrow Bulb,			0.33,	1,		1500
			{"PLANT_WATER",			"PLANT_WATER",		0.6,	1,		750*0.6},	--Kelp Sac,				0.33,	1,		1500
				--Starport
			{"LAUNCHFUEL",			"LAUNCHSUB",		1.6,	0.83,	750*1.6*1.2},--Starship Launch Fuel,0.1,	1,		20
			{"HYPERFUEL1",			"ANTIMATTER",		1,		2*0.83,	15*1.2},	--Warp Cell,			0.1,	1,		20
			{"FRIGATE_FUEL_1",		"ROCKETSUB",		1.6,	0.83,	750*1.6*1.2},--Frigate Fuel (50t),	0.1,	1,		10
				--Entertainment
			{"FOOD_R_PIECASE",		"TECHFRAG",			1,		0.5,	750*2},		--Nanites,				(Added by PTSd)
			{"EXP_CURIO1",			"EXP_CURIO1",		1,		2.5,	12},		--Korvax Casing,		0.1,	1,		10
			{"BP_SALVAGE",			"BP_SALVAGE",		1,		1,		30},		--Salvaged Data,		(Added by PTSd)
			{"EXP_CURIO2",			"EXP_CURIO2",		1,		2.5,	12},		--Convergence Cube,		0.5,	1,		210
				--Industrial
			{"OXYGEN",				"OXYGEN",			1.6,	1,		750*1.6},	--Oxygen,				(Added by PTSd)
			{"REACTION2",			"ALLOY1",			1,		1.56,	20},		--Enriched Carbon,		0.5,	1,		10
			{"COMPOUND2",			"REACTION2",		1,		1.76,	17},		--Semiconductor,		0.2,	1,		10
			{"MEGAPROD2",			"COMPOUND2",		1,		4.17,	8},			--Quantum Processor,	0.1,	1,		10
				--Commercial
			{"TRA_TECH1",			"TRA_TECH2",		1,		0.15,	200},		--Decommissioned Circuits,0.75,	1,		140
			{"TRA_ALLOY3",			"TRA_ALLOY4",		1,		0.6,	50},		--Optical Solvent,		0.66,	1,		140
			{"TRA_COMMODITY5",		"TRA_TECH4",		1,		0.6,	50},		--Teleport Coordinators,0.5,	1,		140
			{"TRA_COMPONENT5",		"TRA_COMPONENT5",	1,		0.83,	36},		--Vector Compressors,	0.5,	1,		140
			{"TRA_ENERGY5",			"TRA_ENERGY5",		1,		0.83,	36},		--Fusion Core,			0.5,	1,		140
			{"TRA_EXOTICS5",		"TRA_COMMODITY5",	1,		0.83,	36}			--Neural Duct,			0.5,	1,		140
		}
	},
	{								--Multipliers for	Amount	Time	Cap (These multipliers apply to all the specific items in the table below)
		{"AutophageProductionElementsSelectable",		1,		1,		1},		
														--Production Mults and Accumulation Cap:
		{	--Vanilla item			Replacement item	Amount	Time	Cap
				--Basic
			{"TRA_COMPONENT1",		"TRA_COMPONENT1",	1,		0.033,	900},		--Enormous Metal Cog,	(Added by PTSd)
			{"CASING",				"CASING",			1,		2,		15},		--Metal Plating,		0.2,	1,		60
			{"NANOTUBES",			"NANOTUBES",		1,		2,		15},		--Carbon Nanotubes,		0.2,	1,		60
			{"CARBON_SEAL",			"CARBON_SEAL",		1,		2,		15},		--Hermetic Seal,		0.2,	1,		60
			{"FARMPROD3",			"FARMPROD3",		1,		1.5,	20},		--Glass,				0.33,	1,		100
			{"ROBOT1",				"ROBOT1",			1,		1,		750},		--Pugneum,				0.33,	1,		1500
			{"ROBOT2",				"MICROCHIP",		1,		0.83,	36},		--Atlantideum,			0.33,	1,		1500
			{"SPACEGUNK3",			"SPACEGUNK3",		1,		0.83,	750*1.2},	--Rusted Metal,			0.33,	1,		1500
				--Agricultural
			{"PLANT_POOP",			"PLANT_POOP",		0.5,	1,		750/2},		--Faecium,				0.33,	1,		1500
			{"PLANT_RADIO",			"PLANT_RADIO",		1,		1,		750},		--Gamma Root,			0.33,	1,		1100
			{"PLANT_DUST",			"PLANT_DUST",		2,		2,		750},		--Cactus Root,			0.33,	1,		1100
			{"PLANT_TOXIC",			"PLANT_TOXIC",		1,		1,		750},		--Fungal Mould,			0.33,	1,		1100
			{"PLANT_HOT",			"PLANT_HOT",		1,		2,		750/2},		--Solanium,				0.33,	1,		1500
			{"PLANT_SNOW",			"PLANT_SNOW",		1,		0.5,	750*2},		--Frost Crystal,		0.33,	1,		1100
			{"PLANT_LUSH",			"PLANT_LUSH",		0.5,	1,		750/2},		--Star Bulb,			0.33,	1,		1500
			{"PLANT_CAVE",			"PLANT_CAVE",		0.6,	1,		750*0.6},	--Marrow Bulb,			0.33,	1,		1500
			{"PLANT_WATER",			"PLANT_WATER",		0.6,	1,		750*0.6},	--Kelp Sac,				0.33,	1,		1500
				--Starport
			{"LAUNCHFUEL",			"LAUNCHSUB",		1.6,	1,		750*1.6},	--Starship Launch Fuel,	0.1,	1,		20
			{"HYPERFUEL2",			"ANTIMATTER",		1,		2,		15},		--Warp Cell,			0.1,	1,		20
			{"FRIGATE_FUEL_1",		"ROCKETSUB",		1.6,	1,		750*1.6},	--Frigate Fuel (50t),	0.1,	1,		10
				--Entertainment
			{"FOOD_R_PIECASE",		"ROBOT2",			1,		1,		750},		--Atlantideum,			(Added by PTSd)
			{"SENTINEL_LOOT",		"REPAIRKIT",		1,		5,		6},			--Salvaged Glass,		0.2,	1,		5
			{"DRONE_SHARD",			"DRONE_SHARD",		1,		0.5,	60},		--Radiant Shard,		0.2,	1,		30
			{"DRONE_SALVAGE",		"DRONE_SALVAGE",	1,		0.83,	36},		--Inverted Mirror,		0.1,	1,		5
				--Industrial
			{"OXYGEN",				"OXYGEN",			1.6,	0.83,	750*1.6*1.2},--Oxygen,				(Added by PTSd)
			{"FARMPROD4",			"ALLOY3",			1,		1.56*0.83,	20*1.2},--Heat Capacitor,		0.1,	1,		10
			{"COMPOUND4",			"FARMPROD8",		1,		5.5*0.83,	11*1.2},--Fusion Accelerant,	0.1,	1,		10
			{"FARMPROD8",			"COMPOUND5",		1,		8.13*0.83,	4*1.2},	--Living Glass,			0.1,	1,		10
				--Commercial
			{"SALVAGE_TECH2",		"SALVAGE_TECH2",	1,		0.25,	120},		--Handful of Cogs,		(Added by PTSd)
			{"HYDRALIC",			"HYDRALIC",			1,		1.25,	24},		--Hydraulic Wiring,		1,		1,		30
			{"COMPUTER",			"COMPUTER",			1,		1.25,	24},		--Quantum Computer,		1,		1,		30
			{"MAGNET",				"MAGNET",			1,		1.25,	24},		--Magnetic Resonator,	1,		1,		30
			{"MIRROR",				"MIRROR",			1,		1.25,	24},		--Solar Mirror,			1,		1,		140
			{"BIO",					"BIO",				1,		1.67,	18},		--Amino Chamber,		1,		1,		30
			{"SALVAGE_TECH3",		"SALVAGE_TECH3",	1,		0.83,	36}			--Reinforced Piping,	(Added by PTSd)
		}
	}
}

SettlementRaceList =
{"Gek", "Vykeen", "Korvax", "Autophage"}

SettlementRaceIndProd1 =
{"REACTION3", "REACTION1", "REACTION2", "FARMPROD4"}

SettlementRaceComProd3 =
{"TRA_COMPONENT5", "TRA_ALLOY5", "TRA_COMMODITY5", "MAGNET"}

function AddBasicSettlementOutput (Race, Amount, Time, Cap, Item)
    return
[[<Property name="]]..Race..[[ProductionElementsSelectable" value="GcSettlementProductionElement">
			<Property name="ProductionAmountMultiplier" value="]]..Amount..[[" />
			<Property name="ProductionTimeMultiplier" value="]]..Time..[[" />
			<Property name="ProductionAccumulationCap" value="]]..Cap..[[" />
			<Property name="Product" value="]]..Item..[[" />
			<Property name="Requirements" />
		</Property>]]
end

function AddSettlementOutput (Race, Amount, Time, Cap, Item, Building, BuildingLevel)
    return
[[<Property name="]]..Race..[[ProductionElementsSelectable" value="GcSettlementProductionElement">
			<Property name="ProductionAmountMultiplier" value="]]..Amount..[[" />
			<Property name="ProductionTimeMultiplier" value="]]..Time..[[" />
			<Property name="ProductionAccumulationCap" value="]]..Cap..[[" />
			<Property name="Product" value="]]..Item..[[" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcSettlementProductionElementRequirement" _index="0">
					<Property name="RequiredSettlementBuildingType" value="GcBuildingClassification">
						<Property name="BuildingClass" value="]]..Building..[[" />
					</Property>
					<Property name="RequiredSettlementBuildingLevel" value="]]..BuildingLevel..[[" />
				</Property>
			</Property>
		</Property>]]
end

function AddSettlementIndustry0Output (Race, Amount, Time, Cap, Item)
    return
[[<Property name="]]..Race..[[ProductionElementsSelectable" value="GcSettlementProductionElement">
			<Property name="ProductionAmountMultiplier" value="]]..Amount..[[" />
			<Property name="ProductionTimeMultiplier" value="]]..Time..[[" />
			<Property name="ProductionAccumulationCap" value="]]..Cap..[[" />
			<Property name="Product" value="]]..Item..[[" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcSettlementProductionElementRequirement" _index="0">
					<Property name="RequiredSettlementBuildingType" value="GcBuildingClassification">
						<Property name="BuildingClass" value="Settlement_SmallIndustrial" />
					</Property>
					<Property name="RequiredSettlementBuildingLevel" value="0" />
				</Property>
				<Property name="Requirements" value="GcSettlementProductionElementRequirement" _index="1">
					<Property name="RequiredSettlementBuildingType" value="GcBuildingClassification">
						<Property name="BuildingClass" value="Settlement_Double" />
					</Property>
					<Property name="RequiredSettlementBuildingLevel" value="0" />
				</Property>
				<Property name="Requirements" value="GcSettlementProductionElementRequirement" _index="2">
					<Property name="RequiredSettlementBuildingType" value="GcBuildingClassification">
						<Property name="BuildingClass" value="Settlement_Factory" />
					</Property>
					<Property name="RequiredSettlementBuildingLevel" value="0" />
				</Property>
				<Property name="Requirements" value="GcSettlementProductionElementRequirement" _index="3">
					<Property name="RequiredSettlementBuildingType" value="GcBuildingClassification">
						<Property name="BuildingClass" value="Settlement_Tower" />
					</Property>
					<Property name="RequiredSettlementBuildingLevel" value="0" />
				</Property>
			</Property>
		</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,   
	["EXML_CREATE"] = "FALSE",  
    ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSETTLEMENTGLOBALS.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						--[[{
							["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
							["MATH_OPERATION"] = "*", 
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Production",	MaxProductionCapMult}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatProductivityContributionModifiers"},
							["MATH_OPERATION"] = "/", 
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Production",	MaxProductionCapMult}
							}
						},]]
						{
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"DailyDebtPaymentModifier",	DebtMult},					--Sometimes this seems like it should be doubled again, to be 4x Production cap in order to closely match expected time?
								{"ProductionCycleDurationInSeconds",	ProductionCycleMult},
								{"ProductUnitsPerCycleRateModifier",	ProductMult},
								{"SubstanceUnitsPerCycleRateModifier",	SubstanceMult},
								{"JudgementWaitTimeMin",	JudgementTimeMultiplier},
								{"JudgementWaitTimeMax",	JudgementTimeMultiplier},
							}
						},
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"SettlementMiniExpeditionSuccessChance",	SettlementMiniExpeditionSuccessChance},
								{"BuildingUpgradeTimeInSeconds",	BuildingUpgradeTimeInSeconds},
								{"TowerRechargeTime",	TowerRechargeTime},
								{"BuildingFreeUpgradeTimeInSeconds",	FreeUpgradeTime},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TowerPowerRechargeTime"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"EarnNavigationData",	TowerRechargeTime},
								{"ScanForBuildings",	TowerRechargeTime},
								{"ScanForAnomalies",	TowerRechargeTime},
								{"ScanForCrashedShips",	TowerRechargeTime},
							}
						},
						--[[
						{
							["PRECEDING_KEY_WORDS"] = {"StatProductivityContributionModifiers"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Production",	ProductionContributionModifier},
								{"Debt",	DebtContributionModifier},
							}
						},
						]]
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] 		= "ALL",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IGNORE",	ConstructionTimeMultiplier}
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"GekProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "CASING"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddBasicSettlementOutput ("Gek", "0.2", "0.2", "999", "ASTEROID3")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"GekProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "TRA_CURIO2"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddSettlementOutput ("Gek", "0.2", "0.3", "10", "FOOD_R_CAKEMIX", "Settlement_Bar", "2")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"KorvaxProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "CASING"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddBasicSettlementOutput ("Korvax", "0.33", "1", "1500", "FUEL2")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"KorvaxProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "EXP_CURIO2"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddSettlementOutput ("Korvax", "0.1", "1", "10", "BP_SALVAGE", "Settlement_Bar", "2")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"VykeenProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "CASING"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddBasicSettlementOutput ("Vykeen", "0.33", "1", "1500", "CREATURE1")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"VykeenProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "WAR_CURIO2"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddSettlementOutput ("Vykeen", "0.1", "1", "10", "SENTINEL_LOOT", "Settlement_Bar", "2")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"AutophageProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "HYDRALIC"},
							["ADD_OPTION"]  = "ADDbeforeSECTION",
							["ADD"] = AddSettlementOutput ("Autophage", "1", "0.27", "30", "SALVAGE_TECH2", "Settlement_Market", "1")
						},
						{
							["PRECEDING_FIRST"] = "TRUE", 
							["PRECEDING_KEY_WORDS"] = {"AutophageProductionElementsSelectable"},
							["SPECIAL_KEY_WORDS"] = {"Product", "BIO"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSettlementOutput ("Autophage", "1", "0.6", "30", "SALVAGE_TECH3", "Settlement_Market", "3")
						},
						{
							["SPECIAL_KEY_WORDS"] = {"AutophageProductionElementsSelectable", "GcSettlementProductionElement",	"Product", "MAGNET",		"BuildingClass", "Settlement_Market"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RequiredSettlementBuildingLevel",	"1"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"AutophageProductionElementsSelectable", "GcSettlementProductionElement",	"Product", "MIRROR",		"BuildingClass", "Settlement_Market"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RequiredSettlementBuildingLevel",	"2"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"AutophageProductionElementsSelectable", "GcSettlementProductionElement",	"Product", "BIO",		"BuildingClass", "Settlement_Market"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RequiredSettlementBuildingLevel",	"2"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"GekProductionElementsSelectable", "GcSettlementProductionElement",	"Product", "REACTION3",		"BuildingClass", "Settlement_Tower"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RequiredSettlementBuildingLevel",	"1"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Product", "PLANT_CAVE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RequiredSettlementBuildingLevel",	"1"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {
								{"Product", "PLANT_RADIO"},
								{"Product", "PLANT_DUST"},
								{"Product", "PLANT_TOXIC"},
								{"Product", "PLANT_HOT"},
								{"Product", "PLANT_SNOW"},
								{"Product", "PLANT_LUSH"},
							},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RequiredSettlementBuildingLevel",	"2"}
							}
						},
					}
				}
            }
		}
    }
}	

local ChangesToProducedItems = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #SettlementRaceList do
	local SettlementRace = SettlementRaceList[i]
	local SettlementType = SettlementRace.."ProductionElementsSelectable"
	local SettlementIndProd1 = SettlementRaceIndProd1[i]
	local SettlementComProd3 = SettlementRaceComProd3[i]

			ChangesToProducedItems[#ChangesToProducedItems+1] =
			{
				["PRECEDING_FIRST"] = "TRUE", 
				["PRECEDING_KEY_WORDS"] = {SettlementType},
				["SPECIAL_KEY_WORDS"] = {"Product", "CASING"},
				["ADD_OPTION"]  = "ADDbeforeSECTION",
				["ADD"] = AddBasicSettlementOutput (SettlementRace, "1", "1", "30", "TRA_COMPONENT1")
			}
			ChangesToProducedItems[#ChangesToProducedItems+1] =
			{
				["PRECEDING_FIRST"] = "TRUE", 
				["PRECEDING_KEY_WORDS"] = {SettlementType},
				["SPECIAL_KEY_WORDS"] = {"Product", "FRIGATE_FUEL_1"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddSettlementOutput (SettlementRace, "1", "1", "30", "FOOD_R_PIECASE", "Settlement_Bar", "0")
			}
			ChangesToProducedItems[#ChangesToProducedItems+1] =
			{
				["PRECEDING_FIRST"] = "TRUE", 
				["PRECEDING_KEY_WORDS"] = {SettlementType},
				["SPECIAL_KEY_WORDS"] = {"Product", SettlementIndProd1},
				["ADD_OPTION"]  = "ADDbeforeSECTION",
				["ADD"] = AddSettlementIndustry0Output (SettlementRace, "1", "1", "1500", "OXYGEN")
			}
			ChangesToProducedItems[#ChangesToProducedItems+1] =
			{
				["SPECIAL_KEY_WORDS"] = {SettlementType, "GcSettlementProductionElement",		"Product", SettlementComProd3,		"BuildingClass", "Settlement_Market"},
				["SECTION_UP_SPECIAL"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredSettlementBuildingLevel",	"2"}
				}
			}
end



for i = 1, #ProducedItemChanges do
	local SettlementType = ProducedItemChanges[i][1][1]
	local RaceAmountMult = ProducedItemChanges[i][1][2]
	local RaceTimeMult = ProducedItemChanges[i][1][3]
	local RaceCapMult = ProducedItemChanges[i][1][4]
	local Items = ProducedItemChanges[i][2]

	for j = 1, #Items do
		local OldItem = Items[j][1]
		local NewItem = Items[j][2]
		local ProdAmount = Items[j][3]*RaceAmountMult
		local ProdTime = Items[j][4]*RaceTimeMult
		local ProdCap = math.ceil(Items[j][5]*RaceCapMult)

			ChangesToProducedItems[#ChangesToProducedItems+1] =
			{
				["PRECEDING_FIRST"] = "TRUE", 
				["PRECEDING_KEY_WORDS"] = {SettlementType},
				["SPECIAL_KEY_WORDS"] = {"Product", OldItem},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ProductionAmountMultiplier", ProdAmount},
					{"ProductionTimeMultiplier", ProdTime},
				}
			}
			ChangesToProducedItems[#ChangesToProducedItems+1] =
			{
				["PRECEDING_FIRST"] = "TRUE", 
				["PRECEDING_KEY_WORDS"] = {SettlementType},
				["SPECIAL_KEY_WORDS"] = {"Product", OldItem},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ProductionAccumulationCap", ProdCap},
					{"Product", NewItem}
				}
			}
	end
end