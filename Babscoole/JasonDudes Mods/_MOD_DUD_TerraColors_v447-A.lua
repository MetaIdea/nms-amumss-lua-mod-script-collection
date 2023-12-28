NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_TerraColors_v447-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.47",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENTILETYPES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcTileTypeSet.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="1" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Snow" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Snow" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="1" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Snow" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Stone" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Snow" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="1" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Snow" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Stone" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Snow" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHTILETYPES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcTileTypeSet.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="0.65" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Grass" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Grass" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="0.35" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Grass" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="GrassAlt" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPTILETYPES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcTileTypeSet.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="0.75" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="GrassAlt" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Grass" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASETILETYPES_LAVA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcTileTypeSet.xml"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="0.5" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="0.5" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockDark" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockLight" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="RockSaturated" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Cave" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
            }
        },
    }
}