BodyColor = "BLUELIME"
StripeColor = "WHITE"

ModName = "gShip Utopia Speeder Colors"
ModNameSub = "GRADIENT."..BodyColor.."."..StripeColor
GameVersion = "6.1.8.0"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= "Recolors the Utopia Speeder",
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\VRSPEEDER.BASE.1.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "VRSPEEDER.GRADIENT."..BodyColor.."."..StripeColor..".DDS",
		},
	},
	MODIFICATIONS	= {}
}