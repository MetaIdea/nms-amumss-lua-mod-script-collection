NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Evolve Companion With Mordite",
["MOD_AUTHOR"]      = "Lupit",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Costs Mordite to evolve pets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "C_ROBOHEAD"},
              ["SEC_SAVE_TO"] = "ADD_COST",
            },
            {
              ["SEC_EDIT"] =  {"ADD_COST"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Id", "C_PET_MORDITE"},
              }
            },
            {
              ["SEC_EDIT"] =  {"ADD_COST"},
              ["PRECEDING_KEY_WORDS"] = {"GcCostSubstance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Id",     "CREATURE1"},
                {"Amount", "20"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"InteractionTable"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["SEC_ADD_NAMED"] = "ADD_COST",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PET_FREELEVEL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Cost", "C_PET_MORDITE"},
              }
            },
          }
        },
      }
    }
  }
}