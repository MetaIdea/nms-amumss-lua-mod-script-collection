Color = "ORANGERED"
RedAmount = "1.0"
GreenAmount = "0.3"
BlueAmount = "0.1"


Author = "Gumsk"
ModName = "gSentinels LAYLAPS Color"
GameVersion = "382"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of LAYLAPS to "..Color

FileSource1 = "MODELS\COMMON\ROBOTS\FRIENDLYDRONE\FRIENDLYDRONE_MAT.MATERIAL.MBIN"
FileSource2 = "MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/FRIENDLYDRONE_"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "FRIENDLYDRONE_"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/FRIENDLYDRONE_"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PatrolSpotLight","Name","COL_R"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", RedAmount},
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PatrolSpotLight","Name","COL_G"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", GreenAmount},
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PatrolSpotLight","Name","COL_B"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", BlueAmount},
								
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight2","Name","COL_R"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", RedAmount},
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight2","Name","COL_G"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", GreenAmount},
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","spotLight2","Name","COL_B"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", BlueAmount},
								
							}
						},
					}
				},
			}
		},
	}
}