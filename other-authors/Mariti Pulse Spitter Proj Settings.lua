NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Mariti Pulse Spitter Proj Settings",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Mariti",
["NMS_VERSION"]     = "6.33",
["MOD_DESCRIPTION"] = "Common projectile setting for Mariti's Pulse Spitter weapon audio mods",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed", "960.000000"},
                {"Gravity", "0.010000"},
                {"Life", "1.500000"},
                {"CriticalHitModifier", "3.000000"},
                {"HomingDuration", "0.500000"},
              }
            },
          }
        }
      }
    }
  }
}