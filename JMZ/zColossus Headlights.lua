Author			= "JMZawodny"
ModName			= "zColossus"
ModNameSub		= "Headlights"
BaseDescription = "Make the Headlights useful"
GameVersion		= "v6.23"
ModVersion		= ""

Angle = -10.0
Intensity = 200.0
Radius = 200.0

NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{ -- Adjust Angle
		MBIN_FILE_SOURCE = "models\common\vehicles\rover\rover.scene.mbin",
		MXML_CHANGE_TABLE = 
		{
			{ -- Set the values
				SKW = {
					{"Name" ,"spotLight1_2_3"},
					{"Name" ,"spotLight3_2_3"},
					{"Name" ,"spotLight1_2_2_2"},
					{"Name" ,"spotLight3_2_2_2"},
					{"Name" ,"spotLight1_2_1"},
				},
				VCT = {
					{"RotX" ,Angle},
				}
			},
		}
	},
	{ -- Adjust Intensity
		MBIN_FILE_SOURCE = "models\common\vehicles\rover\rover.scene.mbin",
		MXML_CHANGE_TABLE = 
		{
			{ -- Set the values
				SKW = {
					{"Name" ,"spotLight1_2_3", "Name", "INTENSITY"},
					{"Name" ,"spotLight3_2_3", "Name", "INTENSITY"},
					{"Name" ,"spotLight1_2_2_2", "Name", "INTENSITY"},
					{"Name" ,"spotLight3_2_2_2", "Name", "INTENSITY"},
					{"Name" ,"spotLight1_2_1", "Name", "INTENSITY"},
				},
				VCT = {
					{"Value" ,Intensity},
				}
			},
		}
	},
	{ -- Adjust Radius
		MBIN_FILE_SOURCE = "models\common\vehicles\rover\rover.scene.mbin",
		MXML_CHANGE_TABLE = 
		{
			{ -- Set the values
				SKW = {
					{"Name" ,"spotLight1_2_3", "Name", "RADIUS"},
					{"Name" ,"spotLight3_2_3", "Name", "RADIUS"},
					{"Name" ,"spotLight1_2_2_2", "Name", "RADIUS"},
					{"Name" ,"spotLight3_2_2_2", "Name", "RADIUS"},
					{"Name" ,"spotLight1_2_1", "Name", "RADIUS"},
				},
				VCT = {
					{"Value" ,Radius},
				}
			},
		}
	},

	}},}
}