Author = "Gumsk"
ModName = "gShip Living Scroll"
ModNameSub = "Rainbow Fast"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC\BIOSHIPFLASHMAT.MATERIAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {
						"MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC\PULSELINESMAT.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gUVScrollStepVec4"},
							["VALUE_CHANGE_TABLE"] = {
								{"x","-0.1"},
							},
						},
					},
				},
			}
		}
	}
}