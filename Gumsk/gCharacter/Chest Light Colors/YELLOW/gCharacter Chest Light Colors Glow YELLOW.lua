Author = "Gumsk"
ModName = "gCharacter Chest Light Colors Glow"
ModNameSub = "YELLOW"
BaseDescription = "Changes the chest light color on the Astro/Life Support armor."
GameVersion = "448"
ModVersion = "a"

--[[Files Modified:
--MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\EYEORBGLOW_MAT1.MATERIAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION = BaseDescription,
	MOD_AUTHOR = Author,
	LUA_AUTHOR = "Gumsk",
	NMS_VERSION = GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION		= "G/CL/DDS/ORBEYEGLOW.2.DDS",
			EXTERNAL_FILE_SOURCE 	= "ORBEYEGLOW.2.DDS"
		}
	},
	MODIFICATIONS = {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\EYEORBGLOW_MAT1.MATERIAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gUVScrollStepVec4"},
							VALUE_CHANGE_TABLE = {
								{"x","0"}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Name","gCustomParams01Vec4"},
							VALUE_CHANGE_TABLE = {
								{"y","2"}
							}
						},
						{
							VALUE_CHANGE_TABLE = {
								{"Map","G/CL/DDS/ORBEYEGLOW.2.DDS"}
							}
						}
					}
				}
			}
		}
	}
}