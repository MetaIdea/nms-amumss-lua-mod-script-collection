--------------------------------------------------------------------------
local desc = [[
  Modifiers for ambient space color..near-black space and night sky
  Darker nights, and darker swamp and lava biomes
]]------------------------------------------------------------------------

local mod = {
	space	= 0.26,
	planet	= 0.54,
	nebula	= 1.08,
	cloud	= 0,
	light	= 1.02,
	fog		= 0.6,
	Gen		= 0.42,
	Swa		= 0.28,
	Lav		= 0.52
}

local space_colors = {
	{'TopColour', 			mod.space},
	{'MidColour',			mod.space - 0.04},
	{'BottomColour',		mod.space - 0.08},
	{'TopColourPlanet',		mod.planet},
	{'MidColourPlanet',		mod.planet - 0.04},
	{'BottomColourPlanet',	mod.planet - 0.08},
	{'CloudColour',			mod.cloud},
	{'LightColour',			mod.light}, -- sun brightness
	{'NebulaColour1',		mod.nebula},
	{'NebulaColour2',		mod.nebula},
	{'NebulaColour3',		mod.nebula},
	{'FogColour',			mod.fog},
	{'FogColour2',			mod.fog},
}
function space_colors:Get(x)
	return {
		REPLACE_TYPE		= 'All',
		INTEGER_TO_FLOAT	= 'Force',
		MATH_OPERATION		= '*',
		PRECEDING_KEY_WORDS	= x[1],
		VALUE_CHANGE_TABLE 	= {
			{'R',			x[2]},
			{'G',			x[2]},
			{'B',			x[2]},
			-- {'A',			(x[2] == 0 and 0 or 1)}
		}
	}
end

local night_colors = {
	{{'GenericSettings',	'SkyColour'},		-0.04},
	{{'GenericSettings',	'SkyUpperColour'},	-0.04},
	{{'GenericSettings',	'SkySolarColour'},	0.1},
	{{'GenericSettings',	'HorizonColour'},	0.1},
	{{'GenericSettings',	'HeightFogColour'},	0},
	{{'GenericSettings',	'LightColour'},		0.28},
	{{'GenericSettings',	'CloudColour1'},	0.28},
	{{'GenericSettings',	'CloudColour2'},	0.28},
	{{'Swamp',				'SkyColour'}, 		-0.18},
	{{'Swamp',				'SkyUpperColour'}, 	-0.22},
	{{'Swamp',				'SkySolarColour'},	0.1},
	{{'Swamp',				'HorizonColour'},	0.2},
	{{'Swamp',				'HeightFogColour'},	-0.1},
	{{'Swamp',				'LightColour'},		0.32},
	{{'Swamp',				'CloudColour1'},	0.24},
	{{'Swamp',				'CloudColour2'},	0.24},
	{{'Lava',				'SkyColour'}, 		0.4},
	{{'Lava',				'SkyUpperColour'}, 	0.4},
	{{'Lava',				'SkySolarColour'},	0.32},
	{{'Lava',				'HorizonColour'},	0.42},
	{{'Lava',				'HeightFogColour'},	0},
	{{'Lava',				'LightColour'},		0.52},
	{{'Lava',				'CloudColour1'},	0.36},
	{{'Lava',				'CloudColour2'},	0.36}
}
function night_colors:Get(x)
	local mul = mod[x[1][1]:sub(1, 3)] + x[2]
	return {
		INTEGER_TO_FLOAT	= 'Force',
		MATH_OPERATION		= '*',
		PRECEDING_KEY_WORDS	= x[1],
		VALUE_CHANGE_TABLE 	= {
			{'R', mul}, {'G', mul}, {'B', mul}
		}
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META darker space & nights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN',
		},
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(space_colors)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/NIGHTSKYCOLOURS.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(night_colors)
	}
}}}}
