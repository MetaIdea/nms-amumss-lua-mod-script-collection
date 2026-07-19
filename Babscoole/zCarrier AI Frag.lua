NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zCarrier AI Frag",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.01",
["MOD_DESCRIPTION"] = "zCarrier AI Frag will return the location of the NEAREST Interceptor crash site",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SENT_CRASH_CORRUPT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceWideRandom",    "false"},
                {"MessageDisplayTime", "0.200000"},
                {"IconTime",           "0.200000"},
                {"TooltipTime",        "0.400000"},
                {"ShowEndTooltip",     "false"},
              }
            },
          }
        },
      }
    }
  }
}
