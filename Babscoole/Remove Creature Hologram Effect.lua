NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Remove Creature Hologram Effect",
["MOD_AUTHOR"]      = "HeadbangingLegend",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Remove holo effect from pets on the Nexus and in Xeno Arena",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"PetOffPlanetEffect", "GcScanEffectData"},
                {"PetBattlerEffect",   "GcScanEffectData"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"A", "0.000000"},
              },
            }
          }
        }
      }
    }
  }
}
