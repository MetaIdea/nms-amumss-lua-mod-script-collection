NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "zFlatbed Friction",
["MOD_AUTHOR"]       = "JMZ",
["NMS_VERSION"]      = "6.21",
["MOD_DESCRIPTION"]  = "Increases the amount of sliding and rolling friction of the flatbed and the scrap itself. Helps keep scrap in the bed and reduces chance of exploding.",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\EXPLOSIVE_LARGE_CRATE\ENTITIES\EXPLOSIVELARGECRATE.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\EXPLOSIVE_MEDIUM_BARREL\ENTITIES\EXPLOSIVEMEDIUMBARREL.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\EXPLOSIVE_SMALL_CANISTER\ENTITIES\EXPLOSIVESMALLCANISTER.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\RADIOACTIVE_LARGE_CRATE\ENTITIES\RADIOACTIVELARGECRATE.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\RADIOACTIVE_MEDIUM_CRATE\ENTITIES\RADIOACTIVECRATEMEDIUMCRATE.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\RADIOACTIVE_SMALL_CANISTER\ENTITIES\RADIOACTIVESMALLCANISTER.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\TOXIC_LARGE_CRATE\ENTITIES\TOXICLARGECRATE.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\TOXIC_MEDIUM_BARREL\ENTITIES\TOXICMEDIUMBARREL.ENTITY.MBIN",
            "MODELS\PLANETS\COMMON\PHYSICSPROPS\TOXIC_SMALL_CANISTER\ENTITIES\TOXICSMALLCANISTER.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Data", "TkPhysicsData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Friction",        "0.900000"},
                {"RollingFriction", "0.900000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShootableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Health", "@*2"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\VEHICLES\ROVER\ROVER\ENTITIES\FLATBED.ENTITY.MBIN",
            "MODELS\COMMON\VEHICLES\ROVER\ROVER\ENTITIES\FLATBEDBARRIER.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\ABANDONED\SHARED\JUNK.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Data", "TkPhysicsData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Friction",        "0.900000"},
                {"RollingFriction", "0.900000"},
              }
            },
          }
        },
      }
    }
  }
}