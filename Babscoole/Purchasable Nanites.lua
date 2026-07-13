NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Purchasable Nanites",
["MOD_AUTHOR"]      = "Bladehawke",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Restricts the other player interaction angle and range to prevent accidental interactions, especially near the quicksilver vendor",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TECHFRAG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue",  "10000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"SpaceStation", "GcTradeData"},
                {"Shop",         "GcTradeData"},
              },
              ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentSubstances"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="AlwaysPresentSubstances" value="TECHFRAG" />
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"NeverSellableItems", "TECHFRAG"},
              ["REMOVE"] = "LINE"
            },
          }
        },
      }
    }
  }
}