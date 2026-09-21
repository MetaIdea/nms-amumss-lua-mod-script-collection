--[[
Mod name		Corvette No Build Validation
Mod category	Ships
Mod language	English
Current version	1.0
Built for		NMS 7.01 (Cosmos), exe build 179292
Author			DANV1K

Sets DisableCorvetteValidation in GcDebugOptions.

NOTE ON THE TEMPLATE NAME: the struct is "cGcDebugOptions", with a lowercase c
prefix. Patching "GcDebugOptions" is a silent no-op — the game loads nothing and
you get no error. This is the most likely reason earlier attempts at this flag
were reported as not working.
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "NoCorvetteValidation",
	MOD_AUTHOR      = "DANV1K",
	NMS_VERSION     = "7.01",
	MOD_DESCRIPTION = "Removes corvette build validation. Finalize builds with unconnected parts, and edit imported corvettes the vanilla editor refuses.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[GCDEBUGOPTIONS.GLOBAL.MBIN]],
					MXML_CT = {
						{
							VCT = {
								{ "DisableCorvetteValidation", "true" },--false
							},
						},
					},
				},
			},
		},
	},
}
