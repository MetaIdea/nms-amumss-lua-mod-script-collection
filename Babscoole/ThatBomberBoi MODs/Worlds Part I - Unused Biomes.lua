NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "UnusedBiomes.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
                            ["PRECEDING_KEY_WORDS"] = {"BiomeFiles", "Lush", "FileOptions"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shell" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RUINS/RUINSBIOME.MBIN" />
          <Property name="Weight" value="1" />
          <Property name="PurpleSystemWeight" value="0.5" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeFiles", "Barren", "FileOptions"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Worlds" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DESOLATE/DESOLATEBIOME.MBIN" />
          <Property name="Weight" value="1" />
          <Property name="PurpleSystemWeight" value="0.5" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERWATER"},
                            ["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
        <Property value="VariableSizeString.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERTOWERS.MBIN" />
        </Property>
        <Property value="VariableSizeString.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCREEPY.MBIN" />
        </Property>
        <Property value="VariableSizeString.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERFOREST.MBIN" />
        </Property>
]]
                        },
                    }
                },
            }
        }
    }
}