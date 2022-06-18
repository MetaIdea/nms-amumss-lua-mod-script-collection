----------------------------------------
----------------------------------------use 0-250 if you aren't bothered with extreme accuracy,
----------------------------------------it's easier to calculate on the fly and max deviation is trivial --dw420 
--RGB value : 0-255 scale	 : 0-250 scale  
--255 		: 1	  		 	 : n/a
--250 		: 0.980		 	 : 1		
--245 		: 0.957 	 	 : 0.980
--240 		: 0.94117 	 	 : 0.960
--235 		: 0.917 	 	 : 0.940
--224 		: 0.875 	 	 : 0.896
--200 		: 0.78431  		 : 0.800
--192 		: 0.75 	 		 : 0.768
--184 		: 0.71875 	 	 : 0.736
--175 		: 0.6836 	 	 : 0.7
--170 		: 0.6640 	 	 : 0.68
--160 		: 0.625 	 	 : 0.64
--150 		: 0.58593 	 	 : 0.6
--140 		: 0.54687 	 	 : 0.56
--------------------------------------
--128 		: 0.5 	 		 : 0.512
--122 		: 0.4765 	 	 : 0.488
--104 		: 0.40625 	 	 : 0.416
--100 		: 0.39215 		 : 0.40
--96 		: 0.375 	 	 : 0.384
--88 		: 0.34375 	 	 : 0.352
--80 		: 0.3125 	 	 : 0.32
--75 		: 0.2929 	 	 : 0.3
--70 		: 0.27343 	 	 : 0.28
--64 		: 0.25 	 	 	 : 0.256
--48 		: 0.1875 	 	 : 0.192
--44 		: 0.17187 	 	 : 0.176
--40 		: 0.15625 	 	 : 0.160
--32 		: 0.125 	 	 : 0.128
--24 		: 0.09375 	 	 : 0.096
--20 		: 0.07812 	 	 : 0.08
--16 		: 0.0625 	 	 : 0.064
--12 		: 0.04687		 : 0.048
----------------------------------------1 to 10 should be all you need to convert any number that isn't on this list with simple maths.
--10 		: 0.04687		 : 0.04 
--9 		: 0.03515		 : 0.036
--8 		: 0.03125		 : 0.032
--7 		: 0.02734		 : 0.028
--6 		: 0.02343	 	 : 0.024
--5 		: 0.01953	 	 : 0.02
--4 		: 0.01562	 	 : 0.016
--3 		: 0.01171 		 : 0.012
--2 		: 0.00781 		 : 0.008
--1 		: 0.00390 		 : 0.004
----------------------------------------for scale reference
--2.55 		: 0.01		 	 : 0.0102  
--2.5 		: 0.0097 		 : 0.01
----------------------------------------
----------------------------------------
----------------------------------------
DataTable =
{
    {
        ["PALETTE"] = "Paint",
        ["NUMCOLOURS"] = "All",
        ["COLOURS"] =
        {
		--Greyscale start
            { ["R"]="0.99", 	["G"]="0.99", 	["B"]="0.99", 	["A"]="1" },
            { ["R"]="0.75", 	["G"]="0.75", 	["B"]="0.75", 	["A"]="1" },
            { ["R"]="0.5", 		["G"]="0.5", 	["B"]="0.5", 	["A"]="1" },
            { ["R"]="0.375", 	["G"]="0.375", 	["B"]="0.375",	["A"]="1" },
            { ["R"]="0.25", 	["G"]="0.25", 	["B"]="0.25", 	["A"]="1" },
            { ["R"]="0.125", 	["G"]="0.125", 	["B"]="0.125", 	["A"]="1" },
            { ["R"]="0.048",	["G"]="0.048",	["B"]="0.048",	["A"]="1" },
            { ["R"]="-1", 		["G"]="-1", 	["B"]="-1", 	["A"]="1" }, --true black
		--Limes start
            { ["R"]="0.5",		["G"]="0.625", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0.25", 	["G"]="0.343",  ["B"]="0", 		["A"]="1" },
            { ["R"]="0.125", 	["G"]="0.171", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0.009", 	["G"]="0.012",  ["B"]="0", 		["A"]="1" },--not as dark as one might expect
		--Yellows start
            { ["R"]="0.625",	["G"]="0.625", 	["B"]="0",	 	["A"]="1" },
            { ["R"]="0.25", 	["G"]="0.25", 	["B"]="0",	 	["A"]="1" },
            { ["R"]="0.125", 	["G"]="0.125", 	["B"]="0",	 	["A"]="1" },
            { ["R"]="0.012", 	["G"]="0.012",  ["B"]="0",		["A"]="1" },--not as dark as one might expect
		--Orange/Yellows start
            { ["R"]="0.625",	["G"]="0.5", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0.343", 	["G"]="0.25",   ["B"]="0", 		["A"]="1" },
            { ["R"]="0.171",	["G"]="0.125", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0.012", 	["G"]="0.009",  ["B"]="0", 		["A"]="1" },--not as dark as one might expect
		--Oranges start
            { ["R"]="0.625",	["G"]="0.343", 	["B"]="0",	 	["A"]="1" },
            { ["R"]="0.25", 	["G"]="0.125",  ["B"]="0",	 	["A"]="1" },
            { ["R"]="0.125", 	["G"]="0.0625", ["B"]="0",	 	["A"]="1" },
            { ["R"]="0.012", 	["G"]="0.006",  ["B"]="0",		["A"]="1" },--not as dark as one might expect
		--Reds start
            { ["R"]="0.625",	["G"]="0", 		["B"]="0", 		["A"]="1" },
            { ["R"]="0.25", 	["G"]="0", 		["B"]="0", 		["A"]="1" },
            { ["R"]="0.125", 	["G"]="0", 		["B"]="0", 		["A"]="1" },
            { ["R"]="0.012", 	["G"]="0", 		["B"]="0", 		["A"]="1" },--not as dark as one might expect
		--Magendas start
            { ["R"]="0.625",	["G"]="0", 		["B"]="0.25", 	["A"]="1" },
            { ["R"]="0.25", 	["G"]="0", 		["B"]="0.125", 	["A"]="1" },
            { ["R"]="0.125", 	["G"]="0", 		["B"]="0.0625",	["A"]="1" },
            { ["R"]="0.012", 	["G"]="0", 		["B"]="0.004",  ["A"]="1" },--not as dark as one might expect
		--Purples start
            { ["R"]="0.625",	["G"]="0",	 	["B"]="0.625", 	["A"]="1" },
            { ["R"]="0.25", 	["G"]="0",		["B"]="0.25", 	["A"]="1" },
            { ["R"]="0.125", 	["G"]="0",		["B"]="0.125", 	["A"]="1" },
            { ["R"]="0.012", 	["G"]="0", 		["B"]="0.012",  ["A"]="1" },--not as dark as one might expect
		--Violets start
            { ["R"]="0.25",		["G"]="0", 		["B"]="0.625", 	["A"]="1" },
            { ["R"]="0.125", 	["G"]="0", 		["B"]="0.25", 	["A"]="1" },
            { ["R"]="0.0625", 	["G"]="0", 		["B"]="0.125", 	["A"]="1" },
            { ["R"]="0.004", 	["G"]="0", 		["B"]="0.012",  ["A"]="1" },--not as dark as one might expect
		--LightBlues start
            { ["R"]="0",		["G"]="0.343", 	["B"]="0.625",	["A"]="1" },
            { ["R"]="0", 		["G"]="0.125",  ["B"]="0.25",	["A"]="1" },
            { ["R"]="0", 		["G"]="0.0625", ["B"]="0.125",	["A"]="1" },
            { ["R"]="0", 		["G"]="0.006",  ["B"]="0.012",	["A"]="1" },--not as dark as one might expect
		--Blues start
            { ["R"]="0",		["G"]="0.5", 	["B"]="0.625",	["A"]="1" },
            { ["R"]="0", 		["G"]="0.25",   ["B"]="0.343",  ["A"]="1" },
            { ["R"]="0",		["G"]="0.125", 	["B"]="0.171", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.009",  ["B"]="0.012", 	["A"]="1" },--not as dark as one might expect
		--SkyBlues start
            { ["R"]="0",		["G"]="0.625", 	["B"]="0.625", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.25",	["B"]="0.25", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.125",	["B"]="0.125", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.012", 	["B"]="0.012",  ["A"]="1" },--not as dark as one might expect
		--Teals start
            { ["R"]="0",		["G"]="0.625", 	["B"]="0.5",	["A"]="1" },
            { ["R"]="0", 		["G"]="0.343",  ["B"]="0.25",   ["A"]="1" },
            { ["R"]="0",		["G"]="0.171", 	["B"]="0.125", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.012",  ["B"]="0.009", 	["A"]="1" },--not as dark as one might expect
		--Jades start
            { ["R"]="0",		["G"]="0.625", 	["B"]="0.25", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.25", 	["B"]="0.125", 	["A"]="1" },
            { ["R"]="0", 		["G"]="0.125", 	["B"]="0.0625",	["A"]="1" },
            { ["R"]="0", 		["G"]="0.012", 	["B"]="0.004",  ["A"]="1" },--not as dark as one might expect
		--Greens start
            { ["R"]="0",		["G"]="0.625", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0", 		["G"]="0.25", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0", 		["G"]="0.125", 	["B"]="0", 		["A"]="1" },
            { ["R"]="0", 		["G"]="0.012", 	["B"]="0", 		["A"]="1" },--not as dark as one might expect
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "_DW420_ShipColorSwap.pak",
    ["MOD_AUTHOR"]              = "DW420",
    ["LUA_AUTHOR"]         		= "Jackty89, WinderTP, and Babscoole",
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


function GetColours(R,G,B,A)
    return
    [[
    <Property value="Colour.xml">
          <Property name="R" value="]].. R ..[[" />
          <Property name="G" value="]].. G ..[[" />
          <Property name="B" value="]].. B ..[[" />
          <Property name="A" value="]].. A ..[[" />
        </Property>
    ]]
end

function CreateColoursProperty(PaletteColours)
    local PropertiesString = ""

    for j = 1, #PaletteColours do
        local R = PaletteColours[j]["R"]
        local G = PaletteColours[j]["G"]
        local B = PaletteColours[j]["B"]
        local A = PaletteColours[j]["A"]
        PropertiesString = PropertiesString..GetColours(R, G, B, A)
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
