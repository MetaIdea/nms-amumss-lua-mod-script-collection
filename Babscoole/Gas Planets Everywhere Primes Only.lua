NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Gas Planets Everywhere Primes Only",
["MOD_AUTHOR"]      = "AyyMang",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Allows gas giants to generate in all types of systems",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"PrimeBiomeProbability"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GasGiant", "2.000000"},
              }
            },
          }
        },
      }
    }
  }
}