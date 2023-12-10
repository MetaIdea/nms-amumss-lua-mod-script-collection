NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_OnyKroN.BuyNanitesBalanced.2.0.0.pak",
["MOD_AUTHOR"]    = "OnyKroN",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
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
                            ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentSubstances"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["ADD"] =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TECHFRAG" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE", 
                            ["PRECEDING_KEY_WORDS"] = {"NeverSellableItems"},
                            ["SPECIAL_KEY_WORDS"] = {"Value", "TECHFRAG"},
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TECH_FRAGMENT_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseValue",                  "1275"},
                                {"LowPriceMod",                "0"},
                                {"HighPriceMod",               "0"},
                                {"BuyBaseMarkup",              "0"},
                                {"EconomyInfluenceMultiplier", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}