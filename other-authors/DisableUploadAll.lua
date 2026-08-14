--[[
Mod id				3598
Mod category		User Interface
Mod name			Disable Upload All
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3598
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_DisableUploadAll",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "Remove the <Upload All> button from the Discovery page.",
	MODIFICATIONS   = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[UI\DISCOVERYPAGE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "UPLOAD_ALL" } },
							-- REMOVE = "SECTION",
							VCT = {
								{ "Is Hidden", "true" },--false
							},
						},
					},
				},
			},
		},
	},
}