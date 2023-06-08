Author			= "Gumsk"
ModName 		= "gShip Phase Beam Mining"
ModNameSub		= ""
BaseDescription = "Makes the phase beam able to mine"
GameVersion 	= "430"
ModVersion		= "a"

--[[Files Modified
METADATA/PROJECTILES/PROJECTILETABLE.MBIN
--]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]			= BaseDescription,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/PROJECTILES/PROJECTILETABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PLAYER_SHIP"},
							["VALUE_CHANGE_TABLE"] = {
								{"CanMine", "True"},		--"False"
							},
						},
					},
				},
			}
		}
	}
}