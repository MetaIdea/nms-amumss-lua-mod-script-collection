Author = "Gumsk"
ModName = "gShip"
ModNameSub = "Center Explorer Trails"
BaseDescription = "Centers the trails on explorer engines"
GameVersion = "452"
ModVersion = "a"

--Files Modified
--MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["LUA_AUTHOR"]		= "Gumsk",
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","Trail"},
							["VALUE_CHANGE_TABLE"] = {
								{"TransX",1.052734},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","Trail1"},
							["VALUE_CHANGE_TABLE"] = {
								{"TransX",-1.052734},
							},
						},
					},
				},
			}
		}
	}
}