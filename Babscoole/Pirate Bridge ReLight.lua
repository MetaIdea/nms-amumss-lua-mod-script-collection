NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Pirate Bridge ReLight",
["MOD_AUTHOR"]      = "DY230",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.23",
["MOD_DESCRIPTION"] = "Change the red light of the pirate freighter bridge to white light",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Value", "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE\GLOW_MAT.MATERIAL.MBIN"},
              ["REPLACE_TYPE"] = "ALL",        
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\GLOW_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = 
              {
                {"Name", "COL_R"},
                {"Name", "COL_G"},
                {"Name", "COL_B"},
              },
              ["REPLACE_TYPE"] = "ALL",        
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}