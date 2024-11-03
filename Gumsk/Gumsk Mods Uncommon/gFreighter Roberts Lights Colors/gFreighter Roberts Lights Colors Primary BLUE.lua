Color = "BLUE"

Author = "Gumsk"
ModName = "gFreighter Roberts Lights Colors Primary"
ModNameSub = Color
BaseDescription = "Changes color of primary external lights on Roberts class freighters to "..Color
GameVersion = "5.2.2.0"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "G/ROBLIGHT/DDS/SCROLLINGGRADIENTS.DDS",
			EXTERNAL_FILE_SOURCE 	= "SCROLLINGGRADIENTS."..Color..".DDS"
		}
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\PIRATEFREIGHTER\REDBLINKSCROLL_MAT.MATERIAL.MBIN"},
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"Map","G\ROBLIGHT\DDS\SCROLLINGGRADIENTS.DDS"}
							}
						},
					},
				},
			}
		}
	}
}