Author			= "Gumsk"
ModName 		= "gShip Photon Cannon Terrain Edit"
ModNameSub		= ""
BaseDescription = "Makes the photon cannon destroy terrain"
GameVersion 	= "411"
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
							["SPECIAL_KEY_WORDS"] = {"Id","SHIPGUN"},
							["VALUE_CHANGE_TABLE"] = {
								{"BehaviourFlags", "DestroyTerrain"},		--"None"
							},
						},
					},
				},
			}
		}
	}
}