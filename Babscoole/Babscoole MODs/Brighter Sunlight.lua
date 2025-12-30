NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Brighter Sunlight",
["MOD_AUTHOR"]      = "degraaaff",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Increases the intensity of sunlight to make planets look more vibrant.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sun Light Intensity", "5.500000"}, -- Original "3"
              }
            },
          }
        },
      }
    },
  }
}