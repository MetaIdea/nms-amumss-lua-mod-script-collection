BodyColor = "WHITE"
HandsColor = "BLACK"
LightColor = "WHITE"
RedAmount = "1.0"
GreenAmount = "1.0"
BlueAmount = "1.0"

Author = "Gumsk"
ModName = "gCreatures Pet Robo-Warden Colors"
ModNameSub = BodyColor.."-"..HandsColor.."-"..LightColor
GameVersion = "5.2.2.0"
ModVersion = "a"
BaseDescription = "Changes color of robo-warden pet"

--[[ Files Modified:
MODELS\COMMON\ROBOTS\SPHEREDRONE\PHONG108.MATERIAL.MBIN
MODELS\COMMON\ROBOTS\SPHEREDRONE\PHONG107.MATERIAL.MBIN
MODELS\COMMON\ROBOTS\SPHEREDRONE\DRONETRAILINVESTMAT.MATERIAL.MBIN
MODELS\COMMON\ROBOTS\SPHEREDRONE\NPCPROPS_MAT.MATERIAL.MBIN
MODELS\COMMON\ROBOTS\SPHEREDRONE\NPCPROPS_MAT1.MATERIAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	ADD_FILES = {
		{
			FILE_DESTINATION 		= "GUMSK/ROBOWARDEN/TRAIL."..LightColor..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "TRAIL."..LightColor..".DDS",
		},
		{
			FILE_DESTINATION 		= "GUMSK/ROBOWARDEN/BODY."..BodyColor..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= BodyColor..".DDS",
		},
		{
			FILE_DESTINATION 		= "GUMSK/ROBOWARDEN/HANDS."..HandsColor..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= HandsColor..".DDS",
		},
		{
			FILE_DESTINATION 		= "GUMSK/ROBOWARDEN/MASKS.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "MASKS.DDS",
		},
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
			
			-- Eye glow color
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\ROBOTS\SPHEREDRONE\PHONG108.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
							VALUE_CHANGE_TABLE = {
								{"x", RedAmount},
								{"y", GreenAmount},
								{"z", BlueAmount},
							}
						},
					}
				},
				
			-- Engine glow color
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\ROBOTS\SPHEREDRONE\PHONG107.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
							VALUE_CHANGE_TABLE = {
								{"x", RedAmount},
								{"y", GreenAmount},
								{"z", BlueAmount},
							}
						},
					}
				},
				
			-- Exhaust effect texture
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\ROBOTS\SPHEREDRONE\DRONETRAILINVESTMAT.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/ROBOWARDEN/TRAIL."..LightColor..".DDS"},
							}
						},
					}
				},
			
			-- Body material color
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\ROBOTS\SPHEREDRONE\NPCPROPS_MAT.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gDiffuseMap"},
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/ROBOWARDEN/BODY."..BodyColor..".DDS"},
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Name","gMasksMap"},
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/ROBOWARDEN/MASKS.DDS"},
							}
						},
					}
				},
			
			-- Hands material color
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\ROBOTS\SPHEREDRONE\NPCPROPS_MAT1.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gDiffuseMap"},
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/ROBOWARDEN/HANDS."..HandsColor..".DDS"},
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Name","gMasksMap"},
							VALUE_CHANGE_TABLE = {
								{"Map", "GUMSK/ROBOWARDEN/MASKS.DDS"},
							}
						},
					}
				},
			}
		},
	}
}