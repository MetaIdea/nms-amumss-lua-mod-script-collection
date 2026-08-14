--[[
Mod id				3615
Mod category		TWEAKS & FIXES
Mod name			Wraith Tail Glow
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3615
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_WraithTailGlow",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "Wraith tail glow (old-style).",
	MODIFICATIONS   = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOFIGHTER\BIOFIGHTERTRANSPWAVE.MATERIAL.MBIN]],
					MXML_CT = {
						{
							VCT = {
								--BIOFIGHTERTRANSPWAVE.MATERIAL.MBIN:-2721363822860323543	--original tail
								--BIOFIGHTERFLASHWAVE.MATERIAL.MBIN:-4600418001163883659	--transparent tail
								--BIOFIGHTERORBMAT.MATERIAL.MBIN:2759071904649036308		--glowing tail
								{ "ShaderMillDataHash", 2759071904649036308 },
							},
						},
					},
				},
			},
		},
	},
}