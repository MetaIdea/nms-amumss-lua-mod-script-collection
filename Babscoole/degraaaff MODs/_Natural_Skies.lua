DataTable =
{
    {
        ["PALETTE"] = "Day",
        ["COLOURS"] =
        {
            {"0.616", "0.749", "0.949", "1", "0.407", "0.471", "0.605", "1", "0.745", "0.863", "0.925", "1", "0.704", "0.859", "0.97", "1", "0.996", "1", "0.83", "1", "0.616", "0.749", "0.949", "1", "0.98", "0.811", "0.628", "1", "1", "1", "1", "1", "1", "0.98", "1", "0.9333", "0.946", "0.975", "1", "0.22", "0.26", "0.35", "1"},
            {"1", "0.818", "0.479", "1", "0.823", "0.645", "0.383", "1", "1", "0.972", "0.805", "1", "1", "0.9", "0.601", "1", "0.947", "0.921", "0.763", "1", "1", "0.818", "0.479", "1", "0.746", "1", "0.959", "1", "1", "1", "1", "1", "1", "0.904", "1", "1", "0.96", "0.89", "1", "0.395", "0.343", "0.195", "1"},
            {"1", "0.776", "0.475", "1", "0.85", "0.574", "0.394", "1", "1", "0.94", "0.812", "1", "1", "0.83", "0.68", "1", "0.996", "1", "0.83", "1", "1", "0.776", "0.475", "1", "0.822", "0.857", "0.742", "1", "1", "1", "1", "1", "0.932", "0.82", "1", "1", "0.965", "0.918", "1", "0.373", "0.27", "0.178", "1"},
            {"0.902", "0.75", "1", "1", "0.586", "0.49", "0.65", "1", "0.936", "0.885", "1", "1", "0.824", "0.785", "1", "1", "0.996", "1", "0.83", "1", "0.902", "0.75", "1", "1", "0.93", "0.883", "0.717", "1", "1", "1", "1", "1", "1", "0.904", "1", "0.941", "0.914", "0.965", "1", "0.303", "0.255", "0.335", "1"},
            {"1", "0.71", "0.681", "1", "0.9", "0.462", "0.45", "1", "1", "0.95", "0.88", "1", "0.736", "0.953", "1", "1", "0.996", "1", "0.83", "1", "1", "0.71", "0.681", "1", "0.359", "0.846", "1", "1", "1", "1", "1", "0.965", "0.887", "0.853", "1", "1", "0.945", "0.915", "1", "0.377", "0.271", "0.256", "1"},
            {"0.602", "1", "0.8", "1", "0.437", "0.62", "0.51", "1", "0.727", "1", "0.805", "1", "0.75", "1", "0.8", "1", "0.996", "1", "0.83", "1", "0.602", "1", "0.8", "1", "0.69", "1", "0.85", "1", "2", "1", "1", "1", "1", "0.904", "1", "0.886275", "0.964706", "0.964706", "1", "0.21", "0.31", "0.234", "1"},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Natural_Skies.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.89",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {

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
