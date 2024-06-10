Author = "Gumsk"
ModName = "gSentinels Laylaps Less Annoying"
GameVersion = "472"
ModVersion = "a"
ModNameSub = ""
BaseDescription = "Removes Laylaps collisions so it doesn't get in the way as much"

--[[
Files Modified:
MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Type","COLLISION"},
							REMOVE = "SECTION",
							REPLACE_TYPE = "ALL",
						}
					}
				}
			}
		}
	}
}