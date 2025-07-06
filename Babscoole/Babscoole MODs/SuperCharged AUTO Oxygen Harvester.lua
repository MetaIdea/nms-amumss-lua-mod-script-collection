Timer = "-15" --collection time
outpt = "9999" --resource ammount

--do not change any values below this line unless you know what you are doing !!!

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SuperCharged AUTO Oxygen Harvester",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "SuperCharged Oxygen Harvester with 9999  output in 30 secs",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\GASHARVESTER\ENTITIES\OXYGENHARVESTER.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\OXYGENHARVESTER180\ENTITIES\OXYGENHARVESTER.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL4"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountEmptyTimePeriod", -1}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "OXYGEN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCapacity", outpt},
                {"AmountEmptyTimePeriod", Timer}
              }
            },
          }
        },
      }
    }
  }
}