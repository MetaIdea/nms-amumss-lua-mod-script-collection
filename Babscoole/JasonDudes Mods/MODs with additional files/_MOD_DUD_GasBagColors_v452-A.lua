--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_GasBagColors_v452-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "TEXTURES\PLANETS\BIOMES\COMMON\INTERACTIVE\SPOREVENT.TEXTURE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative3"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK", "Palette", "TkPaletteTexture.xml"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette", "Stone"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK"},
                            ["PRECEDING_KEY_WORDS"] = {"Textures"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="PlanetRing" />
            <Property name="ColourAlt" value="Alternative3" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.TRUNK.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative3"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASE", "Palette", "TkPaletteTexture.xml"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette", "Grass"}
                            }
                        },
                    }
                },
            }
        },
    }
}