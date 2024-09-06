ModName = "gFish Speed"
ModNameSub = "Slower"
GameVersion = "5.1.1.0"
ModVersion = "a"

--[[ Files Modified:
GCFISHINGGLOBALS.GLOBAL.MBIN
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
					MBIN_FILE_SOURCE = "GCFISHINGGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"Small",1.1},						--0.75; 
								{"Medium",6.0},			  		--3.75;
							},
						},
						{
							PRECEDING_KEY_WORDS = "ChaseTimes",
							VALUE_CHANGE_TABLE = {
								{"Small",2.3},						--1.66;
								{"Medium",4.5},			  		--3;
								{"Large",7},					  	--5;
								{"ExtraLarge",9}					--6.5;
							},
						},
					}
				}
			}
		}
	}
}