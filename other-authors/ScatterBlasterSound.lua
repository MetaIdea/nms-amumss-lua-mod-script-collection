NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = "ScatterBlasterSound.pak",
  ["MOD_DESCRIPTION"] = "This mod changes the sound of the Scatter Blaster to make it less loud.",
  ["MOD_AUTHOR"]      = "RealGenuineHuman",
  ["NMS_VERSION"]     = "3.82",
  ["MODIFICATIONS"]   = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/PROJECTILES/PROJECTILETABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {-- It was using audio from a ship weapon, which explains the loudness.
              ["SPECIAL_KEY_WORDS"]  = {"Id", "SHOTGUN", "AkEvent", "WPN_SHIP_CYCLOTRON_FIRE"},
              ["VALUE_CHANGE_TABLE"] = {
                {"AkEvent", "WPN_PL_SHOTGUN"},
              }
            }
          }
        }
      }
    }
  }
}
