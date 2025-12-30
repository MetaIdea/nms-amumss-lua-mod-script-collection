NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Lava Booster",
["MOD_AUTHOR"]      = "Exosolar & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Transform half of all planets into the type of your choice",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Lava", "1000001"},
              }
            }
          }
        }
      }
    }
  }
}