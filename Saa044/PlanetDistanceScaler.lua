NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "saa044_PlanetDistanceScaler_EliteStyle_630_Extreme.pak",
  ["MOD_AUTHOR"]      = "saa044",
  ["LUA_AUTHOR"]      = "saa044",
  ["NMS_VERSION"]     = "6.30",
  ["MOD_DESCRIPTION"] = "Extreme larger solar systems for a much stronger interplanetary distance effect.",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\\GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Solar System Maximum Radius",         "3000000"},
                {"Solar System Maximum Radius Massive", "6000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Solar System Size"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "50331648"},
                {"Y", "2097152"},
                {"Z", "50331648"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\\GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FarClipDistance", "12000000"},
              }
            }
          }
        }
      }
    }
  }
}