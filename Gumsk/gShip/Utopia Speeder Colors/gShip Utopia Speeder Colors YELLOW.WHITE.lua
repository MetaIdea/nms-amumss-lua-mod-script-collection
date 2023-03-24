BodyColor = "YELLOW"
StripeColor = "WHITE"

ModName = "gShip Utopia Speeder Colors"
ModNameSub = BodyColor.."."..StripeColor
GameVersion = "415"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= "Recolors the Utopia Speeder",
	["MOD_AUTHOR"]		= "Gumsk",
	["LUA_AUTHOR"]		= "Gumsk",
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "TEXTURES\\COMMON\\SPACECRAFT\\FIGHTERS\\VRSPEEDER.BASE.1.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "VRSPEEDER."..BodyColor.."."..StripeColor..".DDS",
		},
	},
	["MODIFICATIONS"]	= {}
}