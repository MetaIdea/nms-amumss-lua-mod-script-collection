NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Improved Weapons",
["MOD_AUTHOR"]      = "PokeClasher1703",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "This mod improves some weapon functionality",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPROCKET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life",         "20.000000"},
                {"DefaultSpeed", "2500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPMINIGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life",         "10.000000"},
                {"DefaultSpeed", "2000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPROCKET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Life",         "10.000000"},
                {"DefaultSpeed", "2000.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Projectile", "SHIPROCKET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OverheatCoolTime", "1.200000"},
                {"CoolRate",         "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}