Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with environmental hazards on the suit."
FileSource01 = "METADATA\SIMULATION\ENVIRONMENT\HAZARDTABLE.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
NoO2ProtectionTimeX = 120		--  | 90 | 36
NoO2ProtectionTimeY = 120		--  | 90 | 37

ExHeatProtectionTimeX = 720		--  | 540 | 64
ExHeatProtectionTimeY = 54		--  | 40 | 65
ExHeatDamageRateX = 30			--  | 50 | 68
ExHeatDamageRateY = 15			--  | 20 | 69
ExHeatWoundRateX = 30			--  | 50 | 72
ExHeatWoundRateY = 15			--  | 20 | 73

ExColdProtectionTimeX = 720		--  | 540 | 92
ExColdProtectionTimeY = 54		--  | 40 | 93
ExColdDamageRateX = 30			--  | 50 | 96
ExColdDamageRateY = 15			--  | 20 | 97
ExColdWoundRateX = 30			--  | 50 | 100
ExColdWoundRateY = 15			--  | 20 | 101

GasProtectionTimeX = 720		--  | 540 | 120
GasProtectionTimeY = 54			--  | 40 | 121
GasDamageRateX = 50				--  | 50 | 124
GasDamageRateY = 20				--  | 20 | 125
GasWoundRateX = 50				--  | 50 | 128
GasWoundRateY = 20				--  | 20 | 129

RadProtectionTimeX = 720		--  | 540 | 148
RadProtectionTimeY = 54			--  | 40 | 149
RadDamageRateX = 20				--  | 50 | 152
RadDamageRateY = 10				--  | 20 | 153
RadWoundRateX = 20				--  | 50 | 156
RadWoundRateY = 10				--  | 20 | 157

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{["PRECEDING_KEY_WORDS"] = {"NoOxygen", "ProtectionTime",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", NoO2ProtectionTimeX},	{"y", NoO2ProtectionTimeY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ExtremeHeat", "ProtectionTime",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", ExHeatProtectionTimeX}, {"y", ExHeatProtectionTimeY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ExtremeHeat", "DamageRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", ExHeatDamageRateX}, {"y", ExHeatDamageRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ExtremeHeat", "WoundRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", ExHeatWoundRateX}, {"y", ExHeatWoundRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ExtremeCold", "ProtectionTime",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", ExColdProtectionTimeX}, {"y", ExColdProtectionTimeY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ExtremeCold", "DamageRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", ExColdDamageRateX}, {"y", ExColdDamageRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ExtremeCold", "WoundRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", ExColdWoundRateX}, {"y", ExColdWoundRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToxicGas", "ProtectionTime",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", GasProtectionTimeX}, {"y", GasProtectionTimeY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToxicGas", "DamageRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", GasDamageRateX}, {"y", GasDamageRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToxicGas", "WoundRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", GasWoundRateX}, {"y", GasWoundRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Radiation", "ProtectionTime",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", RadProtectionTimeX}, {"y", RadProtectionTimeY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Radiation", "DamageRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", RadDamageRateX}, {"y", RadDamageRateY},						
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Radiation", "WoundRate",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", RadWoundRateX}, {"y", RadWoundRateY},						
					}
				},
			}
		},}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE