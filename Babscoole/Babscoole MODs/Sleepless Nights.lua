NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Sleepless Nights",
["MOD_AUTHOR"]      = "Degraaaff, KuroPeach, Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "This mods changes night lighting like dusk",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"SkyColour"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.682000"},
                {"G", "0.583000"},
                {"B", "0.538000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SkyUpperColour"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.612000"},
                {"G", "0.782000"},
                {"B", "0.977000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HorizonColour"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.726000"},
                {"B", "0.627000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FogColour"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.350000"},
                {"G", "0.322000"},
                {"B", "0.191000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HeightFogColour"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.987000"},
                {"G", "0.767000"},
                {"B", "0.681000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.943000"},
                {"G", "0.579000"},
                {"B", "0.452000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CloudColour1"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.073000"},
                {"G", "0.219000"},
                {"B", "0.396000"},
                {"A", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CloudColour2"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.027000"},
                {"G", "0.298000"},
                {"B", "0.498000"},
                {"A", "1.000000"},
              }
            },
          }
        }
      }
    }
  }
}