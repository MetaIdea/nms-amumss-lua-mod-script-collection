NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_TerraColors_v606-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.06",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BURNT\BURNTTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BURNT\BURNTREMIX\BURNTREMIXTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TileTypeSets"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="1">
			<Property name="Probability" value="1.000000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="Snow" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="Snow" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="2">
			<Property name="Probability" value="1.000000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="Snow" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="Stone" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="Snow" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="3">
			<Property name="Probability" value="1.000000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="Snow" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="Stone" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="Snow" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\GASGIANTS\BASETILETYPES_GAS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\IRRADIATED\IRRADIATEDTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TileTypeSets"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="1">
			<Property name="Probability" value="0.650000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="Grass" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="Grass" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="2">
			<Property name="Probability" value="0.350000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="Grass" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="GrassAlt" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\NOXIOUS\NOXIOUSTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPTILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TileTypeSets"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="1">
			<Property name="Probability" value="0.750000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="GrassAlt" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="Grass" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASETILETYPES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASETILETYPES_LAVA.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Palette", "Sand"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TileTypeSets"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="2">
			<Property name="Probability" value="0.500000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
		<Property name="TileTypeSets" value="GcTileTypeSet" _index="3">
			<Property name="Probability" value="0.500000" />
			<Property name="Colours">
				<Property name="Colours" value="TkPaletteTexture" _index="0">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="1">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="2">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="3">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="4">
					<Property name="Palette" value="RockDark" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="5">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="6">
					<Property name="Palette" value="RockLight" />
					<Property name="ColourAlt" value="Alternative2" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="7">
					<Property name="Palette" value="RockSaturated" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="8">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="9">
					<Property name="Palette" value="Cave" />
					<Property name="ColourAlt" value="Alternative1" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="10">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
				<Property name="Colours" value="TkPaletteTexture" _index="11">
					<Property name="Palette" value="Sand" />
					<Property name="ColourAlt" value="Primary" />
					<Property name="Index" value="-1" />
				</Property>
			</Property>
		</Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASETILETYPES_SAND.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colours", "TkPaletteTexture"},
                            ["SECTION_ACTIVE"] = {"11"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Primary"},
                            }
                        },
                    }
                },
            }
        },
    }
}