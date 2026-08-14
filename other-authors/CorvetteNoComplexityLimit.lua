--[[
Mod id				3701
Mod category		Buildings
Mod name			Corvette No Complexity Limit
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3701
]]

local NEW_VALUE = 99999

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_CorvetteNoComplexityLimit",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "Corvette-class ships no complexity limit.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{
					MBIN_FS = [[GCBUILDABLESHIPGLOBALS.GLOBAL.MBIN]],
					MXML_CT = {
						{
							VCT = {
								{ "Cockpit",                  NEW_VALUE },--0
								{ "Hab",                      NEW_VALUE },--0
								{ "Gear",                     NEW_VALUE },--4
								{ "Gun",                      NEW_VALUE },--10
								{ "Shield",                   NEW_VALUE },--0
								{ "Hull",                     NEW_VALUE },--0
								{ "Access",                   NEW_VALUE },--4
								{ "Wing",                     NEW_VALUE },--4
								{ "Engine",                   NEW_VALUE },--10
								{ "Reactor",                  NEW_VALUE },--0
								{ "Connector",                NEW_VALUE },--0
								{ "Decor",                    NEW_VALUE },--0
								{ "Interior",                 NEW_VALUE },--0
								{ "ComplexityLimitWarningNX", NEW_VALUE },--40
								{ "ComplexityLimitWarning",   NEW_VALUE },--100
							},
						},
					},
				},
				--[[{--seem not working
					MBIN_FS = "GCDEBUGOPTIONS.GLOBAL.MBIN",--[]
					MXML_CT = {
						{
							VCT = {
								{ "DisableCorvetteValidation", "true" },--false
							},
						},
					},
				},]]
			},
		},
	},
}