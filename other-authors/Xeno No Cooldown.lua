NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]      = "Xeno No Cooldown",
["MOD_AUTHOR"]        = "Mariti",
["LUA_AUTHOR"]        = "Mariti",
["MOD_CONTRIBUTORS"]  = "Babscoole",
["NMS_VERSION"]       = "6.36",
["MOD_DESCRIPTION"]   = "Sets all Xeno Arena ability cooldowns to 0",
["MODIFICATIONS"]     =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\GAMETABLES\PETBATTLER\PETBATTLERMOVESETSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BASIC"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CooldownMin", "0"},
                {"CooldownMax", "0"},
              }
            },
          }
        }
      }
    }
  }
}