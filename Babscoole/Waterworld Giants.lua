NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Waterworld Giants",
["MOD_DESCRIPTION"] = "Makes possible giant planets with water world biome",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ValidGiantPlanetBiome"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
		<Property name="ValidGiantPlanetBiome" value="GcBiomeType">
			<Property name="Biome" value="Waterworld" />
		</Property>
]]
            },
          }
        },
      }
    }
  }
}