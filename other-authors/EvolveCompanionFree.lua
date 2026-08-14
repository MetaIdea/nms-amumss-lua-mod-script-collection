--[[
Mod id				3600
Mod category		Cheats
Mod name			Evolve Companion Without Retroviral Pellet
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3600
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_EvolveCompanionFree",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "Evolve companion without retroviral pellet.",
	MODIFICATIONS   = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN]],
					MXML_CT = {
						{
							SKW = {
								{ "Name", "PET_FREELEVEL" },
							},
							VCT = {
								{ "Cost", "" },--C_PET_FREELEVEL
							},
						},
					},
				},
			},
		},
	},
}