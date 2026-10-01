NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Screen Filter Overhaul",
["MOD_AUTHOR"]      = "",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Screen Filter Overhaul",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LUTDistanceFlightMultiplier", "1"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"DefaultStorm", "GcScreenFilterData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FilenameSdr", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                {"FilenameHdr", "TEXTURES/LUT/FILTERSHDR/DEFAULT.DDS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FrozenStorm", "GcScreenFilterData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FilenameSdr", "TEXTURES/LUT/FILTERS/FROZENDEFAULT.DDS"},
                {"FilenameHdr", "TEXTURES/LUT/FILTERSHDR/FROZENDEFAULT.DDS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Toxic", "GcScreenFilterData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FilenameSdr", "TEXTURES/LUT/FILTERS/TOXICDEFAULT.DDS"},
                {"FilenameHdr", "TEXTURES/LUT/FILTERSHDR/TOXICDEFAULT.DDS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RadioactiveStorm", "GcScreenFilterData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FilenameSdr", "TEXTURES/LUT/FILTERS/RADIODEFAULT.DDS"},
                {"FilenameHdr", "TEXTURES/LUT/FILTERSHDR/RADIODEFAULT.DDS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ScorchedStorm", "GcScreenFilterData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FilenameSdr", "TEXTURES/LUT/FILTERS/SCORCHDEFAULT.DDS"},
                {"FilenameHdr", "TEXTURES/LUT/FILTERSHDR/SCORCHDEFAULT.DDS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BarrenStorm", "GcScreenFilterData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FilenameSdr", "TEXTURES/LUT/FILTERS/BARRENDEFAULT.DDS"},
                {"FilenameHdr", "TEXTURES/LUT/FILTERSHDR/BARRENDEFAULT.DDS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Weird1",           "GcScreenFilterData"},
                {"Weird2",           "GcScreenFilterData"},
                {"Weird3",           "GcScreenFilterData"},
                {"Weird4",           "GcScreenFilterData"},
                {"Weird5",           "GcScreenFilterData"},
                {"Weird6",           "GcScreenFilterData"},
                {"Weird7",           "GcScreenFilterData"},
                {"Weird8",           "GcScreenFilterData"},
                {"CorruptSentinels", "GcScreenFilterData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FadeDistance", "1200"},
              }
            },
          }
        },
      }
    },
  }
}
