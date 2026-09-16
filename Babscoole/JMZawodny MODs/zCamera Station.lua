NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zCamera Station",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00",
["MOD_DESCRIPTION"] = "zCamera Station removes the blurry Miniature effect from Station Base pictures",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION_TERMINAL\ENTITIES\TERMINALDATA.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"DepthOfField", "GcInteractionDof"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IsEnabled", "false"},
              }
            },
          }
        },
      }
    }
  }
}
