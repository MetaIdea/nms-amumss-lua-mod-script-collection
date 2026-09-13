Author			= "JMZawodny"
ModName			= "zCorvette"
ModNameSub		= "Station Lighting"
BaseDescription = "Brightens the lighting of the Corvette Constuction Pads in Space Stations"
GameVersion		= "v7.0"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{

		MBIN_FILE_SOURCE = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BIGGSPLATFORM.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SPECIAL_KEY_WORDS = {"NAME", "BiggsTerminal",},
				VALUE_CHANGE_TABLE = {
					{"TransX" ,"-1.750000"},
					{"TransZ" ,"-55.500000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CSBterminal",},
				VALUE_CHANGE_TABLE = {
					{"TransX" ,"5.000000"},
					{"TransZ" ,"-59.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "VolumetricA1",},
					{"NAME", "VolumetricA2",},
					{"NAME", "VolumetricA3",},
					{"NAME", "VolumetricA4",},
					{"NAME", "RootJNT", "Name", "VolumetricA",},
					{"NAME", "RootJNT1", "Name", "VolumetricA",},
					{"NAME", "RootJNT2", "Name", "VolumetricA",},
					{"NAME", "RootJNT3", "Name", "VolumetricA",},
				},
				VALUE_CHANGE_TABLE = {{"RotX" ,"35.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "VolumetricA1", "NAME", "FOV",},
					{"NAME", "VolumetricA2", "NAME", "FOV",},
					{"NAME", "VolumetricA3", "NAME", "FOV",},
					{"NAME", "VolumetricA4", "NAME", "FOV",},
					{"NAME", "RootJNT", "Name", "VolumetricA", "NAME", "FOV",},
					{"NAME", "RootJNT1", "Name", "VolumetricA", "NAME", "FOV",},
					{"NAME", "RootJNT2", "Name", "VolumetricA", "NAME", "FOV",},
					{"NAME", "RootJNT3", "Name", "VolumetricA", "NAME", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"105.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "VolumetricA1", "NAME", "VOLUMETRIC",},
					{"NAME", "VolumetricA2", "NAME", "VOLUMETRIC",},
					{"NAME", "VolumetricA3", "NAME", "VOLUMETRIC",},
					{"NAME", "VolumetricA4", "NAME", "VOLUMETRIC",},
					{"NAME", "RootJNT", "Name", "VolumetricA", "NAME", "VOLUMETRIC",},
					{"NAME", "RootJNT1", "Name", "VolumetricA", "NAME", "VOLUMETRIC",},
					{"NAME", "RootJNT2", "Name", "VolumetricA", "NAME", "VOLUMETRIC",},
					{"NAME", "RootJNT3", "Name", "VolumetricA", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight1", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight2", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight3", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight4", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight5", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight6", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight7", "NAME", "VOLUMETRIC",},
					{"NAME", "UnderLight8", "NAME", "VOLUMETRIC",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.005000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight",},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"45.000000"},
					{"RotX" ,"-90.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "FOV"},
				VALUE_CHANGE_TABLE = {{"Value" ,"170.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "FALLOFF"},
				VALUE_CHANGE_TABLE = {{"Value" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "RADIUS"},
				VALUE_CHANGE_TABLE = {{"Value" ,"100.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "INTENSITY"},
				VALUE_CHANGE_TABLE = {{"Value" ,"60.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "CentreFillLight", "Name", "COL_R"},
					{"NAME", "CentreFillLight", "Name", "COL_G"},
					{"NAME", "CentreFillLight", "Name", "COL_B"},
				},
				VALUE_CHANGE_TABLE = {{"Value" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "VolumetricA1",},
				SEC_SAVE_TO = "Vlight",
			},
			{
				SEC_EDIT = "Vlight",
				VCT = {
					{"Name", "VolumetricA5", },
					{"TransX", "39.455560", },
					{"TransZ", "-10.613809", },
					{"RotY", "105.035932", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "VolumetricA1"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Vlight",
			},
			{
				SEC_EDIT = "Vlight",
				VCT = {
					{"Name", "VolumetricA6", },
					{"TransX", "39.455560", },
					{"TransZ", "10.613809", },
					{"RotY", "75.035932", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "VolumetricA5"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Vlight",
			},
			{
				SEC_EDIT = "Vlight",
				VCT = {
					{"Name", "VolumetricA7", },
					{"TransX", "-39.455560", },
					{"TransZ", "-10.613809", },
					{"RotY", "-105.035932", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "VolumetricA6"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Vlight",
			},
			{
				SEC_EDIT = "Vlight",
				VCT = {
					{"Name", "VolumetricA8", },
					{"TransX", "-39.455560", },
					{"TransZ", "10.6138086", },
					{"RotY", "-75.035932", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "VolumetricA7"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Vlight",
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight",},
				SEC_SAVE_TO = "Clight",
			},
			{
				SEC_EDIT = "Clight",
				VCT = {
					{"Name", "CentreFillLight1", },
					{"TransX", "30.000000", },
					{"TransZ", "30.000000", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "CentreFillLight"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Clight",
			},
			{
				SEC_EDIT = "Clight",
				VCT = {
					{"Name", "CentreFillLight2", },
					{"TransX", "30.000000", },
					{"TransZ", "-30.000000", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "CentreFillLight1"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Clight",
			},
			{
				SEC_EDIT = "Clight",
				VCT = {
					{"Name", "CentreFillLight3", },
					{"TransX", "-30.000000", },
					{"TransZ", "30.000000", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "CentreFillLight2"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Clight",
			},
			{
				SEC_EDIT = "Clight",
				VCT = {
					{"Name", "CentreFillLight4", },
					{"TransX", "-30.000000", },
					{"TransZ", "-30.000000", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "CentreFillLight3"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Clight",
			},
			{
				SEC_EDIT = "Clight",
				VCT = {
					{"Name", "CentreFillLight5", },
					{"TransX", "0.000000", },
					{"TransZ", "-42.000000", },
				},
			},
			{	-- Add Light
				SKW = {"Name", "CentreFillLight4"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "Clight",
			},

		}
	},
	}},}
}