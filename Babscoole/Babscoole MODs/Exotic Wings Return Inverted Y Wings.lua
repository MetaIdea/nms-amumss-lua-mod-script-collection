NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Exotic Wings Return Inverted Y Wings",
["MOD_AUTHOR"]    = "Babscoole, Seekker, Mjjstral",
["NMS_VERSION"]   = "6.18",
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
                {"FrameEnd", "164"}, -- Original "0"
              }
            }
          }
        }
      }
    }
  }
}