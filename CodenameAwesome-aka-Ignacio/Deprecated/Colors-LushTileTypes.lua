Grass_Options = {"Grass","Leaf","GrassAlt"}
Grass_ColourAlt_Options = {"Primary","Alternative1","Alternative2"}
GrassAlt_Options = {"Grass","Leaf","GrassAlt"}
GrassAlt_ColourAlt_Options = Grass_ColourAlt_Options
RockSaturated_Options = {"RockSaturated", "RockLight","RockDark","Cave"}
RockDark_Options = RockSaturated_Options
RockLight_Options = RockSaturated_Options
Cave_Options = RockSaturated_Options

num_generated = 0
num_generated_blep = 0
all_string = ""

all_stringTable = {}

num_generating = #Grass_Options * #Grass_ColourAlt_Options * #GrassAlt_Options * #GrassAlt_ColourAlt_Options * #RockSaturated_Options * #RockDark_Options * #RockLight_Options * #Cave_Options

for a = 1, #Grass_Options, 1
	do
		--I want vibrant colors like Grass and Leaf to only be paired with either themselves or with GrassAlt
		--Here we will narrow the options if the Grass palette is eithe Grass or Leaf
		if Grass_Options[a] == "Grass" or Grass_Options[a] == "Leaf" then
			GrassAlt_Options = {Grass_Options[a],"GrassAlt"}
		end
		for b = 1, #Grass_ColourAlt_Options, 1
			do

				for c = 1, #GrassAlt_Options, 1
					do
						--I want vibrant colors like Grass and Leaf to only be paired with either themselves or with GrassAlt
						--Here we will check if it ended up with two Grass or two Leaf palettes and make sure that if there's a match, then the ColourAlt value should be the same.
						if Grass_Options[a] == GrassAlt_Options[c] and Grass_Options[a] ~= "GrassAlt" then
							GrassAlt_ColourAlt_Options = {Grass_ColourAlt_Options[b]}
						end

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
																num_generated = num_generated + 1
																num_generated_blep = num_generated_blep + 1

																if num_generated_blep == 500 then
																	num_generated_blep = 0
																	print("TileTypeSet "..num_generated	)
																end

																Grass = Grass_Options[a]
																Grass_ColourAlt = Grass_ColourAlt_Options[b]
																GrassAlt = GrassAlt_Options[c]
																GrassAlt_ColourAlt = GrassAlt_ColourAlt_Options[d]
																RockSaturated = RockSaturated_Options[e]
																RockDark = RockDark_Options[f]
																RockLight = RockLight_Options[g]
																Cave = Cave_Options[h]

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
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
        </Property>
        <Property value="TkPaletteTexture.xml">
          <Property name="Palette" value="Sand" />
          <Property name="ColourAlt" value="Primary" />
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

all_string = table.concat(all_stringTable)
print("Generated "..num_generated.." TileTypeSets")
--print(string)

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.LushTileTypes.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Add variation to how ground colors are applied in the Lush biome. For example, the grass can now take colors from the Leaf palette as well.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHTILETYPES.MBIN",},
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
				}
			}
		},
	}
}
