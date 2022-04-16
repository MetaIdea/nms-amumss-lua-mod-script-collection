Grass_Options = {"Grass","Leaf","GrassAlt"}
Grass_ColourAlt_Options = {"Primary","Alternative1"}
GrassAlt_Options = {"Grass","Leaf","GrassAlt"}
RockSaturated_Options = {"Rock","RockSaturated","RockDark","Cave"}
GrassAlt_ColourAlt_Options = {"Primary","Alternative1"}
RockDark_Options = {"Rock","RockSaturated", "RockDark","Cave"}
RockLight_Options = {"Rock","RockSaturated", "RockLight","Cave"}
Cave_Options = {"Rock","RockSaturated", "RockLight","RockDark","Cave"}
Sand_Options = {"Sand"}
Sand_ColourAlt_Options = {"Primary",}

num_generated = 0
num_generated_blep = 0
all_string = ""

all_stringTable = {}

num_generating = #Grass_Options * #Grass_ColourAlt_Options * #GrassAlt_Options * #GrassAlt_ColourAlt_Options * #RockSaturated_Options * #RockDark_Options * #RockLight_Options * #Cave_Options * #Sand_Options * #Sand_ColourAlt_Options

for a = 1, #Grass_Options, 1
	do
		for b = 1, #Grass_ColourAlt_Options, 1
			do

				for c = 1, #GrassAlt_Options, 1
					do
						for d = 1, #GrassAlt_ColourAlt_Options, 1
							do
								for e = 1, #RockSaturated_Options, 1
									do
										for f = 1, #RockDark_Options, 1
											do
												for g = 1, #RockLight_Options, 1
													do
														for h = 1, #Cave_Options, 1
															do
																for i = 1, #Sand_Options, 1
																	do
																		for j = 1, #Sand_ColourAlt_Options, 1
																			do
																				num_generated = num_generated + 1
																				num_generated_blep = num_generated_blep + 1

																				if num_generated_blep == 1000 then
																					num_generated_blep = 0
																					print("TileTypeSets Generated "..num_generated	)
																				end

																				Grass = Grass_Options[a]
																				Grass_ColourAlt = Grass_ColourAlt_Options[b]
																				GrassAlt = GrassAlt_Options[c]
																				GrassAlt_ColourAlt = GrassAlt_ColourAlt_Options[d]
																				RockSaturated = RockSaturated_Options[e]
																				RockDark = RockDark_Options[f]
																				RockLight = RockLight_Options[g]
																				Cave = Cave_Options[h]
																				Sand = Sand_Options[i]
																				Sand_ColourAlt = Sand_ColourAlt_Options[j]

																				table.insert(all_stringTable,[[
    <Property value="GcTileTypeSet.xml">
      <Property name="Probability" value="1" />
      <Property name="Colours">
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..RockDark..[[" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..Grass..[[" />
          <Property name="ColourAlt" value="]]..Grass_ColourAlt..[[" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..RockLight..[[" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..GrassAlt..[[" />
          <Property name="ColourAlt" value="]]..GrassAlt_ColourAlt..[[" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..RockSaturated..[[" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..RockSaturated..[[" />
          <Property name="ColourAlt" value="Alternative2" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..RockSaturated..[[" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..RockDark..[[" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..Cave..[[" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]]..Cave..[[" />
          <Property name="ColourAlt" value="Alternative1" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]] ..Sand.. [[" />
          <Property name="ColourAlt" value="]] ..Sand_ColourAlt.. [[" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="]] ..Sand.. [[" />
          <Property name="ColourAlt" value="]] ..Sand_ColourAlt.. [[" />
        </Property>
      </Property>
    </Property>
]]
)
																			end
																	end
															end
													end
											end
									end
							end
					end
			end
	end

all_string = table.concat(all_stringTable)
print("Generated "..num_generated.." TileTypeSets")
--print(all_string)

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= ".pak",
  ["MOD_DESCRIPTION"]		= "Add variation to how ground colors are applied in the Lush biome. For example, the grass can now take colors from the Leaf and Plant palettes as well.",
  ["MOD_AUTHOR"]				= "",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {--Create the new tiletypes file
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHTILETYPES.MBIN","OPENBE/BIOMEFILES/CODENAMEAWESOME/LUSH/DIVERSELUSHTILETYPES.MBIN"}					
					},
        },
				{
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/CODENAMEAWESOME/LUSH/DIVERSELUSHTILETYPES.MBIN",},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcTileTypeSet.xml"},
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TileTypeSets"},
							["ADD"] = all_string,
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBUBBLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHROOMABIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHROOMBBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"TileTypesFile","OPENBE/BIOMEFILES/CODENAMEAWESOME/LUSH/DIVERSELUSHTILETYPES.MBIN"}
							}
						}
					}
				},
			}
		},
	}
}
