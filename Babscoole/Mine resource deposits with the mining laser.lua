NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Mine resource deposits with the mining laser",
["MOD_AUTHOR"]       = "SLowMoPokes",
["LUA_AUTHOR"]       = "Babscoole",
["NMS_VERSION"]      = "7.05",
["MOD_DESCRIPTION"]  = "Lets you mine underground resource deposits with the regular mining laser",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CanMine", "true"},
              },
            },
          },
        },
      },
    },
  },
}
