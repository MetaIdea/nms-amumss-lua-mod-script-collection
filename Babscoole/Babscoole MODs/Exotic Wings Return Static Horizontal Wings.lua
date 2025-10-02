NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Exotic Wings Return Static Horizontal Wings",
["MOD_AUTHOR"]    = "Babscoole, Seekker, and Mjjstral",
["NMS_VERSION"]   = "6.00",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", ""},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FrameStart", "29"}, -- Original "0"
                {"FrameEnd",   "30"}, -- Original "0"
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FrameStart", "150"}, -- Original "0"
                {"FrameEnd",   "151"}, -- Original "0"
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "LANDING"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FrameStart", "29"}, -- Original "0"
                {"FrameEnd",   "30"}, -- Original "0"
              }
            }
          }
        }
      }
    }
  }
}