--------------------------------------------------------------------------
local desc = [[
  Modifiers for ambient space color..near-black space and night sky
  Darker nights, and darker swamp and lava biomes
]]------------------------------------------------------------------------

local space_colors = {
	{'TopColour', 			0.26},
	{'MidColour',			0.22},
	{'BottomColour',		0.18},
	{'TopColourPlanet',		0.54},
	{'MidColourPlanet',		0.5},
	{'BottomColourPlanet',	0.46},
	{'CloudColour',			0},
	{'LightColour',			1.02}, -- sun brightness
	{'NebulaColour1',		1.06},
	{'NebulaColour2',		1.08},
	{'NebulaColour3',		1.04},
	{'FogColour',			0.4},
	{'FogColour2',			0.4}
}
function space_colors:GetExmlCT()
	local T = {}
	for _,x in ipairs(self) do
		table.insert(T, {
			REPLACE_TYPE		= 'All',
			INTEGER_TO_FLOAT	= 'Force',
			MATH_OPERATION		= '*',
			PRECEDING_KEY_WORDS	= x[1],
			VALUE_CHANGE_TABLE 	= {
				{'R', x[2]}, {'G', x[2]}, {'B', x[2]}
			}
		})
	end
	return T
end

local night_colors = {
	biome = {
		{k='GenericSettings',	m=0.42},
		{k='Swamp',				m=0.28},
		{k='Lava',				m=0.52}
	},
	---					generic	swamp	lava
	{'SkyColour',		-0.04,	-0.18,	0.4},
	{'SkyUpperColour',	-0.04,	-0.22,	0.4},
	{'SkySolarColour',	0.1,	0.1,	0.32},
	{'HorizonColour',	0.1,	0.2,	0.42},
	{'HeightFogColour',	0,		-0.1,	0},
	{'LightColour',		0.28,	0.32,	0.52},
	{'CloudColour1',	0.28,	0.24,	0.36},
	{'CloudColour2',	0.28,	0.24,	0.36}
}
function night_colors:GetExmlCT()
	local T = {}
	for i, bio in pairs(self.biome) do
		for _,x in ipairs(self) do
			table.insert(T, {
				INTEGER_TO_FLOAT	= 'Force',
				MATH_OPERATION		= '*',
				PRECEDING_KEY_WORDS	= {bio.k, x[1]},
				VALUE_CHANGE_TABLE 	= {
					{'R', x[i+1] + bio.m},
					{'G', x[i+1] + bio.m},
					{'B', x[i+1] + bio.m}
				}
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META darker space & nights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN',
		},
		EXML_CHANGE_TABLE	= space_colors:GetExmlCT()
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/NIGHTSKYCOLOURS.MBIN',
		EXML_CHANGE_TABLE	= night_colors:GetExmlCT()
	}
}}}}
