Author = "Gumsk"
ModName = "gFreighter No Sentinel Antennae Collision"
ModNameSub = ""
BaseDescription = ""
GameVersion = "411"
ModVersion = "a"

--[[ Files Modified:
MODELS\\COMMON\\SPACECRAFT\\INDUSTRIAL\\ACCESSORIES\\VERTICALFIN.SCENE.MBIN
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
						"MODELS\\COMMON\\SPACECRAFT\\INDUSTRIAL\\ACCESSORIES\\VERTICALFIN.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {
								"Type","COLLISION"
							},
							["REMOVE"] = "SECTION",
						},
					},
				},
			}
		}
	}
}