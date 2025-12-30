NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "Customize Holster Delay",
["MOD_AUTHOR"]    = "Ninefinger & Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] = 
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"WeaponLowerDelay",   "10.000000"},  --Original 3
                {"WeaponHolsterDelay", "13.000000"},  --Original 6
                {"WeaponLag",          "0.300000"}, --Original 0.6 litteral lag of the weapon, lower value is more responsive and snappier handling
              }
            }
          }
        }
      }
    }
  }
}
