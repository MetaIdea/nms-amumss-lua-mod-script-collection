NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Faster Fishing Trap",
["MOD_DESCRIPTION"] = "Increased catch rate for the Fishing Trap",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCFISHINGGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SeaHarvesterAverageCatchTimeSeconds", 900}  -- Default is 3600 (one hour)
              },
            },
          }
        }
      }
    }
  }
}