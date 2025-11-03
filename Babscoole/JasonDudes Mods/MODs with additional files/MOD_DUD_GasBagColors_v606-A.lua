--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_GasBagColors_v606-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.06",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "TEXTURES\PLANETS\BIOMES\COMMON\INTERACTIVE\SPOREVENT.TEXTURE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK", "Palette", "TkPaletteTexture"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette", "PlanetRing"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TRUNK"},
                            ["PRECEDING_KEY_WORDS"] = {"Textures"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
				<Property name="Textures" value="TkProceduralTexture">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Stone" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.TRUNK.DDS" />
				</Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASE", "Palette", "TkPaletteTexture"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Palette", "Grass"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BASE"},
                            ["PRECEDING_KEY_WORDS"] = {"Textures"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
				<Property name="Textures" value="TkProceduralTexture">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="GrassAlt" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.BASE.DDS" />
				</Property>
]]
                        },
                    }
                },
            }
        },
    }
}