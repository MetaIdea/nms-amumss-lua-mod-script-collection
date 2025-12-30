NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "ShutUp Pets",
["MOD_AUTHOR"]      = "Revale & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Silences your companions infuriating childish talk",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PetChatCooldown",     "999999.000000"},
                {"PetTickleChatChance", "0.000000"},
                {"PetTreatChatChance",  "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCROBOTGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FriendlyDroneChatCooldown",           "999999.000000"},
                {"FriendlyDroneChatChanceSummoned",     "0.000000"},
                {"FriendlyDroneChatChanceUnsummoned",   "0.000000"},
                {"FriendlyDroneChatChanceBecomeWanted", "0.000000"},
                {"FriendlyDroneChatChanceLoseWanted",   "0.000000"},
                {"FriendlyDroneChatChanceIdle",         "0.000000"},
                {"FriendlyDroneBeepReplaceChatChance",  "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChatChance", "0.000000"},
              }
            },
              
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\MESSAGES\STATUSMESSAGEDEFINITIONS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"PetVocabulary"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OddsOfProcReplacement", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PetChatTemplates"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OddsOfProcReplacement", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FriendlyDroneChatTemplates"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GenericFallback", ""},
              }
            },
          }
        },
      }
    },
  }
}