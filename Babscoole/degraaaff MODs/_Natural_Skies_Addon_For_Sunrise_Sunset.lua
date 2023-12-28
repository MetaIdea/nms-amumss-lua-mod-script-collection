DataTable =
{
    {
        ["PALETTE"] = "Dusk",
        ["COLOURS"] =
        {
            {"0.652", "0.583", "0.49", "1", "0.395", "0.473", "0.561", "1", "1", "0.7", "0.42", "1", "0.85", "0.49", "0.36", "1", "0.995", "0.191", "0.038", "1", "0.35", "0.322", "0.24", "1", "0.987", "0.767", "0.681", "1", "2", "1", "1", "0.922", "0.73", "0.48", "1", "1", "0.8", "0.53", "1", "0.13", "0.284", "0.39", "1"},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Natural_Skies_Addon_For_Sunrise_Sunset.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DUSKSKYCOLOURS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcPlanetWeatherColourData.xml"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        }
    }
}


function GetColours(R1,G1,B1,A1,R2,G2,B2,A2,R3,G3,B3,A3,R4,G4,B4,A4,R5,G5,B5,A5,R6,G6,B6,A6,R7,G7,B7,A7,x8,y8,z8,R9,G9,B9,A9,R10,G10,B10,A10,R11,G11,B11,A11)
    return
[[
      <Property value="GcPlanetWeatherColourData.xml">
        <Property name="SkyColour" value="Colour.xml">
          <Property name="R" value="]].. R1 ..[[" />
          <Property name="G" value="]].. G1 ..[[" />
          <Property name="B" value="]].. B1 ..[[" />
          <Property name="A" value="]].. A1 ..[[" />
        </Property>
        <Property name="SkyUpperColour" value="Colour.xml">
          <Property name="R" value="]].. R2 ..[[" />
          <Property name="G" value="]].. G2 ..[[" />
          <Property name="B" value="]].. B2 ..[[" />
          <Property name="A" value="]].. A2 ..[[" />
        </Property>
        <Property name="SkySolarColour" value="Colour.xml">
          <Property name="R" value="]].. R3 ..[[" />
          <Property name="G" value="]].. G3 ..[[" />
          <Property name="B" value="]].. B3 ..[[" />
          <Property name="A" value="]].. A3 ..[[" />
        </Property>
        <Property name="HorizonColour" value="Colour.xml">
          <Property name="R" value="]].. R4 ..[[" />
          <Property name="G" value="]].. G4 ..[[" />
          <Property name="B" value="]].. B4 ..[[" />
          <Property name="A" value="]].. A4 ..[[" />
        </Property>
        <Property name="SunColour" value="Colour.xml">
          <Property name="R" value="]].. R5 ..[[" />
          <Property name="G" value="]].. G5 ..[[" />
          <Property name="B" value="]].. B5 ..[[" />
          <Property name="A" value="]].. A5 ..[[" />
        </Property>
        <Property name="FogColour" value="Colour.xml">
          <Property name="R" value="]].. R6 ..[[" />
          <Property name="G" value="]].. G6 ..[[" />
          <Property name="B" value="]].. B6 ..[[" />
          <Property name="A" value="]].. A6 ..[[" />
        </Property>
        <Property name="HeightFogColour" value="Colour.xml">
          <Property name="R" value="]].. R7 ..[[" />
          <Property name="G" value="]].. G7 ..[[" />
          <Property name="B" value="]].. B7 ..[[" />
          <Property name="A" value="]].. A7 ..[[" />
        </Property>
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="]].. x8 ..[[" />
          <Property name="y" value="]].. y8 ..[[" />
          <Property name="z" value="]].. z8 ..[[" />
        </Property>
        <Property name="LightColour" value="Colour.xml">
          <Property name="R" value="]].. R9 ..[[" />
          <Property name="G" value="]].. G9 ..[[" />
          <Property name="B" value="]].. B9 ..[[" />
          <Property name="A" value="]].. A9 ..[[" />
        </Property>
        <Property name="CloudColour1" value="Colour.xml">
          <Property name="R" value="]].. R10 ..[[" />
          <Property name="G" value="]].. G10 ..[[" />
          <Property name="B" value="]].. B10 ..[[" />
          <Property name="A" value="]].. A10 ..[[" />
        </Property>
        <Property name="CloudColour2" value="Colour.xml">
          <Property name="R" value="]].. R11 ..[[" />
          <Property name="G" value="]].. G11 ..[[" />
          <Property name="B" value="]].. B11 ..[[" />
          <Property name="A" value="]].. A11 ..[[" />
        </Property>
      </Property>
]]
end

function CreateColoursProperty(PaletteColours)
    local PropertiesString = {}

    for j = 1, #PaletteColours do
        local R1  = PaletteColours[j][1]
        local G1  = PaletteColours[j][2]
        local B1  = PaletteColours[j][3]
        local A1  = PaletteColours[j][4]
        local R2  = PaletteColours[j][5]
        local G2  = PaletteColours[j][6]
        local B2  = PaletteColours[j][7]
        local A2  = PaletteColours[j][8]
        local R3  = PaletteColours[j][9]
        local G3  = PaletteColours[j][10]
        local B3  = PaletteColours[j][11]
        local A3  = PaletteColours[j][12]
        local R4  = PaletteColours[j][13]
        local G4  = PaletteColours[j][14]
        local B4  = PaletteColours[j][15]
        local A4  = PaletteColours[j][16]
        local R5  = PaletteColours[j][17]
        local G5  = PaletteColours[j][18]
        local B5  = PaletteColours[j][19]
        local A5  = PaletteColours[j][20]
        local R6  = PaletteColours[j][21]
        local G6  = PaletteColours[j][22]
        local B6  = PaletteColours[j][23]
        local A6  = PaletteColours[j][24]
        local R7  = PaletteColours[j][25]
        local G7  = PaletteColours[j][26]
        local B7  = PaletteColours[j][27]
        local A7  = PaletteColours[j][28]
        local x8  = PaletteColours[j][29]
        local y8  = PaletteColours[j][30]
        local z8  = PaletteColours[j][31]
        local R9  = PaletteColours[j][32]
        local G9  = PaletteColours[j][33]
        local B9  = PaletteColours[j][34]
        local A9  = PaletteColours[j][35]
        local R10 = PaletteColours[j][36]
        local G10 = PaletteColours[j][37]
        local B10 = PaletteColours[j][38]
        local A10 = PaletteColours[j][39]
        local R11 = PaletteColours[j][40]
        local G11 = PaletteColours[j][41]
        local B11 = PaletteColours[j][42]
        local A11 = PaletteColours[j][43]
        table.insert(PropertiesString,GetColours(R1, G1, B1, A1, R2, G2, B2, A2, R3, G3, B3, A3, R4, G4, B4, A4, R5, G5, B5, A5, R6, G6, B6, A6, R7, G7, B7, A7, x8, y8, z8, R9, G9, B9, A9, R10, G10, B10, A10, R11, G11, B11, A11))
    end
return table.concat(PropertiesString)
end

local BaseColourPalettesTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #DataTable do
    local Palette = DataTable[i]["PALETTE"]
    local FileSource = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\"..string.upper(Palette).."SKYCOLOURS.MBIN"
    local PaletteColours = DataTable[i]["COLOURS"]

    BaseColourPalettesTable[#BaseColourPalettesTable +1] =
    {
        ["MBIN_FILE_SOURCE"] = FileSource,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = {"Settings"},
                ["SECTION_ACTIVE"] = {1},
                ["ADD"] = CreateColoursProperty(PaletteColours)
            }
        }
    }
end
