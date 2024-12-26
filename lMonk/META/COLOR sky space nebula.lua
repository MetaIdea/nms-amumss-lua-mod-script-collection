--------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
--------------------------------------------------------------------
local mod_desc = [[
  Modifiers for ambient space color..near-black space and night sky
  Darker nights, and darker swamp and lava biomes
  Added cool blue day sky color
]]------------------------------------------------------------------

local function NightColorModifiers()
	local T = {}
	for rgb, mod in pairs({
		--				 generic	swamp	lava
		SkyColour		= {0.38,	0.1,	0.92},
		SkyUpperColour	= {0.38,	0.06,	0.92},
		SkySolarColour	= {0.52,	0.38,	0.84},
		HorizonColour	= {0.52,	0.48,	0.94},
		HeightFogColour	= {0.42,	0.18,	0.52},
		LightColour		= {0.7,		0.6,	1	},
		CloudColour1	= {0.7,		0.52,	0.88},
		CloudColour2	= {0.7,		0.52,	0.88}
	}) do
		for i, bio in ipairs({
			'GenericSettings', 'Swamp', 'Lava'
		}) do
			T[#T+1] = {
				INTEGER_TO_FLOAT	= 'Force',
				MATH_OPERATION		= '*',
				PRECEDING_KEY_WORDS	= {bio, rgb},
				VALUE_CHANGE_TABLE 	= {
					{'R',	mod[i]},
					{'G',	mod[i]},
					{'B',	mod[i]}
				}
			}
		end
	end
	return T
end

local sky_palettes = {
	blue	= {--	natural pale blue
		'FF81C0E9',
		'FF57749A',
		'FFB3DCEC',
		'FFBBE0F3',
		'FFFEFFD4',
		'FFB3DCEC',
		'FFFACFA0',
		{1, 1, 1},
		'FFFFFFE7',
		'FFEEF9F1',
		'FF97BBC7'
	},
	orange	= {-- hot pale orange
		'FFE7AF76',
		'FFEE7740',
		'FFEBB178',
		'FFF17468',
		'FFE8E9B0',
		'FF515A85',
		'FFBAF3E0',
		{2, 1, 1},
		'FFF6D5B3',
		'FFE7E9F1',
		'FFE4D2AB'
	},
	turq	= {--	soft turquoize1
		'FF7CE9CA',
		'FF94D3AD',
		'FF66DBAC',
		'FFB1D8E2',
		'FFDBDBAF',
		'FF2C617A',
		'FF5CD8FF',
		{2, 1.2, 1},
		'FFDFDFC2',
		'FFE2F6F6',
		'FF5CA998'
	}
}
local sky_part = {
	'SkyColour',
	'SkyUpperColour',
	'SkySolarColour',
	'HorizonColour',
	'SunColour',
	'FogColour',
	'HeightFogColour',
	'SkyGradientSpeed',
	'LightColour',
	'CloudColour1',
	'CloudColour2'
}
local function AddPlanetWeatherColor(skies)
	local T = {}
	for _, key in ipairs(skies) do
		local pwcd = { meta = {'value', 'GcPlanetWeatherColourData.xml'} }
		for j, dat in pairs(sky_palettes[key]) do
			func = sky_part[j]:find('Speed') and VectorData or ColorData
			pwcd[#pwcd+1] = func(dat, sky_part[j])
		end
		T[#T+1] = pwcd
	end
	return T
end

local function SpaceColorModifiers()
	local T = {}
	for rgb, mod in pairs({
		TopColour			= 0.26,
		MidColour			= 0.22,
		BottomColour		= 0.18,
		TopColourPlanet		= 0.54,
		MidColourPlanet		= 0.5,
		BottomColourPlanet	= 0.46,
		CloudColour			= 0,
		LightColour			= 1.02, -- sun brightness
		NebulaColour1		= 1.06,
		NebulaColour2		= 1.08,
		NebulaColour3		= 1.04,
		FogColour			= 0.4,
		FogColour2			= 0.4
	}) do
		T[#T+1] = {
			REPLACE_TYPE		= 'All',
			INTEGER_TO_FLOAT	= 'Force',
			MATH_OPERATION		= '*',
			PRECEDING_KEY_WORDS	= rgb,
			VALUE_CHANGE_TABLE 	= {
				{'R', mod}, {'G', mod}, {'B', mod}
			}
		}
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META sky dark space & nights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN',
		},
		EXML_CHANGE_TABLE	= SpaceColorModifiers()
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/NIGHTSKYCOLOURS.MBIN',
		EXML_CHANGE_TABLE	= NightColorModifiers()
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DAYSKYCOLOURS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = {'GenericSettings', 'Settings'},
				ADD				 	= ToExml(AddPlanetWeatherColor({'blue'}))
			},
			{
				PRECEDING_KEY_WORDS = {'PerBiomeSettings', 'Swamp', 'Settings'},
				ADD				 	= ToExml(AddPlanetWeatherColor({'blue', 'turq'}))
			},
			{
				PRECEDING_KEY_WORDS = {'PerBiomeSettings', 'Lava', 'Settings'},
				ADD				 	= ToExml(AddPlanetWeatherColor({'orange'}))
			}
		}
	}
}}}}
