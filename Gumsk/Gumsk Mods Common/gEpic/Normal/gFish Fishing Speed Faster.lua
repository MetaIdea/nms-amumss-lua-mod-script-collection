ModName = "gFish Fishing Speed"
ModNameSub = "Faster"
GameVersion = "5.2.0.0"
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
                {"MinWaitTime",1},	      --6.5; 
								{"MaxWaitTime",4},	 	  	--13.5;
							},
						},
						{
							PRECEDING_KEY_WORDS = "ChaseTimes",
							VALUE_CHANGE_TABLE = {
								{"Small",0.5},					--1.66;
								{"Medium",2},			  		--3;
								{"Large",3.2},			  	--5;
								{"ExtraLarge",4}		  	--6.5;
							},
						},
					}
				}
			}
		}
	}
}