NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "KnowGlyphsNoCharge.pak",
["MOD_AUTHOR"]    = "Unclejuju",
["MOD_DESCRIPTION"]	= "Know all glyphs and portals do not need charging.",
["NMS_VERSION"]   = "5.29",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KnowAllRunes", "True"},	--Original "False"
                            }
                        },
					}
				},	
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoCompleteOnStart", "True"},	--Original "False"
                            }
                        },
                    }
                },
            }
        },
    }
}
