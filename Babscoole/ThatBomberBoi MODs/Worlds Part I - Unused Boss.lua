NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Unused_Jellyboss.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\PURCHASEABLESPECIALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD_OPTION"] = "ADDendSECTION", 
                            ["ADD"] =
[[
    <Property value="GcPurchaseableSpecial.xml">
      <Property name="ID" value="F_JELLYCHILD" />
      <Property name="ShopNumber" value="1" />
      <Property name="MissionTier" value="1" />
      <Property name="IsConsumable" value="True" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_JELLYBOSS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncrementStat", "JELLYBOSS"},
                                {"AllowInWater",  "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}