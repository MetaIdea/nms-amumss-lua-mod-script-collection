NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Quieter Refiners",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "Quiets running Large, Medium, Personal, and Portable Refiners",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER2.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER3.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"StateID", "REFINE_START", "Action", "GcPlayAudioAction"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    }
  }
}