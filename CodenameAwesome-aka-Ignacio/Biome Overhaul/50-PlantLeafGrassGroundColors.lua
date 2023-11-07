--Duplicates intentional
grass_palettes = {"Grass", "GrassAlt", "Plant", "Leaf"}
grass_alts = {"Primary","Alternative1"}

MBIN_CHANGE_TABLE = {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHTILETYPES.MBIN"},
		["EXML_CHANGE_TABLE"] = 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"GcTileTypeSet.xml"},
				["SEC_SAVE_TO"] = "vanilla"
			},
		}
	}
}

for _, grass1_palette in ipairs(grass_palettes) do
for _, grass1_alt in ipairs(grass_alts) do
	for _, grass2_palette in ipairs(grass_palettes) do
	for _, grass2_alt in ipairs(grass_alts) do
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHTILETYPES.MBIN"},
			["EXML_CHANGE_TABLE"] = 
			{
				{
					["PRECEDING_KEY_WORDS"] = {"TileTypeSets"},
					["SEC_ADD_NAMED"] = "vanilla",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Palette","Grass"},
					["VALUE_CHANGE_TABLE"] = {
						{"Palette",grass1_palette},
						{"ColourAlt",grass1_alt},
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Palette","GrassAlt"},
					["VALUE_CHANGE_TABLE"] = {
						{"Palette",grass2_palette},
						{"ColourAlt",grass2_alt},
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Palette","RockSaturated","ColourAlt","Alternative2"},
					["VALUE_CHANGE_TABLE"] = {
						{"Palette",grass1_palette},
						{"ColourAlt",grass1_alt},
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Palette","Sand"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"ColourAlt","Primary"},
					}
				},
			}
		})
	end
	end
end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "PlantLeafGrassGroundColors.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Ignacio",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}