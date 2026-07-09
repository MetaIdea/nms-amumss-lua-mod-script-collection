NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Bye Bye Motion Sickness",
["MOD_AUTHOR"]      = "salifighter",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Say goodbye to the forced camera spin when interacting with the supply depots",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_SILOS\ENTITIES\INTERACTION.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcInteractionComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UseInteractCamera", "false"},
              },
            },
          }
        },
      }
    },
  }
}