--------------------------------------------------------------------------
local desc = [[
  Modifiers for ambient space color..near-black space and night sky
  Darker nights, and darker swamp and lava biomes
]]------------------------------------------------------------------------

local M = {
	space	= 0.22,
	planet	= 0.54,
	nebula	= 1.1,
	Gen		= 0.42,
	Swa		= 0.28,
	Lav		= 0.4
}

local General_Colour_Modifier = {
	{'TopColour', 			M.space},
	{'MidColour',			M.space - 0.04},
	{'BottomColour',		M.space - 0.08},
	{'TopColourPlanet',		M.planet},
	{'MidColourPlanet',		M.planet - 0.04},
	{'BottomColourPlanet',	M.planet - 0.08},
	{'NebulaColour1',		M.nebula},
	{'NebulaColour2',		M.nebula},
	{'NebulaColour3',		M.nebula},
	{'CloudColour',			0},
	{'FogColour',			0},
	{'FogColour2',			0},
}
function General_Colour_Modifier:Get(x)
	A = 1
	if x[2] == 0 then A = 0 end
	return {
		REPLACE_TYPE		= 'ALL',
		INTEGER_TO_FLOAT	= 'FORCE',
		MATH_OPERATION		= '*',
		PRECEDING_KEY_WORDS	= x[1],
		VALUE_CHANGE_TABLE 	= { {'R', x[2]}, {'G', x[2]}, {'B', x[2]}, {'A', A} }
	}
end

local New_Colour_Modifier = {
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
function New_Colour_Modifier:Get(x)
	local mul = M[x[1][1]:sub(1, 3)] + x[2]
	return {
		INTEGER_TO_FLOAT	= 'FORCE',
		MATH_OPERATION		= '*',
		PRECEDING_KEY_WORDS	= x[1],
		VALUE_CHANGE_TABLE 	= { {'R', mul}, {'G', mul}, {'B', mul} }
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META Darker Space & nebula.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN',
		},
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(General_Colour_Modifier)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/NIGHTSKYCOLOURS.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(New_Colour_Modifier)
	}
}}}}
