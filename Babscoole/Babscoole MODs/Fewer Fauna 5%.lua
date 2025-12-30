MULTIPLIER = 0.005

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Fewer Fauna 5%",
["MOD_AUTHOR"]      = "courtykat and Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Reduces creatures' spawn frequency",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"GroundGroupsPerKm"},
                {"WaterGroupsPerKm"},
                {"AirGroupsPerKm"},
                {"CaveGroupsPerKm"},
              },
              ["MATH_OPERATION"] = "*",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    MULTIPLIER},
                {"Normal",    MULTIPLIER},
                {"Dense",     MULTIPLIER},
                {"VeryDense", MULTIPLIER},
              }
            },
          }
        },
      }
    },
  },
}