NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zBio-Dome",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "zBio-Dome Removes the Bio-Dome ceiling clutter to provide a wide view of the sky",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RootJNT"},
                {"Name", "TerminalFrame"},
                {"Name", "BioRoom2_DUP"},
                {"Name", "ScreenData"},
              },
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM_CORE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "LODDIST1"},
                {"Name", "LODDIST2"},
                {"Name", "LODDIST3"},
                {"Name", "SUB1BioRoom_coreLOD0"},
                {"Name", "SUB2BioRoom_coreLOD0"},
                {"Name", "BioRoom_coreLOD1"},
                {"Name", "BioRoom_coreLOD2"},
                {"Name", "BioRoom_coreLOD3"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "NUMLODS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BioRoom_coreLOD0"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Type", "LOCATOR"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BioRoom_coreLOD0"},
              ["PRECEDING_KEY_WORDS"] = {"Attributes"},
              ["CREATE_HOES"] = "TRUE",
            },
          }
        },
      }
    },
  }
}