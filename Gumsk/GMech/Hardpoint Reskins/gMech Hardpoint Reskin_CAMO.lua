Color = "CAMO"
-- RedAmount = "1.0"
-- GreenAmount = "0.5"
-- BlueAmount = "0"


Author = "Gumsk"
ModName = "gMech Hardpoint Reskin"
GameVersion = "382"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of hardpoint exomech parts to "..Color

FileSource1 = "MODELS\COMMON\ROBOTS\FRIENDLYDRONE\FRIENDLYDRONE_MAT.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "TEXTURES\COMMON\ROBOTS\SENTINELTRIM.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "MECHHARDPOINT_"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {

			}
		},
	}
}