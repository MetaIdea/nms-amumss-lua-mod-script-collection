Color = "CAMORED"
-- RedAmount = "1.0"
-- GreenAmount = "1.0"
-- BlueAmount = "1.0"


Author = "Gumsk"
ModName = "gSentinels Quad Colors"
GameVersion = "5.2.2.0"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of quad pet to "..Color

FileSource1 = "MODELS\COMMON\ROBOTS\QUADRUPEDPET\QUADRUPED_MAT.MATERIAL.MBIN"
-- FileSource2 = "MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "GUMSK/QUADRUPEDPET_"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "QUADRUPEDPET_"..Color..".DDS",
		},
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource1,
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gDiffuseMap"},
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/QUADRUPEDPET_"..Color..".DDS"}
							}
						},
					}
				},
			}
		},
	}
}