NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreBlackMarketGoods.pak",
["MOD_AUTHOR"]    = "RemingtonRyder",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Pirate",  "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Pirate",  "250"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateTech", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "22"},
                                {"MaxItemsForSale", "22"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "250"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml", "Value", "GRAVBALL"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"OptionalProducts"},
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="POLICE_TOKEN" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="SACVENOM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="GRAVBALL" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="CAVECUBE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="ALBUMENPEARL" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TRA_COMMODITY1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TRA_COMPONENT1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TRA_ENERGY1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TRA_EXOTICS1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TRA_MINERALS1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TRA_TECH1" />
        </Property>
]]
                        },
                    }
                },
            }
        }
    }
}