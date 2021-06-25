ColorsNew = {"BLACK", "PURPLE", "PINK", "DARKPRUPLE", }--"VIVIDGREEN", "HAPPYGREEN"}

Color = 
{
	["BLACK"] 	= { ["R"]=0.0, ["G"]=0.0, ["B"]=0.0, ["A"]=1.0 },
	["PURPLE"] 	= { ["R"]=0.345, ["G"]=0.090, ["B"]=0.572, ["A"]=1.0 },
	["PINK"] 	= { ["R"]=1, ["G"]=0.0, ["B"]=1, ["A"]=1.0 },
	["DARKPRUPLE"] 	= { ["R"]=0.321, ["G"]=0.0, ["B"]=0.619, ["A"]=1.0 },
	["VIVIDGREEN"] 	= { ["R"]=0.0, ["G"]=0.639, ["B"]=0.274, ["A"]=1.0 },
	["HAPPYGREEN"] 	= { ["R"]=0.0, ["G"]=0.77, ["B"]=0.0, ["A"]=1.0 }
}

Palettes = {
	"Grass",
	"Plant",
	"Leaf",
	"Wood",
	"Rock",
	"Stone",
	"Crystal",
	"Sand",
	"Dirt",
	"Metal",
	"Paint",
	"Plastic",
	"Fur",
	"Scale",
	"Feather",
	"Water",
	"Cloud",
	"Sky",
	"Space",
	"Underbelly",
	"Undercoat",
	"Snow",
	"SkyHorizon",
	"SkyFog",
	"SkyHeightFog",
	"SkySunset",
	"SkyNight",
	"WaterNear",
	"SpaceCloud",
	"SpaceBottom",
	"SpaceSolar",
	"SpaceLight",
	"Warrior",
	"Scientific",
	"Trader",
	"WarriorAlt",
	"ScientificAlt",
	"TraderAlt",
	"RockSaturated",
	"RockLight",
	"RockDark",
	"PlanetRing",
	"Custom_Head",
	"Custom_Torso",
	"Custom_Chest_Armour",
	"Custom_Backpack",
	"Custom_Arms",
	"Custom_Hands",
	"Custom_Legs",
	"Custom_Feet",
	"Cave",
	"GrassAlt"
}

function GetColor(Color_)
local ColorEntry =
[[
        <Property value="Colour.xml">
          <Property name="R" value="]] .. Color_["R"] .. [[" />
          <Property name="G" value="]] .. Color_["G"] .. [[" />
          <Property name="B" value="]] .. Color_["B"] .. [[" />
          <Property name="A" value="]] .. Color_["A"] .. [[" />
        </Property>
]]
return ColorEntry
end

function CreateCustomPallete(PaletteName, ColorTable)
	local Palette = 
[[
    <Property name="]] .. PaletteName .. [[" value="GcPaletteData.xml">
      <Property name="NumColours" value="_16" />
      <Property name="Colours">
]]
	for i=1,#ColorsNew,1 do
		for j=1,8,1 do
			Palette = Palette .. GetColor(ColorTable[ColorsNew[i]]) .. GetColor(ColorTable[ColorsNew[i]])
		end
	end
Palette = Palette .. 
[[
      </Property>
    </Property>	
]]
	return Palette
end

PALLETTE = ""
PALLETTE = PALLETTE .. CreateCustomPallete("Rock", Color)
PALLETTE = PALLETTE .. CreateCustomPallete("Metal", Color)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CustomOldColorPalette.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Exchange the old ship color palette with a custom one (old color option in savegame editor)",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NNMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						-- "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\COLOURS\LEGACYBASECOLOURPALETTES.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[    <Property name="Rock" value="GcPaletteData.xml">]], [[    <Property name="Rock_" value="GcPaletteData.xml">]]},				
							}
						},
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[    <Property name="Metal" value="GcPaletteData.xml">]], [[    <Property name="Metal_" value="GcPaletteData.xml">]]},				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Palettes" },
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= PALLETTE
						}
					}
				}				
			}
		}
	}
}