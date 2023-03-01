Author = "Gumsk"
ModName = "gCam Custom"
ModNameSub = "NMS"
BaseDescription = ""
GameVersion = "411"
ModVersion = "a"

--[[ Files Modified:
GCDEBUGOPTIONS.GLOBAL.MBIN
GCCAMERAGLOBALS.GLOBAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {
						"GCDEBUGOPTIONS.GLOBAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"AllowPause","False"},
								{"RenderHud","False"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"GCCAMERAGLOBALS.GLOBAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"PhotoModeVelocitySmoothTime",3.0},
								{"PhotoModeMoveSpeed",40},
								{"PhotoModeMaxDistance",999999},
								{"PhotoModeMaxDistanceSpace",999999},
								{"BuildingModeMaxDistance",999999},
							},
						},
					},
				},
			}
		}
	}
}