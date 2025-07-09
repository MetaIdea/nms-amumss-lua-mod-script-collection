NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Flappys Return",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Flapping wings on Exotics",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimType",   "Loop"},
                {"FrameStart", "60"},
                {"FrameEnd",   "164"},
                {"Speed",      "2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "LANDING"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FrameEnd", "181"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_B\ENTITIES\WINGS_B.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimType", "Loop"},
                {"Speed",    "4"},
              }
            },
          }
        },
      }
    }
  }
}
