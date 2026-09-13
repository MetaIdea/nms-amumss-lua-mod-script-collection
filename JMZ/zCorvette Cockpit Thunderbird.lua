Author			= "JMZawodny"
ModName			= "zCorvette"
ModNameSub		= "Cockpit Thunderbird"
ModPrefix		= ""
BaseDescription = "Removes the yellow front bumper and Blinking interior light and Adds real headlights, Plus teleporter changes"
GameVersion		= "v7.0"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModPrefix..ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{ -- Copy LIGHT Section
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\GUN_B.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Copy LIGHT Section
				SKW = {
					{"Name", "spotLight1_6",},
				},
				SEC_SAVE_TO = "HeadLight",
			},
			{ -- Edit the Parameters
				SEC_EDIT = "HeadLight",
				SKW = {
					{"Name", "spotLight1_6",},
				},
				VCT = {
					{"Name" , "LeftVolLight"},
					{"TransX" ,"1.000000"},
					{"TransY" ,"0.062500"},
					{"TransZ" ,"5.375000"},
					{"RotX" ,"-2.500000"},
					{"RotY" ,"-170.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FOV"},
				VCT = {{"Value", "40.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FALLOFF"},
				VCT = {{"Value", "2.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "RADIUS"},
				VCT = {{"Value", "15.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "INTENSITY"},
				VCT = {{"Value", "5.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "Volumetric"},
				VCT = {{"Value", "1.000000"},},
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1x2_D_EXT.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Remove the White Band on the Bumper, keeping its children, by Changing it from a MESH to a LOCATOR
				SPECIAL_KEY_WORDS = {"Name", "extCutoutLOD0" },
				VALUE_CHANGE_TABLE = {{"TYPE", "LOCATOR"},},
			},
			{ -- And then Removing its Attributes
				REPLACE_TYPE = "ONCE",
				SPECIAL_KEY_WORDS = {"Name", "extCutoutLOD0" },
				PRECEDING_KEY_WORDS = {"Attributes"},
				CREATE_HOES = "TRUE",
			},
			{ -- Remove the sections for the Yellow Bumper
				SPECIAL_KEY_WORDS =
				{
					{"Name", "SUB1ext2LOD0" },
					{"Name", "SUB1ext2LOD1" },
					{"Name", "SUB1ext2LOD2" },
					{"Name", "SUB1ext2LOD3" },
				},
				REMOVE = "SECTION"
			},
			{ -- Add Light
				SKW = {"Name", "outerGlassprossed_object_LOD3"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},

			{ -- Right Volumetric Light
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "RightVolLight", },
					{"TransX", "-1.000000", },
					{"RotY", "179.000000", },
				},
			},
			{ -- Add Light
				SKW = {"Name", "LeftVolLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
			{ -- Left Near Headlight
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "LeftNearHeadLight", },
					{"TransX", "1.000000", },
					{"RotX", "-5.000000", },
					{"RotY", "-174.000000", },
				},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FOV"},
				VCT = {{"Value", "40.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "FALLOFF"},
				VCT = {{"Value", "1.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "RADIUS"},
				VCT = {{"Value", "20000.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "INTENSITY"},
				VCT = {{"Value", "10000.000000"},},
			},
			{
				SEC_EDIT = "HeadLight",
				SKW = {"Name", "Volumetric"},
				VCT = {{"Value", "0.000000"},},
			},
			{ -- Add Light
				SKW = {"Name", "RightVolLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
			{ -- Right Near Headlight
				SEC_EDIT = "HeadLight",
				VCT = {
					{"Name", "RightNearHeadLight", },
					{"TransX", "-1.000000", },
					{"RotY", "174.000000", },
				},
			},
			{ -- Add Light
				SKW = {"Name", "LeftNearHeadLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "HeadLight",
			},
		}

	},
	{ -- Copy needed Teleporter Sections
		MBIN_FILE_SOURCE = "models\common\spacecraft\biggs\modules\parts\airlock_nesw_b.scene.mbin",
		MXML_CHANGE_TABLE = 
		{
			{ -- Copy TeleporterControls Section
				SKW = {
					{"Name", "TeleporterControls",},
				},
				SEC_SAVE_TO = "TeleCont",
			},
			{ -- Place the control
				SEC_EDIT = "TeleCont",
				SKW = {
					{"Name", "TeleporterControls",},
				},
				VCT = {
					{"TransX" ,"-1.312500"},
					{"TransY" ,"1.093750"},
					{"TransZ" ,"0.250000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-120.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"0.800000"},
					{"ScaleY" ,"0.800000"},
					{"ScaleZ" ,"0.800000"},
				}
			},
			{ -- Copy TELEPORT_DESTINATION Section
				SKW = {
					{"Name", "TELEPORT_DESTINATION"},
				},
				SEC_SAVE_TO = "TeleDest",
			},
			{ -- Set Position
				SEC_EDIT = "TeleDest",
				SKW = {
					{"Name", "TELEPORT_DESTINATION"},
				},
				VCT = {
					{"TransX" ,"0.250000"},
					{"TransY" ,"0.060000"},
					{"TransZ" ,"0.500000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"180.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1x2_D.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Remove the Blinking Light
				SKW =
				{
					{"Name", "REFLight" },
					{"Name", "REFLight1" },
					{"Name", "REFLight2" },
				},
				REMOVE = "SECTION"
			},
			{ -- Add Teleporter Destination
				SKW = {
					{"Name", "EXT1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TeleDest",
			},
			{ -- Add Teleporter Control
				SKW = {
					{"Name", "EXT1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TeleCont",
			},
		}
	},
	}},}
}