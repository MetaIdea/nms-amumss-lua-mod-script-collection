DataTable =
{
    {
        ["PALETTE"] = "Dusk",
        ["COLOURS"] =
        {
            {"1","0.652", "0.583", "0.49", "1", "0.395", "0.473", "0.561", "1", "1", "0.7", "0.42", "1", "0.85", "0.49", "0.36", "1", "0.995", "0.191", "0.038", "1", "0.35", "0.322", "0.24", "1", "0.987", "0.767", "0.681", "1", "2", "1", "1", "0.922", "0.73", "0.48", "1", "1", "0.8", "0.53", "1", "0.13", "0.284", "0.39", "1"},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Natural Skies Addon For Sunrise Sunset",
["MOD_AUTHOR"]    = "degraaaff & Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DUSKSKYCOLOURS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Settings", "GcPlanetWeatherColourData"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        }
    }
}


function GetColours(SW,R1,G1,B1,A1,R2,G2,B2,A2,R3,G3,B3,A3,R4,G4,B4,A4,R5,G5,B5,A5,R6,G6,B6,A6,R7,G7,B7,A7,X8,Y8,Z8,R9,G9,B9,A9,R10,G10,B10,A10,R11,G11,B11,A11)
    return
[[
      <Property name="Settings" value="GcPlanetWeatherColourData">
        <Property name="SelectionWeighting" value="]].. string.format("%0.6f",SW) ..[[" />
        <Property name="SkyColour">
          <Property name="R" value="]].. string.format("%0.6f",R1) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G1) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B1) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A1) ..[[" />
        </Property>
        <Property name="SkyUpperColour">
          <Property name="R" value="]].. string.format("%0.6f",R2) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G2) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B2) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A2) ..[[" />
        </Property>
        <Property name="SkySolarColour">
          <Property name="R" value="]].. string.format("%0.6f",R3) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G3) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B3) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A3) ..[[" />
        </Property>
        <Property name="HorizonColour">
          <Property name="R" value="]].. string.format("%0.6f",R4) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G4) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B4) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A4) ..[[" />
        </Property>
        <Property name="SunColour">
          <Property name="R" value="]].. string.format("%0.6f",R5) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G5) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B5) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A5) ..[[" />
        </Property>
        <Property name="FogColour">
          <Property name="R" value="]].. string.format("%0.6f",R6) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G6) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B6) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A6) ..[[" />
        </Property>
        <Property name="HeightFogColour">
          <Property name="R" value="]].. string.format("%0.6f",R7) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G7) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B7) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A7) ..[[" />
        </Property>
        <Property name="SkyGradientSpeed">
          <Property name="X" value="]].. string.format("%0.6f",X8) ..[[" />
          <Property name="Y" value="]].. string.format("%0.6f",Y8) ..[[" />
          <Property name="Z" value="]].. string.format("%0.6f",Z8) ..[[" />
        </Property>
        <Property name="LightColour">
          <Property name="R" value="]].. string.format("%0.6f",R9) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G9) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B9) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A9) ..[[" />
        </Property>
        <Property name="LightColourUnderground">
          <Property name="R" value="1.000000" />
          <Property name="G" value="1.000000" />
          <Property name="B" value="1.000000" />
          <Property name="A" value="1.000000" />
        </Property>
        <Property name="CloudColour1">
          <Property name="R" value="]].. string.format("%0.6f",R10) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G10) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B10) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A10) ..[[" />
        </Property>
        <Property name="CloudColour2">
          <Property name="R" value="]].. string.format("%0.6f",R11) ..[[" />
          <Property name="G" value="]].. string.format("%0.6f",G11) ..[[" />
          <Property name="B" value="]].. string.format("%0.6f",B11) ..[[" />
          <Property name="A" value="]].. string.format("%0.6f",A11) ..[[" />
        </Property>
        <Property name="CirrusCloudDensity" value="0.300000" />
        <Property name="GasGiantAtmosphereID" value="" />
      </Property>
]]
end

function CreateColoursProperty(PaletteColours)
    local PropertiesString = {}

    for j = 1, #PaletteColours do
        local SW  = PaletteColours[j][1]
        local R1  = PaletteColours[j][2]
        local G1  = PaletteColours[j][3]
        local B1  = PaletteColours[j][4]
        local A1  = PaletteColours[j][5]
        local R2  = PaletteColours[j][6]
        local G2  = PaletteColours[j][7]
        local B2  = PaletteColours[j][8]
        local A2  = PaletteColours[j][9]
        local R3  = PaletteColours[j][10]
        local G3  = PaletteColours[j][11]
        local B3  = PaletteColours[j][12]
        local A3  = PaletteColours[j][13]
        local R4  = PaletteColours[j][14]
        local G4  = PaletteColours[j][15]
        local B4  = PaletteColours[j][16]
        local A4  = PaletteColours[j][17]
        local R5  = PaletteColours[j][18]
        local G5  = PaletteColours[j][19]
        local B5  = PaletteColours[j][20]
        local A5  = PaletteColours[j][21]
        local R6  = PaletteColours[j][22]
        local G6  = PaletteColours[j][23]
        local B6  = PaletteColours[j][24]
        local A6  = PaletteColours[j][25]
        local R7  = PaletteColours[j][26]
        local G7  = PaletteColours[j][27]
        local B7  = PaletteColours[j][28]
        local A7  = PaletteColours[j][29]
        local X8  = PaletteColours[j][30]
        local Y8  = PaletteColours[j][31]
        local Z8  = PaletteColours[j][32]
        local R9  = PaletteColours[j][33]
        local G9  = PaletteColours[j][34]
        local B9  = PaletteColours[j][35]
        local A9  = PaletteColours[j][36]
        local R10 = PaletteColours[j][37]
        local G10 = PaletteColours[j][38]
        local B10 = PaletteColours[j][39]
        local A10 = PaletteColours[j][40]
        local R11 = PaletteColours[j][41]
        local G11 = PaletteColours[j][42]
        local B11 = PaletteColours[j][43]
        local A11 = PaletteColours[j][44]
        table.insert(PropertiesString,GetColours(SW, R1, G1, B1, A1, R2, G2, B2, A2, R3, G3, B3, A3, R4, G4, B4, A4, R5, G5, B5, A5, R6, G6, B6, A6, R7, G7, B7, A7, X8, Y8, Z8, R9, G9, B9, A9, R10, G10, B10, A10, R11, G11, B11, A11))
    end
return table.concat(PropertiesString)
end

local BaseColourPalettesTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #DataTable do
    local Palette = DataTable[i]["PALETTE"]
    local FileSource = [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\]]..string.upper(Palette).."SKYCOLOURS.MBIN"
    local PaletteColours = DataTable[i]["COLOURS"]

    BaseColourPalettesTable[#BaseColourPalettesTable +1] =
    {
        ["MBIN_FILE_SOURCE"] = FileSource,
        ["MXML_CHANGE_TABLE"] =
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"GenericSettings", "GcWeatherColourSettingList"},
                ["PRECEDING_KEY_WORDS"] = {"Settings"},
                ["ADD"] = CreateColoursProperty(PaletteColours)
            },
            {
                ["PRECEDING_KEY_WORDS"] = {"Settings"},
                ["EXML_FLAGS"]  = "OVERWRITE",
            },
        }
    }
end
