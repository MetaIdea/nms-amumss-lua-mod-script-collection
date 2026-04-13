NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Underwater Torch Volumetrics",
["MOD_AUTHOR"]      = "Kilvoctu",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Disables the volumetric light from the torch when underwater",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnderwaterTorchVolumetricStrength", "0.000000"},
              }
            },
          }
        }
      }
    }
  }
}