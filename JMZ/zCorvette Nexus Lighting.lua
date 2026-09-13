Author			= "JMZawodny"
ModName			= "zCorvette"
ModNameSub		= "Nexus Lighting"
BaseDescription = "Changes the lighting of the Corvette Docks in the Nexus"
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

		MBIN_FILE_SOURCE = "MODELS\SPACE\NEXUS\Parts\LANDINGBAYS\BIGGSPLATFORMNEXUS.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight",},
				VALUE_CHANGE_TABLE = {
					{"TransY" ,"75.000000"},
					{"RotX" ,"-90.000000"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "FOV"},
				VALUE_CHANGE_TABLE = {{"Value" ,"120.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "FALLOFF"},
				VALUE_CHANGE_TABLE = {{"Value" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "RADIUS"},
				VALUE_CHANGE_TABLE = {{"Value" ,"150.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {"NAME", "CentreFillLight", "Name", "INTENSITY"},
				VALUE_CHANGE_TABLE = {{"Value" ,"150.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "Volumetric1", "NAME", "FOV",},
					{"NAME", "Volumetric2", "NAME", "FOV",},
					{"NAME", "Volumetric3", "NAME", "FOV",},
					{"NAME", "Volumetric4", "NAME", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"75.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "Volumetric1", "NAME", "FALLOFF",},
					{"NAME", "Volumetric2", "NAME", "FALLOFF",},
					{"NAME", "Volumetric3", "NAME", "FALLOFF",},
					{"NAME", "Volumetric4", "NAME", "FALLOFF",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.500000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "Volumetric1", "NAME", "INTENSITY",},
					{"NAME", "Volumetric2", "NAME", "INTENSITY",},
					{"NAME", "Volumetric3", "NAME", "INTENSITY",},
					{"NAME", "Volumetric4", "NAME", "INTENSITY",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"70.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "Volumetric1", "NAME", "VOLUMETRIC",},
					{"NAME", "Volumetric2", "NAME", "VOLUMETRIC",},
					{"NAME", "Volumetric3", "NAME", "VOLUMETRIC",},
					{"NAME", "Volumetric4", "NAME", "VOLUMETRIC",},
					{"NAME", "QuickLight5", "NAME", "VOLUMETRIC",},
					{"NAME", "QuickLight6", "NAME", "VOLUMETRIC",},
					{"NAME", "QuickLight7", "NAME", "VOLUMETRIC",},
					{"NAME", "QuickLight8", "NAME", "VOLUMETRIC",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"0.001000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "QuickLight5", "NAME", "FOV",},
					{"NAME", "QuickLight6", "NAME", "FOV",},
					{"NAME", "QuickLight7", "NAME", "FOV",},
					{"NAME", "QuickLight8", "NAME", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"170.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "CentreFillLight", "NAME", "COL_R",},
					{"NAME", "CentreFillLight", "NAME", "COL_G",},
					{"NAME", "CentreFillLight", "NAME", "COL_B",},
					{"NAME", "QuickLight1", "NAME", "COL_G",},
					{"NAME", "QuickLight2", "NAME", "COL_G",},
					{"NAME", "QuickLight3", "NAME", "COL_G",},
					{"NAME", "QuickLight4", "NAME", "COL_G",},
					{"NAME", "QuickLight5", "NAME", "COL_G",},
					{"NAME", "QuickLight6", "NAME", "COL_G",},
					{"NAME", "QuickLight7", "NAME", "COL_G",},
					{"NAME", "QuickLight8", "NAME", "COL_G",},
					{"NAME", "QuickLight1", "NAME", "COL_B",},
					{"NAME", "QuickLight2", "NAME", "COL_B",},
					{"NAME", "QuickLight3", "NAME", "COL_B",},
					{"NAME", "QuickLight4", "NAME", "COL_B",},
					{"NAME", "QuickLight5", "NAME", "COL_B",},
					{"NAME", "QuickLight6", "NAME", "COL_B",},
					{"NAME", "QuickLight7", "NAME", "COL_B",},
					{"NAME", "QuickLight8", "NAME", "COL_B",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"1.000000"},}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "QuickLight1",},
					{"NAME", "QuickLight2",},
					{"NAME", "QuickLight3",},
					{"NAME", "QuickLight4",},
				},
				VALUE_CHANGE_TABLE = {
					{"RotX" ,"60.000000"},
					{"RotY" ,"@+30"},
				}
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "QuickLight1", "NAME", "FOV",},
					{"NAME", "QuickLight2", "NAME", "FOV",},
					{"NAME", "QuickLight3", "NAME", "FOV",},
					{"NAME", "QuickLight4", "NAME", "FOV",},
				},
				VALUE_CHANGE_TABLE = {{"VALUE" ,"150.000000"},}
			},
		}
	},
	}},}
}