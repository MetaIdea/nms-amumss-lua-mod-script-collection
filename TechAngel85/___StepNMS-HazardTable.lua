Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with environmental hazards on the suit."
FileSource01 = "METADATA\SIMULATION\ENVIRONMENT\HAZARDTABLE.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
NoO2ProtectionTimeX = 180		--  | 90 | 36
NoO2ProtectionTimeY = 180		--  | 90 | 37

ExHeatProtectionTimeX = 1080	--  | 540 | 64
ExHeatProtectionTimeY = 80		--  | 40 | 65
ExHeatDamageRateX = 25			--  | 50 | 68
ExHeatDamageRateY = 10			--  | 20 | 69
ExHeatWoundRateX = 25			--  | 50 | 72
ExHeatWoundRateY = 10			--  | 20 | 73
ExHeatTriggerValue = 52			--  | 49 | 82

ExColdProtectionTimeX = 1080	--  | 540 | 92
ExColdProtectionTimeY = 80		--  | 40 | 93
ExColdDamageRateX = 25			--  | 50 | 96
ExColdDamageRateY = 10			--  | 20 | 97
ExColdWoundRateX = 25			--  | 50 | 100
ExColdWoundRateY = 10			--  | 20 | 101
ExColdTriggerValue = -52		--  | -49 | 110

GasProtectionTimeX = 1080		--  | 540 | 120
GasProtectionTimeY = 80			--  | 40 | 121
GasDamageRateX = 65				--  | 50 | 124
GasDamageRateY = 30				--  | 20 | 125
GasWoundRateX = 65				--  | 50 | 128
GasWoundRateY = 30				--  | 20 | 129

RadProtectionTimeX = 1080		--  | 540 | 148
RadProtectionTimeY = 80			--  | 40 | 149
RadDamageRateX = 15				--  | 50 | 152
RadDamageRateY = 5				--  | 20 | 153
RadWoundRateX = 15				--  | 50 | 156
RadWoundRateY = 5				--  | 20 | 157

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
				{["PRECEDING_KEY_WORDS"] = {"ExtremeHeat",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"TriggerValue", ExHeatTriggerValue},						
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
				{["PRECEDING_KEY_WORDS"] = {"ExtremeCold",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"TriggerValue", ExColdTriggerValue},						
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