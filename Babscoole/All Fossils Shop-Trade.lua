NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "All Fossils Shop-Trade",
["MOD_AUTHOR"]      = "VruhD",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Trade all Fossils",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BarterPriceMultiplier", "1.000000"},
                {"MinItemsForSale", "141"},
                {"MaxItemsForSale", "141"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] =
              {
                {"AlwaysPresentProducts"},
                {"AlwaysConsideredBarterProducts"},
              },
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="AlwaysPresentProducts" value="FOS_BI_TAIL_E" />
				<Property name="AlwaysPresentProducts" value="FOS_BI_TAIL_F" />
				<Property name="AlwaysPresentProducts" value="FOS_BI_TAIL_G" />
				<Property name="AlwaysPresentProducts" value="FOS_HEAD_IG" />
				<Property name="AlwaysPresentProducts" value="FOS_HEAD_DJ" />
]]              
            },
          }
        },
      }
    }
  }
}