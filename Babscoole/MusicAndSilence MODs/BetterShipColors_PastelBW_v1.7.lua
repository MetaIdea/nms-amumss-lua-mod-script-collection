NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "BetterShipColors_Pastel_v1.7.pak",
    ["MOD_AUTHOR"]              = "courtykat",
    ["LUA_AUTHOR"]         		= "Jackty89, WinderTP, Babscoole, and courtykat",
    ["MOD_MAINTENANCE"]         = "",	
    ["NMS_VERSION"]             = "",
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\SIMULATION\\SOLARSYSTEM\\COLOURS\\BASECOLOURPALETTES.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
						{
							["SPECIAL_KEY_WORDS"] = { "Paint", "GcPaletteData.xml"  },
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
            { ["R"]="1.000",	["G"]="1.000",	["B"]="1.000" },
            { ["R"]="0.999", 	["G"]="0.999", 	["B"]="0.999" },
            { ["R"]="0.998", 	["G"]="0.998", 	["B"]="0.998" },
            { ["R"]="0.997", 	["G"]="0.997", 	["B"]="0.997" },
            { ["R"]="-1.000",	["G"]="-1.000",	["B"]="-1.000" },
            { ["R"]="-0.999",	["G"]="-0.999",	["B"]="-0.999" },
            { ["R"]="-0.998",	["G"]="-0.998",	["B"]="-0.998" },
            { ["R"]="-0.997",	["G"]="-0.997",	["B"]="-0.997" },
			
            { ["R"]="0.996", 	["G"]="0.996", 	["B"]="0.996" },
            { ["R"]="0.995", 	["G"]="0.995", 	["B"]="0.995" },
            { ["R"]="0.994", 	["G"]="0.994", 	["B"]="0.994" },
            { ["R"]="0.993", 	["G"]="0.993", 	["B"]="0.993" },
            { ["R"]="-0.996", 	["G"]="-0.996",	["B"]="-0.996" },
            { ["R"]="-0.995", 	["G"]="-0.995",	["B"]="-0.995" },
            { ["R"]="-0.994", 	["G"]="-0.994",	["B"]="-0.994" },
            { ["R"]="-0.993", 	["G"]="-0.993",	["B"]="-0.993" },
			
		-- RED
            { ["R"]="0.365", 	["G"]="0.110", 	["B"]="0.133" },
            { ["R"]="0.471", 	["G"]="0.145", 	["B"]="0.173" },
            { ["R"]="0.569", 	["G"]="0.180", 	["B"]="0.212" },
            { ["R"]="0.663", 	["G"]="0.196", 	["B"]="0.220" },
			
            { ["R"]="0.384", 	["G"]="0.114", 	["B"]="0.122" },
            { ["R"]="0.435", 	["G"]="0.129", 	["B"]="0.133" },
            { ["R"]="0.557", 	["G"]="0.173", 	["B"]="0.161" },
            { ["R"]="0.671", 	["G"]="0.224", 	["B"]="0.188" },
			
		-- ORANGE
            { ["R"]="0.741", 	["G"]="0.341", 	["B"]="0.173" },
            { ["R"]="0.827", 	["G"]="0.463", 	["B"]="0.220" },
            { ["R"]="0.878", 	["G"]="0.569", 	["B"]="0.259" },
			
		-- YELLOW
            { ["R"]="0.855", 	["G"]="0.682", 	["B"]="0.012" },
            { ["R"]="0.925", 	["G"]="0.831", 	["B"]="0.035" },
            { ["R"]="1.000", 	["G"]="0.953", 	["B"]="0.098" },
            { ["R"]="1.000", 	["G"]="0.980", 	["B"]="0.259" },
            { ["R"]="0.969", 	["G"]="1.000", 	["B"]="0.400" },
			
		-- GREEN
            { ["R"]="0.675", 	["G"]="0.863", 	["B"]="0.427" },
            { ["R"]="0.537", 	["G"]="0.769", 	["B"]="0.365" },
            { ["R"]="0.388", 	["G"]="0.678", 	["B"]="0.294" },
			
            { ["R"]="0.118", 	["G"]="0.294", 	["B"]="0.208" },
            { ["R"]="0.141", 	["G"]="0.353", 	["B"]="0.247" },
            { ["R"]="0.165", 	["G"]="0.247", 	["B"]="0.294" },
            { ["R"]="0.204", 	["G"]="0.529", 	["B"]="0.349" },
            { ["R"]="0.231", 	["G"]="0.608", 	["B"]="0.404" },
			
		-- TEAL
            { ["R"]="0.137", 	["G"]="0.424", 	["B"]="0.427" },
            { ["R"]="0.216", 	["G"]="0.553", 	["B"]="0.553" },
            { ["R"]="0.325", 	["G"]="0.718", 	["B"]="0.718" },
			
            { ["R"]="0.161", 	["G"]="0.341", 	["B"]="0.427" },
            { ["R"]="0.192", 	["G"]="0.424", 	["B"]="0.541" },
            { ["R"]="0.267", 	["G"]="0.580", 	["B"]="0.718" },
            { ["R"]="0.463", 	["G"]="0.729", 	["B"]="0.847" },
            { ["R"]="0.604", 	["G"]="0.804", 	["B"]="0.867" },
			
		-- BLUE
            { ["R"]="0.129", 	["G"]="0.278", 	["B"]="0.541" },
            { ["R"]="0.153", 	["G"]="0.365", 	["B"]="0.631" },
            { ["R"]="0.180", 	["G"]="0.439", 	["B"]="0.725" },
            { ["R"]="0.243", 	["G"]="0.561", 	["B"]="0.831" },
			
            { ["R"]="0.110", 	["G"]="0.180", 	["B"]="0.490" },
            { ["R"]="0.145", 	["G"]="0.227", 	["B"]="0.561" },
            { ["R"]="0.184", 	["G"]="0.290", 	["B"]="0.667" },
            { ["R"]="0.212", 	["G"]="0.369", 	["B"]="0.757" },
			
		-- VIOLET
            { ["R"]="0.302", 	["G"]="0.212", 	["B"]="0.482" },
            { ["R"]="0.400", 	["G"]="0.259", 	["B"]="0.584" },
            { ["R"]="0.545", 	["G"]="0.443", 	["B"]="0.749" },
			
            { ["R"]="0.827", 	["G"]="0.608", 	["B"]="0.859" },
            { ["R"]="0.780", 	["G"]="0.533", 	["B"]="0.761" },
            { ["R"]="0.639", 	["G"]="0.365", 	["B"]="0.569" },
			
		-- ORANGE ADDENDUM
            { ["R"]="0.820", 	["G"]="0.490", 	["B"]="0.133" },
            { ["R"]="0.867", 	["G"]="0.596", 	["B"]="0.165" },
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
    local PropertiesString = ""

    for j = 1, #PaletteColours do
        local R = PaletteColours[j]["R"]
        local G = PaletteColours[j]["G"]
        local B = PaletteColours[j]["B"]
        PropertiesString = PropertiesString..GetColours(R, G, B)
    end
    local PropertyColoursString = 
    [[      <Property name="Colours">
    ]]..PropertiesString..[[
  </Property>]]
    
    -- print(PropertyColoursString)
    return PropertyColoursString
end


local BaseColourPalettesTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #DataTable do
    local Palette = DataTable[i]["PALETTE"]
    local PaletteColours = DataTable[i]["COLOURS"]
    local PaletteNumColours = DataTable[i]["NUMCOLOURS"]
           
    BaseColourPalettesTable[#BaseColourPalettesTable +1 ] =
    {
        ["SPECIAL_KEY_WORDS"] = { Palette, "GcPaletteData.xml", "NumColours", PaletteNumColours },
        ["PRECEDING_KEY_WORDS"] = { "Colours" },
        ["REMOVE"] = "SECTION"
    }

    BaseColourPalettesTable[#BaseColourPalettesTable +1 ] = 
    {
        ["SPECIAL_KEY_WORDS"] = { Palette, "GcPaletteData.xml", "NumColours", PaletteNumColours },
        ["ADD"] = CreateColoursProperty(PaletteColours)
    }
end