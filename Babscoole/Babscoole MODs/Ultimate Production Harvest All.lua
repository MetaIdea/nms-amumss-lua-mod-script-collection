NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Ultimate Production Harvest All",
["MOD_AUTHOR"]      = "PyronoxOmega and Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Freighter Production Enhancement",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        --Hasrvest all freighter farm in 1 go--
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\PLANTROOM\PARTS\FLOOR0\ENTITIES\INTERACTION.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GcHarvestPlantAction"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "50"},
              }
            }
          }
        },
      }
    },
  }
}