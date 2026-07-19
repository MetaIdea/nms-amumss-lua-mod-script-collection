NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zNo Spin Chairs",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.06",
["MOD_DESCRIPTION"] = "zNo Spin Chairs Removes the useless Spin interaction from 3 buildable chairs",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\TABLECHAIR\ENTITIES\TABLECHAIR1.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Components", "GcTriggerActionComponentData"},
                {"Components", "GcSimpleInteractionComponentData"},
              },
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    }
  }
}
