NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zOperate Hatch",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "zOperate Hatch Extends the interaction distance of the Corvette airlock hatch control",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\AIRLOCK_NESW_B\ENTITIES\AIRLOCK_NESW_B_RAMPCONTROLS.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcSimpleInteractionComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InteractDistance", "5.000000"},
              }
            },
          }
        },
      }
    }
  }
}
