NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]      = "Xeno Best Cooldown",
["MOD_AUTHOR"]        = "Mariti",
["LUA_AUTHOR"]        = "Babscoole",
["NMS_VERSION"]       = "6.36",
["MOD_DESCRIPTION"]   = "Sets all Xeno Arena ability cooldowns to lowest range value",
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
                {"CooldownMax", "@1*FB:CooldownMin"},
              }
            },
          }
        }
      }
    }
  }
}