NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zMore Salvage Time",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00",
["MOD_DESCRIPTION"] = "zMore Salvage Time gives you 30 minutes to salvage that hulk before it melts down",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\HULK\HULK\ENTITIES\DATA.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcMeltdownComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Duration", "1800.000000"},
              }
            },
          }
        },
      }
    }
  }
}
