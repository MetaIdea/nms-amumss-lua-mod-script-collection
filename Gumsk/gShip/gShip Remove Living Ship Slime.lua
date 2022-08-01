Author = "Gumsk"
ModName = "gShip"
ModNameSub = "Remove Living Ship Slime"
BaseDescription = "Removes instances of slime from living ships"
GameVersion = "398"
ModVersion = "a"
FileSource1 = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC.SCENE.MBIN"
FileSource2 = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\NOSTRILBURSTS.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","Slime5"},
							["REMOVE"] = "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","Slime13"},
							["REMOVE"] = "SECTION",
						},
					}
				},
			}
		}
	}
}