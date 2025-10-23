MB_Charge = 1000  -- default is 200
MB_Multipler = 5  -- Default is 1

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Minotaur - Better Mech Mining Bore",
["MOD_DESCRIPTION"] = "Adjusts the fuel maximum and charge of the Minotaur Bore",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_MINER"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount",      MB_Charge},
                {"ChargeMultiplier",  MB_Multipler}
              }
            }
          }
        }
      }
    }
  }
}