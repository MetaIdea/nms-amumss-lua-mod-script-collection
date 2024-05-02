ModName = "gShip Starborn Runner Decals"
ModNameSub = "MINIMAL3"
GameVersion = "464"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= "Changes the decals on the Starborn Runner",
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\WRACERDECALS.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "WRACERDECALS."..ModNameSub..".DDS",
		},
	},
	MODIFICATIONS	= {}
}