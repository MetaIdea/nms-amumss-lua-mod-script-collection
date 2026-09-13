NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Reticles",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "Removes multitool and ship reticles",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDCROSSHAIR.MBIN",
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
      }
    }
  }
}