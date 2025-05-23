ColorName		= "CYAN"
RedAmount		= 0.0
GreenAmount		= 0.73725
BlueAmount		= 0.89019

Author			= "Gumsk"
ModName 		= "gMultitool Boltcaster"
ModNameSub		= ColorName
BaseDescription = "Changes the boltcaster projectile, trail, and impact colors to "..ColorName
GameVersion = "5.2.2.0"
ModVersion = "a"

--[[Files Modified
MODELS/COMMON/PROJECTILES/MULTITOOL_BOLTGUN.SCENE.MBIN
MODELS/COMMON/PROJECTILES/BOLTGUNMUZZLE/PROJECTILEMESHMAT.MATERIAL.MBIN
MODELS/COMMON/PROJECTILES/BOLTGUNMUZZLE/PROJECTILEMESHTRAILMAT.MATERIAL.MBIN
MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/DISTORTIONPULSE.PARTICLE.MBIN
MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/FLARE.PARTICLE.MBIN
MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/GLOW.PARTICLE.MBIN
MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/MUZZLEMAIN.PARTICLE.MBIN
MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/SPARKS.PARTICLE.MBIN
MODELS/EFFECTS/PROJECTILES/GUN/GUN_HIT/EMITTERS/GLOW_EMITTER.PARTICLE.MBIN
MODELS/EFFECTS/PROJECTILES/GUN/GUN_HIT/EMITTERS/SPARKS_EMITTER.PARTICLE.MBIN
MODELS/EFFECTS/PROJECTILES/GUN/GUN_HIT/EMITTERS/SMOKE_EMITTER.PARTICLE.MBIN
MODELS/COMMON/WEAPONS/MULTITOOL/GUNMUZZLEFLASH.SCENE.MBIN
MODELS/COMMON/WEAPONS/MULTITOOL/GUNMUZZLEFLASH/CYLINDERGRADIENT.MATERIAL.MBIN
--]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION			= BaseDescription,
	MOD_AUTHOR				= Author,
	NMS_VERSION				= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT	= "FORCE",
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "GUMSK/BOLTGUNWHITE"..ColorName..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BOLTGUNWHITE"..ColorName..".DDS",
		},
		{
			FILE_DESTINATION 		= "GUMSK/BOLTGUNNOISEGRADIENT"..ColorName..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BOLTGUNNOISEGRADIENT"..ColorName..".DDS",
		},
	},
	MODIFICATIONS			= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS/COMMON/PROJECTILES/MULTITOOL_BOLTGUN.SCENE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","COL_R"},
							VALUE_CHANGE_TABLE = {
								{"Value", RedAmount},		--0.129000
							},
						},
						{
							SPECIAL_KEY_WORDS = {"Name","COL_G"},
							VALUE_CHANGE_TABLE = {
								{"Value", GreenAmount},		--0.578552
							},
						},
						{
							SPECIAL_KEY_WORDS = {"Name","COL_B"},
							VALUE_CHANGE_TABLE = {
								{"Value", BlueAmount},		--1.000000
							},
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS/COMMON/PROJECTILES/MULTITOOL_BOLTGUN/PROJECTILEMESHMAT.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
							VALUE_CHANGE_TABLE = {
								{"x", RedAmount},			--0.043
								{"y", GreenAmount},			--0.135606
								{"z", BlueAmount},			--1
							},
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS/COMMON/PROJECTILES/MULTITOOL_BOLTGUN/PROJECTILEMESHTRAILMAT.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/BOLTGUNWHITE"..ColorName..".DDS"},			--TEXTURES/EFFECTS/TRAILS/WHITEBLUE.DDS
							},
						},
					},
				},
				{
					MBIN_FILE_SOURCE = {
						"MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/DISTORTIONPULSE.PARTICLE.MBIN",
						"MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/FLARE.PARTICLE.MBIN",
						"MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/GLOW.PARTICLE.MBIN",
						"MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/MUZZLEMAIN.PARTICLE.MBIN",
						"MODELS/EFFECTS/MUZZLE/BOLTGUNMUZZLE/SPARKS.PARTICLE.MBIN",
						"MODELS/EFFECTS/PROJECTILES/GUN/GUN_HIT/EMITTERS/GLOW_EMITTER.PARTICLE.MBIN",
						"MODELS/EFFECTS/PROJECTILES/GUN/GUN_HIT/EMITTERS/SPARKS_EMITTER.PARTICLE.MBIN"
					},
					EXML_CHANGE_TABLE = {
						{
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},
								{"G", GreenAmount},
								{"B", BlueAmount},
							},
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS/EFFECTS/PROJECTILES/GUN/GUN_HIT/EMITTERS/SMOKE_EMITTER.PARTICLE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"R", 1},
								{"G", 1},
								{"B", 1},
							},
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS/COMMON/WEAPONS/MULTITOOL/GUNMUZZLEFLASH.SCENE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","COL_R"},
							VALUE_CHANGE_TABLE = {
								{"Value", RedAmount},		--0.263000
							},
						},
						{
							SPECIAL_KEY_WORDS = {"Name","COL_G"},
							VALUE_CHANGE_TABLE = {
								{"Value", GreenAmount},		--0.476964
							},
						},
						{
							SPECIAL_KEY_WORDS = {"Name","COL_B"},
							VALUE_CHANGE_TABLE = {
								{"Value", BlueAmount},		--1.000000
							},
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS/COMMON/WEAPONS/MULTITOOL/GUNMUZZLEFLASH/CYLINDERGRADIENT.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/BOLTGUNNOISEGRADIENT"..ColorName..".DDS"},			--TEXTURES/EFFECTS/TRAILS/WHITEBLUE.DDS
							},
						},
					},
				},
			}
		}
	}
}