-------------------------------------------------------------------
--- insert new rgb colors to the unused 'SpaceBottom' palette
--- and use it for the royal spaceships
-------------------------------------------------------------------

local palette_for_royals = {
	{0.264,	0.338,	1},
	{0.777,	0.463,	0.03},
	{0.697,	0.669,	0},
	{0.605,	0.857,	0.018},
	{0.827,	0.725,	0.086}, -- original yellow
	{0.011,	1,		0.782},
	{0.518,	0.557,	0.604}, -- original gray
	{0.025,	0.707,	1},
	{0.088,	0.726,	1},
	{0.031,	0.665,	0.963},
	{0.587,	0.102,	1},
	{0.467,	0.01,	0.284},
	{0.687,	0.019,	0.286},
	{0.22,	0.009,	0.009},
	{0.677,	0.319,	0.319},
	{1,		0.475,	0.359},
	{0.626,	0.707,	0.515},
	{0.236,	0.524,	0.563},
	{0.149,	0.274,	0.41},
	{0.38,	0.442,	1},
	{0.767,	0.265,	0.666},
	{0.043,	0.587,	0.283},
	{0.243,	0.365,	0.498}, -- original blue
	{0.467,	0.112,	0.377},
	{0.51,	0.217,	0.217},
	{0.177,	0.049,	0.049},
	{0.533,	0.357,	0.161}, -- original brown
	{0.053,	0.267,	0.177},
	{0.051,	0.099,	0.137},
	{0.22,	0.121,	0.213},
	{0.647,	0.122,	0.007},
	{0.044,	0.503,	0.543},
	{0.283,	0.05,	0.403},
	{0.389,	0.47,	0.02},
	{0.255,	0.599,	0.917},
	{0.387,	0.571,	1},
	{0.373,	0.557,	0.327},
	{0.45,	0.195,	0.2},
	{0.172,	0.311,	0.56},
	{0.71,	0.518,	0.177},
	{0.51,	0.286,	0.398},
	{0.653,	0.154,	0.154},
	{0.369,	0.223,	0.483},
	{0.453,	0.065,	0.259},
	{0.061,	0.387,	0.269},
	{0.527,	0.419,	0.419},
	{0.506,	0.212,	0.184}, -- original red
	{0.045,	0.036,	0.26},
	{0.456,	0.79,	0.73},
	{0.236,	0.566,	0.87},
	{0.68,	0.524,	0.813},
	{0.897,	0.518,	0.76},
	{1,		1,		1},
	{0.297,	0.297,	0.297},
	{0.549,	0.216,	0.216}, -- original dark red
	{0.54,	0.368,	0.279},
	{0.753,	0.616,	0.441},
	{0.243,	0.48,	0.342},
	{0.243,	0.436,	0.44},
	{0.233,	0.291,	0.403},
	{0.367,	0.28,	0.44},
	{0.56,	0.333,	0.424},
	{0.667,	0.667,	0.667},
	{-1,	-1,		-1},	-- real black
}

local palette_for_royals_dw420 = {
--greyscale
			{0.999,	0.999,	0.999}, --white
			{0.647,	0.647,	0.647}, --[165,165,165] Light Grey
			{0.333,	0.333,	0.333}, --[85,85,85] Dark Grey
			{-1,	-1,		 -1}, --true black
--255 50% Saturation
			{0.999,	0.999,	0.500,}, --[255,255,128]Yellow 50s
			{0.999,	0.921,	0.500}, --[255,235,128]	Gold Yellow
			{0.999,	0.823,	0.500,}, --[255,210,128]	Orange Peel
			{0.999,	0.705,	0.500,}, --[255,180,128]	Orange Red
			{0.999,	0.500,	0.500}, --[255,128,128]	Red
			{0.999,	0.500,	0.745}, --[255,128,190]	Fuchsia
			{0.999,	0.500,	0.999}, --[255,128,255]	Magenta
			{0.745,	0.500,	0.999}, --[190,128,255]	Electric Indigo
			{0.500,	0.705,	0.999,}, --[128,180,255]	Navy Blue
			{0.500,	0.882,	0.999,}, --[128,225,255]	Deep Sky Blue
			{0.500,	0.999,	0.999,}, --[128,255,255]	Aqua
			{0.500,	0.999,	0.882,}, --[128,255,225]	Bright Turquoise
			{0.500,	0.999,	0.705}, --[128,255,180]	Spring Green
			{0.500,	0.999,	0.500}, --[128,255,128]	Lime Green
			{0.823,	0.999,	0.500}, --[210,255,128]	Spring Bud
--255 75% Saturation
			{0.999,	0.999,	0.250,}, --[255,255,64]	Yellow 75s
			{0.999,	0.784,	0.250}, --[255,200,64]	Gold Yellow
			{0.999,	0.725,	0.250,}, --[255,185,64]	Orange Peel
			{0.999,	0.549,	0.250,}, --[255,140,64]	Orange Red
			{0.999,	0.250,	0.250}, --[255,64,64]	Red
			{0.999,	0.250,	0.627}, --[255,64,160]	Fuchsia
			{0.999,	0.250,	0.999}, --[255,64,255]	Magenta
			{0.627,	0.250,	0.999}, --[160,64,255]	Electric Indigo
			{0.250,	0.549,	0.999,}, --[64,140,255]	Navy Blue
			{0.250,	0.843,	0.999,}, --[64,215,255]	Deep Sky Blue
			{0.250,	0.999,	0.999,}, --[64,255,255]	Aqua
			{0.250,	0.999,	0.843,}, --[64,255,215]	Bright Turquoise
			{0.250,	0.999,	0.549}, --[64,255,140]	Spring Green
			{0.250,	0.999,	0.250}, --[64,255,64]	Lime Green
			{0.725,	0.999,	0.250}, --[185,255,64]	Spring Bud
--255 75% Saturation, 50% Brightness
			{0.500,	0.500,	0.125,}, --[128,128,32]	Yellow 75s50b
			{0.500,	0.392,	0.125}, --[128,100,32]	Gold Yellow
			{0.500,	0.352,	0.125,}, --[128,90,32]	Orange Peel
			{0.500,	0.273,	0.125,}, --[128,70,32]	Orange Red
			{0.500,	0.125,	0.125}, --[128,32,32]	Red
			{0.500,	0.125,	0.312}, --[128,32,80]	Fuchsia
			{0.500,	0.125,	0.500}, --[128,32,128]	Magenta
			{0.312,	0.125,	0.500}, --[80,32,128]	Electric Indigo
			{0.125,	0.273,	0.500,}, --[32,70,128]	Navy Blue
			{0.125,	0.431,	0.500,}, --[32,110,128]	Deep Sky Blue
			{0.125,	0.500,	0.500,}, --[32,128,128]	Aqua
			{0.125,	0.500,	0.431,}, --[32,128,110]	Bright Turquoise
			{0.125,	0.500,	0.273}, --[32,128,70]	Spring Green
			{0.125,	0.500,	0.125}, --[32,128,32]	Lime Green
			{0.352,	0.500,	0.125}, --[90,128,32]	Spring Bud
--255 75% Saturation, 12.5% Brightness
			{0.125,	0.125,	0.031,}, --[32,32,8]	Yellow 75s12.5b
			{0.125,	0.098,	0.031}, --[32,25,8]	Gold Yellow
			{0.125,	0.086,	0.031,}, --[32,22,8]	Orange Peel
			{0.125,	0.068,	0.031,}, --[32,18,8]	Orange Red
			{0.125,	0.031,	0.031}, --[32,8,8]		Red
			{0.125,	0.031,	0.078}, --[32,8,20]	Fuchsia
			{0.125,	0.031,	0.125}, --[32,8,32]	Magenta
			{0.078,	0.031,	0.125}, --[20,8,32]	Electric Indigo
			{0.031,	0.068,	0.125,}, --[8,18,32]	Navy Blue
			{0.031,	0.108,	0.125,}, --[8,22,32]	Deep Sky Blue
			{0.031,	0.125,	0.125,}, --[8,32,32]	Aqua
			{0.031,	0.125,	0.108,}, --[8,32,22]	Bright Turquoise
			{0.031,	0.125,	0.068}, --[8,32,18]	Spring Green
			{0.031,	0.125,	0.031}, --[8,32,8]		Lime Green
			{0.086,	0.125,	0.031}, --[22,32,8]	Spring Bud
}

-- function hex2rgb(hex)
	-- local function trunc(x, n)
		-- return tonumber(string.format('%.'..n..'f', x))
	-- end
	-- local n = {}
	-- for i=1, hex:len()-1, 2 do
		-- table.insert(n, trunc(tonumber(hex:sub(i, i+1), 16) / 255, 3))
	-- end
	-- return n
-- end

-- function rgb2hex(c)
	-- local h = ''
	-- for i=1, #c do h = h..string.format('%02X', math.floor(c[i] * 255 + 0.5)) end
	-- return h
-- end
-- for _,v in ipairs(palette_for_royals_dw420) do print(rgb2hex(v)) end

local function RebuildPaletteColors()
	local rgba = [[
		<Property value="Colour.xml">
			<Property name="R" value="%s"/>
			<Property name="G" value="%s"/>
			<Property name="B" value="%s"/>
			<Property name="A" value="%s"/>
		</Property>]]
	local T = {}
	for _,c in ipairs(palette_for_royals) do
		-- if type(c) == 'string' then c = hex2rgb(c) end
		table.insert(T, string.format(rgba, c[1], c[2], c[3], c[4] or 1))
	end
	return '<Property name="Colours">'..table.concat(T)..'</Property>'
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 07 palette painted royals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/BASECOLOURPALETTES.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'SpaceBottom',
				VALUE_CHANGE_TABLE 	= {
					{'NumColours',		'All'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'SpaceBottom', 'Colours'},
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = 'SpaceBottom',
				ADD 				= RebuildPaletteColors()
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.TEXTURE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OVERLAY'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
				VALUE_MATCH			= 'Rock',
				VALUE_CHANGE_TABLE 	= {
					{'Palette',		'SpaceBottom'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
				VALUE_CHANGE_TABLE 	= {
					{'ColourAlt',	'Primary'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= [[
					<Property value="TkProceduralTextureLayer.xml">
						<Property name="Name" value=""/>
						<Property name="Probability" value="1"/>
						<Property name="Group" value=""/>
						<Property name="SelectToMatchBase" value="False"/>
						<Property name="Textures"/>
					</Property>]]
			},
		}
	}
}}}}
