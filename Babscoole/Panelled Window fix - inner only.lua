NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Panelled Window fix - inner only",
["MOD_AUTHOR"]    = "nagarerere",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WINDOW1\TKDEREF8_GLASSREFRMAT.MATERIAL.MBIN", "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WINDOW0\TKDEREF8_GLASSREFRMAT.MATERIAL.MBIN",},
            {"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WINDOW1\TKDEREF8_GLASSREFRMAT.MATERIAL.MBIN", "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_WINDOW0\TKDEREF8_GLASSREFRMAT.MATERIAL.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WINDOW0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "inner_glass", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WINDOW0\TKDEREF8_GLASSREFRMAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_WINDOW0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "glass", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_WINDOW0\TKDEREF8_GLASSREFRMAT.MATERIAL.MBIN"},
              }
            },
          }
        },
      }
    }
  }
}