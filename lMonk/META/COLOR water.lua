----------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
----------------------------------------------------
local mod_desc = [[
  Add more water color options
  * hex color is in ARGB format
]]--------------------------------------------------

local water_colors = {
	{--	earth blue
		water	= {'FF3C5777',	'FF51749E',	'FF141D28',	'FF5C6BF2',	'33DAE4EA'},
		weight	= 0.05
	},
	{--	burnt orange
		water	= {'FF8C6439',	'FFC99063',	'FF45230E',	'FFC27547',	'FFC7E19C'},
		weight	= 0.01
	},
	{--	young red ?
		water	= {'FF985151',	'FFB87E7E',	'FF4C1C1C',	'FFA83838',	'FF7AD5EE'},
		weight	= 0.01
	},
	{--	royal blue
		water	= {'FF1A3E58',	'FF1D5C79',	'FF03295D',	'FF2E526B',	'4DC0CBEA'},
		weight	= 0.01
	},
	{--	orange-yellow
		water	= {'FFAA9C6F',	'FFB7AB7E',	'FF302503',	'FF6D5A1D',	'FFE8E2D0'},
		weight	= 0.01
	},
	{--	pale blue-green
		water	= {'FF5A94A8',	'FF6BAABF',	'FF0E304A',	'FF1E546D',	'FFBDEDFC'},
		weight	= 0.02
	},
	{--	turquose green
		water	= {'FF1F8475',	'FF257584',	'FF183323',	'FF294729',	'FFC3FFC7'},
		weight	= 0.01
	},
	{--	mid blue
		water	= {'FF385A68',	'FF446C7C',	'FF1B2A30',	'FF3B8E49',	'FF87AFBF'},
		weight	= 0.01
	},
	{--	swamp green
		water	= {'FF3D4C3D',	'FF3E563F',	'FF202D53',	'FF7B5119',	'FFDBC6AD'},
		weight	= 0.01
	},
	{--	swamp mid green
		water	= {'FF336660',	'FF3B776A',	'FF03355D',	'FF1F613C',	'66DAE4EA'},
		weight	= 0.01
	},
	{--	brown-red
		water	= {'FF5A4633',	'FF775D44',	'FF093634',	'FF3B8A6B',	'FFB9E7D6'},
		weight	= 0.01
	}
}

local water_props = {
	'WaterFogColourNear',
	'WaterFogColourFar',
	'WaterColourBase',
	'WaterColourAdd',
	'FoamColour'
}
local color_data = {}
for _,pwc in ipairs(water_colors) do
	local T = {
		meta = {'value', 'GcPlanetWaterColourData.xml'},
		SelectionWeighting = pwc.weight
	}
	for i, rgb in ipairs(pwc.water) do
		T[#T+1] = ColorData(rgb, water_props[i])
	end
	color_data[#color_data+1] = T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '__META water colors.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Settings',
				ADD_OPTION			= 'AddEndSection',
				ADD 				= ToExml(color_data)
			}
		}
	}
}}}}
