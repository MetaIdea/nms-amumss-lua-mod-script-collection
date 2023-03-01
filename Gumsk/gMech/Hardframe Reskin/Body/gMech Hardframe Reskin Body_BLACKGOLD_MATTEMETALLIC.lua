Color = "BLACKGOLD"

Author = "Gumsk"
ModName = "gMech Hardframe Reskin"
GameVersion = "393"
ModVersion = "a"
ModNameSub = Color.." MATTEMETALLIC"
BaseDescription = "Changes color of hardframe exomech parts to "..Color.." MATTEMETALLIC"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "TEXTURES\COMMON\ROBOTS\SENTINELTRIM.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "MECHHARDFRAME_"..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\COMMON\ROBOTS\SENTINELTRIM.MASKS.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "SENTINELTRIM.MASKS_MATTEMETALLIC.DDS",
		},
	},
	["MODIFICATIONS"]	= {},
}