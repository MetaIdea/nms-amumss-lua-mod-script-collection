MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Bigger Suns",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "Increases size of suns in solar systems",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\SPACEPOI\SPACEPOITABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnScale", "@*"..MULTIPLIER},
              }
            },
          }
        },
      }
    },
  }
}