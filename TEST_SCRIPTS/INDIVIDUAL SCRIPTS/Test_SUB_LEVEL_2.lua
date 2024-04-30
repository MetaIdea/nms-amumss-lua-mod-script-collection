NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Test_SUB_LEVEL_2.pak",
["MOD_AUTHOR"]      = "Wbertro",
["LUA_AUTHOR"]      = "Wbertro",
["NMS_VERSION"]     = "ALL",
["MOD_DESCRIPTION"] = "Test_SUB_LEVEL_2",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              -- MAIN_SECTION = true,
              SUB_LEVEL = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                  {"NameHash", "0"},
                  {"Name",     "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Transform", "TkTransformData.xml"},
              -- MAIN_SECTION = true,
              SUB_LEVEL = 2,
              REPLACE_TYPE = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                  {"TransY", "1"},
              },
            },
          },
        },
      },
    },
  }, --3 global replacements
}