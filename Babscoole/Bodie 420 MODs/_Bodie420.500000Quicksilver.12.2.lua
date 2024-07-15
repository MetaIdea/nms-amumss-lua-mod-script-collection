NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.500000Quicksilver.12.2.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.72",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_WAYPOINT"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_WAYPOINT"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "500000"},
                                {"AmountMax", "500000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_WAYPOINT"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "Currency"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Currency", "Specials"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_WAYPOINT"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="500000" />
              <Property name="AmountMax" value="500000" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
]]
                        },
                    }
                },
            }
        }
    }
}