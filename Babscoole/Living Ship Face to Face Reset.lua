NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Living Ship Face to Face Reset",
["MOD_AUTHOR"]      = "DY230",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.23",
["MOD_DESCRIPTION"] = "Living ship face to face reset",
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
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "BIOSHIP_REPEAT", "Name", "SE_BIOSHIP_LOOP_SHIP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuildingLocation", "AllNearest"},
              }
            },
          }
        },
      }
    }
  }
}