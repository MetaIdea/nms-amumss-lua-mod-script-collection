Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "Safe Travels"
BaseDescription = "Large power increases in player globals"
GameVersion = "398"
ModVersion = "a"
FileSource = "GCPLAYERGLOBALS.GLOBAL.MBIN"

HardModeEnergyDischargeRateLow = 0					--0.08
HardModeEnergyDischargeRateMedium = 0				--0.8
HardModeEnergyDischargeRateHigh = 0					--2.2
EnergyDischargeRateLow = 0							--0.02
EnergyDischargeRateMedium = 0						--0.25
EnergyDischargeRateHigh = 0							--0.9
EnergyDischargeRateFloatingInSpace = 0				--30
NormalModeHazardTimeMultiplier = 10					--0.9
NormalModeHazardDamageRateMultiplier = 10			--0.8
NormalModeHazardDamageWoundRateMultiplier = 0.5		--0.8
NormalModeHazardRechargeUnderground = 0.5			--1.5
HardModeHazardTimeMultiplier = 0.7					--0.3
HardModeHazardDamageRateMultiplier = 0.4			--0.3
HardModeHazardDamageWoundRateMultiplier = 0.4		--0.5
HardModeHazardRechargeUnderground = 1.0				--3.5
ShieldRestoreSpeed = 1.0							--0.2
ShieldRestoreDelay = 5  							--10
ShieldRechargeMinTimeSinceDamage = 10				--30
ShieldRechargeRate = 30								--10
StaminaRecoveryRate = 0.3							--0.1
HardLandTime = 8									--0.5
HardLandMin = 50									--5
HardLandMax = 150									--18


  
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"HardModeEnergyDischargeRateLow",HardModeEnergyDischargeRateLow},
								{"HardModeEnergyDischargeRateMedium",HardModeEnergyDischargeRateMedium},
								{"HardModeEnergyDischargeRateHigh",HardModeEnergyDischargeRateHigh},
								{"EnergyDischargeRateLow",EnergyDischargeRateLow},
								{"EnergyDischargeRateMedium",EnergyDischargeRateMedium},
								{"EnergyDischargeRateHigh",EnergyDischargeRateHigh},
								{"EnergyDischargeRateFloatingInSpace",EnergyDischargeRateFloatingInSpace},
								{"NormalModeHazardTimeMultiplier",NormalModeHazardTimeMultiplier},
								{"NormalModeHazardDamageRateMultiplier",NormalModeHazardDamageRateMultiplier},
								{"NormalModeHazardDamageWoundRateMultiplier",NormalModeHazardDamageWoundRateMultiplier},
								{"NormalModeHazardRechargeUnderground",NormalModeHazardRechargeUnderground},
								{"HardModeHazardTimeMultiplier",HardModeHazardTimeMultiplier},
								{"HardModeHazardDamageRateMultiplier",HardModeHazardDamageRateMultiplier},
								{"HardModeHazardDamageWoundRateMultiplier",HardModeHazardDamageWoundRateMultiplier},
								{"HardModeHazardRechargeUnderground",HardModeHazardRechargeUnderground},
								{"ShieldRestoreSpeed",ShieldRestoreSpeed},
								{"ShieldRestoreDelay",ShieldRestoreDelay},
								{"ShieldRechargeMinTimeSinceDamage",ShieldRechargeMinTimeSinceDamage},
								{"ShieldRechargeRate",ShieldRechargeRate},
								{"StaminaRecoveryRate",StaminaRecoveryRate},
								{"HardLandTime",HardLandTime},
							},
						},
					},
				},
			}
		}
	}
}