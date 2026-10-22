---------------------------------------------------------------------------------------
local mod_desc = [[
  Thunderbird Storage Rework v1.24

  Corvette storage walls, B style (WALL_EW_B_CARGO0-9), positions vanilla, scaled per
  axis so each new model fills the old crate's box (W x H x D):
  - 11 CRATE2 -> base part Small Box (_CRATE0 = BAZAAR/CRATE0.SCENE),
    x1.67 x1.67 x1.23.
  - 7 CRATE1 -> base part Small Crate (_BUILDAMCRATE = DECORATION/CRATE.SCENE),
    x1.14 x0.93 x0.91 (stretched wider than vanilla proportions).
  Colour attempt (v0.2: copied materials with gColouriseVec4 set) did nothing in-game
  (Jank-tested 2026-10-18); dropped.
  v1.0 (Small Box uniform x1.67, Small Crate per axis): some models overlapped
  (Jank-tested 2026-10-18). v1.1: Small Box per axis too. Shipped 2026-10-18.
  v1.2: Crate9 (floor Small Box furthest from the wall) rotation 0 (vanilla RotY
  -121.73). Built and installed 2026-10-19.
  v1.3: Crate9 also moved toward the wall: TransZ 1.65 (vanilla 1.90833). Built
  2026-10-19; Jank: Crate3 has plenty of room to move back.
  v1.4: Crate9 RotY 20; Crate3 TransZ 0.85 (vanilla 1.174597) for a ~0.08 gap to
  Crate9. Built 2026-10-19; Jank: good, try a smaller turn.
  v1.5: Crate9 RotY -8 (gap to Crate3 grows to ~0.15). Built 2026-10-19.
  v1.6: Crate11 (top of the Crate2 / Crate10 / Crate11 stack) TransZ 1.57 (vanilla
  1.687858). Built 2026-10-19; Jank: good.
  v1.7: Crate12 (highest box, sits on Small Crate crate1_Crate5) TransY 1.882 (vanilla
  1.849677): removes a ~0.03 overlap (vanilla had ~0.02). Built 2026-10-19.
  v1.8: Crate12 12% smaller (scale x0.88), bottom kept at the same height. Built
  2026-10-19; Jank: good.
  v1.9: crate1_Crate6 (Small Crate on top of Crate8, far +X end) lowered onto Crate8:
  TransY 1.196 (vanilla 1.218052; it floated ~0.023). Built 2026-10-19; Jank: moved a
  little, still floating (mesh bounds don't show the real resting surfaces).
  v1.10: crate1_Crate6 lowered another 0.030: TransY 1.166. Built 2026-10-19.
  v1.11: all stacks flush: every piece resting on another piece sits exactly on its
  top (from the new models' mesh heights), and the 4 boxes vanilla tilts ~1.2 degrees
  (Crate5-8) are levelled. Replaces the hand-set Crate12 / crate1_Crate6 heights.
  Floor and shelf pieces keep their vanilla heights. Built 2026-10-19; Jank: flush
  looks like not quite touching.
  v1.12: each stacked piece sinks NUDGE (0.005) into the one below. Built 2026-10-19;
  Jank: good so far.
  v1.13: by eye: Crate10 + Crate11 (the two shelf-level boxes of the stack furthest from
  the wall) up 0.01; Crate6 (Small Box on the lying CRATE4 CrateClosedTall1) up 0.025.
  Built 2026-10-19.
  v1.14: by eye: Crate10 + Crate11 up 0.028, Crate6 up 0.027 (from vanilla). Built
  2026-10-19; Jank: pull both back to 0.025.
  v1.15: Crate10 + Crate11 up 0.025, Crate6 up 0.025 (from vanilla). Built 2026-10-19.
  v1.16: crate1_Crate6 (top Small Crate of the +X stack) 0.06 taller, bottom in place.
  Built 2026-10-19; Jank: good, pull back a little.
  v1.17: crate1_Crate6 0.053 taller. Built 2026-10-19; Jank: pull back more.
  v1.18: crate1_Crate6 0.049 taller. Built 2026-10-19; Jank: pull back more.
  v1.19: crate1_Crate6 0.0465 taller. Built 2026-10-19; Jank: keep going.
  v1.20: crate1_Crate6 0.042 taller. Built 2026-10-19. Jank: the Small Crates take on
  the module's paint colour (their materials are colourisable).
  v1.21: the Small Crates use a copy (JANK7_STORECRATE.SCENE + its 7 colourisable
  materials) with the _F53_COLOURISABLE flag removed, so they keep their own colour.
  Small Crates elsewhere stay vanilla. Built and installed 2026-10-19.
  v1.22: v1.21 + the copied materials use pre-painted textures: the crate's paintable
  areas in palette BIGGS13 Primary (#DAD1B9, aged off-white; Jank's pick), made by
  G:\NMS\LUA\Tools\StorageRework_crate\recolour_crate.py, shipped with ADD_FILES.
  Built 2026-10-20, Jank-tested: crates show the painted colour; wants darker.
  v1.23: textures repainted in FIBREGLASSB6 Primary (#F3D493; Jank's pick). Only the
  DDS files change (script: comments + name). BIGGS13 textures kept in out\BIGGS13\.
  Built 2026-10-20; Jank: slightly too yellow.
  v1.24: textures repainted in FLAGS1 Secondary (#EAD5B3; Jank's pick from the
  less-yellow sheet). FIBREGLASSB6 textures kept in out\FIBREGLASSB6\. Untested.

]]-------------------------------------------------------------------------------------

local DECO_PATH = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\]]
local CRATE_PATH = DECO_PATH .. [[BAZAAR\]]

-- Small Crate copy that ignores the wall's paint. The vanilla Small Crate materials are
-- colourisable (_F53_COLOURISABLE), so inside the storage wall they take the module's
-- colour. The copies drop that flag; Small Crates placed elsewhere stay vanilla.
local STORE_SCENE	= DECO_PATH .. [[JANK7_STORECRATE.SCENE.MBIN]]
local STORE_MAT_DIR	= DECO_PATH .. [[JANK7_STORECRATE\]]
local VAN_MAT_DIR	= DECO_PATH .. [[CRATE\]]
-- The colourisable ones and the diffuse texture each one uses (INTERIORLIGHTS_MAT4
-- isn't colourisable; the copy keeps the vanilla one)
local STORE_MATS = {
	{'INTERIORFREIGHTERBASE_MAT',	'INTERIORFREIGHTERBASE'},
	{'INTERIORFREIGHTERBASE_MAT4',	'INTERIORFREIGHTERBASE'},
	{'INTERIORFREIGHTERTILE_MAT12',	'INTERIORFREIGHTERTILE'},
	{'INTERIORFREIGHTERTILE_MAT6',	'INTERIORFREIGHTERTILE'},
	{'INTERIORFREIGHTERTRIM_MAT2',	'INTERIORFREIGHTERTRIMS'},
	{'INTERIORFREIGHTERTRIM_MAT6',	'INTERIORFREIGHTERTRIMS'},
	{'INTERIORFREIGHTERTRIM_MAT7',	'INTERIORFREIGHTERTRIMS'},
}
-- Pre-painted copies of the vanilla diffuse textures (FLAGS1 Secondary inside each
-- texture's colourise mask), made by recolour_crate.py
local PAINTED_DIR	= 'TEXTURES/CUSTOM/JANK7_STORECRATE/'
local PAINTED_SRC	= [[G:\NMS\LUA\Tools\StorageRework_crate\out\]]
local PAINTED		= {'INTERIORFREIGHTERBASE', 'INTERIORFREIGHTERTILE', 'INTERIORFREIGHTERTRIMS'}

-- Copy pairs {vanilla, new, 'REMOVE'} (REMOVE = don't ship the vanilla file), the
-- copied scene's material path swaps, and per material: its file + painted texture
local storeCopies	= {{DECO_PATH .. 'CRATE.SCENE.MBIN', STORE_SCENE, 'REMOVE'}}
local storeMatFiles	= {}
local storeMatSwaps	= {}
local storeMatTex	= {}
for _, m in ipairs(STORE_MATS) do
	local file = m[1] .. '.MATERIAL.MBIN'
	storeCopies[#storeCopies + 1]		= {VAN_MAT_DIR .. file, STORE_MAT_DIR .. file, 'REMOVE'}
	storeMatFiles[#storeMatFiles + 1]	= STORE_MAT_DIR .. file
	storeMatSwaps[#storeMatSwaps + 1]	= {
		REPLACE_TYPE		= 'ALL',
		VALUE_MATCH			= VAN_MAT_DIR .. file,
		VALUE_CHANGE_TABLE	= {{'Value', STORE_MAT_DIR .. file}},
	}
	storeMatTex[#storeMatTex + 1] = {
		MBIN_FILE_SOURCE	= STORE_MAT_DIR .. file,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE	= {{'Map', PAINTED_DIR .. m[2] .. '.DDS'}},
			},
		},
	}
end

-- Per-axis factors {X, Y, Z} = old model size / new model size (W x H x D, from the
-- models' mesh bounds)
local function Ratio(old, new)
	return {old[1] / new[1], old[2] / new[2], old[3] / new[3]}
end
local BOX_SIZE   = Ratio({1.2894, 0.7227, 0.9512}, {0.7724, 0.4318, 0.7722})	-- CRATE2 / Small Box
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
-- CRATE2 nodes Crate2 ... Crate12, all vanilla 0.631294; Crate12 (highest box) shrunk
local VANILLA_BOX_SCALE = 0.631294
local CRATE12_SHRINK    = 0.88
for i = 2, 12 do
	local s = VANILLA_BOX_SCALE * ((i == 12) and CRATE12_SHRINK or 1)
	scaleSteps[#scaleSteps + 1] = ScaleStep(BOX_SIZE, 'Crate' .. i, s, s, s)
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
-- Crate9: turned -8 degrees (vanilla RotY -121.726242; RotX / RotZ already 0) and
-- moved toward the wall (vanilla TransZ 1.908330)
scaleSteps[#scaleSteps + 1] = {
	SPECIAL_KEY_WORDS	= {'Name', 'Crate9'},
	VALUE_CHANGE_TABLE	= {{'TransZ', '1.650000'}, {'RotY', '-8.000000'}},
}
-- Crate3 (floor Small Box between Crate9 and the wall): moved back (vanilla TransZ
-- 1.174597). Scaled Small Box = 0.81 x 0.60 (W x D). Set in v1.4 for a ~0.08 gap with
-- Crate9 at 20 degrees (reach 0.42); at -8 degrees Crate9 reaches 0.35 -> gap ~0.15
scaleSteps[#scaleSteps + 1] = {
	SPECIAL_KEY_WORDS	= {'Name', 'Crate3'},
	VALUE_CHANGE_TABLE	= {{'TransZ', '0.850000'}},
}
-- Crate11 (top of the stack Crate2 floor / Crate10 / Crate11): moved toward the wall
-- (vanilla TransZ 1.687858)
scaleSteps[#scaleSteps + 1] = {
	SPECIAL_KEY_WORDS	= {'Name', 'Crate11'},
	VALUE_CHANGE_TABLE	= {{'TransZ', '1.570000'}},
}
--=====================================================================================
-- Stacks: every piece that rests on another piece sits flush on it (no overlap, no gap).
-- Pieces on the floor or the wall's shelf keep their vanilla height.
--=====================================================================================

-- Heights of the new models (visible LOD0 mesh, unscaled): the Small Box mesh starts
-- slightly below its pivot; the Small Crate mesh starts at its pivot
local BOX_BOTTOM, BOX_TOP = -0.006899, 0.424884
local CRATE_TOP           = 0.779501

-- Y scale of a box / crate node (vanilla Y scale x the per-axis factor)
local function boxScaleY(shrink)	return VANILLA_BOX_SCALE * BOX_SIZE[2] * (shrink or 1) end
local function crateScaleY(vanillaY)	return vanillaY * CRATE_SIZE[2] end

-- Top of a piece standing at TransY y
local function boxTop(y, shrink)		return y + BOX_TOP * boxScaleY(shrink) end
local function crateTop(y, vanillaY)	return y + CRATE_TOP * crateScaleY(vanillaY) end
-- How far each stacked piece sinks into the one below, so they read as in contact
local NUDGE = 0.005

-- TransY that puts a piece's bottom at height h, sunk in by NUDGE
local function boxOn(h, shrink)			return h - NUDGE - BOX_BOTTOM * boxScaleY(shrink) end
local function crateOn(h)				return h - NUDGE end

-- TransY of the pieces that hold the others up (vanilla unless noted; set by eye
-- in-game where the shelf / CRATE4 surfaces aren't in the data)
local Y = {
	Crate4			= 0.723963,		-- shelf
	Crate8			= 0.738157,		-- shelf
	Crate10			= 0.736411 + 0.025,	-- shelf, raised by eye (Crate11 follows)
	Crate1			= 0.747609,		-- shelf (Small Crate, vanilla Y scale 1.0)
	crate1_Crate3	= 0.725453,		-- shelf (Small Crate, vanilla Y scale 0.502877)
	Crate6			= 1.266952 + 0.025,	-- on the lying CRATE4 CrateClosedTall1, raised by eye
}
-- Each stack from the bottom up (vanilla TransY in brackets)
Y.Crate5		= boxOn(boxTop(Y.Crate4))						-- (1.150207)
Y.crate1_Crate5	= crateOn(boxTop(Y.Crate5))						-- (1.606279)
Y.Crate12		= boxOn(crateTop(Y.crate1_Crate5, 0.369822), CRATE12_SHRINK)	-- (1.849677)
Y.crate1_Crate6	= crateOn(boxTop(Y.Crate8))						-- (1.218052)
Y.Crate11		= boxOn(boxTop(Y.Crate10))						-- (1.174413)
Y.Crate7		= boxOn(crateTop(Y.Crate1, 1.0))				-- (1.467787)
Y.crate1_Crate4	= crateOn(crateTop(Y.crate1_Crate3, 0.502877))	-- (1.071633)

local function setY(name)
	scaleSteps[#scaleSteps + 1] = {
		SPECIAL_KEY_WORDS	= {'Name', name},
		VALUE_CHANGE_TABLE	= {{'TransY', string.format('%.6f', Y[name])}},
	}
end
for _, name in ipairs({'Crate10', 'Crate6', 'Crate5', 'crate1_Crate5', 'Crate12', 'crate1_Crate6', 'Crate11', 'Crate7', 'crate1_Crate4'}) do
	setY(name)
end

-- crate1_Crate6 (top Small Crate of the +X stack) made taller, height only. Its mesh
-- starts at its pivot, so the bottom stays on Crate8 and only the top rises. This
-- ScaleY replaces the one set in the scale steps above (later step wins).
local CRATE6_EXTRA_HEIGHT = 0.042
scaleSteps[#scaleSteps + 1] = {
	SPECIAL_KEY_WORDS	= {'Name', 'crate1_Crate6'},
	VALUE_CHANGE_TABLE	= {
		{'ScaleY', string.format('%.6f', crateScaleY(0.445170) + CRATE6_EXTRA_HEIGHT / CRATE_TOP)},
	},
}

-- Level the four boxes vanilla tilts ~1.2 degrees (RotX -1.216382, RotZ 0.269603), so
-- their tops are flat for the pieces stacked on them
for _, name in ipairs({'Crate5', 'Crate6', 'Crate7', 'Crate8'}) do
	scaleSteps[#scaleSteps + 1] = {
		SPECIAL_KEY_WORDS	= {'Name', name},
		VALUE_CHANGE_TABLE	= {{'RotX', '0.000000'}, {'RotZ', '0.000000'}},
	}
end

-- The 10 storage walls (container slots 0-9), B style
local walls = {}
for i = 0, 9 do
	walls[#walls + 1] = 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_CARGO' .. i .. '.SCENE.MBIN'
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'Jank7.Thunderbird_Storage_Rework_v1.24',
	MOD_AUTHOR			= 'Jank7',
	NMS_VERSION			= '7.05',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = {
	{--	|make the storage Small Crate files: copies of the scene + 7 materials|
		MBIN_FILE_SOURCE	= storeCopies,
	},
	{--	|copied scene uses the copied materials|
		MBIN_FILE_SOURCE	= STORE_SCENE,
		MXML_CHANGE_TABLE	= storeMatSwaps,
	},
	{--	|copied materials: not paintable (drop the _F53_COLOURISABLE flag entry)|
		MBIN_FILE_SOURCE	= storeMatFiles,
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F53_COLOURISABLE'},
				REMOVE				= 'SECTION',
			},
		},
	},
	{--	|per wall: CRATE2 (11) -> Small Box, CRATE1 (7) -> storage Small Crate|
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
				VALUE_CHANGE_TABLE	= {{'Value', STORE_SCENE}},
			},
		},
	},
	{--	|the same 18 nodes: scale; Crate9 / Crate3 / Crate11 placement; stacks flush|
		MBIN_FILE_SOURCE	= walls,
		MXML_CHANGE_TABLE	= scaleSteps,
	},
}}}}

-- |copied materials: diffuse -> pre-painted copy (one section per material)|
for _, section in ipairs(storeMatTex) do
	table.insert(NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE, section)
end

-- Painted textures: copied into the mod at build time (binary-safe xcopy)
NMS_MOD_DEFINITION_CONTAINER.ADD_FILES = {}
for _, name in ipairs(PAINTED) do
	table.insert(NMS_MOD_DEFINITION_CONTAINER.ADD_FILES, {
		FILE_DESTINATION		= PAINTED_DIR .. name .. '.DDS',
		EXTERNAL_FILE_SOURCE	= PAINTED_SRC .. name .. '.DDS',
	})
end