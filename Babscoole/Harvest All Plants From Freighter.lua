NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Harvest All Plants From Freighter",
["MOD_AUTHOR"]      = "starkgate",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.12",
["MOD_DESCRIPTION"] = "This mod increases the harvest all radius of plants on freighters to cover the entire freighter",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\PLANTROOM\PARTS\FLOOR0\ENTITIES\INTERACTION.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Action", "GcHarvestPlantAction"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "10000000.000000"},
              }
            },
          }
        },
      }
    }
  }
}
