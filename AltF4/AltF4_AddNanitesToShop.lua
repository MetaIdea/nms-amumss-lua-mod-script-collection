ADDNanitesID = [[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TECHFRAG" />
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_AddNanitesToShop.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.63",
    ["MOD_DESCRIPTION"] = "Add Nanites to space station shop.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value","TECHFRAG"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentSubstances"},
                            ["ADD"] = ADDNanitesID
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Shop", "AlwaysPresentSubstances"},
                            ["ADD"] = ADDNanitesID
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","TECHFRAG"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"BaseValue","400"},    -- 20
                            }
                        },
                    }
                },
            },
        },
    }
}