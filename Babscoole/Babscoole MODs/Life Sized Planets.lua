NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Life Sized Planets",
["MOD_AUTHOR"]      = "",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.36",
["MOD_DESCRIPTION"] = "Larger planet sizes",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\PLANETS\PLANET.SCENE.MBIN",
            "MODELS\SPACE\PLANETS\PLANETMESH.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "518.760000"},
                {"ScaleY", "518.760000"},
                {"ScaleZ", "518.760000"},
              }
            },
          }
        }
      }
    }
  }
}