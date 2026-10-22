---------------------------------------------------------------------------------------
local mod_desc = [[
  Thunderbird Storage Rework v1.0

  Corvette storage walls, B style (WALL_EW_B_CARGO0-9), positions vanilla:
  - 11 CRATE2 -> base part Small Box (_CRATE0 = BAZAAR/CRATE0.SCENE), uniform x1.67:
    width and height match, depth ~0.2 longer.
  - 7 CRATE1 -> base part Small Crate (_BUILDAMCRATE = DECORATION/CRATE.SCENE), per
    axis x1.14 x0.93 x0.91 (W x H x D) to fill the old crate's box (stretched wider
    than vanilla proportions).
  Colour attempt (v0.2: copied materials with gColouriseVec4 set) did nothing in-game
  (Jank-tested 2026-10-18); dropped, Small Crate stays vanilla white.
  v1.0 = the v0.1 swap + scale, renamed. Untested as v1.0.

]]-------------------------------------------------------------------------------------

local DECO_PATH = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\]]
local CRATE_PATH = DECO_PATH .. [[BAZAAR\]]

-- Per-axis factors {X, Y, Z} = old model size / new model size (W x H x D, from the
-- models' mesh bounds)
local function Ratio(old, new)
	return {old[1] / new[1], old[2] / new[2], old[3] / new[3]}
end
-- CRATE2 -> Small Box: uniform x1.67 (width and height match, depth ~0.2 longer)
local BOX_SIZE   = {1.67, 1.67, 1.67}
local CRATE_SIZE = Ratio({1.4066, 0.7227, 1.2619}, {1.2358, 0.7795, 1.3883})	-- CRATE1 / Small Crate

-- Step that sets one node's Transform scale to its vanilla scale x size, per axis.
-- SKW matches the whole name, so 'Crate1' doesn't hit Crate10-12 or crate1_Crate1.
local function ScaleStep(size, name, x, y, z)
	local function f(v, k) return string.format('%.6f', v * size[k]) end
	return {
		SPECIAL_KEY_WORDS	= {'Name', name},
		VALUE_CHANGE_TABLE	= {{'ScaleX', f(x, 1)}, {'ScaleY', f(y, 2)}, {'ScaleZ', f(z, 3)}},
	}
end

local scaleSteps = {}
-- CRATE2 nodes Crate2 ... Crate12, all vanilla 0.631294
for i = 2, 12 do
	scaleSteps[#scaleSteps + 1] = ScaleStep(BOX_SIZE, 'Crate' .. i, 0.631294, 0.631294, 0.631294)
end
-- CRATE1 nodes, vanilla scales (same in all 10 walls)
local CRATE1_NODES = {
	{'Crate1',			0.903446, 1.000000, 0.903446},
	{'crate1_Crate1',	0.712331, 0.712331, 0.712331},
	{'crate1_Crate3',	0.502877, 0.502877, 0.502877},
	{'crate1_Crate4',	0.502877, 0.502877, 0.502877},
	{'crate1_Crate5',	0.502877, 0.369822, 0.502877},
	{'crate1_Crate6',	0.445170, 0.445170, 0.445170},
	{'crate1_Crate7',	0.445170, 0.445170, 0.445170},
}
for _, n in ipairs(CRATE1_NODES) do
	scaleSteps[#scaleSteps + 1] = ScaleStep(CRATE_SIZE, n[1], n[2], n[3], n[4])
end

-- The 10 storage walls (container slots 0-9), B style
local walls = {}
for i = 0, 9 do
	walls[#walls + 1] = 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_CARGO' .. i .. '.SCENE.MBIN'
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Thunderbird_Storage_Rework_v1.0',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.05',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = {
	{--	|per wall: CRATE2 (11) -> Small Box, CRATE1 (7) -> Small Crate|
		MBIN_FILE_SOURCE	= walls,
		MXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE		= 'ALL',
				VALUE_MATCH			= CRATE_PATH .. 'CRATE2.SCENE.MBIN',
				VALUE_CHANGE_TABLE	= {{'Value', CRATE_PATH .. 'CRATE0.SCENE.MBIN'}},
			},
			{
				REPLACE_TYPE		= 'ALL',
				VALUE_MATCH			= CRATE_PATH .. 'CRATE1.SCENE.MBIN',
				VALUE_CHANGE_TABLE	= {{'Value', DECO_PATH .. 'CRATE.SCENE.MBIN'}},
			},
		},
	},
	{--	|the same 18 nodes: scale|
		MBIN_FILE_SOURCE	= walls,
		MXML_CHANGE_TABLE	= scaleSteps,
	},
}}}}