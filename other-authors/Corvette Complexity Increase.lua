MOD_FILENAME	= "Corvette Complexity Increase"
MOD_AUTHOR		= "ShadowHybriX"
LUA_AUTHOR		= "ShadowHybriX"
MOD_DESCRIPTION = "Increases Complexity limit of corvette building by x2."
NMS_VERSION		= "_6.10"
MOD_VERSION		= "_1.1"
--MOD_BATCHNAME	= ""
--===============================================================================
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= MOD_FILENAME..NMS_VERSION..MOD_VERSION..".pak",
["MOD_AUTHOR"]				= MOD_AUTHOR,
["AMUMSS_SUPPRESS_MSG"] 	= "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE",
["LUA_AUTHOR"]				= LUA_AUTHOR,
["MOD_DESCRIPTION"]			= MOD_DESCRIPTION,
["NMS_VERSION"]				= NMS_VERSION,
["EXML_CREATE"] 			= "TRUE",
--["MOD_BATCHNAME"] 			= MOD_BATCHNAME,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"]	=
			{
				{ -- BUILDABLE SHIP GLOBALS --
                    ["MBIN_FILE_SOURCE"] = "GCBUILDABLESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
					{
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ComplexityLimitWarningNX","80"},	-- Original 40
								{"ComplexityLimitWarning","200"},	-- Original 100
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PartFXLimits"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Cockpit","80"},	-- Original 0
								{"Hab","200"},	-- Original 0
                                {"Gear","200"},	-- Original 4
                                {"Gun","80"},	-- Original 4
								{"Shield","200"},	-- Original 0
                                {"Hull","200"},	-- Original 0
								{"Access","80"},	-- Original 4
                                {"Wing","200"},	-- Original 4
								{"Engine","80"},	-- Original 10
                                {"Reactor","80"},	-- Original 0
								{"Connector","80"},	-- Original 0
                                {"Decor","80"},	-- Original 0
                            }
                        },
                    }
                },
			}
		},
	}
}