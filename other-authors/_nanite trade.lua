NANITESADD =
[[
        <Property value="NMSString0x10.xml">
        <Property name="Value" value="TECHFRAG" />
		</Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]              = "_Nanites_trade.pak",
["MOD_AUTHOR"]                = "Bambr44",
["NMS_VERSION"]               = "4.15",
["MOD_DESCRIPTION"]           = "Stations and Trade posts sell Nanites.",
["MODIFICATIONS"]             =
    {
        {
            ["MBIN_CHANGE_TABLE"]     =
            {
                {
                    ["MBIN_FILE_SOURCE"]     = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
						
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", },
							["SPECIAL_KEY_WORDS"]   = {"Value", "CATALYST1"},
							--["LINE_OFFSET"] 		= "+1",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"]                 = NANITESADD,
                        },
                        {
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Shop",},                            
							["SPECIAL_KEY_WORDS"]   = {"Value", "CATALYST1"},
							["LINE_OFFSET"] 		= "+1",
							["ADD"]                 = NANITESADD,
                        },
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"NeverSellableItems"},							
							
							["LINE_OFFSET"] 		= "+14",         
							["REMOVE"] 				= "LINE",
							
						},
					},
				},

				{
                    ["MBIN_FILE_SOURCE"]     = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TECHFRAG",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"BaseValue",        "10000"},     -- original 20
                            }
                        }
                    }
                }
            }
        }
    }
}   