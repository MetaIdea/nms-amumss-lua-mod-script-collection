PrimaryColor = "MAGENTA"
SecondaryColor = "BLACK"

ModName = "gShip Starborn Runner Colors"
ModNameSub = PrimaryColor.."."..SecondaryColor
GameVersion = "452"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= "Recolors the Racer",
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\WRACERTRIM.DDS",
			EXTERNAL_FILE_SOURCE 	= "WRACERTRIM."..PrimaryColor.."."..SecondaryColor..".DDS"
		},
		{
			FILE_DESTINATION 		= "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\WRACERTRIM.MASKS.DDS",
			EXTERNAL_FILE_SOURCE 	= "WRACERTRIM.MASKS.NOMETAL.DDS"
		}
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WRACER\RACERPAINTMAT.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"Shader","SHADERS/UBERSHADER.SHADER.BIN"},
								{"ShaderMillDataHash","0"}
							}	
						}
					}
				}
			}
		}
	}
}