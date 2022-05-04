---------------------------------------------
local desc = [[
  Add more water color choices
]]-------------------------------------------

local WaterColours = {
	{0.191,	0.444,	0.577},
	{0.115,	0.541,	0.763},
	{0.012,	0.208,	0.365},
	{0.76,	0.84,	0.52},
	{0.853,	0.896,	0.918,	0.2},

	{0.55,	0.393,	0.223},
	{0.79,	0.566,	0.389},
	{0.27,	0.137,	0.056},
	{0.86,	0.56,	0.38},
	{0.78,	0.884,	0.613},

	{0.597,	0.317,	0.317},
	{0.723,	0.494,	0.494},
	{0.297,	0.109,	0.109},
	{0.76,	0.32,	0.32},
	{0.48,	0.835,	0.935},

	{0.17,	0.413,	0.374},
	{0.286,	0.583,	0.523},
	{0.037,	0.21,	0.203},
	{0.42,	0.9,	0.62},
	{0.725,	0.907,	0.841},

	{0.191,	0.444,	0.577},
	{0.115,	0.541,	0.763},
	{0.012,	0.208,	0.365},
	{0.46,	0.64,	0.44},
	{0.853,	0.896,	0.918,	0.3},

	{0.667,	0.612,	0.435},
	{0.718,	0.671,	0.494},
	{0.318,	0.275,	0.118},
	{0.529,	0.451,	0.212},
	{0.91,	0.886,	0.816},

	{0.71,	0.522,	0.522},
	{0.769,	0.576,	0.576},
	{0.467,	0.275,	0.275},
	{0.62,	0.32,	0.22},
	{1.0,	0.867,	0.867},

	{0.353,	0.58,	0.659},
	{0.42,	0.667,	0.749},
	{0.153,	0.298,	0.42},
	{0.118,	0.331,	0.429},
	{0.741,	0.929,	0.988},

	{0.521,	0.709,	0.709},
	{0.576,	0.768,	0.768},
	{0.224,	0.42,	0.306},
	{0.28,	0.32,	0.08},
	{0.866,	1.0,	0.88},

	{0.219,	0.352,	0.407},
	{0.266,	0.423,	0.486},
	{0.105,	0.164,	0.188},
	{0.23,	0.558,	0.286},
	{0.529,	0.686,	0.749},

	{0.239,	0.298,	0.239},
	{0.243,	0.337,	0.247},
	{0.125,	0.176,	0.325},
	{0.483,	0.318,	0.097},
	{0.859,	0.776,	0.678},

	{0.101,	0.351,	0.275},
	{0.133,	0.465,	0.366},
	{0.012,	0.208,	0.365},
	{0.123,	0.41,	0.236},
	{0.853,	0.896,	0.918,	0.4},

	{0.051,	0.275,	0.201},
	{0.067,	0.366,	0.266},
	{0.318,	0.275,	0.118},
	{0.429,	0.151,	0.292},
	{0.91,	0.886,	0.816},

	{0.351,	0.275,	0.201},
	{0.465,	0.366,	0.266},
	{0.037,	0.21,	0.203},
	{0.332,	0.54,	0.419},
	{0.725,	0.907,	0.841},
}

local function GcWaterColourSetting()
	local rgba = [[
		<Property name="%s" value="Colour.xml">
			<Property name="R" value="%s"/>
			<Property name="G" value="%s"/>
			<Property name="B" value="%s"/>
			<Property name="A" value="%s"/>
		</Property>]]
	local watercolor = '<Property value="GcPlanetWaterColourData.xml">%s</Property>'
	local Props = {
		'WaterFogColourNear',
		'WaterFogColourFar',
		'WaterColourBase',
		'WaterColourAdd',
		'FoamColour'
	}
	local T = {}
	local exml = {}
	for i=0, (#WaterColours - 1) do
		local c = WaterColours[i + 1]
		local b5 = i % 5 + 1
		table.insert(exml, string.format(rgba, Props[b5], c[1], c[2], c[3], c[4] or 1))
		if b5 == 5 then
			table.insert(T, string.format(watercolor, table.concat(exml)))
			exml = {}
		end
	end
	-- New_Mbin_Wrapper
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="GcWaterColourSettingList">
		<Property name="Settings">
		]]..table.concat(T)..[[
		</Property></Data>
	]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__META water colors.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= {
		{
			FILE_CONTENT		= GcWaterColourSetting(),
			FILE_DESTINATION	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.EXML'
		}
	}
}
