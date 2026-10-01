NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Not Enough Tractor Beams",
["MOD_AUTHOR"]      = "OwenBoogie",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Removes the build limit on tractor beams cuz why not",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "B_MAG_1X1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CorvetteBaseLimit", "0"},
              }
            },
          }
        },
      }
    },
  }
}
