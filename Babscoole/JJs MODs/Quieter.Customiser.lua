NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Quieter.Customiser.V.3.5",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.45",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATIONTYPEB\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "ARMSUP"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "ODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/CUSTOMISEEND.ANIM.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLEARMS"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "ODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/CUSTOMISEIDLE.ANIM.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "ARMSDOWN"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "ODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/CUSTOMISEACTIVATE.ANIM.MBIN"},
              }
            },
          }
        },
      }
    }
  },
}