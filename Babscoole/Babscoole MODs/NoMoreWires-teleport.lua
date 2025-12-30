NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoMoreWires-teleport",
["MOD_AUTHOR"]      = "PyronoxOmega and Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Makes short teleporter wires invisible",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/CONDUIT_PORTALWIRE/TELEPORTERSCROLLEFFECTMAT.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Map",                ""},
                {"Shader",             "SHADERS/HADERMILLUBER.SHADER.BIN"},
                {"ShaderMillDataHash", "0"},
              }
            },
          }
        },
      }
    }
  }
}