-----------------------------------------------------------------------------
local mod_desc = [[
  Change the royal ships to a wider variety of colors by changing it to use
  a full palette of 64 colors in the 'SpaceBottom' palette.
  The unused 'SpaceBottom' is partially changed from the original.

  * the colors can be represented in 3 formats:
    percentage	[0 - 1.0]:	{0.87, 0.16, 0.44}
    standard	[0 - 255]:	{221,  32,   112}
	hex code 	'string' :	'DD2070'
]]---------------------------------------------------------------------------

local palette_for_royals = {
	{67,	86,		255},	-- standard 0-255 numbers
	'C67608',				-- hex code string
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

local function RebuildPaletteColors()
	local function trunc(x, n)
		return tonumber(string.format('%.'..n..'f', x))
	end
	local function hex2rgb(hex)
		local n = {}
		for i=1, #hex-1, 2 do
			table.insert(n, trunc(tonumber(hex:sub(i, i+1), 16) / 255, 3))
		end
		return n
	end
	local function asc2prc(as)
		for i=1, #as do
			as[i] = trunc(as[i] / 255, 3)
		end
		return as
	end
	local function Convert2Rgba(c)
		if type(c) == 'string' then
			return hex2rgb(c)
		elseif c[1] > 1 or c[2] > 1 or c[3] > 1 then
			return asc2prc(c)
		end
		return c
	end
	local rgba = [[
		<Property value="Colour.xml">
			<Property name="R" value="%s"/>
			<Property name="G" value="%s"/>
			<Property name="B" value="%s"/>
			<Property name="A" value="%s"/>
		</Property>]]
	local T = {}
	for _,c in ipairs(palette_for_royals) do
		c = Convert2Rgba(c)
		table.insert(T, string.format(rgba, c[1], c[2], c[3], c[4] or 1))
	end
	return '<Property name="Colours">'..table.concat(T)..'</Property>'
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.royal palette.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
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
			--	add to the silly fixed length array
				SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= '<Property value="TkProceduralTextureLayer.xml"/>'
			},
		}
	}
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/Royal/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/*.DDS',
		}
	}
}