Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various camera and shake settings."
FileSource01 = "GCCAMERAGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
ShakeOff = "False"
BigPainSHStrength = 0.0075			-- Shake strength during large injuries | 0.02 | 
BigPainSHFrequency = 3				-- Shake frequency during large injuries | 5 | 
BigPainVibStrength = 0.0075			-- Vibration strength during large injuries | 0.02 | 
BigPainVibFrequency = 3				-- Vibration frequency during large injuries | 5 | 
ExplosionPainSHStrength = 0.01		-- Shake strength during explosions | 0.02 | 4160
ExplosionPainSHFrequency = 5		-- Shake frequency during explosions | 7 | 4161
ExplosionPainVibStrength = 0.01		-- Vibration strength during explosions | 0.02 | 4162
ExplosionPainVibFrequency = 5		-- Vibration frequency during explosions | 7 | 4163
GrenadeSHStrength = 0.01			-- Shake strength during grenade explosions | 0.02 | 4105
GrenadeSHFrequency = 3				-- Shake frequency during grenade explosions | 5 | 4106
GrenadeVibStrength = 0.01			-- Vibration strength during grenade explosions | 0.02 | 4107
GrenadeVibFrequency = 3				-- Vibration frequency during grenade explosions | 5 | 4108
SandwormEmergeSHStrength = 0.03		-- Shake strength during sandworm emerges | 0.06 | 5393
SandwormEmergeSHFrequency = 1.15	-- Shake frequency during sandworm emerges | 2.3 | 5394
SandwormEmergeVibStrength = 0.01	-- Vibration strength during sandworm emerges | 0.01 | 5395
SandwormEmergeVibFrequency = 1.05	-- Vibration frequency during sandworm emerges | 2.2 | 5396


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
--
--##### Everything after here is from Step and controls shake data #####
--
				{["SPECIAL_KEY_WORDS"] = {"Name", "ROCKHIT",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "MELEE",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "MELEE_HIT",}, 
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "MELEE_HIT",}, 
					["PRECEDING_KEY_WORDS"] = "MechanicalData",
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SPEEDSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SPEEDSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "THRUSTSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "BOOSTSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "WARPSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "WARPSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SHOOTABLESHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SMALLPAINSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "BIGPAINSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ShakeStrength", BigPainSHStrength}, 
						{"ShakeFrequency", BigPainSHFrequency}, 
						{"VibrateStrength", BigPainVibStrength}, 
						{"VibrateFrequency", BigPainVibFrequency}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "EXPLOSIONPAINSH",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ShakeStrength", ExplosionPainSHStrength}, 
						{"ShakeFrequency", ExplosionPainSHFrequency}, 
						{"VibrateStrength", ExplosionPainVibStrength}, 
						{"VibrateFrequency", ExplosionPainVibFrequency}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "LAND",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "LASERSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "LASERSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "GRENADESHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ShakeStrength", GrenadeSHStrength}, 
						{"ShakeFrequency", GrenadeSHFrequency}, 
						{"VibrateStrength", GrenadeVibStrength}, 
						{"VibrateFrequency", GrenadeVibFrequency}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SHIPLASERSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SHIPLASERSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "WALKERWALK",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "WARP_FRT_ATMOS",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "LARGECREATUREWA",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "RUNNING",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "RUNNING",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "TELEPORTATLASSH",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "TELEPORTATLASSH",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "FLYBY",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "FLYBY",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "PORTALOPEN",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "VENTBUILDUP",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "EXTRACTOR",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "EXTRACTOR",},
					["PRECEDING_KEY_WORDS"] = {"MechanicalData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "MECHTITANFALL",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "MECHLAND",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SANDWORMEMERGE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ShakeStrength", SandwormEmergeSHStrength}, 
						{"ShakeFrequency", SandwormEmergeSHFrequency}, 
						{"VibrateStrength", SandwormEmergeVibStrength}, 
						{"VibrateFrequency", SandwormEmergeVibFrequency}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "SANDWORMSHAKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "WORMGRNDROAR",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "LIGHTNINGSTRIKE",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "WARP_FRG_ATMOS",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "FRG_FLYBY_PREP",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "FREIGHTERLIFT",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Name", "FRG_FLYBY_PREP",},
					["PRECEDING_KEY_WORDS"] = {"CapturedData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Active", ShakeOff}, 
					}
				},
			}
		}}
	}}
}