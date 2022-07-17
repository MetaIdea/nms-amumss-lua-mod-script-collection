DataTable =
{
    {
        ["COLOURS"] =
        {
            {"0.191", "0.444", "0.577", "1", "0.115", "0.541", "0.763", "1", "0.012", "0.208", "0.365", "1", "0.8", "0.9", "0.6", "1", "0.853", "0.896", "0.918", "0.2" },
            {"0.55", "0.393", "0.223", "1", "0.79", "0.566", "0.389", "1", "0.27", "0.137", "0.056", "1", "1", "0.701", "0.401", "1", "1", "0.814", "0.613", "1" },
            {"0.597", "0.317", "0.317", "1", "0.723", "0.494", "0.494", "1", "0.297", "0.109", "0.109", "1", "1", "0.338", "0.338", "1", "1", "0.835", "0.835", "1" },
            {"0.17", "0.413", "0.374", "1", "0.286", "0.583", "0.523", "1", "0.037", "0.21", "0.203", "1", "0.532", "1", "0.719", "1", "0.725", "0.907", "0.841", "1" },
            {"0.191", "0.444", "0.577", "1", "0.115", "0.541", "0.763", "1", "0.012", "0.208", "0.365", "1", "0.8", "0.9", "0.6", "1", "0.853", "0.896", "0.918", "0.2" },
            {"0.667", "0.612", "0.435", "1", "0.718", "0.671", "0.494", "1", "0.318", "0.275", "0.118", "1", "0.929", "0.851", "0.592", "1", "0.91", "0.886", "0.816", "1" },
            {"0.71", "0.522", "0.522", "1", "0.769", "0.576", "0.576", "1", "0.467", "0.275", "0.275", "1", "1", "0.8", "0.8", "1", "1", "0.867", "0.867", "1" },
            {"0.353", "0.58", "0.659", "1", "0.42", "0.667", "0.749", "1", "0.153", "0.298", "0.42", "1", "0.518", "0.831", "0.929", "1", "0.741", "0.929", "0.988", "1" },
            {"0.521", "0.709", "0.709", "1", "0.576", "0.768", "0.768", "1", "0.274", "0.466", "0.466", "1", "0.8", "1", "1", "1", "0.866", "1", "1", "1" },
            {"0.219", "0.352", "0.407", "1", "0.266", "0.423", "0.486", "1", "0.105", "0.164", "0.188", "1", "0.184", "0.258", "0.286", "1", "0.529", "0.686", "0.749", "1" },
            {"0.239", "0.298", "0.239", "1", "0.243", "0.337", "0.247", "1", "0.125", "0.176", "0.125", "1", "0.243", "0.31", "0.247", "1", "0.859", "0.776", "0.678", "1" },
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]  = "_MOD_DUD_WaterColors_v17710.pak",
    ["MOD_AUTHOR"]    = "jasondude7116",
    ["LUA_AUTHOR"]    = "Jackty89, WinderTP, and Babscoole",	
    ["NMS_VERSION"]   = "3.84",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\\SIMULATION\\SOLARSYSTEM\\COLOURS\\WATERCOLOURS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {						
                    }
                },				
            }
        }
    }
}


function GetColours(R1,G1,B1,A1,R2,G2,B2,A2,R3,G3,B3,A3,R4,G4,B4,A4,R5,G5,B5,A5)
    return
[[
    <Property value="GcPlanetWaterColourData.xml">
      <Property name="WaterFogColourNear" value="Colour.xml">
        <Property name="R" value="]].. R1 ..[[" />
        <Property name="G" value="]].. G1 ..[[" />
        <Property name="B" value="]].. B1 ..[[" />
        <Property name="A" value="]].. A1 ..[[" />
      </Property>
      <Property name="WaterFogColourFar" value="Colour.xml">
        <Property name="R" value="]].. R2 ..[[" />
        <Property name="G" value="]].. G2 ..[[" />
        <Property name="B" value="]].. B2 ..[[" />
        <Property name="A" value="]].. A2 ..[[" />
      </Property>
      <Property name="WaterColourBase" value="Colour.xml">
        <Property name="R" value="]].. R3 ..[[" />
        <Property name="G" value="]].. G3 ..[[" />
        <Property name="B" value="]].. B3 ..[[" />
        <Property name="A" value="]].. A3 ..[[" />
      </Property>
      <Property name="WaterColourAdd" value="Colour.xml">
        <Property name="R" value="]].. R4 ..[[" />
        <Property name="G" value="]].. G4 ..[[" />
        <Property name="B" value="]].. B4 ..[[" />
        <Property name="A" value="]].. A4 ..[[" />
      </Property>
      <Property name="FoamColour" value="Colour.xml">
        <Property name="R" value="]].. R5 ..[[" />
        <Property name="G" value="]].. G5 ..[[" />
        <Property name="B" value="]].. B5 ..[[" />
        <Property name="A" value="]].. A5 ..[[" />
      </Property>
    </Property>		
]]
end

function CreateColoursProperty(PaletteColours)
    local PropertiesString = ""

    for j = 1, #PaletteColours do
        local R1 = PaletteColours[j][1 ]
        local G1 = PaletteColours[j][2 ]
        local B1 = PaletteColours[j][3 ]
        local A1 = PaletteColours[j][4 ]
        local R2 = PaletteColours[j][5 ]
        local G2 = PaletteColours[j][6 ]
        local B2 = PaletteColours[j][7 ]
        local A2 = PaletteColours[j][8 ]
        local R3 = PaletteColours[j][9 ]
        local G3 = PaletteColours[j][10]
        local B3 = PaletteColours[j][11]
        local A3 = PaletteColours[j][12]
        local R4 = PaletteColours[j][13]
        local G4 = PaletteColours[j][14]
        local B4 = PaletteColours[j][15]
        local A4 = PaletteColours[j][16]
        local R5 = PaletteColours[j][17]
        local G5 = PaletteColours[j][18]
        local B5 = PaletteColours[j][19]
        local A5 = PaletteColours[j][20]	
        PropertiesString = PropertiesString..GetColours(R1, G1, B1, A1, R2, G2, B2, A2, R3, G3, B3, A3, R4, G4, B4, A4, R5, G5, B5, A5)
    end
return PropertiesString
end

local BaseColourPalettesTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #DataTable do
    local PaletteColours = DataTable[i]["COLOURS"]

    BaseColourPalettesTable[#BaseColourPalettesTable +1 ] = 
    {
        ["PRECEDING_KEY_WORDS"] = { "Settings" },
        ["ADD"] = CreateColoursProperty(PaletteColours)
    }
end
