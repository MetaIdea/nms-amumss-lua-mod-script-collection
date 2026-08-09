NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zNo Station Glow",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "zNo Station Glow Removes the Orange halo around normal space Stations and moves the station marker so you can see the Entrance Tunnel",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\SPACESTATIONTYPEB.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "StationIcon"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "227.349167"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFStationCloudsVFX"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    }
  }
}
