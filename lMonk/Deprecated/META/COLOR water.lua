----------------------------------------------------
local desc = [[
  Add more water color choices
  math.floor(X / 255 * 1000) / 1000 == X * 0.00392
]]--------------------------------------------------

local water_colors = {
---	earth blue
	'3C5777',
	'51749E',
	'141D28',
	'5C6BF2',
	'DAE4EA33',
---	burnt orange
	'8C6439',
	'C99063',
	'45230E',
	'C27547',
	'C7E19C',
---	young red ?
	'985151',
	'B87E7E',
	'4C1C1C',
	'A83838',
	'7AD5EE',
---	green jade
	'2B695F',
	'499585',
	'093634',
	'6BE69E',
	'B9E7D6',
---	royal blue
	'1A3E58',
	'1D5C79',
	'03295D',
	'2E526B',
	'C0CBEA4D',
---	orange-yellow
	'AA9C6F',
	'B7AB7E',
	'302503',
	'6D5A1D',
	'E8E2D0',
---	orange-yellow (-)
	'9E885F',
	'AB936D',
	'232006',
	'69632E',
	'D6DDB7',
---	pale blue-green
	'5A94A8',
	'6BAABF',
	'0E304A',
	'1E546D',
	'BDEDFC',
---	turquose green
	'1F8475',
	'257584',
	'183323',
	'294729',
	'C3FFC7',
---	mid blue
	'385A68',
	'446C7C',
	'1B2A30',
	'3B8E49',
	'87AFBF',
---	swamp green
	'3D4C3D',
	'3E563F',
	'202D53',
	'7B5119',
	'DBC6AD',
---	swamp mid green
	'336660',
	'3B776A',
	'03355D',
	'1F613C',
	'DAE4EA66',
---	brown-red
	'5A4633',
	'775D44',
	'093634',
	'3B8A6B',
	'B9E7D6',
}

local function GcWaterColourSetting(colors_list)
	local function hex2rgb(hex)
		local n = {}
		for i=1, (hex:len()/2) do
			table.insert(n, tonumber(hex:sub(i*2-1, i*2), 16) * 0.00392)
		end
		return n
	end
	local function asc2prc(as)
		for i=1, #as do as[i] = as[i] * 0.00392 end
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
		<Property name="%s" value="Colour.xml">
			<Property name="R" value="%s"/>
			<Property name="G" value="%s"/>
			<Property name="B" value="%s"/>
			<Property name="A" value="%s"/>
		</Property>]]
	local planet_water = '<Property value="GcPlanetWaterColourData.xml">%s</Property>'
	local props = {
		'WaterFogColourNear',
		'WaterFogColourFar',
		'WaterColourBase',
		'WaterColourAdd',
		'FoamColour'
	}
	local T = {}
	local exml = {}
	for i=0, (#colors_list - 1) do
		local b5 = i % 5 + 1
		local c = Convert2Rgba(colors_list[i + 1])
		table.insert(exml, string.format(rgba, props[b5], c[1], c[2], c[3], c[4] or 1))
		if b5 == 5 then
			table.insert(T, string.format(planet_water, table.concat(exml)))
			exml = {}
		end
	end
	-- new_mbin_wrapper
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="GcWaterColourSettingList">
		<Property name="Settings">
		]]..table.concat(T)..[[
		</Property></Data>
	]]
end

-- assert(io.open('e:/_dump/WATERCOLOURS.EXML', 'w')):write(GcWaterColourSetting(water_colors))
-- print('saved to _dump')

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__META water colors.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	ADD_FILES			= {
		{
			FILE_CONTENT		= GcWaterColourSetting(water_colors),
			FILE_DESTINATION	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.EXML'
		}
	}
}
