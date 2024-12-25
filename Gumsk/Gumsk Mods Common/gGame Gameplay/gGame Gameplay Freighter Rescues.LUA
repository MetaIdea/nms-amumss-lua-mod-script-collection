ModName = "gGame Gameplay"
ModNameSub = "Freighter Rescues"
GameVersion = "5.2.9.0"
ModVersion = "a"

--[[ Files Modified:
GCGAMEPLAYGLOBALS.GLOBAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= "Various modifications to gameplay globals",
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"WarpsBetweenBattles",3},						  	--5;
								{"HoursBetweenBattles",1},					  		--3;
              }
						},
					},
				},
			}
		}
	}
}