CARGOSLOT = 120
--Max Cargo Slots: 120 (10x12)
TECHSLOT = 60
--Max Tech Slots: 60 (10x6)
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MasterNetras Max Exocraft Slots",
["MOD_AUTHOR"]      = "Masternetra & Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Enables and Maxs out both cargo and technology slots for exocraft.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"VehicleSmall"},
                {"VehicleMedium"},
                {"VehicleLarge"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots",     CARGOSLOT},
                {"MaxSlots",     CARGOSLOT},
                {"MinTechSlots", TECHSLOT},
                {"MaxTechSlots", TECHSLOT},
              }
            },
          }
        }
      }
    }
  }
}