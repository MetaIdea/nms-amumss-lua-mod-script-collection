Author = "Gumsk"
ModName = "gCam"
ModNameSub = "FOV"
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
							["VALUE_CHANGE_TABLE"] = {
								{"MeleeFoV",99},
								{"FirstPersonFoV",99},
								{"ThirdPersonFoV",99},
								{"ThirdPersonCombatFoV",99},
								{"FirstPersonZoom1FoV",99},
								{"FirstPersonZoom2FoV",99},
							}
						}
					}
				}
			}
		}
	}
}