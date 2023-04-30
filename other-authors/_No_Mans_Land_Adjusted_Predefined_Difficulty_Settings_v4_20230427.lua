ModName = "No Mans Land Adjusted Predefined Difficulty Settings" --based on Xen0nex work in PtsD, just modified by youngneil1 to max out difficulty Survival and Permadeath preset by default  
GameVersion = "423"
Description = "Fully maxed out difficulty options preset for Survial and permadeath by default "



--This defines what specific settings are chosen by default for any given difficulty "preset" like Normal or Survival
	--This is mostly so I can lower the presets for Survival, Normal, Relaxed, and Permadeath to make more sense with the rebalanced values in PTSd
Presets =
{
	{
		{"Custom"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"False"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"False"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"False"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"True"},					--True				(options are True, False)
			{"CraftingIsFree",					"False"},					--False				(options are True, False)
			{"TutorialEnabled",					"True"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"False"},					--False				(options are True, False)
			{"BaseAutoPower",					"False"},					--False				(options are True, False)
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
			{"ItemShopAvailabilityDifficulty",	"Low"},					--Normal			(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"Low"},						--Low				(options are None, Low, High)
		},
		{
			{"CombatTimerDifficultyOption",		"Normal"},--Space			--Normal			(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Normal"},--Ground			--Normal			(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Normal"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"False"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"False"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"False"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"True"},					--True				(options are True, False)
			{"CraftingIsFree",					"False"},					--False				(options are True, False)
			{"TutorialEnabled",					"True"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"False"},					--False				(options are True, False)
			{"BaseAutoPower",					"False"},					--False				(options are True, False)
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
			{"LaunchFuelCostDifficulty",		"Low"},						--Normal			(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Normal"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Low"},					--Normal			(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Fast"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Normal"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"Low"},						--Low				(options are None, Low, High)
		},
		{
			{"CombatTimerDifficultyOption",		"Normal"},--Space			--Normal			(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Normal"},--Ground			--Normal			(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Creative"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"False"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"True"},					--True				(options are True, False)
			{"AllSlotsUnlocked",				"True"},					--True				(options are True, False)
			{"WarpDriveRequirements",			"False"},					--False				(options are True, False)
			{"CraftingIsFree",					"True"},					--True				(options are True, False)
			{"TutorialEnabled",					"False"},					--False				(options are True, False)
			{"StartWithAllItemsKnown",			"True"},					--True				(options are True, False)
			{"BaseAutoPower",					"True"},					--True				(options are True, False)
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
			{"ItemShopAvailabilityDifficulty",	"Low"},					--High				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"VeryFast"},				--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Fast"},					--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"NeverAttack"},				--NeverAttack		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Free"},					--Free				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"None"},					--None				(options are None, Low, High)
		},
		{
			{"CombatTimerDifficultyOption",		"Off"},--Space				--Off				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Off"},--Ground				--Off				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Relaxed"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"False"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"True"},					--True				(options are True, False)
			{"AllSlotsUnlocked",				"False"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"True"},					--True				(options are True, False)
			{"CraftingIsFree",					"False"},					--False				(options are True, False)
			{"TutorialEnabled",					"True"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"False"},					--False				(options are True, False)
			{"BaseAutoPower",					"True"},					--True				(options are True, False)
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
			{"ItemShopAvailabilityDifficulty",	"Low"},					--High				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"VeryFast"},				--VeryFast			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"VeryFast"},				--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"AttackIfProvoked"},		--AttackIfProvoked	(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Low"},						--Low				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"None"},					--None				(options are None, Low, High)
		},
		{
			{"CombatTimerDifficultyOption",		"Slow"},--Space				--Slow				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Slow"},--Ground			--Slow				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Survival"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"True"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"False"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"False"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"True"},					--True				(options are True, False)
			{"CraftingIsFree",					"False"},					--False				(options are True, False)
			{"TutorialEnabled",					"False"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"False"},					--False				(options are True, False)
			{"BaseAutoPower",					"False"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"DestroyItems"},			--DestroyItems		(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"High"},					--High				(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Low"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",		"All"},					--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Low				(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"Low"},					--Normal			(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"High"},					--High				(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Expensive"},					--Expensive			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"High"},					--High				(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Expensive"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Low"},					--Low				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Slow"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Slow"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"High"},					--High				(options are None, Low, High)
		},
		{
			{"CombatTimerDifficultyOption",		"Fast"},--Space			--Fast				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Fast"},--Ground			--Fast				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"Permadeath"},
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"True"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"False"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"False"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"True"},					--True				(options are True, False)
			{"CraftingIsFree",					"False"},					--False				(options are True, False)
			{"TutorialEnabled",					"False"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"False"},					--False				(options are True, False)
			{"BaseAutoPower",					"False"},					--False				(options are True, False)
			{"DeathConsequencesDifficulty",		"DestroySave"},			--DestroyItems		(options are None, ItemGrave, DestroyItems, DestroySave)
			{"DamageReceivedDifficulty",		"High"},					--High				(options are None, Low, Normal, High)
			{"DamageGivenDifficulty",			"Low"},					--Normal			(options are High, Normal, Low)
			{"ActiveSurvivalBarsDifficulty",		"All"},					--All				(options are None, HealthOnly, HealthAndHazard, All)
			{"HazardDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"EnergyDrainDifficulty",			"Normal"},					--Fast				(options are Slow, Normal, Fast)
			{"SubstanceCollectionDifficulty",	"Normal"},					--Low				(options are High, Normal, Low)
			{"InventoryStackLimitsDifficulty",	"Low"},					--Normal			(options are High, Normal, Low)
			{"ChargingRequirementsDifficulty",	"High"},					--High				(options are None, Low, Normal, High)
			{"FuelUseDifficulty",				"Expensive"},					--Expensive			(options are Free, Cheap, Normal, Expensive)
			{"LaunchFuelCostDifficulty",		"High"},					--High				(options are Free, Low, Normal, High)
			{"CurrencyCostDifficulty",			"Expensive"},					--Normal			(options are Free, Cheap, Normal, Expensive)
			{"ItemShopAvailabilityDifficulty",	"Low"},					--Low				(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Slow"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Slow"},					--Normal			(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Full"},					--Full				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"High"},					--High				(options are None, Low, High)
		},
		{
			{"CombatTimerDifficultyOption",		"Fast"},--Space			--Fast				(options are Off, Slow, Normal, Fast)
			{"CombatTimerDifficultyOption",		"Fast"},--Ground			--Fast				(options are Off, Slow, Normal, Fast)
		}
	},
	{
		{"PermadeathMinSettings"},	--Minimum allowable settings to choose when doing a permadeath game? Or for Permadeath achievement, maybe?
		{																						--Options generally go from easier to harder --> (except for True/False ones)
			{"SettingsLocked",					"False"},					--False				(options are True, False)
			{"InventoriesAlwaysInRange",		"False"},					--False				(options are True, False)
			{"AllSlotsUnlocked",				"False"},					--False				(options are True, False)
			{"WarpDriveRequirements",			"True"},					--True				(options are True, False)
			{"CraftingIsFree",					"False"},					--False				(options are True, False)
			{"TutorialEnabled",					"True"},					--True				(options are True, False)
			{"StartWithAllItemsKnown",			"False"},					--False				(options are True, False)
			{"BaseAutoPower",					"False"},					--False				(options are True, False)
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
			{"ItemShopAvailabilityDifficulty",	"High"},					--Normal			(options are High, Normal, Low)
			{"ScannerRechargeDifficulty",		"Fast"},					--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"ReputationGainDifficulty",		"Fast"},					--Fast				(options are VeryFast, Fast, Normal, Slow)
			{"CreatureHostilityDifficulty",		"FullEcosystem"},			--FullEcosystem		(options are NeverAttack, AttackIfProvoked, FullEcosystem)
			{"SprintingCostDifficulty",			"Low"},						--Low				(options are Free, Low, Full)
			{"BreakTechOnDamageProbability",	"Low"},						--Low				(options are None, Low, High)
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
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			
		}
	}
}}}}


local ChangesToGameplayGlobals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #Presets do
	local PresetName = Presets[i][1][1]
	local Values = Presets[i][2]
	local CombatValues = Presets[i][3]
	
	for j=1, #Values do
		ValueName = Values[j][1]
		Value = Values[j][2]
	
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {PresetName, "GcDifficultySettingsData.xml"},
				--["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{ValueName, Value}
				}
			}
	end
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {PresetName, "GcDifficultySettingsData.xml",	"SpaceCombatTimers", "GcCombatTimerDifficultyOption.xml"},
				--["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{CombatValues[1][1], CombatValues[1][2]}
				}
			}
			
			ChangesToGameplayGlobals[#ChangesToGameplayGlobals+1] = 
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["SPECIAL_KEY_WORDS"] = {PresetName, "GcDifficultySettingsData.xml",	"GroundCombatTimers", "GcCombatTimerDifficultyOption.xml"},
				--["PRECEDING_KEY_WORDS"] = {ItemType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{CombatValues[2][1], CombatValues[2][2]}
				}
			}
end

