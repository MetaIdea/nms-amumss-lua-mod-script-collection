ModName = "PTSd Tech + Upgrade + Recipe + Blueprint cost Rebalance"
GameVersion = "4_52"
--Currently balancing around Survival Mode

--Procedural Tech (Upgrades) multipliers to the "BaseValue" cost
UpgradeCMult	=		1.2							--Vanilla cost is	60		This multiplies the vanilla "BaseValue", affecting both purchase and selling prices.	E.G. "1.2" means you sell them for 1.2x the vanilla price, and shops charge 1.2x more
UpgradeCBaseMarkup	=	0.2							--0.2						This replaces the vanilla "BuyBaseMarkup", affecting how much shops mark up the price ON TOP OF the actual value. E.G. "0.2" means shops charge BaseValue + (0.2 x BaseValue) for total price of 1.2x BaseValue. 
UpgradeBMult	=		2.4							--Vanilla cost is	140
UpgradeBBaseMarkup	=	0.2							--0.2
UpgradeAMult	=		1.8							--Vanilla cost is	300
UpgradeABaseMarkup	=	1							--0.2
UpgradeSMult	=		2.4							--Vanilla cost is	480
UpgradeSBaseMarkup	=	2							--0.2
UpgradeXMult	=		1.8							--Vanilla cost is	280, 320, 600	(depends of which tech it upgrades)
UpgradeXBaseMarkup	=	0.2							--0.2

RegUpgradeSpaceStationMarkup = 0					--0						Doesn't seem to apply to regular upgrades.	Affects the buying AND selling price when using space station trade terminals or item vendors on outlaw stations ON TOP OF other values, e.g. a value of 0.5 means space stations charge & pay +50% more than other sources
SusUpgradeSpaceStationMarkup = 1					--0						For suspicious upgrades in Outlaw stations.	Untested.

UpgradeScannerMult	=	1							--Additional multiplier to apply to BaseValue of all Scanner upgrades (including X class) on top of the above multipliers

--Global Tech cost multipliers		(Currently also affects the price of Technology purchased from other places like Minor Settlements also. )
TechCostMult = 			20							--Multiplier applies to the "FragmentCost" of the technology items with costs greater than or equal to 50, which are all probably techs the Anomaly is selling for 50~460 Nanites?	(Nautilon High-Power Sonar is 10, though)
	--Additional multipliers are applied to specific Tech to balance them due to normally having unbalanced prices that are too high or too low, e.g. Translator tech having a very high price
	--These adjustment multipliers can be seen and changed in the TechAdjustments Table below

--Recipe Cost mutipliers	(Note, these multipliers also apply to the cost in Factory Override Units to unlock at a breached Manufacturing facility, so you should make sure the "FACT_TOKEN" reward for those is also multiplied by the same amount, e.g. by BountyandExpeditionRewards+FactTokens mod)
	--NOTE: Probably works best if these are all the same value, so that you can use that same value to multiply the Factory Override Token award amount and stack size
AtlasPassesMult	=					10			--Multiplier applied to default cost of 250 Nanites
ComponentCraftsMult	=				10			--Multiplier applied to default cost of 250 Nanites for Components & Devices
ValuableCraftsMult	=				10			--Multiplier applied to default cost of 250 Nanites			(125 Nanites for Alloys, though SOMETIMES???)

--Blueprint cost multipliers
ExoCraftBuildingsMult	=			7.5			--Multiplier applied to default cost of 4, 8, or 10 Salvaged Data
ColossusBuildingsMult	=			3.75		--Multiplier applied to default cost of 8
ExoCraftSummonBuildingsMult	=		2			--Multiplier applied to default cost of 12 Salvaged Data
FarmingBlueprintsMult	=			8			--Multiplier applied to default cost of 3 Salvaged Data 
LargePlanterBlueprintMult	=		0.5			--Multiplier applied to default cost of 10 Salvaged Data 
BioDomeBlueprintMult	=			3			--Multiplier applied to default cost of 10 Salvaged Data 
CookingAndLivestockMult	=			3			--Multiplier applied to default cost of 10 Salvaged Data
SimpleMachineMult	=				5			--Multiplier applied to default cost of 1 Salvaged Data
MachineMult	=						3			--Multiplier applied to default cost of 10 Salvaged Data	(Alternative Landing Pad is 1 Salvaged Data, though)
MedRefinerMult	=					1.5			--Multiplier applied to default cost of 10 Salvaged Data
AntimatterReactorMult	=			2.5			--Multiplier applied to default cost of 20 Salvaged Data
StorageContainers012Mult	=		1			--Multiplier applied to default cost of 5 Salvaged Data for Containers 0, 1, & 2	(These are the only ones given freely by the base building mission in PTSd)
StorageContainers345Mult	=		2			--Multiplier applied to default cost of 5 Salvaged Data for Containers 3, 4, & 5
StorageContainers678Mult	=		3			--Multiplier applied to default cost of 5 Salvaged Data for Containers 6, 7, & 8
StorageContainer9Mult	=			4			--Multiplier applied to default cost of 5 Salvaged Data for Container 9
FabricatorsMult	=					10			--Multiplier applied to default cost of 1 Salvaged Data (These are the Barrel/Crate Fabricators that spawn items)
WonderProjectorMult	=				0.5			--Multiplier applied to default cost of 12 Salvaged Data

FreighterDoubleCultivationRoomMult	=	2		--Multiplier applied to default cost of 1 Salvaged Frigate Data
FreighterScannerRoomMult			=	3		--Multiplier applied to default cost of 1 Salvaged Frigate Data
FreighterExocraftRoomMult			=	2		--Multiplier applied to default cost of 1 Salvaged Frigate Data
FreighterRefinerRoomMult			=	2		--Multiplier applied to default cost of 1 Salvaged Frigate Data

--Specific Tech Adjustment Multipliers	(stacks multiplicatively with the TechCostMult)
TechAdjustments =
{
	{--	ID					Multiplier		Name					Unlock cost in Nanites / Salvaged Frigate Modules
		"UT_TRANSLATE1",	0.15		--Translator Tech
	},
	{
		"UT_TRANSLATE2",	0.15
	},
	{
		"UT_TRANSLATE3",	0.15
	},
	{
		"MECH_PILOT",	0.6875			--Minotaur AI Pilot						480 Nanites
	},
	{
		"MECH_SCAN0",	1				--Minotaur Basic Radar Array (added by PTSd)	120 Nanites
	},
	{
		"MECH_SCAN",	2				--Minotaur Radar Array					120 Nanites
	},
	{
		"MECH_LASER1",	0.7143			--Precision Minotaur Laser				210 Nanites
	},
	{
		"MECH_GUN",	0.7143				--Minotaur Cannon						210 Nanites
	},
	{
		"MECH_MINER",	0.7143			--Minotaur Bore							210 Nanites
	},
	{
		"VEHICLE_SCAN",	1				--Exocraft Signal Booster				120 Nanites
	},
	{
		"VEHICLE_SCAN1",	0.65		--Advanced Signal Booster				210 Nanites
	},
	{
		"VEHICLE_SCAN2",	0.5			--Exocraft Signal Booster Upgrade Tau	320 Nanites
	},
	{
		"UT_MINER",	0.3					--Optical Drill							460 Nanites
	},
	{
		"UT_MIDAIR",	0.35			--Airburst Engine						460 Nanites
	},
	{
		"UT_JUMP",	0.8					--Rocket Boots							200 Nanites
	},
	{
		"UT_PULSEFUEL",	0.2				--Instability Drive
	},
	{
		"UT_PULSESPEED",	0.3			--Sub-light amplifier					460 Nanites
	},
	{
		"UT_QUICKWARP",	0.2				--Emergency Warp						240 Nanites
	},
	{
		"UT_LAUNCHCHARGE",	0.4			--Launch System Recharger				460 Nanites
	},
	{
		"EXO_RECHARGE",	1.5				--Icarus Fuel System					120 Nanites
	},
	{
		"SUB_RECHARGE",	0.3				--Osmotic Generator						350 Nanites		(doesn't actually recharge, just gives a discount)
	},
	{
		"SUB_LASER",	0.5				--Tethys Beam							450 Nanites
	},
	{
		"SUB_GUN",	0.5					--Nautilon Cannon						250 Nanites
	},
	{
		"SUB_BINOCS0",	1				--Basic Sonar (Added by PTSd)			120 Nanites
	},
	{
		"SUB_BINOCS",	24				--High-Power Sonar 						10 Nanites
	},
	{
		"SUIT_REFINER",	0.4				--Personal Refiner						360 nanites
	},
	{
		"SUIT_REFINER2",	0.4			--Personal Refiner Mk 2					580 nanites
	},
	{
		"UT_WATERJET",	0.3				--Efficient Water Jets
	},
	{
		"UT_WATERENERGY",	0.65		--Oxygen Rerouter						240 Nanites
	},
	{
		"UT_SURVEY",	0.5				--Survey Device
	},
	{
		"UT_HOT",	0.4					--Coolant Network						160 Nanites
	},
	{
		"UT_COLD",	0.4					--Thermic Layer							160 Nanites
	},
	{
		"UT_TOX",	0.4					--Toxic Suppressor						160 Nanites
	},
	{
		"UT_RAD",	0.4					--Radiation Deflector					160 Nanites
	},
	{
		"UT_PROTECT",	0.67			--Shield Lattice						120 Nanites		Cost reduced since it now is given freely in Base Computer Archive mission chain
	},
	{
		"STEALTH",	1.5					--Cloaking Device 
	},
	{
		"HDRIVEBOOST1",	1.5				--Cadmium Drive							80 Nanites
	},
	{
		"HDRIVEBOOST2",	1.5				--Emeril Drive							120 Nanites
	},
	{
		"HDRIVEBOOST3",	1.2				--Indium Drive							200 Nanites
	},
	{
		"CARGOSHIELD",	0.5				--Cargo Scan Deflector					240 Nanites
	},
	{
		"UT_SHIPDRIFT",	0.3				--Flight Assist Override				460 Nanites
	},
	{
		"SUIT_ROCKET",	2.3334			--Trade Rocket							90 Nanites
	},
	{
		"F_TELEPORT",	3.2				--Matter Beam							5 Salvaged Frigate Modules			(Not affected by TechCostMult)
	},
	{
		"UT_STUNDMG",	0.75			--Voltaic Amplifier						180 Nanites
	},
	{
		"GRENADE",	0.8					--Plasma Launcher						150 Nanites
	},
	{
		"TERRAIN_GREN",	0.8				--Geology Cannon						150 Nanites
	},
	{
		"STUN_GREN",	1.6				--Paralysis Mortar						150 Nanites
	},
	{
		"SHIPROCKETS",	1				--Rocket Launcher						100 Nanites
	},
	{
		"UT_ROCKETS",	3				--Large Rocket Tubes					50 Nanites
	},
}

--Weapon Tech Adjustment Multipliers	(stacks multiplicatively with the TechCostMult)
	--Note: Does not include Rockets, Grenades, or Exocraft weapons, which are handled above instead
MultiToolCoreWeaponMult =		0.6		--Most core weapon techs for Multi-Tools, like Blaze Javelin				250 Nanites
MultiToolUpgWeaponMult =		0.6667	--Most "support" weapon techs for Multi-Tools, like Mass Accelerator		180 Nanites
StarshipCoreWeaponMult =		1		--Most core weapon techs for Starships, like Phase Beam						150 Nanites
StarshipUpgWeaponMult =			1		--Most "support" weapon techs for Starships, like Fourier De-Limiter		120 Nanites
	--Note: By default, the Boltcaster & Photon Cannon "support" techs only have ~50% the price of other weapon techs
BoltAndPhotonSupportMult =		1.5		--(Stacks with all previous multipliers)									90 / 75 Nanites

--Changes how likely certain techs are to be found pre-installed on "wild" starships & multi-tools
	--Options for Rarity are "Always", "VeryCommon", "Common", "Normal", "Rare", "VeryRare", "Impossible"
TechRarityChanges =
{
--Starship techs
	{
		"UT_LAUNCHCHARGE",		"Impossible",				--Launch Auto-Charger	"VeryRare"
	},
	{
		"HDRIVEBOOST1",			"Impossible",				--Cadmium Drive			"VeryRare"
	},
	{
		"HDRIVEBOOST2",			"Impossible",				--Emeril Drive			"VeryRare"
	},
	{
		"SHIPROCKETS",			"Normal",					--Rocket Launcher		"Common"
	},
	{
		"UT_ROCKETS",			"Impossible",				--Large Rocket Tubes	"Rare"
	},
	{
		"SHIPSCAN_ECON",		"Rare",						--Economy Scanner		"Normal"
	},
	{
		"SHIPSCAN_COMBAT",		"Rare",						--Conflict Scanner		"Normal"
	},
	{
		"F_HDRIVEBOOST1",		"Impossible",				--Warp Core Resonator	"Rare"
	},
	{
		"F_HDRIVEBOOST2",		"Impossible",				--Plasmatic Warp Injector	"VeryRare"
	},
--Multi-Tool techs
	{
		"UT_SURVEY",			"Impossible",				--Survey Device			"Common"
	},
	{
		"UT_MINER",				"Impossible",				--Optical Drill			"Common"
	},
	{
		"STUN_GREN",			"Impossible",				--Paralysis Mortar		"Common"
	},
	{
		"STRONGLASER",			"VeryRare",					--Advanced Mining Laser	"Common"
	},
	{
		"GRENADE",				"Rare",						--Plasma Launcher		"Common"
	},
	{
		"TERRAIN_GREN",			"Rare",						--Geology Cannon		"Common"
	},
	{
		"RAILGUN",				"Rare",						--Blaze Javelin			"Common"
	},
	{
		"SHOTGUN",				"Rare",						--Scatter Blaster		"Common"
	},
	{
		"SMG",					"Rare",						--Pulse Spitter			"Common"
	},
	{
		"UT_STUNDMG",			"Impossible",				--Voltaic Amplifier		"Rare"
	},
	{
		"T_SCAN",				"Normal",					--Procedural Scan upgrade	"Common"
	},
}

--Adds various items as new components for certain techs
AddItems =
{		--Tech ID				Item ID			# of Items	Item Type
	{	--Cadmium Drive			
		"HDRIVEBOOST1",			"ATLAS_SEED_1",		1,		"Product",
	},
	{	--Emeril Drive			
		"HDRIVEBOOST2",			"ATLAS_SEED_3",		1,		"Product",
	},
	{	--Indium Drive			
		"HDRIVEBOOST3",			"ATLAS_SEED_5",		1,		"Product",
	},
	{	--Large Rocket Tubes			
		"UT_ROCKETS",			"BLUE2",			50,		"Substance",
	},
	{	--Haz-Mat Gauntlet			
		"POWERGLOVE",			"RED2",				50,		"Substance",
	},
	{	--Advanced Exocraft Laser 
		"VEHICLE_LASER1",		"RED2",				50,		"Substance",
	},
	{	--Precision Minotaur Laser 
		"MECH_LASER1",			"RED2",				50,		"Substance",
	},
	--The following "techs" are actually damaged slots in crashed starships / broken Multi-Tools, repairing them costs half the component cost
	{	--Hull Fracture			
		"SHIPSLOT_DMG1",		"TECH_COMP",		4,		"Product",		--Wiring Loom
	},
	{	--Rusted Circuits			
		"SHIPSLOT_DMG2",		"RED2",				320,	"Substance",	--Cadmium
	},
	{	--Shattered Bulwark			
		"SHIPSLOT_DMG3",		"TECH_COMP",		2,		"Product",		--Wiring Loom
	},
	{	--Shattered Bulwark			
		"SHIPSLOT_DMG3",		"BLUE2",			160,	"Substance",	--Indium
	},
	{	--Radiation Leak			
		"SHIPSLOT_DMG4",		"TECH_COMP",		2,		"Product",		--Wiring Loom
	},
	{	--Damaged Gears			
		"SHIPSLOT_DMG6",		"SALVAGE_TECH7",	1,		"Product",		--Recycled Circuitry
	},
	{	--Damaged Gears			
		"SHIPSLOT_DMG6",		"BLUE2",			160,	"Substance",	--Indium
	},
	{	--Hydraulics Damage			
		"SHIPSLOT_DMG7",		"SALVAGE_TECH7",	1,		"Product",		--Recycled Circuitry
	},
	{	--Hydraulics Damage			
		"SHIPSLOT_DMG7",		"SALVAGE_TECH7",	1,		"Product",		--Recycled Circuitry
	},
	{	--Hydraulics Damage			
		"SHIPSLOT_DMG7",		"BLUE2",			160,	"Substance",	--Indium
	},
	{	--Exploded Panel			
		"SHIPSLOT_DMG8",		"GREEN2",			240,	"Substance",	--Emeril
	},
	{	--Corroded Tanks			
		"SHIPSLOT_DMG9",		"TECH_COMP",		2,		"Product",		--Wiring Loom
	},
	{	--Corroded Tanks			
		"SHIPSLOT_DMG9",		"RED2",				320,	"Substance",	--Cadmium
	},
	{	--Burnt-Out Compressor			
		"SHIPSLOT_DMG10",		"RED2",				320,	"Substance",	--Cadmium
	},
	{	--Short Circuit			
		"WEAPSLOT_DMG1",		"TECH_COMP",		2,		"Product",		--Wiring Loom
	},
	{	--Short Circuit			
		"WEAPSLOT_DMG1",		"COLD1",			50,		"Substance",	--Dioxite
	},
	{	--Blown Transistor			
		"WEAPSLOT_DMG2",		"GREEN2",			120,	"Substance",	--Emeril
	},
	{	--Blown Transistor			
		"WEAPSLOT_DMG2",		"LUSH1",			50,		"Substance",	--Paraffinium
	},
	{	--Rusted Power Core			
		"WEAPSLOT_DMG4",		"RADIO1",			50,		"Substance",	--Uranium
	},
	{	--Rusted Power Core			
		"WEAPSLOT_DMG4",		"RED2",				160,	"Substance",	--Cadmium
	},
	{	--Corrupt Module			
		"WEAPSLOT_DMG5",		"BLUE2",			80,		"Substance",	--Indium
	},
	{	--Loom Damage			
		"WEAPSLOT_DMG6",		"SALVAGE_TECH7",	1,		"Product",		--Recycled Circuitry
	},
	{	--Loom Damage			
		"WEAPSLOT_DMG6",		"BLUE2",			80,		"Substance",	--Indium
	},
	{	--Corroded Actuator			
		"WEAPSLOT_DMG7",		"GREEN2",			120,	"Substance",	--Emeril
	},
	{	--Melted Servos			
		"WEAPSLOT_DMG9",		"BLUE2",			80,		"Substance",	--Indium
	},
	{	--Shattered Lens			
		"WEAPSLOT_DMG10",		"GREEN2",			120,	"Substance",	--Emeril
	},
}
--Replaces an existing component for certain techs with various items instead
ReplaceItems =
{		--Tech ID				Item ID			# of Items	Item Type		Replaced Item
	{	--Launch Auto-Charger 
		"UT_LAUNCHCHARGE",		"ATLAS_SEED_6",		1,		"Product",		"ANTIMATTER",
	},
	{	--Warp Core Resonator 
		"F_HDRIVEBOOST1",		"ATLAS_SEED_3",		1,		"Product",		"AM_HOUSING",
	},
	{	--Plasmatic Warp Injector 
		"F_HDRIVEBOOST2",		"ATLAS_SEED_5",		1,		"Product",		"AM_HOUSING",
	},
	{	--Reality De-Threader 
		"F_HDRIVEBOOST3",		"ATLAS_SEED_7",		1,		"Product",		"AM_HOUSING",
	},
	{	--Matter Beam 
		"F_TELEPORT",			"ATLAS_SEED_10",	16,		"Product",		"ANTIMATTER",
	},
	{	--Superior Translator 
		"UT_TRANSLATE2",		"RED2",				50,		"Substance",	"STELLAR2",
	},
	{	--Advanced Translator 
		"UT_TRANSLATE3",		"GREEN2",			50,		"Substance",	"ASTEROID3",
	},
	{	--Survey Device 
		"UT_SURVEY",			"BLUE2",			100,	"Substance",	"COMPUTER",
	},
	{	--Optical Drill 
		"UT_MINER",				"ATLAS_SEED_2",		1,		"Product",		"COMPUTER",
	},
	{	--Voltaic Amplifier 
		"UT_STUNDMG",			"BLUE2",			50,		"Substance",	"POWERCELL",
	},
	{	--Paralysis Mortar 
		"STUN_GREN",			"ATLAS_SEED_4",		1,		"Product",		"JELLY",
	},
	{	--Trade Rocket 
		"SUIT_ROCKET",			"ATLAS_SEED_4",		4,		"Product",		"LAUNCHSUB",
	},
	{	--Icarus Fuel System 
		"EXO_RECHARGE",			"BLUE2",			50,		"Substance",	"MICROCHIP",
	},
	{	--Radar Amplifier 
		"VEHICLE_SCAN1",		"ATLAS_SEED_2",		1,		"Product",		"POWERCELL",
	},
	{	--Radar Power Resonator 
		"VEHICLE_SCAN2",		"ATLAS_SEED_4",		1,		"Product",		"POWERCELL",
	},
	{	--Megawatt Heater 
		"EXO_PROT_COLD",		"BLUE2",			50,		"Substance",	"RADIO1",
	},
	{	--Thermal Buffer 
		"EXO_PROT_HOT",			"BLUE2",			50,		"Substance",	"CARBON_SEAL",
	},
	{	--Neutron Shielding 
		"EXO_PROT_RAD",			"BLUE2",			50,		"Substance",	"CAVE2",
	},
	{	--Air Filtration Unit 
		"EXO_PROT_TOX",			"BLUE2",			50,		"Substance",	"NANOTUBES",
	},
	{	--High-Power Sonar 
		"SUB_BINOCS",			"BLUE2",			50,		"Substance",	"LAND1",
	},
	{	--Minotaur Radar Array 
		"MECH_SCAN",			"BLUE2",			75,		"Substance",	"STELLAR2",
	},
	{	--Personal Refiner Mk 2 
		"SUIT_REFINER2",		"GREEN2",			120,	"Substance",	"CAVE2",
	},
	{	--Polyphonic Core
		"UT_BUI_SCAN2",			"RED2",				160,	"Substance",	"COMPUTER",
	},
	--The following "techs" are actually damaged slots in crashed starships / broken Multi-Tools, repairing them costs half the component cost
	{	--Containment Failure
		"SHIPSLOT_DMG5",		"GREEN2",			240,	"Substance",	"STELLAR2",			--Was 120 Chromatic Metal in Vanilla
	},
	{	--Damaged Gears
		"SHIPSLOT_DMG6",		"SALVAGE_TECH7",	1,		"Product",		"TECH_COMP",		--Was 6 Wiring Loom in Vanilla
	},
	{	--Hydraulics Damage
		"SHIPSLOT_DMG7",		"SALVAGE_TECH7",	1,		"Product",		"COLD1",			--Was 80 Dioxite in Vanilla
	},
	{	--Hydraulics Damage
		"SHIPSLOT_DMG7",		"COLD1",			80,		"Substance",	"OXYGEN",			--Was 100 Oxygen in Vanilla
	},
	{	--Burnt-Out Compressor
		"SHIPSLOT_DMG10",		"TECH_COMP",		6,		"Product",		"TECH_COMP",		--Was 4 Wiring Loom in Vanilla
	},
	{	--Blown Transistor
		"WEAPSLOT_DMG2",		"TECH_COMP",		6,		"Product",		"TECH_COMP",		--Was 2 Wiring Loom in Vanilla
	},
	{	--Corrupt Module
		"WEAPSLOT_DMG5",		"SALVAGE_TECH7",	1,		"Product",		"TOXIC1",			--Was 50 Ammonia in Vanilla
	},
	{	--Corrupt Module
		"WEAPSLOT_DMG5",		"SALVAGE_TECH7",	1,		"Product",		"RADIO1",			--Was 50 Uranium in Vanilla
	},
	{	--Loom Damage
		"WEAPSLOT_DMG6",		"SALVAGE_TECH7",	1,		"Product",		"COLD1",			--Was 50 Dioxite in Vanilla
	},
	{	--Loom Damage
		"WEAPSLOT_DMG6",		"SALVAGE_TECH7",	1,		"Product",		"LUSH1",			--Was 50 Paraffinium in Vanilla
	},
	{	--Corroded Actuator
		"WEAPSLOT_DMG7",		"TECH_COMP",		8,		"Product",		"TECH_COMP",		--Was 3 Wiring Loom in Vanilla
	},
	{	--Burnt-Out Terminal
		"WEAPSLOT_DMG8",		"TECH_COMP",		6,		"Product",		"TECH_COMP",		--Was 1 Wiring Loom in Vanilla
	},
}

--New recipe for installing Oxygen Recycler (PTSd boosts its strength)
OROxygen = 90							--60 Oxygen
ORHermSeal = 1							--0 Hermetic Seal
ORIonBatt = 3							--0 Ion Batteries

--New recipe for installing Matter Beam in freighter
--MatterHeart = 16						--Heart of the Sun		(5 Antimatter in vanilla)
MatterBulk = 1							--Cargo Bulkhead		(3 Magnet in vanilla)
MatterAug = 1							--Storage Augmentation	(10 Wiring Loom in vanilla)

--New recipe for installing Interstellar Scanner in freighter
IntScannerWalkBrain = 1					--Walker Brain			(160 Chromatic Metal in vanilla)
IntScannerHardEngine = 1				--Hardframe Engine		(70 Mag. Ferrite in vanilla)
IntScannerWireLoom = 2					--2 Wiring Loom

--New recipe for installing Pilot Interface in Sentinel Interceptor
	--Note that the cost to repair/install for all of the following will actually be half of these values, but always at least 1
InterceptShards = 12					--6 Radiant Shards
InterceptMirror = 4						--1 Inverted Mirror
InterceptBrain = 1						--1 Harmonic Brain
InterceptAIValves = 4					--0 Starship AI Valves		(Technically added as a new custom separate tech to repair, not part of the Pilot Interface)

--Added item costs for repairing all broken slots on Sentinel Multi-Tools
SemiconductorAmount = 1								--0		Semiconductor
RecycledCircuitAmount = 1							--0		Recycled Circuitry ( x2 )
	--Note, there are 2 "slots" which each require the "RecycledCircuitAmount" amount of Recycled Circuitry

--New recipe for installing Minotaur AI Pilot in Exomech
AIPilotComputer = 8						--1 Quantum Computer
AIPilotAPU = 16							--Autonomous Positioning Unit	(1 Antimatter in vanilla)
AIPilotLoom = 4							--1 Wiring Loom

--Adds Hardframe Engine as a requirement for all Exo-Mech Hardframe upgrades
MechPart = [[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="MECH_PROD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>]]
--Adds 2x Quad Servo as a requirement for Sentinel Hardframe Legs upgrade (Since they already require Hardframe Engine)
QuadParts = [[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="QUAD_PROD" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
        </Property>]]

--Changes various fuel related values for Minotaur exomech
MinotaurFuelRate = 3						--0.5		Changes base fuel usage rate for Minotaur exomech engine (higher value uses fuel faster)
MinotaurBoreChargeAmount = 500				--200		The "tank size" of how much "charge"/"fuel" the Minotaur Bore can hold. (Terrain Manipulator is 600)
MinotaurBoreChargeCost = 0.5				--			Multiplier to apply to the cost of recharging the Minotaur Bore. (Terrain Manipulator is 1/3 as expensive to recharge as Minotaur Bore normally) E.G. a value of 2 means it costs twice as much to recharge the same size "tank" as vanilla

--Changes how much substances it costs to refill the Biofuel Reactor for a set amount of time (the max size of the fuel tank is controlled in "gBase Items BasicX.lua")
BiofuelRefillCostMult = 2					--1			In vanilla it takes 50 Carbon / 17 Cond. Carbon / 25 Oxygen for 25 hours worth of charge, so a "2" here means it would take 100 Carbon / 34 Cond. Carbon / 50 Oxygen to fill it for 25 hours worth of charge

--Changes the cost of using & recharging the Trade Rocket (fuel usage altered in PTSD Black Hole Distance + Ship Scrapping Items + Misc.lua)
RocketChargeAmount = 50						--50	The "tank size" of how much "charge"/"fuel" it can hold
RocketChargeCost = 8						--Multiplier to apply to the cost of recharging the Trade Rocket. E.G. a value of 2 means it costs twice as much to recharge the same size "tank" as vanilla

--Everything below this point doesn't need to be changed, all the values can be edited in the sections above

RecipeChanges	=
{
{
	{
		AtlasPassesMult
	},
	{
		"ACCESS1",
		"ACCESS2",
		"ACCESS3"
	}
},
{
	{
		ComponentCraftsMult
	},
	{
		"CASING",
		"NANOTUBES",
		"CARBON_SEAL",
		"MICROCHIP",
		"HYDRALIC",
		"COMPUTER",
		"MAGNET",
		"MIRROR",
		"BIO",
		"TECH_COMP",
		"PRODFUEL2",
		"POWERCELL",
		"HYPERFUEL1",
		"HYPERFUEL2",
		"GRENFUEL1",
		"SUBFUEL",
		"SHIPCHARGE",
		"ALLOY1",
		"ALLOY2",
		"ALLOY3",
		"ALLOY4",
		"ALLOY5",
		"ALLOY6",
		"ALLOY7",
		"ALLOY8"
	}
},
{
	{
		ValuableCraftsMult
	},
	{
		"TRA_CURIO1",
		"FARMPROD1",
		"FARMPROD2",
		"FARMPROD3",
		"FARMPROD4",
		"FARMPROD5",
		"FARMPROD6",
		"FARMPROD7",
		"FARMPROD8",
		"FARMPROD9",
		"REACTION1",
		"REACTION2",
		"REACTION3",
		"COMPOUND1",
		"COMPOUND2",
		"COMPOUND3",
		"COMPOUND4",
		"COMPOUND5",
		"COMPOUND6",
		"MEGAPROD1",
		"MEGAPROD2",
		"MEGAPROD3",
		"ULTRAPROD1",
		"ULTRAPROD2",
		"TRA_ALLOY1",
		"TRA_ALLOY2",
		"TRA_ALLOY3",
		"TRA_ALLOY4",
		"TRA_ALLOY5"
	}
},
{
	{
		ExoCraftBuildingsMult				-- Keep in mind the roamer (base cost 4 Salvage) needs to be unlocked first to unlock others...
	},
	{
		"GARAGE_S",				--8			(Nomad)
		"GARAGE_M",				--4			(Roamer)
		"GARAGE_B",				--10		(Pilgrim)
		"GARAGE_SUB",			--10		(Nautilon)
		"GARAGE_MECH"			--10		(Minotaur)
	}
},
{
	{
		ColossusBuildingsMult				-- Keep in mind the roamer (base cost 4 Salvage) needs to be unlocked first to unlock others...
	},
	{
		"GARAGE_L",				--8			(Colossus)
	}
},
{
	{
		ExoCraftSummonBuildingsMult
	},
	{
		"SUMMON_GARAGE",		--12
		"GARAGE_FREIGHT"		--15		--Deprecated, as of NMS v3.97 has been replaced by version bought with Salvaged Frigate Modules on Freighter bridge
	}
},
{
	{
		FarmingBlueprintsMult
	},
	{
		"PLANTER",
		"TOXICPLANT",
		"SNOWPLANT",
		"RADIOPLANT",
		"BARRENPLANT",
		"LUSHPLANT",
		"SCORCHEDPLANT",
		"CREATUREPLANT",
		"POOPPLANT",
		"GRAVPLANT",
		"SACVENOMPLANT",
		"PEARLPLANT",
		"NIPPLANT"
	}
},
{
	{
		LargePlanterBlueprintMult
	},
	{
		"PLANTERMEGA",			--10
	}
},
{
	{
		BioDomeBlueprintMult
	},
	{
		"BIOROOM"				--10
	}
},
{
	{
		CookingAndLivestockMult
	},
	{
		"COOKER",				--10
		"CREATURE_FEED",		--10
		"CREATURE_FARM",		--10
	}
},
{
	{
		SimpleMachineMult
	},
	{
		"O2_HARVESTER",			--1
		"BUILDHARVESTER",		--1		(Autonomous Mining Unit)
		"BUILDGASHARVEST",		--1		(Atmosphere Harvester)
		"CARBONPLANTER"			--1		(Standing Planter)
	}
},
{
	{
		MachineMult
	},
	{
		"BUILD_REFINER3",		--10	(Large Refiner)
		"SHIPSUMMON",			
		--"BUILDTERMINAL",		--10?	Galactic Trade Terminal
		"BUILDLANDINGPAD",		--10
		"S_LANDINGZONE",		--1		(Alternative Landing Pad)
		"U_EXTRACTOR_S",		--10	(Mineral Extractor)
		"U_GASEXTRACTOR",		--10	(Gas Extractor)
		"U_GENERATOR_S"			--10	(Electromagnetic Generator)
	}
},
{
	{
		MedRefinerMult
	},
	{
		"BUILD_REFINER2",		--10	(Medium Refiner)
	}
},
{
	{
		AntimatterReactorMult
	},
	{
		"BUILDANTIMATTER"		--20
	}
},
{
	{
		StorageContainers012Mult
	},
	{
		"CONTAINER0",
		"CONTAINER1",
		"CONTAINER2"
	},
},
{
	{
		StorageContainers345Mult
	},
	{
		"CONTAINER3",
		"CONTAINER4",
		"CONTAINER5"
	},
},
{
	{
		StorageContainers678Mult
	},
	{
		"CONTAINER6",
		"CONTAINER7",
		"CONTAINER8"
	},
},
{
	{
		StorageContainer9Mult
	},
	{
		"CONTAINER9"
	},
},
{
	{
		FabricatorsMult
	},
	{
		"CRATELCYLINDER",				--1		Barrel Fabricator
		"CRATELRARE"					--1		Crate Fabricator
	}
},
{
	{
		WonderProjectorMult
	},
	{
		"HOLO_DISCO_0"					--12	Wonder Projector
	}
},
{
	{
		FreighterDoubleCultivationRoomMult
	},
	{
		"FRE_ROOM_PLANT0"				----Double Cultivation Chamber	1 Salvaged Frigate Modules
	}
},
{
	{
		FreighterScannerRoomMult
	},
	{
		"FRE_ROOM_SCAN"					--Scanner Room					1 Salvaged Frigate Modules
	},
},
{
	{
		FreighterExocraftRoomMult
	},
	{
		"FRE_ROOM_VEHICL"				--Orbital Exocraft Materializer	1 Salvaged Frigate Modules
	}
},
{
	{
		FreighterRefinerRoomMult
	},
	{
		"FRE_ROOM_REFINE"				--Refiner Room					1 Salvaged Frigate Modules
	}
},
}

UpgradeChanges = 
{
	{
		{
			UpgradeCMult,	UpgradeCBaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT1",
			"U_CANNON1",
			"U_EXOBOOST1",
			"U_EXOGUN1",
			"U_EXOLAS1",
			"U_EXO_ENG1",
			"U_EXO_SUB1",
			"U_EXO_SUBGUN1",
			"U_GRENADE1",
			"U_HYPER1",
			"U_JETBOOST1",
			"U_LASER1",
			"U_LAUNCH1",
			"U_PULSE1",
			"U_RAIL1",
			"U_SCANNER1",
			"U_SHIELDBOOST1",
			"U_SHIPBLOB1",
			"U_SHIPGUN1",
			"U_SHIPLAS1",
			"U_SHIPMINI1",
			"U_SHIPSHIELD1",
			"U_SHIPSHOT1",
			"U_SHOTGUN1",
			"U_SMG1",
			"U_TGRENADE1",
			"AP_PULSE1",
			"AP_LAUNCH1",
			"AP_HYPER1",
			"AP_SHIPSHIELD1",
			"AP_SHIPGUN1",
			"AP_SHIPLAS1",
			"U_FR_HYP1",
			"U_FR_SPE1",
			"U_FR_FUEL1",
			"U_FR_COM1",
			"U_FR_TRA1",
			"U_FR_EXP1",
			"U_FR_MINE1"
		}
	},
	{
		{
			UpgradeBMult,	UpgradeBBaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT2",
			"U_CANNON2",
			"U_COLDPROT1",
			"U_ENERGY1",
			"U_EXOBOOST2",
			"U_EXOGUN2",
			"U_EXOLAS2",
			"U_EXO_ENG2",
			"U_EXO_SUB2",
			"U_EXO_SUBGUN2",
			"U_GRENADE2",
			"U_HOTPROT1",
			"U_HYPER2",
			"U_JETBOOST2",
			"U_LASER2",
			"U_LAUNCH2",
			"U_MECHGUN2",
			"U_MECHLAS2",
			"U_MECH_ENG2",
			"U_PULSE2",
			"U_RAD1",
			"U_RAIL2",
			"U_SCANNER2",
			"U_SHIELDBOOST2",
			"U_SHIPBLOB2",
			"U_SHIPGUN2",
			"U_SHIPLAS2",
			"U_SHIPMINI2",
			"U_SHIPSHIELD2",
			"U_SHIPSHOT2",
			"U_SHOTGUN2",
			"U_SMG2",
			"U_TGRENADE2",
			"U_TOX1",
			"U_UNW1",
			"AP_PULSE2",
			"AP_LAUNCH2",
			"AP_HYPER2",
			"AP_SHIPSHIELD2",
			"AP_SHIPGUN2",
			"AP_SHIPLAS2",
			"U_FR_HYP2",
			"U_FR_SPE2",
			"U_FR_FUEL2",
			"U_FR_COM2",
			"U_FR_TRA2",
			"U_FR_EXP2",
			"U_FR_MINE2"
		}
	},
	{
		{
			UpgradeAMult,	UpgradeABaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT3",
			"U_CANNON3",
			"U_COLDPROT2",
			"U_ENERGY2",
			"U_EXOBOOST3",
			"U_EXOGUN3",
			"U_EXOLAS3",
			"U_EXO_ENG3",
			"U_EXO_SUB3",
			"U_EXO_SUBGUN3",
			"U_GRENADE3",
			"U_HOTPROT2",
			"U_HYPER3",
			"U_JETBOOST3",
			"U_LASER3",
			"U_LAUNCH3",
			"U_MECHGUN3",
			"U_MECHLAS3",
			"U_MECH_ENG3",
			"U_PULSE3",
			"U_RAD2",
			"U_RAIL3",
			"U_SCANNER3",
			"U_SHIELDBOOST3",
			"U_SHIPBLOB3",
			"U_SHIPGUN3",
			"U_SHIPLAS3",
			"U_SHIPMINI3",
			"U_SHIPSHIELD3",
			"U_SHIPSHOT3",
			"U_SHOTGUN3",
			"U_SMG3",
			"U_TGRENADE3",
			"U_TOX2",
			"U_UNW2",
			"AP_PULSE3",
			"AP_LAUNCH3",
			"AP_HYPER3",
			"AP_SHIPSHIELD3",
			"AP_SHIPGUN3",
			"AP_SHIPLAS3",
			"U_FR_HYP3",
			"U_FR_SPE3",
			"U_FR_FUEL3",
			"U_FR_COM3",
			"U_FR_TRA3",
			"U_FR_EXP3",
			"U_FR_MINE3"
		}
	},
	{
		{
			UpgradeSMult,	UpgradeSBaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT4",
			"U_CANNON4",
			"U_COLDPROT3",
			"U_ENERGY3",
			"U_EXOBOOST4",
			"U_EXOGUN4",
			"U_EXOLAS4",
			"U_EXO_ENG4",
			"U_EXO_SUB4",
			"U_EXO_SUBGUN4",
			"U_GRENADE4",
			"U_HOTPROT3",
			"U_HYPER4",
			"U_JETBOOST4",
			"U_LASER4",
			"U_LAUNCH4",
			"U_MECHGUN4",
			"U_MECHLAS4",
			"U_MECH_ENG4",
			"U_PULSE4",
			"U_RAD3",
			"U_RAIL4",
			"U_SCANNER4",
			"U_SHIELDBOOST4",
			"U_SHIPBLOB4",
			"U_SHIPGUN4",
			"U_SHIPLAS4",
			"U_SHIPMINI4",
			"U_SHIPSHIELD4",
			"U_SHIPSHOT4",
			"U_SHOTGUN4",
			"U_SMG4",
			"U_TGRENADE4",
			"U_TOX3",
			"U_UNW3",
			"AP_PULSE4",
			"AP_LAUNCH4",
			"AP_HYPER4",
			"AP_SHIPSHIELD4",
			"AP_SHIPGUN4",
			"AP_SHIPLAS4",
			"U_FR_HYP4",
			"U_FR_SPE4",
			"U_FR_FUEL4",
			"U_FR_COM4",
			"U_FR_TRA4",
			"U_FR_EXP4",
			"U_FR_MINE4",
			"U_SENTSUIT",
			"U_SENTGUN"
		}
	},
	{
		{
			UpgradeXMult,	UpgradeXBaseMarkup,		SusUpgradeSpaceStationMarkup
		},
		{
			"U_BOLTX",
			"U_CANNONX",
			"U_ENERGYX",
			"U_GRENADEX",
			"U_HYPERX",
			"U_JETBOOSTX",
			"U_LASERX",
			"U_LAUNCHX",
			"U_PULSEX",
			"U_RAILX",
			"U_SCANNERX",
			"U_SHIELDBOOSTX",
			"U_SHIPBLOBX",
			"U_SHIPGUNX",
			"U_SHIPLASX",
			"U_SHIPMINIX",
			"U_SHIPSHIELDX",
			"U_SHIPSHOTX",
			"U_SHOTGUNX",
			"U_SMGX",
			"U_TGRENADEX",
			"U_HAZARDX"
		}
	}
}

UpgradeScannerChanges =
{
	{
		"U_SCANNER1",	UpgradeScannerMult
	},
	{
		"U_SCANNER2",	UpgradeScannerMult
	},
	{
		"U_SCANNER3",	UpgradeScannerMult
	},
	{
		"U_SCANNER4",	UpgradeScannerMult
	},
	{
		"U_SCANNERX",	UpgradeScannerMult
	}
}

WeaponTechCostChanges =
{
	{
		{
			MultiToolCoreWeaponMult
		},
		{
			"RAILGUN", "SHOTGUN", "SMG", "FLAME", "CANNON"
		}
	},
	{
		{
			MultiToolUpgWeaponMult
		},
		{
			"UT_BOLT", "UT_BOLTBOUNCE", "BOLT_SM", "UT_RAIL", "UT_RAIL_STUN", "UT_SHOT", "UT_SMG", "UT_SMGBOUNCE", "UT_SMG_DOT", "UT_CANNON"
		}
	},
	{
		{
			StarshipCoreWeaponMult
		},
		{
			"SHIPLAS1", "SHIPSHOTGUN", "SHIPMINIGUN", "SHIPPLASMA"
		}
	},
	{
		{
			StarshipUpgWeaponMult
		},
		{
			"UT_SHIPGUN", "UT_SHIPLAS", "UT_SHIPSHOT", "UT_SHIPMINI", "UT_SHIPBLOB"
		}
	},
	{
		{
			BoltAndPhotonSupportMult
		},
		{
			"UT_BOLT", "UT_BOLTBOUNCE", "UT_SHIPGUN"
		}
	},
}

TextA =
[[<Property name="Children" />]]

AddedSentToolRepairCost =
[[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="COMPOUND2" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="]]..SemiconductorAmount..[[" />
        </Property>
		<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="SALVAGE_TECH7" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="]]..RecycledCircuitAmount..[[" />
        </Property>
		<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="SALVAGE_TECH7" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="]]..RecycledCircuitAmount..[[" />
        </Property>]]

NewInterceptorRepairTech =
[[<Property value="GcTechnology.xml">
      <Property name="ID" value="MAINT_CEPTOR" />
      <Property name="Group" value="" />
      <Property name="Name" value="Broken AI Valves" />
      <Property name="NameLower" value="broken ai valves" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_MAINTAIN_TECH_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_MAINTAIN_TECH5_DESC" />
      </Property>
      <Property name="Teach" value="False" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/TRADEPROD.EXOTICS5.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="False" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Earth" />
      </Property>
      <Property name="ChargeBy" />
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="True" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="False" />
      <Property name="Upgrade" value="False" />
      <Property name="Core" value="True" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Maintenance" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="SALVAGE_TECH10" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="]]..InterceptAIValves..[[" />
        </Property>
      </Property>
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="StatBonuses" />
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="2" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="False" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
	  <Property name="ExclusivePrimaryStat" value="False" />
    </Property>]]

NewInterceptorTechRepairSlot = 
[[<Property value="GcMaintenanceElement.xml">
          <Property name="ItemGroupOverride" value="GcMaintenanceElementGroups.xml">
            <Property name="MaintenanceGroup" value="Custom" />
          </Property>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Technology" />
          </Property>
          <Property name="Id" value="MAINT_CEPTOR" />
          <Property name="MinRandAmount" value="0" />
          <Property name="MaxRandAmount" value="0" />
          <Property name="MaxCapacity" value="-1" />
          <Property name="AmountEmptyTimePeriod" value="0" />
          <Property name="HideWhenComplete" value="False" />
          <Property name="BlockDiscardWhenAllowedForParent" value="False" />
          <Property name="UpdateType" value="UpdatesAlways" />
          <Property name="DamagedAfterTimePeriodMin" value="0" />
          <Property name="DamagedAfterTimePeriodMax" value="0" />
          <Property name="DamageStatus" value="Damaged" />
          <Property name="CompletionRequirement" value="FullyRepaired" />
        </Property>]]
		
NewContainerTree =
[[<Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="CONTAINER0" />
            <Property name="Children">
			  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_STORE0" />
                    <Property name="Children" />
                  </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_STORE1" />
                    <Property name="Children" />
                  </Property>
				  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER2" />
                    <Property name="Children">
						<Property value="GcUnlockableItemTreeNode.xml">
						  <Property name="Unlockable" value="FRE_ROOM_STORE2" />
						  <Property name="Children" />
					    </Property>
					</Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER3" />
                    <Property name="Children">
						<Property value="GcUnlockableItemTreeNode.xml">
						  <Property name="Unlockable" value="FRE_ROOM_STORE3" />
						  <Property name="Children" />
					    </Property>
					</Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER4" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_STORE4" />
                    <Property name="Children" />
                  </Property>
				  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER5" />
                    <Property name="Children">
						<Property value="GcUnlockableItemTreeNode.xml">
						  <Property name="Unlockable" value="FRE_ROOM_STORE5" />
						  <Property name="Children" />
					    </Property>
					</Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER6" />
                    <Property name="Children">
						<Property value="GcUnlockableItemTreeNode.xml">
						  <Property name="Unlockable" value="FRE_ROOM_STORE6" />
						  <Property name="Children" />
					    </Property>
					</Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER7" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_STORE7" />
                    <Property name="Children" />
                  </Property>
				  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER8" />
                    <Property name="Children">
						<Property value="GcUnlockableItemTreeNode.xml">
						  <Property name="Unlockable" value="FRE_ROOM_STORE8" />
						  <Property name="Children" />
					    </Property>
					</Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER9" />
                    <Property name="Children">
						<Property value="GcUnlockableItemTreeNode.xml">
						  <Property name="Unlockable" value="FRE_ROOM_STORE9" />
						  <Property name="Children" />
					    </Property>
					</Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>]]

AddRefinerRoom =
[[<Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILD_REFINER3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="FRE_ROOM_REFINE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>]]

AddTradeRoom =
[[<Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSAVE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDTERMINAL" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="FRE_ROOM_SHOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>]]

AddCultRoom =
[[<Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FRE_ROOM_PLANT1" />
                <Property name="Children" />
              </Property>]]

AddSavePoint =
[[<Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDSAVE" />
                <Property name="Children" />
              </Property>]]

AddNewHerox =
[[<Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="ALLOY7" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>]]

AddNewGrantine =
[[<Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY6" />
                        <Property name="Children" />
                      </Property>]]


function Invert (value)
    return
    1/value
end

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

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Greatly increases the cost for unlocking various technologies, blueprints, recipes, upgrades, mainly aiming for those found in the Anomaly",         
  ["MOD_AUTHOR"]			= "Xen0nex",         
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
							["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
							["REPLACE_TYPE"] 		= "ALL",			  -- "ALL" to change every matching values or leave empty for single replacement
							["VALUE_MATCH"] 		= "49", 			  -- only change value(s) that match this value
							["VALUE_MATCH_OPTIONS"] = ">",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FragmentCost",	TechCostMult},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "SUB_BINOCS"},
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FragmentCost",	TechCostMult},						--Special case for High-Power Sonar since it's Nanite cost is not greater than or equal to 50 (10)
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_ENERGY",	"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	OROxygen},
							}
						},
						--[[
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT",	"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	MatterHeart},
								{"ID",	"ATLAS_SEED_10"},
							}
						},
						]]
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT",	"ID", "MAGNET"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	MatterBulk},
								{"ID",	"FREI_INV_TOKEN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT",	"ID", "TECH_COMP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	MatterAug},
								{"ID",	"SHIP_INV_TOKEN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_SCANNER",	"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	IntScannerWalkBrain},
								{"ID",	"WALKER_PROD"},
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "F_SCANNER",		"ID", "WALKER_PROD"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_SCANNER",	"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	IntScannerHardEngine},
								{"ID",	"MECH_PROD"},
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"ID", "F_SCANNER",		"ID", "MECH_PROD"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_SCANNER",	"ID", "TECH_COMP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	IntScannerWireLoom},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "LIFESUP_ROBO",	"ID", "DRONE_SHARD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	InterceptShards},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "LIFESUP_ROBO",	"ID", "DRONE_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	InterceptMirror},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "LIFESUP_ROBO",	"ID", "SHIPBRAIN_CLEAN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	InterceptBrain},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSENT_DMG1"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddedSentToolRepairCost
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSENT_DMG2"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddedSentToolRepairCost
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSENT_DMG3"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddedSentToolRepairCost
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAPSENT_DMG4"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddedSentToolRepairCost
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_PILOT",	"ID", "COMPUTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	AIPilotComputer},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_PILOT",	"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	AIPilotAPU},
								{"ID",	"TRA_TECH4"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_PILOT",	"ID", "TECH_COMP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	AIPilotLoom},
							}
						},
						{	--Removes Pugenum / Life Support gel from these recipes so that they still have a total of 3 ingredients
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_L_ARM",		"ID","ROBOT1"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_R_ARM",		"ID","ROBOT1"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_HEAD",		"ID","PRODFUEL2"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UT_ENERGY"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("CARBON_SEAL", ORHermSeal, "Product"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UT_ENERGY"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedItemCost ("POWERCELL", ORIonBatt, "Product"),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_L_ARM"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = MechPart,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_R_ARM"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = MechPart,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_LEGS"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = QuadParts,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_HEAD"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = MechPart,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_ENGINE",	"StatsType","Vehicle_EngineFuelUse"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	MinotaurFuelRate},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_MINER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	MinotaurBoreChargeAmount},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_MINER"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeMultiplier",	Invert (MinotaurBoreChargeCost)},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_BURNER"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeMultiplier",	Invert (BiofuelRefillCostMult)},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_ROCKET"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	RocketChargeAmount},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_ROCKET"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeMultiplier",	Invert (RocketChargeCost)},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcTechnology.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = NewInterceptorRepairTech
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] = {"ID","FACT_TOKEN"}, 
                            ["MATH_OPERATION"]         = "*",  
                            ["REPLACE_TYPE"]         = "ALL",  
                            ["VALUE_MATCH"]         = "", 
							["INTEGER_TO_FLOAT"] = "PRESERVE",
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"StackMultiplier",    ValuableCraftsMult} 					--Multiplies the stackmultiplier for Factory Override Tokens so that you can hoid more of them, since you get awarded more also
                            }
                        }
                    }
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
					["EXML_CHANGE_TABLE"]     = 
                    {
                        {
							["SPECIAL_KEY_WORDS"] = {"Title","UI_EXOCRAFT_TREE",		"Unlockable","FRE_ROOM_VEHICL"},		--Removes Orbital Exocraft Materializer from Anomaly unlock station
							["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title","UI_EXOCRAFT_TREE",		"Unlockable","SUMMON_GARAGE"},
                            ["ADD"] = TextA
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","F_SCANNER"}, 		--Swaps position of Matter Beam and Interstellar Scanner in freighter unlock tree
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"Unlockable",    "F_TELEPORT"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","F_TELEPORT"}, 
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"Unlockable",    "F_SCANNER"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title","UI_STORAGE_TREE",		"Unlockable","CONTAINER0"},		--Removes vanilla Storage Container tree
							--["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title","UI_STORAGE_TREE",		"CostTypeID","SALVAGE"},
                            ["ADD"] = NewContainerTree
                        },
						--Removes Refiner Room from Freighter unlock tree and replaces it with the Industrial Room
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "FRE_ROOM_IND"},	
							--["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"Unlockable",    "FRE_ROOM_REFINE"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "FRE_ROOM_REFINE"},		
							--["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"Unlockable",    "FRE_ROOM_IND"}
                            }
                        },
						--Adds Refiner Room under the Large Refiner in the base building unlock tree
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_S9_BASEPARTS_TREE",		"Unlockable", "BUILD_REFINER3"},		--Removes vanilla Storage Container tree
							--["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_S9_BASEPARTS_TREE",		"Unlockable", "BUILDANTIMATTER"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddRefinerRoom
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE",		"Unlockable", "BUILD_REFINER3"},		--Removes vanilla Storage Container tree
							--["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE",		"Unlockable", "BUILDANTIMATTER"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddRefinerRoom
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "FRE_ROOM_DRESS"},	
							["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"Unlockable",    "FRE_ROOM_SHOP"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "FRE_ROOM_SHOP"},		
							["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"Unlockable",    "FRE_ROOM_DRESS"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE",		"Unlockable", "BUILDTERMINAL"},		--Removes vanilla Trade Terminal tree
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_PURCHASABLE_BASEPARTS_TREE",		"Unlockable", "BUILDLANDINGPAD"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddTradeRoom
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_S9_BASEPARTS_TREE",		"Unlockable", "BUILDTERMINAL"},		--Removes vanilla Trade Terminal tree
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_S9_BASEPARTS_TREE",		"Unlockable", "DRESSING_TABLE"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddTradeRoom
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "PLANTERMEGA"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddCultRoom
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_PURCHASABLE_BASICTECH_TREE",		"Unlockable", "BUILDBEACON"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddSavePoint
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "UI_PURCHASABLE_BASICPARTS_TREE",		"Unlockable", "BUILDBEACON"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddSavePoint
                        },
						--These 4 edits move the recipe for Geodesite to be below Herox instead of Grantine
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "ALLOY3"},
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "ALLOY2"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddNewHerox
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "ALLOY6"},
                            ["REMOVE"] = "SECTION"
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable", "ALLOY5"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
                            ["ADD"] = AddNewGrantine
                        },
                    }
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\COCKPITDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
							["ADD"] = NewInterceptorTechRepairSlot,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"]         = "+",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VisibleMaintenanceSlots", 1},
							}
						},
					}
				},
            }
		}
    }
}	

local ChangesToTechTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #TechAdjustments do
	-- local ChangesToProductTable5_temp
	local TechID = TechAdjustments[i][1]
		
		Multiplier = TechAdjustments[i][2]
			ChangesToTechTable[#ChangesToTechTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"ID", TechID},  
				["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"FragmentCost", Multiplier}
				}
			}
end
for i = 1, #WeaponTechCostChanges do
	local Multiplier = WeaponTechCostChanges[i][1][1]
	local TechIDs = WeaponTechCostChanges[i][2]

	for j = 1, #TechIDs do
	
			local TechID = TechIDs[j]
			ChangesToTechTable[#ChangesToTechTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",
				["SPECIAL_KEY_WORDS"] = {"ID", TechID},  
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"FragmentCost", Multiplier}
				}
			}
	end
end
for i = 1, #TechRarityChanges do
	local TechIDNum = TechRarityChanges[i][1]
	local TechRarity = TechRarityChanges[i][2]
		
			ChangesToTechTable[#ChangesToTechTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID",TechIDNum,	"Rarity", "GcTechnologyRarity.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TechnologyRarity", TechRarity}
				}
			}
end
for i = 1, #AddItems do
	local TechIDNum = AddItems[i][1]
	local AddItemID = AddItems[i][2]
	local AddItemAmount = AddItems[i][3]
	local AddItemType = AddItems[i][4]
		
			ChangesToTechTable[#ChangesToTechTable+1] =
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
		
			ChangesToTechTable[#ChangesToTechTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",	 
				["SPECIAL_KEY_WORDS"] = {"ID", TechIDNum,	"ID", OldCompID},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Amount",	AddItemAmount},
					{"ID",	AddItemID},
					{"InventoryType", AddItemType}
				}
			}
end

local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	-- local ChangesToProductTable_temp
	local Multiplier = RecipeChanges[i][1][1]
	local RecipeIDs = RecipeChanges[i][2]

	for j = 1, #RecipeIDs do
	
			RecipeID = RecipeIDs[j]
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"ID", RecipeID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RecipeCost", Multiplier}
				}
			}
	end
end
for i = 1, #UpgradeChanges do
	-- local ChangesToProductTable4_temp
	local ValueMult = UpgradeChanges[i][1][1]
	local BaseMarkup = UpgradeChanges[i][1][2]
	local StationMarkup = UpgradeChanges[i][1][3]
	local ItemIDs = UpgradeChanges[i][2]
		
	for j = 1, #ItemIDs do
	
		ItemID = ItemIDs[j]
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},  
				["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
			
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},  
				["MATH_OPERATION"] 		= "", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SpaceStationMarkup", StationMarkup},
					{"BuyBaseMarkup", BaseMarkup}
				}
			}
	end
end
for i = 1, #UpgradeScannerChanges do
	-- local ChangesToProductTable3_temp
	local ScannerID = UpgradeScannerChanges[i][1]
		
		Multiplier = UpgradeScannerChanges[i][2]
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"ID", ScannerID},  
				["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", Multiplier}
				}
			}
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE