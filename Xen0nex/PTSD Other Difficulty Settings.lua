ModName = "PTSd Other Difficulty Settings"
GameVersion = "6_04"
Description = "Affects most of the Difficulty Setting menu options, except for Stack Sizes"

DisablePlanetaryPirateRaids				=false							--false		Set true to disable any planetary pirate raids

LowerExpeditionMinimums =				true							--false		Allows various difficulty settings to be adjusted lower in Expedition Mode
AllowExpeditionFreeCraft =				true							--false		Allows Crafting difficulty to be set all the way to "Free" in Expeditions (for the purpose of working around PTSd recipes which may not be possible otherwise during Expeditions)
	--NOTE: For most Expeditions, you will have to manually set "CraftingIsFree" to true in the "SEASON_DATA_CACHE.JSON" file of the cache folder of your savegame folder, "\AppData\Roaming\HelloGames\NMS" by default for Steam on Windows

--Controls whether you can both increase and decrease the Stack Size limit from the options menu after starting a game
StackLimitSettings =			"FullyEditable"							--"DecreaseOnly"		(Options are "FullyEditable", "DecreaseOnly", "LockedHidden")

--NOTE: Many of the features controlled by the settings below have changes to them made by other parts of PTSd, e.g. Enemy health, Damage received, and hazard strength, among other things, are already substantially increased compared to vanilla.

--Multipliers for the "Damage Levels" difficulty settings 		(Set by the "Damage Levels" setting)
	--These multipliers are presumably applied to the base damage values set in DAMAGETABLE.MBIN, modified by "gDamageX.lua"
DRNone =						0										--0
DRLow =							0.5										--0.2
DRNormal =						1										--1
DRHigh =						1.5										--1.5
	--These seem to be how many hits before the Minotaur takes damage to installed tech when under AI autopilot (possibly overwrites the similar parameter in GCVEHICLEGLOBALS.GLOBAL.MBIN )
DRMNone =						0										--0
DRMLow =						56										--32
DRMNormal =						28										--16
DRMHigh =						19										--8

--Multipliers for the "Enemy Strength" difficulty settings
	--These presumably apply to the base health values for enemies set in GCROBOTGLOBALS.MBIN and AISPACESHIPATTACKDATATABLE.MBIN, modified by "_Extra Savage Sentinels by ExosolarX.lua" and "Space Combat+Larger Space BattlesX.lua"
DGHigh =						1.5										--2.5
DGNormal =						1										--1
DGLow =							0.5										--0.66

--Multipliers for the "Survival Difficulty" difficulty 				(Set by the "Survival Difficulty" setting)
	--These are applied to the base Hazard timers set in GCPLAYERGLOBALS.GLOBAL or HAZARDTABLE.MBIN, modified by "PTSd Stronger Environmental Hazards.lua"
	--A higher number here means your protection drains faster
	--(Values multiplied by 0.9238 to offset how "PTSd Stronger Environmental Hazards.lua" increase the base Ambient hazard intensity on most non-Extreme planets by ~1.0825)
HDSlow =						2.2*0.9238								--0.35
HDNormal =						6.6*0.9238								--1.1
HDFast =						9.9*0.9238								--3.3
--Multipliers for the "Energy Drain" (Life Support) difficulty	(Set by the "Survival Difficulty" setting)
	--These are applied to the base Energy timers set in GCPLAYERGLOBALS.GLOBAL, modified by "PTSd Stronger Environmental Hazards.lua"
	--A higher number here means your protection drains faster
EDSlow =						0.5										--0.2
EDNormal =						1										--1
EDFast =						1.5										--1.66

--Multipliers for the "Substance Collection" difficulty			(Set by the "Natural Resources" setting)
	--Affects how much substances you get from most sources, particularly ones considered "wild" or found out in the world/space: Includes after fully destroying minable objects, from interacting with ("harvesting") most plants, Frigate expedition substance rewards, standing planters, destroying Resource Depots, opening the procedural "boxes" from buried caches / subterranean organic structures, space station mission rewards (rarely are substances) and most other sources of substances
	--Does not apply to substances in the "output" slot of machines such as refiners / mining drills, etc. settlement substance rewards, or any substance rewards with "DisableMultiplier" set to "true" in REWARDTABLE.MBIN, which is mostly for harvesting the "domesticated" version crops that are plantable in hydroponic trays, which instead have fixed values
	--PTSd applies additional multipliers specifically for substances from either minable / non-minable objects in "PTSd Rewards Remixer.lua" that stack with these values
SCHigh =						1.4										--2.5
SCNormal =						0.8										--1
SCLow =							0.5										--0.66
--Multipliers for the "Laser Amount" difficulty					(Set by the "Natural Resources" setting)
	--LaserAmount must be an integer (whole number)
	--LaserAmount sets exactly how much substance you receive each tick of the "trickle" of resources you receive while actively mining an object, but before the object finally is destroyed.
SCHighLaserAmount =				2										--4			
SCNormalLaserAmount =			1										--2
SCLowLaserAmount =				1										--1

--Inventory Stack Limits controlled in "PTSd Suit Inventory and Stack Sizes.lua"

--Multipliers for the "Fuel Use" difficulty						(Set by the "Fuel Usage" setting)
--This setting may also affect how much carbon is obtained from mining plants?
FUFree =						0										--0
FUCheap =						0.67									--0.43		For some reason the "Discounted" setting makes Mining Laser & Terrain Manipulator free?
FUCheapTerrainEditor =			0.67									--0			For some reason the "Discounted" setting makes Mining Laser & Terrain Manipulator free?
FUNormal =						1										--1
FUExpensive =					1.33									--1.33
--Multipliers for the "Charging Requirements" difficulty		(Set by the "Fuel Usage" setting)
	--The amount of charge that items like Ion Battery, Life Support Gel, Starshield Battery, Warp Cell, Warp Hypercore, Unstable Plasma, Hydrothermal Fuel Cell, Launch Fuel restore is divided by this value (Launch )
CRNone =						0										--0
CRLow =							0.67									--0.3
CRNormal =						1										--0.8
CRHigh =						1.33									--1.2
--Multipliers for the "Launch Fuel Cost" difficulty				(Set by the "Fuel Usage" setting)
	--These are applied to the base costs set for the launcher tech in NMS_REALITY_GCTECHNOLOGYTABLE, modified by "Reduced Launch Cost 41% 2.4X.lua" to be 41% of a full tank by default
LFFree =						0										--0
LFFreeShipSummon =				0										--0
LFLow =							0.25									--0.25
LFLowShipSummon =				0.5										--0.25
LFNormal =						1										--1
LFNormalShipSummon =			2										--1
LFHigh =						1.5										--1.2
LFHighShipSummon =				3										--4

--Multipliers for the "Purchases" difficulty settings
--Unclear what "Specials" is, is not salvaged data / salvaged frigate modules. Perhaps Quicksilver shop?
--The Units/Nanites/Specials settings below don't apply to generic substances/products in shop/vendor lists, but to prices when selecting an option from a menu/dialogue tree, such as purchasing an inventory upgrade on a Space Station, etc.
	--The Units multipliers appear to also apply to the purchase, trade-in, & scan value of starships, but not the salvage value.
--The "BuyPriceMarkup" settings below apply a multiplier to the existing "BuyBaseMarkup" attribute for most items in shop/vendor lists. "BuyBaseMarkup" controls how much higher an item's purchase price is compared to its base value/selling price.
	--However, some items are not affected by the "BuyPriceMarkup" settings below. So far I have noticed that "Trade" items (things intended to be bought and sold in different systems to make a profit) are exempted, likely because increasing their purchase/sell ratio could make it impossible to make a profit from trading them.
CCFreeUnits =					1										--0.33	(Has separate settings to make it free)
CCFreeNanites =					1										--0.33	(Has separate settings to make it free)
CCFreeSpecials =				1										--1		(Has separate settings to make it free)
CCFreeBuyPriceMarkup =			1										--0.5	
CCCheapUnits =					0.5										--0.33
CCCheapNanites =				0.5										--0.33
CCCheapSpecials =				1										--1
CCCheapBuyPriceMarkup =			0.5										--0.5	
CCNormalUnits =					1										--1
CCNormalNanites =				1										--1
CCNormalSpecials =				1										--1
CCNormalBuyPriceMarkup =		1										--1.5	
CCExpensiveUnits =				2										--1.66
CCExpensiveNanites =			2										--2.5
CCExpensiveSpecials =			1										--1
CCExpensiveBuyPriceMarkup =		2										--6		

--Multipliers for the "Scanner Recharge" difficulty settings
	--These multipliers are applied to the base ScannerRecharge value for Multi-Tools, set in a different section below
SRVeryFast =					5										--10
SRFast =						2										--5
SRNormal =						1										--1.66
SRSlow =						0.67									--1

--Multipliers for the "Reputation Gain" difficulty settings
	--Reputation Gain seems to be rounded down to the nearest integer when you receive it, but is also capped at a minimum of 1 Reputation per interaction
RGVeryFast =					4										--5
RGFast =						2										--2.5
RGNormal =						1										--1
RGSlow =						0.5										--1

--Multipliers for the "Space Combat" difficulty						(Set by the "Space Combat" setting)
	--These multipliers applied to the "SpacePirateTimers" below which control how long until the next "countdown to space encounter" begins (doesn't change how long the ~20 second countdown lasts)
SCMOff =						0										--0
SCMSlow =						3										--5
SCMNormal =						1										--1
SCMFast =						0.67									--0.55

--Multipliers for the "Space Combat Difficulty" difficulty			(Set by the "Space Combat" setting)
	--This applies an additional % bonus or malus of Hull & Shields to enemy ships. E.G. 0.25 means an additional +25% Hull & Shields for enemy ships
SCMOffDiff =					0										--0
SCMSlowDiff =					-0.34									--0
SCMNormalDiff =					0										--0.25
SCMFastDiff =					0.33									--1.2

--Multipliers for the "Ground Combat" difficulty					(Set by the "On-Foot Combat" setting)
	--Selecting the "Hostile" setting also makes more planets have Aggressive Sentinels regardless of values here, particularly Lush/Paradise planets
	--These multiplers apply to the "SentinelTimers" below, which affect how soon after loading the game that Sentinels spawn nearby, not sure what else.
	--Also seems to apply to the "PlanetPirateTimers" below, which affect how long between Planetary Pirate Raids
GCMOff =						0										--0			
GCMSlow =						1.67									--1.66
GCMNormal =						1										--1
GCMFast =						0.5										--0.33
--Multipliers for the "Ground Combat Sentinel Timers" difficulty	(Set by the "On-Foot Combat" setting)
	--These multipliers are intended to affect how long sentinels will continue to search for you once out of sight, based on the time set in GCPLAYERGLOBALS.GLOBAL.MBIN
	--However in practice they are purely cosmetic as they only affect the displayed timer on the UI, not the actual time that Sentinels will search for you
GCMOffSent =					1										--0.5		
GCMSlowSent =					1										--0.5
GCMNormalSent =					1										--1
GCMFastSent =					1										--1.33

--Multipliers for the "Sprinting Options" difficulty settings
SOFree =						0										--0
SOLow =							0.4										--0.4
SOFull =						1										--1

--Multipliers for the "Breaking Tech" difficulty settings. These appear to somehow determine the "base chance" for tech breakage / tech damage when taking a hit
BTNone =						0										--0
BTLow =							0.2										--0.33
BTHigh =						1.3										--2.5

--These appear to be further multipliers applied to the "base chance" of tech breakage set above
TechDamageChanceShieldedMax =		0.33								--0.5			This appears to be a flat multiplier applied to tech breakage chances that remains in effect as long as your shield is still active. Appears to stack multiplicatively with the "sliding scale" multiplier below
TechDamageChanceShieldLevelMin =	0.001								--0.01			This appears to set the lower bound for a "sliding scale" multiplier applied to tech breakage chances depending on how full your shield is (This presumably sets the value of the multiplier when you shield is full)
TechDamageChanceShieldLevelMax =	0.75								--0.75			This appears to set the upper bound for a "sliding scale" multiplier applied to tech breakage chances depending on how full your shield is (This presumably sets the value of the multiplier when you shield is at the lowest possible value before breaking)
TechDamageChanceToSelectPrimary =	0.1									--0.1			(Maybe the chance that a primary tech is chosen instead of a secondary tech or upgrade whenever tech breaks?)

--Alters some base values for Multi-Tool mining and Scan Pulses, mainly to be equal to their survival mode level for pre-4.0 NMS
NormalModeHeatBonus =			1										--2		This applies a multiplier to the base time until the mining laser overheats (8 seconds by default). EG the vanilla value of 2 doubles this to 16 seconds
HeatAlertTime =					0.6										--0.7	(was 0.6 for survival mode)
OverheatDecay =					3.8										--8		(was 3.8 for survival mode)		Contrary to the name, this controls how quickly the mining laser cools from normal use, not the length of the overheat cooldown. Smaller values cool more slowly
ScannerRange =					150										--200	(was 150 for survival mode)		Radius of Multitool scanner pulse
ScannerRecharge =				90										--30	(was 90 for survival mode)		Cooldown in seconds for Multitool scanner pulse
ShipScanRecharge =				16										--10		Cooldown in seconds for starship scanner pulse

--Multipliers for the "Fishing Timing" settings, which appear to multiply the base FishCatchAfterBiteTime window in GCFISHINGGLOBALS.GLOBAL.MBIN
AutoCatch =						3										--2
LongCatchWindow =				3										--2
NormalCatchWindow =				1										--1
ShortCatchWindow =				0.67									--0.67

--Changes to Interest levels and sentinel timers to set their values closer to the old Survival mode values
InterestLevelChanges =
{
	{
		{"PirateInterestLevels"},		--How much value of goods you need to be carrying before pirates scan you in space, presumably at low/medium/high levels of intensity?
		{--	New Value		Old Value
			{100000,		--100000
			400000,			--500000
			2000000},		--2500000
		},
	},
	{
		{"PirateInterestLevelsSurvival"},	--Unclear when these values are used in place of the "normal" ones
		{--	New Value		Old Value
			{75000,			--50000
			250000,			--150000
			1600000},		--1600000
		},
	},
	{
		{"PoliceInterestLevels"},		--How much value of ILLEGAL goods you need to be carrying before sentinel interceptors scan you in space, presumably at low/medium/high levels of intensity?
		{--	New Value		Old Value
			{1,				--1
			100000,			--20000
			500000},		--500000
		},
	},
	{
		{"PoliceInterestLevelsSurvival"},	--Unclear when these values are used in place of the "normal" ones
		{--	New Value		Old Value
			{1,				--1
			75000,			--50000
			300000},		--200000
		},
	},
}

PirateTimersChanges =
{
	{--These timers seem to be modified by the "GCMSlow", "GCMNormal", & "GCMFast" multipliers above
		{"PlanetPirateTimers"},		--Probably how long until the next "planetary Pirate raid" begins
		{	--Type			X		Y		(I believe X & Y set the "range" of possible times to use, probably in seconds)
			{"High",		620,	820},							--800,	1000	Conflict level 3 systems
			{"Normal",		1240,	1640},							--1000,	1400	Conflict level 2 systems
			{"Low",			0,		0},								--0,	0		Conflict level 1 systems	(No planetary pirate raids)

		}
	},
	{--These timers are modified by the "SCMSlow", "SCMNormal", & "SCMFast" multipliers above
		{"SpacePirateTimers"},		--How long until the next "countdown to space encounter" begins (doesn't change how long the ~20 second countdown lasts)
		{	--Type			X		Y		(I believe X & Y set the "range" of possible times to use, probably in seconds)
			{"High",		120,	180},							--300,	300		Conflict level 3 systems
			{"Normal",		200,	300},							--300,	500		Conflict level 2 systems
			{"Low",			300,	500},							--400,	600		Conflict level 1 systems

		}
	}
}
--These timers are modified by the "GCMSlow", "GCMNormal", & "GCMFast" multipliers above
SentinelTimersChanges =
{
	{
		{"SentinelTimersLow"},		--(Seems to be how long to wait before checking to spawn sentinels? Lower numbers are considered more difficult)
		{	--Type			X		Y		(I believe X & Y set the "range" of possible times to use, probably in seconds)
			{"High",		90,		120},							--180,	180
			{"Normal",		120,	240},							--180,	320		Low Sentinel Activity Planet on "Standard" or "Minimal" setting
			{"Low",			480,	480},							--900,	900		Unclear if ever used

		}
	},
	{
		{"SentinelTimersNormal"},	--(Seems to be how long to wait before checking to spawn sentinels? Lower numbers are considered more difficult)
		{	--Type			X		Y		(I believe X & Y set the "range" of possible times to use, probably in seconds)
			{"High",		15,		30},							--20,	50		Aggressive Sentinel Planets on "Hostile" setting
			{"Normal",		60,		150},							--90,	180		Low Sentinel Activity Planet on "Hostile" setting, High Sentinel Activity planets on "Hostile," "Standard," or "Minimal" setting
			{"Low",			300,	300},							--600,	600		Unclear if ever used

		}
	}
}

--Item Shop availability. These control which items no longer get sold at each setting
--High = No items restricted (other than the shop-specific changes in "PTSd Scan + Discovery Rewards + Shop Stock Changes + Misc.lua")
NormalNeverSoldItems = [[<Property name="NeverSoldItems">
            <Property name="NeverSoldItems" value="OXYGEN" _index="0" />
			<Property name="NeverSoldItems" value="CATALYST1" _index="1" />
			<Property name="NeverSoldItems" value="CATALYST2" _index="2" />
			<Property name="NeverSoldItems" value="FUEL1" _index="3" />
			<Property name="NeverSoldItems" value="FUEL2" _index="4" />
        </Property>]]
		
LowNeverSoldItems = [[<Property name="NeverSoldItems">
            <Property name="NeverSoldItems" value="POWERCELL" _index="0" />
			<Property name="NeverSoldItems" value="PRODFUEL2" _index="1" />
			<Property name="NeverSoldItems" value="OXYGEN" _index="2" />
			<Property name="NeverSoldItems" value="LAUNCHSUB" _index="3" />
			<Property name="NeverSoldItems" value="LAND1" _index="4" />
			<Property name="NeverSoldItems" value="CATALYST1" _index="5" />
			<Property name="NeverSoldItems" value="CATALYST2" _index="6" />
			<Property name="NeverSoldItems" value="CAVE1" _index="7" />
			<Property name="NeverSoldItems" value="WATER1" _index="8" />
			<Property name="NeverSoldItems" value="WATER2" _index="9" />
			<Property name="NeverSoldItems" value="CAVE2" _index="10" />
			<Property name="NeverSoldItems" value="RADIO1" _index="11" />
			<Property name="NeverSoldItems" value="POWERCELL" _index="12" />
			<Property name="NeverSoldItems" value="PRODFUEL2" _index="13" />
        </Property>]]

--These define how many slots your suit & starting equipment get when choosing the "Maximum" setting for "Starting Slots" on new games
AllSlotsUnlockedStartingSuitSlots =		40								--42
AllSlotsUnlockedStartingSuitTechSlots =	40								--22
AllSlotsUnlockedStartingWeaponSlots =	24								--14
AllSlotsUnlockedStartingShipSlots =		25								--48
AllSlotsUnlockedStartingShipTechSlots =	40								--24

--This defines what specific settings are chosen by default for any given difficulty "preset" like Normal or Survival
	--This is mostly so I can lower the presets for Survival, Normal, Relaxed, and Permadeath to make more sense with the rebalanced values in PTSd
Presets =
{
	{
		{"Custom"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"false"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"false"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"true"},					--True				(options are True, False)
			{"CraftingIsFree",					"false"},					--False				(options are True, False)
			{"TutorialEnabled",					"true"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"false"},					--False				(options are True, False)
			{"BaseAutoPower",					"false"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"ItemGrave"},				--ItemGrave			(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"Normal"},					--Normal			(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Normal"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",		"All"},					--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Normal"},					--Normal			(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Normal"},					--Normal			(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"Normal"},					--Normal			(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Normal"},					--Normal			(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"Low"},						--Low				(options are None, Low, High)
			{"FishingDifficulty",				"NormalCatchWindow"},		--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Normal"},--Space			--Normal			(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Normal"},--Ground			--Normal			(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Normal"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"false"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"false"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"true"},					--True				(options are True, False)
			{"CraftingIsFree",					"false"},					--False				(options are True, False)
			{"TutorialEnabled",					"true"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"false"},					--False				(options are True, False)
			{"BaseAutoPower",					"false"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"ItemGrave"},				--ItemGrave			(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"Low"},						--Normal			(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Normal"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",	"All"},						--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Slow"},					--Normal			(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Slow"},					--Normal			(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"High"},					--High				(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"Normal"},					--Normal			(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Normal"},					--Normal			(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Fast"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"Low"},						--Low				(options are None, Low, High)
			{"FishingDifficulty",				"NormalCatchWindow"},		--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Normal"},--Space			--Normal			(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Normal"},--Ground			--Normal			(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Creative"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"true"},					--True				(options are True, False)
			{"AllSlotsUnlocked",				"true"},					--True				(options are True, False)
			{"WarpDriveRequirements",			"false"},					--False				(options are True, False)
			{"CraftingIsFree",					"true"},					--True				(options are True, False)
			{"TutorialEnabled",					"false"},					--False				(options are True, False)
			{"StartWithAllItemsKnown",			"true"},					--True				(options are True, False)
			{"BaseAutoPower",					"true"},					--True				(options are True, False)
			{"DeathConsequencesDifficulty",		"None"},					--None				(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"None"},					--None				(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"High"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",	"None"},					--None				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Slow"},					--Slow				(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Slow"},					--Slow				(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"High"},					--High				(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"None"},					--None				(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Free"},					--Free				(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Free"},					--Free				(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Free"},					--Free				(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"High"},					--High				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"VeryFast"},				--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Fast"},					--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"NeverAttack"},				--NeverAttack		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Free"},					--Free				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"None"},					--None				(options are None, Low, High)
			{"FishingDifficulty",				"NormalCatchWindow"},		--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Off"},--Space				--Off				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Off"},--Ground				--Off				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Relaxed"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"true"},					--True				(options are True, False)
			{"AllSlotsUnlocked",				"false"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"true"},					--True				(options are True, False)
			{"CraftingIsFree",					"false"},					--False				(options are True, False)
			{"TutorialEnabled",					"true"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"false"},					--False				(options are True, False)
			{"BaseAutoPower",					"true"},					--True				(options are True, False)
			{"DeathConsequencesDifficulty",		"None"},					--None				(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"Low"},						--Low				(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"High"},					--High				(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",	"HealthAndHazard"},			--HealthAndHazard	(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Slow"},					--Slow				(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Slow"},					--Slow				(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"High"},					--High				(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"High"},					--High				(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"Low"},						--Low				(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Cheap"},					--Cheap				(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Low"},						--Low				(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Cheap"},					--Cheap				(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"High"},					--High				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"VeryFast"},				--VeryFast			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"VeryFast"},				--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"AttackIfProvoked"},		--AttackIfProvoked	(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Low"},						--Low				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"None"},					--None				(options are None, Low, High)
			{"FishingDifficulty",				"LongCatchWindow"},			--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Slow"},--Space				--Slow				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Slow"},--Ground			--Slow				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Survival"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"false"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"false"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"true"},					--True				(options are True, False)
			{"CraftingIsFree",					"false"},					--False				(options are True, False)
			{"TutorialEnabled",					"true"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"false"},					--False				(options are True, False)
			{"BaseAutoPower",					"false"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"DestroyItems"},			--DestroyItems		(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"Normal"},					--High				(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Normal"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",		"All"},					--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Low				(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"Normal"},					--High				(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Normal"},					--Expensive			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Normal"},					--High				(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Normal"},					--Low				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"High"},					--High				(options are None, Low, High)
			{"FishingDifficulty",				"NormalCatchWindow"},		--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Normal"},--Space			--Fast				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Normal"},--Ground			--Fast				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Permadeath"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"false"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"false"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"true"},					--True				(options are True, False)
			{"CraftingIsFree",					"false"},					--False				(options are True, False)
			{"TutorialEnabled",					"true"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"false"},					--False				(options are True, False)
			{"BaseAutoPower",					"false"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"DestroySave"},				--DestroySave		(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"Normal"},					--High				(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Normal"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",		"All"},					--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Low				(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"Normal"},					--High				(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Normal"},					--Expensive			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Normal"},					--High				(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Normal"},					--Low				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"High"},					--High				(options are None, Low, High)
			{"FishingDifficulty",				"NormalCatchWindow"},		--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Normal"},--Space			--Fast				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Normal"},--Ground			--Fast				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"PermadeathMinSettings"},	--Minimum allowable settings to choose when doing a permadeath game? Or for Permadeath achievement, maybe?
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"false"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"false"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"false"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"true"},					--True				(options are True, False)
			{"CraftingIsFree",					"false"},					--False				(options are True, False)
			{"TutorialEnabled",					"true"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"false"},					--False				(options are True, False)
			{"BaseAutoPower",					"false"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"DestroySave"},				--DestroySave		(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"Low"},						--Normal			(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Normal"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",		"All"},					--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Slow"},					--Normal			(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Slow"},					--Normal			(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"Normal"},					--Normal			(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"Normal"},					--Normal			(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Normal"},					--Normal			(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Fast"},					--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Fast"},					--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Low"},						--Low				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"Low"},						--Low				(options are None, Low, High)
			{"FishingDifficulty",				"LongCatchWindow"},			--NormalCatchWindow	(options are AutoCatch, LongCatchWindow, NormalCatchWindow, ShortCatchWindow)
		},
		{
			{"CombatTimerDifficultyOption",		"Off"},--Space				--Off				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Off"},--Ground				--Off				(options are Off, Slow, Normal, Fast)
		}
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NormalModeHeatBonus", NormalModeHeatBonus},
					{"HeatAlertTime", HeatAlertTime},
					{"OverheatDecay", OverheatDecay},
					{"TechDamageChanceShieldedMax", TechDamageChanceShieldedMax},
					{"TechDamageChanceShieldLevelMin", TechDamageChanceShieldLevelMin},
					{"TechDamageChanceShieldLevelMax", TechDamageChanceShieldLevelMax},
					{"TechDamageChanceToSelectPrimary", TechDamageChanceToSelectPrimary},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ID","TOOL"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"PulseRange", ScannerRange},
					{"ChargeTime", ScannerRecharge},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","SHIP"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeTime", ShipScanRecharge},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AllSlotsUnlockedStartingSuitSlots", AllSlotsUnlockedStartingSuitSlots},
					{"AllSlotsUnlockedStartingSuitTechSlots", AllSlotsUnlockedStartingSuitTechSlots},
					{"AllSlotsUnlockedStartingWeaponSlots", AllSlotsUnlockedStartingWeaponSlots},
					{"AllSlotsUnlockedStartingShipSlots", AllSlotsUnlockedStartingShipSlots},
					{"AllSlotsUnlockedStartingShipTechSlots", AllSlotsUnlockedStartingShipTechSlots},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"InventoryStackLimits","GcDifficultySettingCommonData"},
				--["PRECEDING_KEY_WORDS"] = "MaxSubstanceStackSizes",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"DifficultySettingEditability", StackLimitSettings},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "DamageReceivedMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"None", DRNone},
					{"Low", DRLow},
					{"Normal", DRNormal},
					{"High", DRHigh},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "DamageReceivedAIMechTechDamageHits",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"None", DRMNone},
					{"Low", DRMLow},
					{"Normal", DRMNormal},
					{"High", DRMHigh},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "DamageGivenMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"High", DGHigh},
					{"Normal", DGNormal},
					{"Low", DGLow},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "HazardDrainMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slow", HDSlow},
					{"Normal", HDNormal},
					{"Fast", HDFast},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "EnergyDrainMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Slow", EDSlow},
					{"Normal", EDNormal},
					{"Fast", EDFast},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "SubstanceCollectionMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"High", SCHigh},
					{"Normal", SCNormal},
					{"Low", SCLow},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "SubstanceCollectionLaserAmount",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"High", SCHighLaserAmount},
					{"Normal", SCNormalLaserAmount},
					{"Low", SCLowLaserAmount},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "ChargingRequirementsMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"None", CRNone},
					{"Low", CRLow},
					{"Normal", CRNormal},
					{"High", CRHigh},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Free","GcDifficultyFuelUseOptionData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", FUFree},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Cheap","GcDifficultyFuelUseOptionData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", FUCheap},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Cheap","GcDifficultyFuelUseOptionData"},
				["PRECEDING_KEY_WORDS"] = "TechOverrides",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", FUCheapTerrainEditor},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Normal","GcDifficultyFuelUseOptionData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", FUNormal},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Expensive","GcDifficultyFuelUseOptionData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", FUExpensive},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "LaunchFuelCostMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Free", LFFree},
					{"Low", LFLow},
					{"Normal", LFNormal},
					{"High", LFHigh},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "ShipSummoningFuelCostMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Free", LFFreeShipSummon},
					{"Low", LFLowShipSummon},
					{"Normal", LFNormalShipSummon},
					{"High", LFHighShipSummon},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Free","GcDifficultyCurrencyCostOptionData"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Units", CCFreeUnits},
					{"Nanites", CCFreeNanites},
					{"Specials", CCFreeSpecials},
					{"TradeBuyPriceMarkupMod", CCFreeBuyPriceMarkup},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Cheap","GcDifficultyCurrencyCostOptionData"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Units", CCCheapUnits},
					{"Nanites", CCCheapNanites},
					{"Specials", CCCheapSpecials},
					{"TradeBuyPriceMarkupMod", CCCheapBuyPriceMarkup},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Normal","GcDifficultyCurrencyCostOptionData"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Units", CCNormalUnits},
					{"Nanites", CCNormalNanites},
					{"Specials", CCNormalSpecials},
					{"TradeBuyPriceMarkupMod", CCNormalBuyPriceMarkup},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Expensive","GcDifficultyCurrencyCostOptionData"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Units", CCExpensiveUnits},
					{"Nanites", CCExpensiveNanites},
					{"Specials", CCExpensiveSpecials},
					{"TradeBuyPriceMarkupMod", CCExpensiveBuyPriceMarkup},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "ScannerRechargeMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"VeryFast", SRVeryFast},
					{"Fast", SRFast},
					{"Normal", SRNormal},
					{"Slow", SRSlow},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "ReputationGainMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"VeryFast", RGVeryFast},
					{"Fast", RGFast},
					{"Normal", RGNormal},
					{"Slow", RGSlow},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "SpaceCombatMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Off", SCMOff},
					{"Slow", SCMSlow},
					{"Normal", SCMNormal},
					{"Fast", SCMFast},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "SpaceCombatDifficultyMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Off", SCMOffDiff},
					{"Slow", SCMSlowDiff},
					{"Normal", SCMNormalDiff},
					{"Fast", SCMFastDiff},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "GroundCombatMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Off", GCMOff},
					{"Slow", GCMSlow},
					{"Normal", GCMNormal},
					{"Fast", GCMFast},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "SentinelTimeOutMultipliers",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Off", GCMOffSent},
					{"Slow", GCMSlowSent},
					{"Normal", GCMNormalSent},
					{"Fast", GCMFastSent},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "SprintingCostMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Free", SOFree},
					{"Low", SOLow},
					{"Full", SOFull},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "BreakTechOnDamageMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"None", BTNone},
					{"Low", BTLow},
					{"High", BTHigh},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "FishingCatchWindowMultipliers",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AutoCatch", AutoCatch},
					{"LongCatchWindow", LongCatchWindow},
					{"NormalCatchWindow", NormalCatchWindow},
					{"ShortCatchWindow", ShortCatchWindow}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Normal","GcItemShopAvailabilityDifficultyOptionData"},
				["PRECEDING_KEY_WORDS"] = "NeverSoldItems",
				--["LINE_OFFSET"] = "+2",
				REMOVE = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Normal","GcItemShopAvailabilityDifficultyOptionData"},
				--["LINE_OFFSET"] = "+1",
				ADD = NormalNeverSoldItems
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Low","GcItemShopAvailabilityDifficultyOptionData"},
				["PRECEDING_KEY_WORDS"] = "NeverSoldItems",
				--["LINE_OFFSET"] = "+2",
				REMOVE = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Low","GcItemShopAvailabilityDifficultyOptionData"},
				--["LINE_OFFSET"] = "+1",
				ADD = LowNeverSoldItems
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTSEASONALDATA.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			--Left intentionally blank
		}
	}
}}}}


local ChangesToGameplayGlobals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #InterestLevelChanges do
	local InterestType = InterestLevelChanges[i][1][1]
	local Ranges = InterestLevelChanges[i][2]
	
	for j=1, #Ranges do
		NewValue1 = Ranges[j][1]
		NewValue2 = Ranges[j][2]
		NewValue3 = Ranges[j][3]
	
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				["PRECEDING_KEY_WORDS"] = {InterestType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"IGNORE", NewValue1},
					{"IGNORE", NewValue2},
					{"IGNORE", NewValue3},
				}
			}
	end
end
for i = 1, #SentinelTimersChanges do
	local TimerType = SentinelTimersChanges[i][1][1]
	local Ranges = SentinelTimersChanges[i][2]
	
	for j=1, #Ranges do
		Level = Ranges[j][1]
		X = Ranges[j][2]
		Y = Ranges[j][3]
	
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				["SPECIAL_KEY_WORDS"] = {TimerType, "GcExperienceTimers"},
				["PRECEDING_KEY_WORDS"] = {Level},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", X},
					{"Y", Y},
				}
			}
	end
end
for i = 1, #PirateTimersChanges do
	local TimerType = PirateTimersChanges[i][1][1]
	local Ranges = PirateTimersChanges[i][2]
	
	for j=1, #Ranges do
		Level = Ranges[j][1]
		X = Ranges[j][2]
		Y = Ranges[j][3]
	
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				["SPECIAL_KEY_WORDS"] = {TimerType, "GcExperienceTimers"},
				["PRECEDING_KEY_WORDS"] = {Level},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"X", X},
					{"Y", Y},
				}
			}
	end
end
if DisablePlanetaryPirateRaids then
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				["SPECIAL_KEY_WORDS"] = {"PlanetPirateTimers", "GcExperienceTimers"},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"X",	"0"},
					{"Y",	"0"}
				}
			}
end

local ChangesToDifficulty = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]

for i = 1, #Presets do
	local PresetName = Presets[i][1][1]
	local Values = Presets[i][2]
	local CombatValues = Presets[i][3]
	
	for j=1, #Values do
		ValueName = Values[j][1]
		Value = Values[j][2]
	
			ChangesToDifficulty[#ChangesToDifficulty+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {PresetName, "GcDifficultySettingsData"},
				--["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{ValueName, Value}
				}
			}
	end
			ChangesToDifficulty[#ChangesToDifficulty+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {PresetName, "GcDifficultySettingsData",	"SpaceCombatTimers", "GcCombatTimerDifficultyOption"},
				--["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{CombatValues[1][1], CombatValues[1][2]}
				}
			}
			
			ChangesToDifficulty[#ChangesToDifficulty+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {PresetName, "GcDifficultySettingsData",	"GroundCombatTimers", "GcCombatTimerDifficultyOption"},
				--["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{CombatValues[2][1], CombatValues[2][2]}
				}
			}
end

local ChangesToDefaultSeasonData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]

if LowerExpeditionMinimums then
			ChangesToDefaultSeasonData[#ChangesToDefaultSeasonData+1] = 
			{
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"DeathConsequences",	"ItemGrave"},
					{"DamageReceivedDifficulty",	"Low"},
					{"DamageGiven",	"Normal"},
					{"ActiveSurvivalBars",	"All"},
					{"HazardDrain",	"Slow"},
					{"EnergyDrain",	"Slow"},
					{"SubstanceCollection",	"Normal"},
					{"InventoryStackLimits",	"High"},
					{"ChargingRequirements",	"Low"},
					{"FuelUse",	"Cheap"},
					{"LaunchFuelCost",	"Low"},
					{"CurrencyCost",	"Cheap"},
					{"ItemShopAvailability",	"High"},
					{"ScannerRecharge",	"Fast"},
					{"ReputationGain",	"Fast"},
					{"CreatureHostility",	"AttackIfProvoked"},
					{"SpaceCombatTimers",	"Slow"},
					{"GroundCombatTimers",	"Slow"},
					{"SprintingCost",	"Low"},
					{"BreakTechOnDamage",	"None"},
					{"Fishing",	"LongCatchWindow"},
				}
			}
end

if AllowExpeditionFreeCraft then
			ChangesToDefaultSeasonData[#ChangesToDefaultSeasonData+1] = 
			{
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"CraftingIsFree",	"true"}
				}
			}
end