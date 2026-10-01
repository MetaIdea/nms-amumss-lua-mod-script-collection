NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Universal Cargo Range Balanced",
["MOD_AUTHOR"]      = "razpdr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Longer starship transfer ranges",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipInteractRadius", "100.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "200.000000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TELEPORT_ALIEN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "600.000000"}
              }
            },
          }
        },
      }
    },
  }
}
