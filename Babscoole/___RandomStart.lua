NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "___RandomStart.pak",
["MOD_AUTHOR"]    = "nvalidCode",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.25",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
                            -- ["SPECIAL_KEY_WORDS"] = {"Biome", "Frozen"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Lush" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Barren" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Dead" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Weird" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Red" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Green" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Blue" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Swamp" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Lava" />
    </Property>
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Waterworld" />
    </Property>
]]
                        },
                    }
                },
            }
        },
    }
}