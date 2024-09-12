NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "PopupBlocker.pak",
	["MOD_AUTHOR"]		= "muffiintiime",
	["NMS_VERSION"]		= "5.11",
	["MOD_DESCRIPTION"]	= "Popup Blocker",
	["MODIFICATIONS"]	=
	{
		{
		["MBIN_CHANGE_TABLE"] =
			{
				{
				["MBIN_FILE_SOURCE"]   = "UI\HUD\HUDNOTIFICATIONPANEL.EXML",
				["EXML_CHANGE_TABLE"]  = 
					{
						{
						["PRECEDING_KEY_WORDS"] = {"",},
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]  =
							{
								{"IsHidden","True"},	-- ORIGINAL "False"
							},
						},
					}
				}
			},
		},
		{
		["MBIN_CHANGE_TABLE"] =
			{
				{
				["MBIN_FILE_SOURCE"]   = "UI\HUD\HUDBUILDNOTIFY.EXML",
				["EXML_CHANGE_TABLE"]  = 
					{
						{
						["PRECEDING_KEY_WORDS"] = {"",},
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]  =
							{
								{"IsHidden","True"},	-- ORIGINAL "False"
							},
						},
					}
				}
			},
		},
	}
}