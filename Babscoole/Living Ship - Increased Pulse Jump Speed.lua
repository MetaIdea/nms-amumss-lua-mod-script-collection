NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Living Ship - Increased Pulse Jump Speed",
["MOD_AUTHOR"]      = "maryxxjane",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Increased living ship pulse jump speed to match the max possible pulse jump speed of a regular ship",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ALIEN", "StatsType", "Ship_PulseDrive_MiniJumpSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "1.530000"},
              }
            },
          }
        }
      }
    }
  }
}