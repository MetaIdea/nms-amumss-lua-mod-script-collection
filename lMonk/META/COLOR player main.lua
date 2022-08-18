------------------------------------------------------------
local desc = [[
  true for ships & black in customizing palettes
  procedural royal ship palette
]]----------------------------------------------------------

local base_colors = {
	paint = {
		enabled		= true,
		name		= 'Paint',
		num_colors	= 'All',
		{0.84,	0.84,	0.84},
		{0.999,	0.999,	0.999},
		{0.334,	0.334,	0.334},
		{0.78,	0.78,	0.78},	-- 4
		{1,		1,		1},
		{-0.998,-0.998,-0.998},
		{0.92,	0.92,	0.92},
		{-1,	-1,		-1},	-- 8
		{-0.999,-0.999,-0.999},
		{0.7,	0.7,	0.7},
		{0.5,	0.5,	0.5},
		{0.3,	0.3,	0.3},
		{0.15,	0.15,	0.15},
		{0,		0,		0},
		{-0.1,	-0.1,	-0.1},
		{-0.99,	-0.99,	-0.99},
		{0.286,	0.035,	0.063},
		{0.353,	0.043,	0.071},
		{0.498,	0.082,	0.129},
		{0.6,	0.098,	0.141},
		{0.3,	0,		0.03},
		{0.388,	0,		0.043},
		{0.498,	0.043,	0.067},
		{0.6,	0.098,	0.098},
		{0.678,	0.259,	0.106},
		{0.757,	0.333,	0.122},
		{0.847,	0.451,	0.167},
		{0.757,	0.412,	0.067},
		{0.827,	0.49,	0.122},
		{0.855,	0.682,	0.012},
		{0.925,	0.831,	0.035},
		{1,		0.953,	0.098},
		{1,		0.98,	0.259},
		{0.969,	1,		0.4},
		{0.647,	0.867,	0.223},
		{0.486,	0.78,	0.192},
		{0.306,	0.584,	0.165},
		{0.063,	0.298,	0.161},
		{0.075,	0.357,	0.192},
		{0.094,	0.443,	0.239},
		{0.118,	0.553,	0.278},
		{0.133,	0.635,	0.318},
		{0.09,	0.404,	0.38},
		{0.122,	0.541,	0.506},
		{0.302,	0.729,	0.694},
		{0.082,	0.314,	0.431},
		{0.106,	0.408,	0.561},
		{0.149,	0.569,	0.776},
		{0.367,	0.722,	0.898},
		{0.537,	0.796,	0.898},
		{0.031,	0.224,	0.502},
		{0.09,	0.275,	0.627},
		{0.106,	0.369,	0.714},
		{0.173,	0.51,	0.827},
		{0.02,	0.09,	0.4},
		{0.055,	0.133,	0.478},
		{0.063,	0.192,	0.584},
		{0.09,	0.251,	0.675},
		{0.192,	0.059,	0.31,},
		{0.29,	0.086,	0.424},
		{0.502,	0.302,	0.71},
		{0.812,	0.553,	0.808},
		{0.788,	0.467,	0.718},
		{0.565,	0.275,	0.514},
	},
	royals = {
		enabled		= true,
		name		= 'SpaceBottom',
		num_colors	= 'All',
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
}

local function RebuildPaletteColors(gc_data)
	local function trunc(x, n)
		return tonumber(string.format('%.'..n..'f', x))
	end
	local function hex2rgb(hex)
		local n = {}
		for i=1, hex:len()-1, 2 do
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
	for _,c in ipairs(gc_data) do
		c = Convert2Rgba(c)
		table.insert(T, string.format(rgba, c[1], c[2], c[3], c[4] or 1))
	end
	return '<Property name="Colours">'..table.concat(T)..'</Property>'
end

local function AddToChangeTable()
	local T = {}
	for _,gc_data in pairs(base_colors) do
		if gc_data.enabled then
			table.insert(T, {
				PRECEDING_KEY_WORDS = gc_data.name,
				VALUE_CHANGE_TABLE 	= {
					{'NumColours',	gc_data.num_colors}
				}
			})
			table.insert(T, {
				PRECEDING_KEY_WORDS = {gc_data.name, 'Colours'},
				REMOVE				= 'Section'
			})
			table.insert(T, {
				PRECEDING_KEY_WORDS = gc_data.name,
				ADD 				= RebuildPaletteColors(gc_data)
			})
		end
	end
	return T
end

local function EditSingle(name, i, rgba)
	rgba = rgba or {0, 0, 0, 1}
	return {
		SPECIAL_KEY_WORDS	= {name, 'GcPaletteData.xml'},
		PRECEDING_KEY_WORDS = 'Colour.xml',
		SECTION_ACTIVE		= i,
		VALUE_CHANGE_TABLE 	= {
			{'R',	rgba[1]},
			{'G',	rgba[2]},
			{'B',	rgba[3]},
			{'A',	rgba[4] or 1}
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META player main palettes.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/BASECOLOURPALETTES.MBIN',
		EXML_CHANGE_TABLE	= AddToChangeTable()
	},
	-- {
		-- MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/BASECOLOURPALETTES.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- [1] = EditSingle('Paint', 8, {-1, -1, -1}),
			-- {
				-- PRECEDING_KEY_WORDS = 'SpaceBottom',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'NumColours',		'All'}
				-- }
			-- },
			-- {
				-- PRECEDING_KEY_WORDS = {'SpaceBottom', 'Colours'},
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- PRECEDING_KEY_WORDS = 'SpaceBottom',
				-- ADD 				= RebuildPaletteColors()
			-- }
		-- }
	-- },
	{
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CUSTOMISATIONCOLOURPALETTES.MBIN',
		EXML_CHANGE_TABLE	= {
			[1] = EditSingle('Player',				20, {-1, -1, -1}),
			[2] = EditSingle('Freighter',			20, {-1, -1, -1}),
			[3] = EditSingle('Vehicle',				20, {-1, -1, -1}),
			[4] = EditSingle('Vehicle_Bike',		20, {-1, -1, -1}),
			[5] = EditSingle('Vehicle_Truck',		20, {-1, -1, -1}),
			[6] = EditSingle('Vehicle_WheeledBike',	20, {-1, -1, -1}),
			[7] = EditSingle('Vehicle_Submarine',	20, {-1, -1, -1}),
			[8] = EditSingle('Vehicle_Mech',		20, {-1, -1, -1}),
		}
	}
}}}}
