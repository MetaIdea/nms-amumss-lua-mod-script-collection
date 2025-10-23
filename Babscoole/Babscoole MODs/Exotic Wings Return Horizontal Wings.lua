NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Exotic Wings Return Horizontal Wings",
["MOD_AUTHOR"]    = "Babscoole, Seekker, and Mjjstral",
["NMS_VERSION"]   = "6.10",
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
              ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FrameEnd", "151"}, -- Original "0"
              }
            }
          }
        }
      }
    }
  }
}