NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]  = "BetterShipColors_v1.8.pak",
    ["MOD_AUTHOR"]    = "courtykat",
    ["LUA_AUTHOR"]    = "Jackty89, WinderTP, Babscoole, and courtykat",
    ["NMS_VERSION"]   = "",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Paint", "GcPaletteData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumColours", "All"}
                            }
                        },
                    }
                }
            }
        }
    }
}


DataTable =
{
    {
        ["PALETTE"] = "Paint",
        ["NUMCOLOURS"] = "All",
        ["COLOURS"] =
        {
        -- NEUTRAL
            {["R"]="1",      ["G"]="1",      ["B"]="1"},
            {["R"]="0.999",  ["G"]="0.999",  ["B"]="0.999"},
            {["R"]="0.998",  ["G"]="0.998",  ["B"]="0.998"},
            {["R"]="0.334",  ["G"]="0.334",  ["B"]="0.334"},
            {["R"]="0.333",  ["G"]="0.333",  ["B"]="0.333"},
            {["R"]="-1",     ["G"]="-1",     ["B"]="-1"},
            {["R"]="-0.999", ["G"]="-0.999", ["B"]="-0.999"},
            {["R"]="-0.998", ["G"]="-0.998", ["B"]="-0.998"},

            {["R"]="0.997",  ["G"]="0.997",  ["B"]="0.997"},
            {["R"]="0.7",    ["G"]="0.7",    ["B"]="0.7"},
            {["R"]="0.5",    ["G"]="0.5",    ["B"]="0.5"},
            {["R"]="0.3",    ["G"]="0.3",    ["B"]="0.3"},
            {["R"]="0.15",   ["G"]="0.15",   ["B"]="0.15"},
            {["R"]="0",      ["G"]="0",      ["B"]="0"},
            {["R"]="-0.1",   ["G"]="-0.1",   ["B"]="-0.1"},
            {["R"]="-0.99",  ["G"]="-0.99",  ["B"]="-0.99"},

        -- RED
            {["R"]="0.286",  ["G"]="0.035",  ["B"]="0.063"},
            {["R"]="0.353",  ["G"]="0.043",  ["B"]="0.071"},
            {["R"]="0.498",  ["G"]="0.082",  ["B"]="0.129"},
            {["R"]="0.6",    ["G"]="0.098",  ["B"]="0.141"},

            {["R"]="0.3",    ["G"]="0",      ["B"]="0.03"},
            {["R"]="0.388",  ["G"]="0",      ["B"]="0.043"},
            {["R"]="0.498",  ["G"]="0.043",  ["B"]="0.067"},
            {["R"]="0.6",    ["G"]="0.098",  ["B"]="0.098"},

        -- ORANGE
            {["R"]="0.678",  ["G"]="0.259",  ["B"]="0.106"},
            {["R"]="0.757",  ["G"]="0.333",  ["B"]="0.122"},
            {["R"]="0.847",  ["G"]="0.451",  ["B"]="0.167"},

        -- YELLOW
            {["R"]="0.855",  ["G"]="0.682",  ["B"]="0.012"},
            {["R"]="0.925",  ["G"]="0.831",  ["B"]="0.035"},
            {["R"]="1",      ["G"]="0.953",  ["B"]="0.098"},
            {["R"]="1",      ["G"]="0.98",   ["B"]="0.259"},
            {["R"]="0.969",  ["G"]="1",      ["B"]="0.4"},

        -- GREEN
            {["R"]="0.647",  ["G"]="0.867",  ["B"]="0.223"},
            {["R"]="0.486",  ["G"]="0.78",   ["B"]="0.192"},
            {["R"]="0.306",  ["G"]="0.584",  ["B"]="0.165"},

            {["R"]="0.063",  ["G"]="0.298",  ["B"]="0.161"},
            {["R"]="0.075",  ["G"]="0.357",  ["B"]="0.192"},
            {["R"]="0.094",  ["G"]="0.443",  ["B"]="0.239"},
            {["R"]="0.118",  ["G"]="0.553",  ["B"]="0.278"},
            {["R"]="0.133",  ["G"]="0.635",  ["B"]="0.318"},

        -- TEAL
            {["R"]="0.09",   ["G"]="0.404",  ["B"]="0.38"},
            {["R"]="0.122",  ["G"]="0.541",  ["B"]="0.506"},
            {["R"]="0.302",  ["G"]="0.729",  ["B"]="0.694"},

            {["R"]="0.082",  ["G"]="0.314",  ["B"]="0.431"},
            {["R"]="0.106",  ["G"]="0.408",  ["B"]="0.561"},
            {["R"]="0.149",  ["G"]="0.569",  ["B"]="0.776"},
            {["R"]="0.367",  ["G"]="0.722",  ["B"]="0.898"},
            {["R"]="0.537",  ["G"]="0.796",  ["B"]="0.898"},

        -- BLUE
            {["R"]="0.031",  ["G"]="0.224",  ["B"]="0.502"},
            {["R"]="0.09",   ["G"]="0.275",  ["B"]="0.627"},
            {["R"]="0.106",  ["G"]="0.369",  ["B"]="0.714"},
            {["R"]="0.173",  ["G"]="0.51",   ["B"]="0.827"},

            {["R"]="0.02",   ["G"]="0.09",   ["B"]="0.4"},
            {["R"]="0.055",  ["G"]="0.133",  ["B"]="0.478"},
            {["R"]="0.063",  ["G"]="0.192",  ["B"]="0.584"},
            {["R"]="0.09",   ["G"]="0.251",  ["B"]="0.675"},

        -- VIOLET
            {["R"]="0.192",  ["G"]="0.059",  ["B"]="0.31"},
            {["R"]="0.29",   ["G"]="0.086",  ["B"]="0.424"},
            {["R"]="0.529",  ["G"]="0.325",  ["B"]="0.702"},

            {["R"]="0.812",  ["G"]="0.553",  ["B"]="0.808"},
            {["R"]="0.788",  ["G"]="0.467",  ["B"]="0.718"},
            {["R"]="0.565",  ["G"]="0.275",  ["B"]="0.514"},

        -- ORANGE ADDENDUM
            {["R"]="0.757",  ["G"]="0.412",  ["B"]="0.067"},
            {["R"]="0.827",  ["G"]="0.49",   ["B"]="0.122"},
        }
    },
}


function GetColours(R,G,B)
    return
    [[
    <Property value="Colour.xml">
          <Property name="R" value="]].. R ..[[" />
          <Property name="G" value="]].. G ..[[" />
          <Property name="B" value="]].. B ..[[" />
          <Property name="A" value="1" />
        </Property>
    ]]
end


function CreateColoursProperty(PaletteColours)
    local PropertiesString = {}

    for j = 1, #PaletteColours do
        local R = PaletteColours[j]["R"]
        local G = PaletteColours[j]["G"]
        local B = PaletteColours[j]["B"]
        table.insert(PropertiesString,GetColours(R, G, B))
    end
    local PropertyColoursString =
    [[      <Property name="Colours">
    ]]..table.concat(PropertiesString)..[[
  </Property>]]

    -- print(PropertyColoursString)
    return PropertyColoursString
end


local BaseColourPalettesTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #DataTable do
    local Palette = DataTable[i]["PALETTE"]
    local PaletteColours = DataTable[i]["COLOURS"]
    local PaletteNumColours = DataTable[i]["NUMCOLOURS"]

    BaseColourPalettesTable[#BaseColourPalettesTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData.xml", "NumColours", PaletteNumColours},
        ["PRECEDING_KEY_WORDS"] = {"Colours"},
        ["REMOVE"] = "SECTION"
    }

    BaseColourPalettesTable[#BaseColourPalettesTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData.xml", "NumColours", PaletteNumColours},
        ["ADD"] = CreateColoursProperty(PaletteColours)
    }
end