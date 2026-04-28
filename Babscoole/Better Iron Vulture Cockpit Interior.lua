NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Iron Vulture Cockpit Interior",
["MOD_AUTHOR"]      = "AyyMang",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "Switches the Iron Vulture cockpit to use the interior from the Boundary Herald",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITC\ENTITIES\COCKPIT.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShipOwnershipComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Cockpit", "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITSPOOK_INTERIOR.SCENE.MBIN"},
              }
            },
          }
        }
      }
    }
  }
}