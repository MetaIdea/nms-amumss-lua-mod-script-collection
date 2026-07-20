NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Buy Xeno Arena Invites-Chall Only",
["MOD_AUTHOR"]      = "MurdockBerk",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Adds Challenger's Invitations to the Space Station Cartographer at a rate of 5 Nav Data each",
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
              ["SPECIAL_KEY_WORDS"] = {"MapShop", "GcTradeData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinItemsForSale", "8"},
                {"MaxItemsForSale", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MapShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="AlwaysPresentProducts" value="CHART_PB_CHALL" />
]]              
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_PB_CHALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue",  "5"},
                {"RecipeCost", "5"},
              }
            },
          }
        },
      }
    }
  }
}