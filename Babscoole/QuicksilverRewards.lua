NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "QuicksilverRewards.pak",
["MOD_DESCRIPTION"] = "Adds more ways to get Quicksilver, doing Nexus Missions and loot derelict freighters!",
["MOD_AUTHOR"]      = "Wombi",
["lUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.38",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_ABAND_NAN"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION", 
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="20" />
              <Property name="AmountMax" value="20" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED_C", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDafterLINE", 
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="125" />
              <Property name="AmountMax" value="125" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED_C"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "40"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED_C"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "35"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDafterLINE", 
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="25" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="250" />
              <Property name="AmountMax" value="250" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "35"},
                            },
                        },
                    },
                },
            }
        }
    }
}