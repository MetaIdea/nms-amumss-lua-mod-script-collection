NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Strict Player Interaction",
["MOD_AUTHOR"]      = "Lyravega",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Restricts the other player interaction angle and range to prevent accidental interactions, especially near the quicksilver vendor",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcInteractionComponentData"},
              ["PRECEDING_KEY_WORDS"] = {"GcInteractionComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AttractDistanceSq",  "9.000000"},
                {"InteractAngle",      "60.000000"},
                {"InteractDistance",   "3.000000"},
                {"InteractInvertFace", "true"},
              }
            },
          }
        },
      }
    }
  }
}