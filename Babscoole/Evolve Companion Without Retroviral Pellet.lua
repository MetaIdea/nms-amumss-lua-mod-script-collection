NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Evolve Companion Without Retroviral Pellet",
["MOD_AUTHOR"]      = "DY230",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Evolve Companion Without Retroviral Pellet",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PET_FREELEVEL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Cost", ""},
              }
            },
          }
        }
      }
    }
  }
}