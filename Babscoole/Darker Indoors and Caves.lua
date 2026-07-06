NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Darker Indoors and Caves",
["MOD_AUTHOR"]      = "fabricator",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "It makes interiors and caves darker",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IndoorsLightingPlanetMax",     "0.100000"},
                {"IblUndergroundLightIntensity", "0.600000"},
                {"ProbeBlendRadiusEdge",         "1.000000"},
                {"StandardNearProbeRadius",      "250.000000"},
                {"UndergroundFakeSkyFactor",     "0.040000"},
              }
            }
          }
        }
      }
    }
  }
}
