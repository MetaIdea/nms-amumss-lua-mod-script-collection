NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No InterStellar Coordinates Received",
["MOD_DESCRIPTION"] = "Removes Interstellar Coordinates prompt",
["MOD_AUTHOR"]      = "DeathWrench",
["NMS_VERSION"]     = "6.20",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\SPACEPOIMISSIONTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_MATCH"] = "UI_HAIL_ALIEN_NAV_OSD",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InterstellarOSDMessage", ""},
              },
            },
          }
        }
      }
    }
  }
}
