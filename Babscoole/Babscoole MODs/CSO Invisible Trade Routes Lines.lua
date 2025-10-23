NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "CSO Invisible Trade Routes Lines",
  ["MOD_DESCRIPTION"] = "No more trade route lines in space.",
  ["MOD_AUTHOR"]      = "NeptuneX3 & Babscoole",
  ["NMS_VERSION"]     = "6.10",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              -- Stop the trade routes flickering, so they remain invisible when their Alpha Channel = 0
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TradeRouteFlickerAmp", 0},    -- Vanilla 0.01 // Mod default 0
              },
            },
            {
              -- Makes the trade route lines invisible by turning their Alpha Channel to 0
              ["PRECEDING_KEY_WORDS"] = {"TradeRouteColours"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"A", 0},           -- Vanilla 0.02 // Mod default 0
              },
            },
          },
        },
      },
    },
  },
}