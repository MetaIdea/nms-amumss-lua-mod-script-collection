NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.LifeSupportFull+FasterSpeeds.5.0.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.0",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"GroundWalkSpeed",                          "10"},       --Original "4.4"
								{"GroundWalkSpeedTeleportHmd",               "10"},       --Original "4.4"
								{"GroundRunSpeed",                           "20"},       --Original "8"
								{"GroundWalkSpeedLowG",                      "8"},        --Original "1.6"
								{"GroundRunSpeedLowG",                       "15"},       --Original "3.5"
								{"JetpackUnderwaterDrainRate",               "0"},        --Original "0.4"
								{"JetpackUnderwaterFillRate",                "100"},      --Original "1"
								{"UnderwaterMaxJetpackSpeed",                "20"},       --Original "8"
								{"RespawnOnPadRadius",                       "15"},       --Original "25"
								{"DefaultHealthPips",                        "9"},        --Original "3"
								{"DefaultShipHealthPips",                    "9"},        --Original "6"
								{"HealthRechargeMinTimeSinceDamage",         "0.00001"},  --Original "10"
								{"HealthPipRechargeRate",                    "99999"},    --Original "200"
								{"HardModeEnergyDischargeRateLow",           "0"},        --Original "0.08"
								{"HardModeEnergyDischargeRateMedium",        "0"},        --Original "0.8"
								{"HardModeEnergyDischargeRateHigh",          "0"},        --Original "2.2"
								{"HazardDamageMinTime",                      "0"},        --Original "20"
								{"EnergyDamageMinTime",                      "0"},        --Original "30"
								{"EnergyDischargeRateLow",                   "0"},        --Original "0.02"
								{"EnergyDischargeRateMedium",                "0"},        --Original "0.25"
								{"EnergyDischargeRateHigh",                  "0"},        --Original "0.9"
								{"EnergyDischargeRateFloatingInSpace",       "0"},        --Original "30"
								{"EnergyPainRate",                           "0"},        --Original "20"
								{"SolarRegenFactor",                         "100"},      --Original "0.01"
								{"FreeJetpackRange",                         "999999"},   --Original "3"
								{"FreeJetpackRangePrime",                    "999999"},   --Original "5"
								{"FreeJetpackRangeNonTerrain",               "999999"},   --Original "1.1"
								{"JetpackDrainHorizontalFactor",             "0"},        --Original "2.5"
								{"RocketBootsJetpackMinLevel",               "-999999"},  --Original "1"
								{"RocketBootsBoostTankDrainSpeed",           "0"},        --Original "6"
								{"RocketBootsDriftTankDrainSpeed",           "0"},        --Original "1"
								{"RocketBootsBoostOnTime",                   "3"},        --Original "0.2"
								{"RocketBootsMaxSpeed",                      "30"},       --Original "20"
								{"JetpackMinLevel",                           "-999999"}, --Original "0.5"
								{"JetpackMaxSpeed",                           "50"},      --Original "5"
								{"JetpackMaxUpSpeed",                         "50"},      --Original "30"
								{"JetpackIgnitionTime",                       "0.04"},    --Original "0.4"
								{"JetpackMinIgnitionTime",                    "0.02"},    --Original "0.2"
								{"JetpackFillRate",                           "100"},     --Original "0.5"
								{"JetpackFillRateHardMode",                   "100"},     --Original "0.2"
								{"JetpackFillRateMidair",                     "100"},     --Original "0.25"
								{"JetpackFillRateSpaceStationMultiplier",     "100"},     --Original "5"
								{"JetpackFillRateFleetMultiplier",            "100"},     --Original "5"
								{"JetpackFillRateNexusMultiplier",            "100"},     --Original "20"
								{"JetpackUpForceDeadPlanetExtra",             "20"},      --Original "10"
								{"JetpackForceDeadPlanetExtra",               "30"},      --Original "15"
								{"AbandonedFreighterStaminaRate",             "100"},     --Original "0.075"
								{"NormalModeHazardTimeMultiplier",            "0"},       --Original "0.9"
								{"NormalModeHazardDamageRateMultiplier",      "0"},       --Original "0.8"
								{"NormalModeHazardDamageWoundRateMultiplier", "0"},       --Original "0.8"
								{"NormalModeHazardRechargeUnderground",       "0"},       --Original "1.5"
								{"HardModeHazardDamageRateMultiplier",        "0"},       --Original "0.3"
								{"HardModeHazardDamageWoundRateMultiplier",   "0"},       --Original "0.5"
								{"HardModeHazardRechargeUnderground",         "0"},       --Original "3.5"
								{"UseEnergy",                                 "False"},   --Original "True"
								{"UseHazardProtection",                       "False"},   --Original "True"
								{"NeverPreyedOn",                             "True"},    --Original "False"
								{"LuckyWithTech",                             "True"},    --Original "False"
								{"ChanceHighGradeIllegal",                    "100"},     --Original "10"
								{"BulletCostReducer",                         "0"},       --Original "2"
								{"BulletClipMultiplier",                      "0"},       --Original "2"
								{"WoundTimeMinimum",                          "0"},       --Original "5"
								{"WoundDamageLimit",                          "0"},       --Original "75"
								{"WoundDamageLimitShip",                      "0"},       --Original "150"
								{"WoundDamageDecayTime",                      "0"},       --Original "20"
								{"MeleeStaminaDrain",                         "0"},       --Original "0.2"
								{"MeleeCooldownAlt",                          "0"},       --Original "0.5"
								{"MeleeDamageScale",                          "0"},       --Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
							["LINE_OFFSET"] = "1",
							["VALUE_CHANGE_TABLE"] = 
							{
								{ "IGNORE", "999999" }, --Original "4"
								{ "IGNORE", "999999" }, --Original "6"
								{ "IGNORE", "999999" }, --Original "8"								
							}	
						},												
					}
				}
			}
		}
	}	
}