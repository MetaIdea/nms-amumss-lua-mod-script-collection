NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR CleanHUD",
["MOD_AUTHOR"]      = "hilightnotes, enifleR, & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Hide some UI in VR",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "UI\HUD\HUDHAZARD.MBIN",
            "UI\HUD\HUDHEALTH.MBIN",
            "UI\HUD\HUDINDICATORSVR.MBIN",
            "UI\HUD\HUDLINES.MBIN",
            "UI\HUD\HUDVRWARNING.MBIN",
            "UI\HUD\HUDWEAPONS.MBIN",
            "UI\HUD\HUDPLANETINFO.MBIN",
            "UI\HUD\HUDNOTIFICATIONPANEL.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Is Hidden", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"InWorldCompass", "GcInWorldUIScreenData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScreenScale", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"InWorldCompass", "GcInWorldUIScreenData"},
              ["PRECEDING_KEY_WORDS"] = {"ScreenOffset"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "45"},
                {"Y", "-0.2"},
                {"Z", "-0.4"},
              }
            },
          }
        }
      }
    }
  }
}