NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Open Water",
["MOD_AUTHOR"]      = "camus",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "A simple tweak to terrain generation that should increase space in most underwater areas",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
						{
							["SPECIAL_KEY_WORDS"] =
              {
                {"FloatingIslands",      "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"GrandCanyon",          "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"MountainRavines",      "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"HugeArches",           "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"Alien",                "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"Craters",              "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"Caverns",              "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"Alpine",               "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"LilyPad",              "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"Desert",               "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"WaterworldPrime",      "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"GrandCanyonPrime",     "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"HugeArchesPrime",      "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"AlienPrime",           "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"CratersPrime",         "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"CavernsPrime",         "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"AlpinePrime",          "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"LilyPadPrime",         "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
                {"DesertPrime",          "TkVoxelGeneratorSettingsElement", "UnderWater", "TkNoiseUberLayerData"},
              },
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",            "10.000000"},
								{"Width",             "25.000000"},
								{"RegionScale",       "100.000000"},
								{"PlateauStratas",    "1.000000"},
								{"PlateauSharpness",  "10"},
								{"PlateauRegionSize", "0.000000"},
							}
						},
          }
        },
      }
    },
  }
}