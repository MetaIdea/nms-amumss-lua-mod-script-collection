Author = "N8crafter"
ModName = "HaulerThrusterRealignment"
ModVersion = "1.0.0"
GameVersion = "6.24"
ModDesc = "Straightens out the Dropship Thruster D part"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= ModName.." v"..ModVersion.." for "..GameVersion,
	MOD_AUTHOR				= Author,
	LUA_AUTHOR				= Author,
	NMS_VERSION				= GameVersion,
	MOD_DESCRIPTION			= ModDesc,
	MODIFICATIONS 			= {{
		MBIN_CHANGE_TABLE		= {{
			MBIN_FILE_SOURCE	= "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS = {
						{"Name" , "_Thrusters_D2"},
					},
					VALUE_CHANGE_TABLE = {
					{"RotX" , 0.0},
					},
				},
			},
		},}
	}}
}