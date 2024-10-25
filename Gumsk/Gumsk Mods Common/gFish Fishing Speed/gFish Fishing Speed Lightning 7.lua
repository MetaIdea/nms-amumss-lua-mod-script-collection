ModName = "gFish Fishing Speed"
ModNameSub = "Lightning 7"
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
                {"FishCatchAfterBiteTime",7},           --2; Time to catch after success. Don't go higher than 25! Allows multiple catches in one success animation.
                {"LandTimeBegin",0.05},                   --0.1; Time after catch before catch is registered
                {"LandTimeEnd",0.25},                   --0.4; Time after catch line stays in the water
                {"LineNibbleSag",1},                   --0.4;
								{"MinWaitTime",0.001},		    	  	      --6.5; 
								{"MaxWaitTime",0.01},	 	  	  	        --13.5;
							},
						},
						{
							PRECEDING_KEY_WORDS = "ChaseTimes",
							VALUE_CHANGE_TABLE = {
								{"Small",0.1},						--1.66;
								{"Medium",0.1},			  		--3;
								{"Large",0.1},				  	--5;
								{"ExtraLarge",0.1}				--6.5;
							},
						},
						{
							SPECIAL_KEY_WORDS = {"LineColourNibble","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R",0.48},						--0.983;
								{"G",0.78},			  		--0.761;
								{"B",0.98},				  	--0.059;
							},
						},
					}
				}
			}
		}
	}
}