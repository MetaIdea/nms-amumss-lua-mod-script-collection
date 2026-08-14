--[[
Mod id				3556
Mod category		Environment
Mod name			Pirate Bridge ReLight
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3556
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME            = "___230_PirateBridgeReLight",
	MOD_AUTHOR              = "DY230",
	NMS_VERSION             = "6.45.1",
	MOD_DESCRIPTION         = "Replace pirate freighter bridge red light with white light, and change planetary hologram to Earth-style texture.",

	MODIFICATIONS = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE.SCENE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Value", [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE\GLOW_MAT.MATERIAL.MBIN]] } },
							REPLACE_TYPE = "ALL",
							VCT = {
								{ "Value", [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\GLOW_MAT.MATERIAL.MBIN]] },
							},
						},
						{
							SKW = {
								{ "Name", "COL_G" },
								{ "Name", "COL_B" },
							},
							REPLACE_TYPE = "ALL",
							VCT = {
								{ "Value", 1.0 },
							},
						},
					},
				},
			},
		},
	},

	ADD_FILES = {
		{
			EXTERNAL_FILE_SOURCE = [[E:\NoMansSky\DDS\PROCPLANETPIRATE.BASEP.1.DDS]],--use your path
			FILE_DESTINATION    = [[TEXTURES\PLANETS\BIOMES\COMMON\BUILDINGS\SHARED\COMMON\PROCPLANETPIRATE.BASEP.1.DDS]],
		},
	},
}