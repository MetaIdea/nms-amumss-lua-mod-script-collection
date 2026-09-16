--[[
Mod id				3615
Mod category		TWEAKS & FIXES
Mod name			Wraith Tail Glow
Mod language		English
Current version		7.02
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3615
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_WraithTailGlow",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "7.02",
	MOD_DESCRIPTION = "Wraith tail glow (old-style).",
	MODIFICATIONS   = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOFIGHTER\BIOFIGHTERTRANSPWAVE.MATERIAL.MBIN]],
					MXML_CT = {
						{
							VCT = {
								{ "ShaderMillDataHash", "-5631890592468628783" },--7924863777997649520
							},
						},
					},
				},
			},
		},
	},
}