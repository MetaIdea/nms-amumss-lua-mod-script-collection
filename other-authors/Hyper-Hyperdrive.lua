
Author			= "SpeedyS©1978 @_04_08_2022"
AuthorII		= "© by Onykron"
ModName			= "Hyper-Hyperdrive"
GameVersion		= "ENDURANCE 3.98"
BaseDescription	= "Travel straight the galaxy from the edge to the center with one Hyperdrive."

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= ModName.." for NMS "..GameVersion..".pak",
	["MOD_AUTHOR"]		= Author,
	["LUA_AUTHOR"]		= AuthorII,
	["NMS_VERSION"]		= GameVersion,
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"]		= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"]	= {"Ship_Hyperdrive_JumpDistance",},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Bonus",	"999999"}, -- Original "100"
							}
						},
                        {
							["SPECIAL_KEY_WORDS"]	= {"ID","WARP_ALIEN",},
							["PRECEDING_KEY_WORDS"]	= {"Ship_Hyperdrive_JumpDistance",},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Bonus",	"999999"}, -- Original "100"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID","F_HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"]	= {"Freighter_Hyperdrive",},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Bonus",	"999999"}, -- Original "100"
							}
						},
					}
				},
			}
		},
		{
			["PAK_FILE_SOURCE"]		= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"]	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FreePanSpeed",		"1.25"}, -- Original "0.8"
								{"FreePanSpeedTurbo",	"75.0"}, -- Original "2.75"
							}
						},
					}
				},
			}
		},
	}
}