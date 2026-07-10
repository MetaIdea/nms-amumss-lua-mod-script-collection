NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Frequent Organic Frigates_900",
["MOD_AUTHOR"]      = "Raevyxn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Increases the frequency that you'll encounter an Organic Frigate's whalesong when using an Anomaly Detector",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BIO_FRIG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnChance", "900.000000"},
              }
            },
          }
        },
      }
    },
  }
}