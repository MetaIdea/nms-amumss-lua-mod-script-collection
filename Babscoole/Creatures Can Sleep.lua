NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Creatures Can Sleep",
["MOD_AUTHOR"]      = "SplinterGU and Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Enable creatures sleeping",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AllowSleeping", "true"}, --false
              },
            },
          },
        },
      }
    }
  }
}