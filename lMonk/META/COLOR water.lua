----------------------------------------------------
dofile('LIB/lua_2_exml.lua')
----------------------------------------------------
local mod_desc = [[
  Add more water color choices
  * hex color is in ARGB format
]]--------------------------------------------------

local water_colors = {
	{--	earth blue
		'FF3C5777',
		'FF51749E',
		'FF141D28',
		'FF5C6BF2',
		'33DAE4EA'
	},
	{--	burnt orange
		'FF8C6439',
		'FFC99063',
		'FF45230E',
		'FFC27547',
		'FFC7E19C'
	},
	{--	young red ?
		'FF985151',
		'FFB87E7E',
		'FF4C1C1C',
		'FFA83838',
		'FF7AD5EE'
	},
	{--	green jade
		'FF2B695F',
		'FF499585',
		'FF093634',
		'FF6BE69E',
		'FFB9E7D6'
	},
	{--	royal blue
		'FF1A3E58',
		'FF1D5C79',
		'FF03295D',
		'FF2E526B',
		'4DC0CBEA'
	},
	{--	orange-yellow
		'FFAA9C6F',
		'FFB7AB7E',
		'FF302503',
		'FF6D5A1D',
		'FFE8E2D0'
	},
	{--	orange-yellow (-)
		'FF9E885F',
		'FFAB936D',
		'FF232006',
		'FF69632E',
		'FFD6DDB7'
	},
	{--	pale blue-green
		'FF5A94A8',
		'FF6BAABF',
		'FF0E304A',
		'FF1E546D',
		'FFBDEDFC'
	},
	{--	turquose green
		'FF1F8475',
		'FF257584',
		'FF183323',
		'FF294729',
		'FFC3FFC7'
	},
	{--	mid blue
		'FF385A68',
		'FF446C7C',
		'FF1B2A30',
		'FF3B8E49',
		'FF87AFBF'
	},
	{--	swamp green
		'FF3D4C3D',
		'FF3E563F',
		'FF202D53',
		'FF7B5119',
		'FFDBC6AD'
	},
	{--	swamp mid green
		'FF336660',
		'FF3B776A',
		'FF03355D',
		'FF1F613C',
		'66DAE4EA'
	},
	{--	brown-red
		'FF5A4633',
		'FF775D44',
		'FF093634',
		'FF3B8A6B',
		'FFB9E7D6'
	}
}

local function Convert2Rgb(color)
	local function asc2prc(asc)
		for i=1, #asc do
			asc[i] = math.floor(asc[i] / 255 * 1000) / 1000
		end
		return asc
	end
	if type(color) == 'table' and (color[1] > 1 or color[2] > 1 or color[3] > 1) then
		return asc2prc(color)
	end
	return color
end
local props = {
	'WaterFogColourNear',
	'WaterFogColourFar',
	'WaterColourBase',
	'WaterColourAdd',
	'FoamColour'
}
-- Assign the exml table with its designated meta
local ECT = { META = {'name', 'Settings'} }
for _,pwc in ipairs(water_colors) do
	local argb = { META = {'value', 'GcPlanetWaterColourData.xml'} }
	for i, col in ipairs(pwc) do
		argb[#argb+1] = ColorData(Convert2Rgb(col), props[i])
	end
	ECT[#ECT+1] = argb
end

-- dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/lua_2_exml.lua')
-- io.open('e:/_dump/WATERCOLOURS.EXML', 'w'):write(FileWrapping(ECT, 'GcWaterColourSettingList'))
-- print('saved to _dump')

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__META water colors.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES 			= {
		{
			FILE_CONTENT		= FileWrapping(ECT, 'GcWaterColourSettingList'),
			FILE_DESTINATION	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.EXML'
		}
	}
}
