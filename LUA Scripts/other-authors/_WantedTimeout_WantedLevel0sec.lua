NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "_WantedTimeout_WantedLevel0sec.pak",
  ["MOD_DESCRIPTION"] = "Sets Wanted Timeout to 0 seconds per wanted level",
  ["MOD_AUTHOR"] = "outlawzgosu",
  ["NMS_VERSION"] = "3.35",
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] = "1",
              ["VALUE_CHANGE_TABLE"] =
              {
                { "IGNORE", 0 },
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] = "2",
              ["VALUE_CHANGE_TABLE"] =
              {
                { "IGNORE", 0 },
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] = "3",
              ["VALUE_CHANGE_TABLE"] =
              {
                { "IGNORE", 0 },
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] = "4",
              ["VALUE_CHANGE_TABLE"] =
              {
                { "IGNORE", 0 },
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] = "5",
              ["VALUE_CHANGE_TABLE"] =
              {
                { "IGNORE", 0 },
              }
            }
          }
        }
      }
    }
  }
}
