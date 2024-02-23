--------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
--------------------------------------------------------------------
local mod_desc = [[
  Modifiers for ambient space color..near-black space and night sky
  Darker nights, and darker swamp and lava biomes
  Added cool blue day sky color
]]------------------------------------------------------------------

local function NightColorModifiers()
	local T = {}
	for i, bio in pairs({
		{k='GenericSettings',	m=0.42},
		{k='Swamp',				m=0.28},
		{k='Lava',				m=0.52}
	}) do
		for rgb, mod in pairs({
			--				 generic	swamp	lava
			SkyColour		= {-0.04,	-0.18,	0.4},
			SkyUpperColour	= {-0.04,	-0.22,	0.4},
			SkySolarColour	= {0.1,		0.1,	0.32},
			HorizonColour	= {0.1,		0.2,	0.42},
			HeightFogColour	= {0,		-0.1,	0},
			LightColour		= {0.28,	0.32,	0.48},
			CloudColour1	= {0.28,	0.24,	0.36},
			CloudColour2	= {0.28,	0.24,	0.36}
		}) do
			T[#T+1] = {
				INTEGER_TO_FLOAT	= 'Force',
				MATH_OPERATION		= '*',
				PRECEDING_KEY_WORDS	= {bio.k, rgb},
				VALUE_CHANGE_TABLE 	= {
					{'R', mod[i] + bio.m},
					{'G', mod[i] + bio.m},
					{'B', mod[i] + bio.m}
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
	{k='SkyColour',			f=ColorData},
	{k='SkyUpperColour',	f=ColorData},
	{k='SkySolarColour',	f=ColorData},
	{k='HorizonColour',		f=ColorData},
	{k='SunColour',			f=ColorData},
	{k='FogColour',			f=ColorData},
	{k='HeightFogColour',	f=ColorData},
	{k='SkyGradientSpeed',	f=VectorData},
	{k='LightColour',		f=ColorData},
	{k='CloudColour1',		f=ColorData},
	{k='CloudColour2',		f=ColorData}
}
local function AddPlanetWeatherColor(skies)
	local T = {}
	for _, key in ipairs(skies) do
		local pwcd = { META = {'value', 'GcPlanetWeatherColourData.xml'} }
		for j, dat in pairs(sky_palettes[key]) do
			pwcd[#pwcd+1] = sky_part[j].f(dat, sky_part[j].k)
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
	NMS_VERSION			= '4.52',
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
