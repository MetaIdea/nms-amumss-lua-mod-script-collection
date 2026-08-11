NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Dreadnought Dust Cloud Disabler",
["MOD_AUTHOR"]      = "JinxM0D",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "This mod disables dust cloud which is surrounding Dreadnought",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\PIRATEFREIGHTERATMOSPHERICS\DUST.PARTICLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCount", "0"},
              }
            },
          }
        },
      }
    }
  }
}