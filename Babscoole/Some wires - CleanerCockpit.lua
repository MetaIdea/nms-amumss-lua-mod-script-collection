NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CleanerCockpit 2.0",
["MOD_AUTHOR"]    = "Phoenixdive",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.03",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CT"] =
      {
        {
          ["MBIN_FS"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
          ["MXML_CT"] =
          {
            {
              ["FSKWG"] =
              {
                {"Name", "SUB1Cards5",},
                {"Name", "MonFrontCables",},
                {"Name", "CableSpinnerL",},
                {"Name", "CableSpinnerR",},
                {"Name", "SentinelCableL",},
                {"Name", "SentinelCableR",},
                {"Name", "HijackCables",},
              },
              ["REMOVE"] = "SECTION",
            },
          }
        },
        {
          ["MBIN_FS"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\COCKPITCHAIR.SCENE.MBIN",
          ["MXML_CT"] =
          {
            {
              ["SKW"] = {"Name", "dables2",},
              ["REMOVE"] = "SECTION",
            },
          }
        },
      }
    }
  }
}