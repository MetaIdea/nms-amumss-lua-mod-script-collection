Author = "Gumsk"
ModName = "gCam"
ModNameSub = "Viewmodel"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--Files Changed
--GCCAMERAGLOBALS.GLOBAL.MBIN

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"FirstPersonCamOffset"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"y",-10},
								{"z",-10},
							}
						}
					}
				}
			}
		}
	}
}