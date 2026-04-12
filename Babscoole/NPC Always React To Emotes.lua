NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NPC Always React To Emotes",
["MOD_AUTHOR"]      = "clawdius25",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.50",
["MOD_DESCRIPTION"] = "Tried to spread positivity via emotes but some of NPCs ignore you? Say no more",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NPCReactionChance", "1.000000"},
                {"NPCReactCooldown",  "3.000000"},
              }
            },
          }
        }
      }
    }
  }
}