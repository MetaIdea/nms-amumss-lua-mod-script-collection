NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Predator Suppressor",
["MOD_AUTHOR"]      = "Exosolar & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Predators will no longer think of you as food",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NeverPreyedOn", "true"},
              }
            }
          }
        }
      }
    }
  }
}