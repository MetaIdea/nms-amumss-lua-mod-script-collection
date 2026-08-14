--[[
Mod id				3602
Mod category		Gameplay
Mod name			Increase Player Transfer Range
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3602
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_IncreasePTRange",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "Increased the range of the item teleporting to other players.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[GCPLAYERGLOBALS.GLOBAL.MBIN]],
					MXML_CT = {
						{
							VCT = {
								{ "PlayerTransferRange", 99999.0 },--20
							},
						},
					},
				},
			},
		},
	},
}