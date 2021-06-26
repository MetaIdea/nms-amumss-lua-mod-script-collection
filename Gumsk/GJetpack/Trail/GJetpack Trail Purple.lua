Color = "PURPLE"
RedAmount = "1.0"
GreenAmount = "0"
BlueAmount = "1.0"


Author = "Gumsk"
ModName = "GJetpack"
GameVersion = "352"
ModVersion = "a"
ModNameSub = "Trail".." "..Color
BaseDescription = "Changes color of green jetpack trail to "..Color

-- FileSource = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN"
FileSource1 = "MODELS\EFFECTS\TRAILS\PLAYER\JETPACKGREENTRAIL.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\JETPACKGREEN\ENGINEJETDARKMAT.MATERIAL.MBIN"
FileSource3 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\JETPACKGREEN\ENGINEJETDARKCOREMAT.MATERIAL.MBIN"
FileSource4 = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
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
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
	["MBIN_FILE_SOURCE"] = FileSource1,

	["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
			{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYER"..Color..".DDS"}
		}},
	}
},
{
	["MBIN_FILE_SOURCE"] = FileSource2,

	["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
			{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERJET"..Color..".DDS"}
		}},
	}
},
{
	["MBIN_FILE_SOURCE"] = FileSource3,

	["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
			{"Map", "TEXTURES/EFFECTS/TRAILS/PLAYER/GUMSKPLAYERCORE"..Color..".DDS"}
		}},
	}
},
{
	["MBIN_FILE_SOURCE"] = FileSource4,

	["EXML_CHANGE_TABLE"] = {
	{["SPECIAL_KEY_WORDS"] = {"Name","JetpackLightG","Name","COL_R"},
		["VALUE_CHANGE_TABLE"] = {
			{"Value", RedAmount},
		}},
	{["SPECIAL_KEY_WORDS"] = {"Name","JetpackLightG","Name","COL_G"},
		["VALUE_CHANGE_TABLE"] = {
			{"Value", GreenAmount},
		}},
	{["SPECIAL_KEY_WORDS"] = {"Name","JetpackLightG","Name","COL_B"},
		["VALUE_CHANGE_TABLE"] = {
			{"Value", BlueAmount},
		}},
	}
},

}},}}