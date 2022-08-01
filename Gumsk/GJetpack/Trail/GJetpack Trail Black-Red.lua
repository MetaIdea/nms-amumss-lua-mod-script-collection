Color = "BLACKRED"
RedAmount = "1.0"
GreenAmount = "0"
BlueAmount = "0"


Author = "Gumsk"
ModName = "gJetpack"
GameVersion = "397"
ModVersion = "a"
ModNameSub = "Trail".." "..Color
BaseDescription = "Changes color of green jetpack trail to "..Color

FileSource1 = "MODELS\EFFECTS\TRAILS\PLAYER\JETPACKGREENTRAIL.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\JETPACKGREEN\ENGINEJETDARKMAT.MATERIAL.MBIN"
FileSource3 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\JETPACKGREEN\ENGINEJETDARKCOREMAT.MATERIAL.MBIN"
FileSource4 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\SJETPACKGREEN\ENGINEJETDARKMAT.MATERIAL.MBIN"
FileSource5 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\SJETPACKGREEN\ENGINEJETDARKCOREMAT.MATERIAL.MBIN"
FileSource6 = "METADATA\GAMESTATE\PLAYERDATA\THRUSTERCUSTOMISATIONDATA.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYER"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSKPLAYER"..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERJET"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSKPLAYERJET"..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERCORE"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSKPLAYERCORE"..Color..".DDS",
		}
	},
	["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYER"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERJET"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERCORE"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource4,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERJET"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERCORE"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource6,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GREEN","LightColour","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},
								{"G", GreenAmount},
								{"B", BlueAmount},
							}
						},
					}
				},
			}
		},
	}
}