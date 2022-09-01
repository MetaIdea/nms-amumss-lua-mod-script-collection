ModName = "PTSd Resource + Product + Construction Rebalance"
GameVersion = "3_99.1"
Description = "Rebalances the purchase & selling price for many items. Changes the stacksize for certain valuables. Changes the construction costs for certain buildables."

--This part applies multipliers to the actual value (buying and selling price) for certain substances or products
SubstanceSaleChanges =
{																						--How much Chromatic Metal it refines into
	{"ROCKETSUB",	6.0},							--6				Tritium
	{"WATER1",		0.67},							--299			Salt
	{"WATER2",		0.67},							--602			Chlorine
	{"YELLOW2",		0.5},							--121			Copper				x0.5
	{"RED2",		0.5},							--234			Cadmium				x1
	{"GREEN2",		0.5},							--348			Emeril				x1.5
	{"BLUE2",		0.5},							--464			Indium				x2
	{"STELLAR2",	0.5},							--245			Chromatic Metal	
	{"EX_YELLOW",	0.5},							--245			Activated Copper	x1
	{"EX_RED",		0.5},							--450			Activated Cadmium	x2
	{"EX_GREEN",	0.5},							--696			Activated Emeril	x3
	{"EX_BLUE",		0.5}							--949			Activated Indium	x4
}

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
	
	{"UI_STORMCRYSTAL_NAME",	0.8},				--126,000		Storm Crystal
	{"UI_SHIPCHARGE_NAME",	18.0},					--500			Starshield Battery
	
	{"PROD_NIP_NAME",	1.5},						--17,776		Nip Nip Buds		(4hr grow time)
	{"NEWPROD12_NAME",	2.0},						--64,000		Sac Venom			(3hr 20 min grow time)
	{"NEWPROD14_NAME",	3.0},						--11,200		Albumen Pearl		(2 hr grow time)
	{"NEWPROD11_NAME",	4.0},						--5,800			Vortex Cube
	{"NEWPROD13_NAME",	0.40379},					--42,130		Gravitino Ball		(2 hr grow time)		(In game price is 40024? some kind of global multiplier of 0.95 on item sell / value prices?)
	{"UI_CLAMPEARL_NAME",	9.0},					--5,050			Living Pearl		(Refines to 100 Gold = 35,300u vanilla)
	{"UI_VENTGEM_NAME",	5.0},						--7,800			Crystal Sulphide
	{"UI_EYEBALL_NAME",	2.5},						--60,000		Hypnotic Eye
	
	{"NEWPROD3_NAME",	10.0},						--13,063		KORVAXCUBE
	{"NEWPROD2_NAME",	10.0},						--11,688		VYKEENDAGGER
	{"DELICACY1_NAME",	10.0},						--20,625		GEKNIP
	{"CURIO1_NAME",	3.0},							--23,375		Gek Relic
	{"CURIO2_NAME",	3.0},							--24,750		VyKeen Effigy
	{"CURIO3_NAME",	3.0},							--22,000		Korvax Casing
	
	{"UI_QUAD_PROD_NAME",	4.0},					--20,000		Quad Servo
	{"UI_MECH_PROD_NAME",	6.0},					--28,000		Hardframe Engine
	{"UI_WALKER_PROD_NAME",	8.0},					--35,000		Walker Brain
	
	{"UI_ILLEGAL_PROD1_NAME",	2.0},				--2,000			Illegal Trade item
	{"UI_ILLEGAL_PROD2_NAME",	2.0},				--9,000			Illegal Trade item
	{"UI_ILLEGAL_PROD3_NAME",	2.0},				--18,000		Illegal Trade item
	{"UI_ILLEGAL_PROD4_NAME",	2.0},				--32,000		Illegal Trade item
	{"UI_ILLEGAL_PROD5_NAME",	2.0},				--58,000		Illegal Trade item
	{"UI_ILLEGAL_PROD6_NAME",	2.0},				--68,000		Illegal Trade item
	{"UI_ILLEGAL_PROD7_NAME",	2.0},				--83,000		Illegal Trade item
	{"UI_ILLEGAL_PROD8_NAME",	2.0},				--98,000		Illegal Trade item
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
	{"ITEMGEN_SALVAGE_RARE",		0.8}			--1,100,000 ~ 2,400,000,	Dropweight 1		(14%)
}

TradeMult = 					0.4					--These Trade items have a default StackMultiplier of 5, resulting in a total default stacksize of 25
IllTradeMult = 					0.2					--These Illegal Trade items also have a default StackMultiplier of 5, but as of NMS v3.88 are only sold in batches of 2~8 or so at Outlaw stations
--Multipliers to apply to the item's Product Stack multiplier (vanilla total stack size, not multiplier, is listed in the -- comments below), and to their BuyBaseMarkup (how much extra you always have to pay about base value)
ProductStackChanges =
{					--			StackMultMult		BuyBaseMarkupMult
	{"NEWPROD12_NAME",			1,					1},				--5		Sac Venom
	{"NEWPROD13_NAME",			1,					1},				--5		Gravitino Ball
	{"NEWPROD14_NAME",			2,					1},				--5		Albumen Pearl
	{"NEWPROD11_NAME",			3,					1},				--5		Vortex Cube
	{"UI_CLAMPEARL_NAME",		1,					1},				--15	Living Pearl
	{"UI_VENTGEM_NAME",			2,					1},				--5		Crystal Sulphide
	{"UI_EYEBALL_NAME",			1,					1},				--5		Hypnotic Eye

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

--NipNip Plant construction recipe
NipNipBudsNeeded				=	3				--1
NipNipPlatinumNeeded			=	100				--0
--Gravitino Host plant construction recipe
GravHostSilverNeeded			=	60				--120
GravHostCadmiumNeeded			=	60				--0		(replaces 25 Chromatic Metal)
GravHostGravitinoBallsNeeded	=	1				--0		(replaces 25 Magnetised Ferrite)

--Solar Panel construction recipe
SolarPlatesNeeded				=	3				--1
SolarGoldNeeded					=	40				--30
SolarGlassNeeded				=	2				--0		(replaces 50 Chromatic Metal)
--Electromagnetic Generator construction recipe
EGenPlatesNeeded				=	6				--2
EGenMagFerriteNeeded			=	180				--60
EGenChromMetalNeeded			=	225				--75
--Bio-Dome construction recipe
BioDomeMagFerriteNeeded			=	75				--25
BioDomeGlassNeeded				=	16				--5

--Antimatter Reactor construction recipe
AntiMatStormNeeded				=	10				--5		Storm Crystal
AntiMatAntiNeeded				=	10				--2		Antimatter
AntiMatFluidNeeded				=	10				--2		(Experimental Power Fluid, replaces 2 Metal Plates)

--New recipe for installing Nutrition Room in freighter
CookRoomProcessors = 1								--how many Nutrient Processors required		(replaces 15 Oxygen in vanilla)
CookRoomSilver = 20									--60 Silver
CookRoomPureFerrite = 20							--40 Pure Ferrite
--New recipe for installing Refiner Room in freighter
RefinerRoomMicrochips = 8							--how many Microprocessors required		(replaces 2 Di-Hydrogen Jelly in vanilla)
RefinerRoomSilver = 50								--60 Silver
RefinerRoomGold = 30								--45 Gold
--New recipe for installing Cultivation Chamber in freighter
CultivationChamberSilver = 60						--50 Silver
CultivationChamberPlates = 6						--how many Metal Plates required	(replaces 25 Oxygen in vanilla)
CultivationChamberFaecium = 80						--10 Faecium
--New recipe for installing Double Cultivation Chamber in freighter
DoubleCultivationChamberSilver = 160				--60 Silver
DoubleCultivationChamberPlates = 16					--how many Metal Plates required	(replaces 35 Oxygen in vanilla)
DoubleCultivationChamberFaecium = 220				--25 Faecium
--New recipe for installing Stellar Extractor in freighter
StellarExtractorSilver = 120						--60 Silver
StellarExtractorGold = 90							--45 Gold
StellarExtractorGravBall = 6						--how many Gravitino Balls required	(replaces 40 Mag. Ferrite in vanilla)
--New recipe for installing Scanner Room in freighter
ScannerRoomSilver = 60								--60 Silver
ScannerRoomEmeril = 30								--how much Emeril is required		(replaces 30 Gold in vanilla)
ScannerRoomQuantProc = 1							--how many Quantum Processors required	(replaces 1 Ion Battery in vanilla)
--New recipe for installing Orbital Exocraft Materializer in freighter
OrbitalExoGold = 150								--150 Gold
OrbitalExoEmeril = 50								--how much Emeril is required		(replaces 50 Ionized Cobalt in vanilla)
OrbitalExoPortReact = 1								--how many Portable Reactors required	(replaces 3 Warp Cell in vanilla)

--This part adjusts the buying price only (not the selling price) for certain substances/consumables/components.

--Changes the price of Star Charts, paid in Navigation Data at Space Stations
RegChartCost =						2				--1		For "Secure Site of Interest", "Distress Signal", "Inhabited Outpost", and "Ancient Artifact Site" charts
SettlementChartCost =				8				--5		For "Planetary Settlement" charts

--SpaceStationMarkup seems to apply an extra + bonus % on top of BuyMarkupMod for the item, if bought OR SOLD at a trade terminal on a space station (or item vendor on outlaw station). e.g. a value of 0.5 means +50% to the price when buying OR SELLING
--BuyBaseMarkup seems to apply the bonus %  to the cost of the item when bought from any source. e.g. a value of 0.2 means +20% to the price
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
SubstanceBuyBaseMarkup = 			19				--0.25
	--SubstanceBuyMarkupMod = 			0				--0

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

NavDataSpaceStationMarkup =			1				--0.5
NavDataBuyBaseMarkup =				9				--0.2
DropPodDataSpaceStationMarkup =		1				--0.5
DropPodDataBuyBaseMarkup =			0.6				--0.2

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

--Miscellaneous other items
LarvalCoreSpaceStationMarkup =		0				--0			(BaseValue 65000)
LarvalCoreBaseMarkup =				1.4				--0.2
HadalCoreSpaceStationMarkup =		0				--0			(BaseValue 97500)
HadalCoreBaseMarkup =				1.4				--0.2
NipNipSpaceStationMarkup =			0				--0			(BaseValue 17776)
NipNipBaseMarkup =					16				--3		(8)
	--The increased BaseMarkup for these items balanced out with increased amounts of Tainted Metal rewarded in Rewards Remixer.lua
SusGoodsSpaceStationMarkup =		300				--300		(BaseValue 150)
SusGoodsBaseMarkup =				2.6				--0.2
SusTechSpaceStationMarkup =			715				--300		(BaseValue 200)
SusTechBaseMarkup =					3.32			--0.2
SusWeapSpaceStationMarkup =			715				--300		(BaseValue 350)
SusWeapBaseMarkup =					3.32			--0.2
RepairKitSpaceStationMarkup =		150				--154		(BaseValue 450)
RepairKitBaseMarkup =				1.4				--0.2
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
	{"FUEL1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Carbon		BaseValue = 12
	{"FUEL2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"OXYGEN",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"LAUNCHSUB",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Di-Hydrogen,	BaseValue = 34
	{"LAUNCHSUB2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"ROCKETSUB",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Tritium,		BaseValue = 6
	{"LAND1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Ferrite Dust	BaseValue = 14
	{"LAND2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Pure Ferrite	BaseValue = 28
	{"LAND3",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Mag. Ferrite	BaseValue = 82
	{"SAND1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"CATALYST1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"CATALYST2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"CAVE1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Cobalt		BaseValue = 198
	{"CAVE2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Ion. Cobalt	BaseValue = 401
	{"WATER1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"WATER2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"WATERPLANT",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"YELLOW2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Copper		BaseValue = 121
	{"RED2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"GREEN2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"BLUE2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--BaseValue = 464
	{"STELLAR2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Chromatic Metal	BaseValue = 245
	{"LUSH1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"DUSTY1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"TOXIC1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"RADIO1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Uranium,		BaseValue = 62
	{"COLD1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"HOT1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"LAVA1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"CREATURE1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"ROBOT1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"ASTEROID1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Silver			BaseValue = 186
	{"ASTEROID2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Gold				BaseValue = 353
	{"ASTEROID3",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Platinum			BaseValue = 505
	{"GAS1",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"GAS2",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"GAS3",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"EX_YELLOW",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Activated Copper		BaseValue = 245
	{"EX_RED",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"EX_GREEN",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"EX_BLUE",			SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--BaseValue = 949
	{"PLANT_TOXIC",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"PLANT_SNOW",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Frost Crystal		BaseValue = 12
	{"PLANT_RADIO",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Gamma Weed
	{"PLANT_DUST",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Cactus Flesh		BaseValue = 28
	{"PLANT_HOT",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Solarium			BaseValue = 70
	{"PLANT_LUSH",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"PLANT_CAVE",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"PLANT_WATER",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"PLANT_POOP",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"SPACEGUNK1",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"SPACEGUNK2",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"SPACEGUNK3",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"SPACEGUNK4",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},
	{"SPACEGUNK5",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod}
	--{"AF_METAL",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},			--Tainted Metal?
	--{"SPECIAL_POOP",		SubstanceSpaceStationMarkup,	SubstanceBuyBaseMarkup,	SubstanceBuyMarkupMod},		--Hexite?
}

ProductCostChanges =
{	--Cheap Consumables, all are BaseMarkup = 0.2
	{"FUELGEL3_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup,	CheapConsumableBuyMarkupMod},	--Life Support Gel			BaseValue = 200
	{"POWERCELL_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup,	CheapConsumableBuyMarkupMod},	--Ion Battery				BaseValue = 200
	{"FUEL_JELLY_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup,	CheapConsumableBuyMarkupMod},	--Di-Hydrogen Jelly			BaseValue = 200
	{"AMMO_PROD_NAME",				CheapConsumableSpaceStationMarkup,	CheapConsumableBuyBaseMarkup,	CheapConsumableBuyMarkupMod},	--Projectile Ammo			BaseValue = 1
	--Consumables, all are BaseMarkup = 0.2 unless otherwise noted
	{"UI_SHIPCHARGE_NAME",			ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	ConsumableBuyMarkupMod},				--Starshield Battery		BaseValue = 500
	{"GRENFUEL1_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	ConsumableBuyMarkupMod},				--Unstable Plasma			BaseValue = 5750
	{"HYPERFUEL1_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	ConsumableBuyMarkupMod},				--Warp Cell					BaseValue = 46750
	{"HYPERFUEL2_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	ConsumableBuyMarkupMod},				--Warp Hypercore			BaseValue = 46750
	{"AM_HOUSING_NAME",				ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	ConsumableBuyMarkupMod},				--Antimatter Housing, 		BaseValue = 6500	BaseMarkup = 2
	{"COMMODITY6_NAME",				ConsumableSpaceStationMarkup,	AntimatterBuyBaseMarkup,	AntimatterAndFrigateFuelBuyMarkupMod},	--Antimatter  	BaseValue = 5233	BaseMarkup = 5, SpaceStationMarkup = 0.5, BuyMarkupMod = 1.5,
	{"UI_FREIGHTER_FUEL_1_NAME",	ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	AntimatterAndFrigateFuelBuyMarkupMod},	--Frigate Fuel 50 tonnes	BaseValue = 20000	BaseMarkup = 0.2, BuyMarkupMod = 1.5, 
	{"UI_FREIGHTER_FUEL_2_NAME",	ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	AntimatterAndFrigateFuelBuyMarkupMod},	--BaseMarkup = 0.2, BuyMarkupMod = 1.5
	{"UI_FREIGHTER_FUEL_3_NAME",	ConsumableSpaceStationMarkup,	ConsumableBuyBaseMarkup,	AntimatterAndFrigateFuelBuyMarkupMod},	--BaseMarkup = 0.2, BuyMarkupMod = 1.5
	{"UI_NAV_DATA_NAME",			NavDataSpaceStationMarkup,		NavDataBuyBaseMarkup,		ConsumableBuyMarkupMod},				--Navigation Data			BaseValue = 1000	BaseMarkup = 0.2, SpaceStationMarkup = 0.5
	{"UI_NAV_DROPPOD_NAME",			DropPodDataSpaceStationMarkup,	DropPodDataBuyBaseMarkup,	ConsumableBuyMarkupMod},				--Drop Pod Coordinates		BaseValue = 85000	BaseMarkup = 0.2, SpaceStationMarkup = 0.5
	
	{"LAUNCHFUEL_NAME",				ConsumableSpaceStationMarkup,	LaunchAndSubFuelBuyBaseMarkup,	ConsumableBuyMarkupMod},			--BaseMarkup = 98,			BaseValue = 450
	{"UI_SUBFUEL_NAME",				ConsumableSpaceStationMarkup,	LaunchAndSubFuelBuyBaseMarkup,	ConsumableBuyMarkupMod},			--BaseMarkup = 98,			BaseValue = 7200
	--Cheap Components, all are BaseMarkup = 0.2
	{"CASING_NAME",					CheapComponentSpaceStationMarkup,	CheapComponentBuyBaseMarkup,	CheapComponentBuyMarkupMod},	--Metal Plating				BaseValue = 800
	{"NANOTUBES_NAME",				CheapComponentSpaceStationMarkup,	CheapComponentBuyBaseMarkup,	CheapComponentBuyMarkupMod},	--BaseValue = 500
	{"CARBON_SEAL_NAME",			CheapComponentSpaceStationMarkup,	CheapComponentBuyBaseMarkup,	CheapComponentBuyMarkupMod},	--BaseValue = 800
	
	--Components, all are BaseMarkup = 1.2 except Microchip
	{"MICROCHIP_NAME",				ComponentSpaceStationMarkup,	MicrochipBuyBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 2000		BaseMarkup = 8.5	
	{"UI_COMPUTER_NAME",			ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 4200
	{"UI_HYDRALIC_NAME",			ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 3600
	{"UI_MAGNET_NAME",				ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 6150
	{"UI_MIRROR_NAME",				ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 6150
	{"UI_BIO_NAME",					ComponentSpaceStationMarkup,	ComponentBuyBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 12300
	
	{"UI_TECHMOD_NAME",				LoomSpaceStationMarkup,	LoomBuyBaseMarkup,	LoomBuyMarkupMod},										--Wiring Loom?	BaseMarkup = 0.2,	BuyMarkupMod = 2,	BaseValue = 25000
	--Misc
	{"UI_SUSPECT_GOODS_NAME",		SusGoodsSpaceStationMarkup,	SusGoodsBaseMarkup,	ConsumableBuyMarkupMod},							--BaseValue = 150
	{"UI_SUSPECT_TECH_NAME",		SusTechSpaceStationMarkup,	SusTechBaseMarkup,	ConsumableBuyMarkupMod},							--BaseValue = 200
	{"UI_SUSPECT_WEAP_NAME",		SusWeapSpaceStationMarkup,	SusWeapBaseMarkup,	ConsumableBuyMarkupMod},							--BaseValue = 350
	{"UI_REPAIR_KIT_NAME",			RepairKitSpaceStationMarkup,	RepairKitBaseMarkup,	ComponentBuyMarkupMod},						--BaseValue = 450
	{"UI_FIENDCORE_NAME",			LarvalCoreSpaceStationMarkup,	LarvalCoreBaseMarkup,	ComponentBuyMarkupMod},
	{"UI_FISHCORE_NAME",			HadalCoreSpaceStationMarkup,	HadalCoreBaseMarkup,	ComponentBuyMarkupMod},
	{"PROD_NIP_NAME",				NipNipSpaceStationMarkup,	NipNipBaseMarkup,	ComponentBuyMarkupMod},
	
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
{	--Id
	{"STARCHART_A",			RegChartCost},
	{"STARCHART_B",			RegChartCost},
	{"STARCHART_C",			RegChartCost},
	{"STARCHART_D",			RegChartCost},
	{"CHART_SETTLE",		SettlementChartCost}
}

AddedPlatinumCost =
[[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ASTEROID3" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="]]..NipNipPlatinumNeeded..[[" />
        </Property>]]

function AddedPlatinumCost (Platinum)
    return
[[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ASTEROID3" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="]]..Platinum..[[" />
        </Property>]]
end

function AddedGlassCost (Glass)
    return
[[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD3" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="]]..Glass..[[" />
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
						--This entry intentionally left blank, to be filled in by the SubstanceCostChanges at the bottom of this script
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the SubstanceSaleChanges at the bottom of this script
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--This entry intentionally left blank, to be filled in by the ProductCostChanges at the bottom of this script
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
							--["PRECEDING_FIRST"] = "TRUE",
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "NIPPLANT"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							--["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", NipNipBudsNeeded}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","NIPPLANT"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedPlatinumCost (NipNipPlatinumNeeded),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "GRAVPLANT",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", GravHostSilverNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "GRAVPLANT",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", GravHostCadmiumNeeded},
								{"ID", "RED2"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "GRAVPLANT",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", GravHostGravitinoBallsNeeded},
								{"ID", "GRAVBALL"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "GRAVPLANT",		"ID", "GRAVBALL"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_SOLAR_S",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", SolarPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_SOLAR_S",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", SolarGoldNeeded},
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_SOLAR_S",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", SolarGlassNeeded},
								{"ID", "FARMPROD3"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_SOLAR_S",		"ID", "FARMPROD3"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						--[[{
							["SPECIAL_KEY_WORDS"] = {"Id","U_SOLAR_S"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = AddedGlassCost (SolarGlassNeeded),
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},]]
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_GENERATOR_S",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", EGenPlatesNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_GENERATOR_S",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", EGenMagFerriteNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "U_GENERATOR_S",		"ID", "STELLAR2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", EGenChromMetalNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "BIOROOM",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BioDomeMagFerriteNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "BIOROOM",		"ID", "FARMPROD3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", BioDomeGlassNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "BUILDANTIMATTER",		"ID", "STORM_CRYSTAL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", AntiMatStormNeeded}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "BUILDANTIMATTER",		"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", AntiMatAntiNeeded},
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "BUILDANTIMATTER",		"ID", "CASING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", AntiMatFluidNeeded},
								{"ID", "TRA_ENERGY4"}
								
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_COOK",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CookRoomProcessors},
								{"ID", "COOKER"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_COOK",		"ID", "COOKER"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_COOK",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CookRoomSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_COOK",		"ID", "LAND2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CookRoomPureFerrite}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_REFINE",		"ID", "JELLY"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", RefinerRoomMicrochips},
								{"ID", "MICROCHIP"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_REFINE",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", RefinerRoomSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_REFINE",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", RefinerRoomGold}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT1",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CultivationChamberSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT1",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CultivationChamberPlates},
								{"ID", "CASING"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT1",		"ID", "CASING"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT1",		"ID", "PLANT_POOP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", CultivationChamberFaecium}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT0",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DoubleCultivationChamberSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT0",		"ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DoubleCultivationChamberPlates},
								{"ID", "CASING"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT0",		"ID", "CASING"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_PLANT0",		"ID", "PLANT_POOP"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", DoubleCultivationChamberFaecium}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_EXTR",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", StellarExtractorSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_EXTR",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", StellarExtractorGold}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_EXTR",		"ID", "LAND3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", StellarExtractorGravBall},
								{"ID", "GRAVBALL"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_EXTR",		"ID", "GRAVBALL"},
							["VALUE_MATCH"] 	= "Substance",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"InventoryType", "Product"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_SCAN",		"ID", "ASTEROID1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", ScannerRoomSilver}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_SCAN",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", ScannerRoomEmeril},
								{"ID", "GREEN2"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_SCAN",		"ID", "POWERCELL"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", ScannerRoomQuantProc},
								{"ID", "MEGAPROD2"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_VEHICL",		"ID", "ASTEROID2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", OrbitalExoGold}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_VEHICL",		"ID", "CAVE2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", OrbitalExoEmeril},
								{"ID", "GREEN2"}
							}
						},
						{
							["REPLACE_TYPE"] 		= "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"Id", "FRE_ROOM_VEHICL",		"ID", "HYPERFUEL1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Amount", OrbitalExoPortReact},
								{"ID", "MEGAPROD1"}
							}
						},
					}
				}
			}
		}
	}
}

local ChangesToSubstanceCosts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #SubstanceCostChanges do
	local ItemID = SubstanceCostChanges[i][1]
	local SpaceStationMarkup = SubstanceCostChanges[i][2]
	local BuyBaseMarkup = SubstanceCostChanges[i][3]
	--local BuyMarkupMod = SubstanceCostChanges[i][4]

			ChangesToSubstanceCosts_temp =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", ItemID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SpaceStationMarkup", SpaceStationMarkup},
					{"BuyBaseMarkup", BuyBaseMarkup}--[[,
					{"BuyMarkupMod", BuyMarkupMod}]]
				}
			}
			ChangesToSubstanceCosts[#ChangesToSubstanceCosts+1] = ChangesToSubstanceCosts_temp
end
for i = 1, #SubstanceStackChanges do
	local NameID = SubstanceStackChanges[i][1]
	local StackMult = SubstanceStackChanges[i][2]
	local BuyMarkMult = SubstanceStackChanges[i][3]

	ChangesToSubstanceCosts[#ChangesToSubstanceCosts+1] =
					{
						["PRECEDING_KEY_WORDS"] = "",
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

local ChangesToSubstanceSales = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #SubstanceSaleChanges do
	local NameID = SubstanceSaleChanges[i][1]
	local ValueMult = SubstanceSaleChanges[i][2]

			ChangesToSubstanceSales_temp =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", NameID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
			ChangesToSubstanceSales[#ChangesToSubstanceSales+1] = ChangesToSubstanceSales_temp
end

local ChangesToProductCosts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #ProductCostChanges do
	local NameID = ProductCostChanges[i][1]
	local SpaceStationMarkup = ProductCostChanges[i][2]
	local BuyBaseMarkup = ProductCostChanges[i][3]
	--local BuyMarkupMod = ProductCostChanges[i][4]

			ChangesToProductCosts[#ChangesToProductCosts+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Name", NameID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
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

			ChangesToProductCosts[#ChangesToProductCosts+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", ChartId},
				--["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RecipeCost", NewChartCost}
				}
			}
end
for i = 1, #ProductBuyMarkupModChanges do
	local NameID = ProductBuyMarkupModChanges[i][1]
	local BuyMarkupMod = ProductBuyMarkupModChanges[i][2]

			ChangesToProductCosts[#ChangesToProductCosts+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Name", NameID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuyMarkupMod", BuyMarkupMod}
				}
			}
end


local ChangesToProductSales = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]

for i = 1, #ProductSaleChanges do
	local NameID = ProductSaleChanges[i][1]
	local ValueMult = ProductSaleChanges[i][2]

			ChangesToProductSales[#ChangesToProductSales+1] =
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
	for i = 1, #ProductStackChanges do
		local NameID = ProductStackChanges[i][1]
		local StackMult = ProductStackChanges[i][2]
		local BuyMarkMult = ProductStackChanges[i][3]
	
		ChangesToProductSales[#ChangesToProductSales+1] =
						{
                            ["PRECEDING_KEY_WORDS"] = "",
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

local ChangesToProceduralProductSales = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]

for i = 1, #ProceduralProductSaleChanges do
	local NameID = ProceduralProductSaleChanges[i][1]
	local ValueMult = ProceduralProductSaleChanges[i][2]
	
			ChangesToProceduralProductSales[#ChangesToProceduralProductSales+1] = 
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"Word", NameID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				--["PRECEDING_KEY_WORDS"] = {Rarity},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BasevalueMin", ValueMult},
					{"BaseValueMax", ValueMult}
				}
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
