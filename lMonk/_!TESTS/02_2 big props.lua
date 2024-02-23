-------------------------------
dofile('LIB/exml_2_lua.lua')
-------------------------------
local mod_desc = [[
  TESTS! -- Scale biome props
]]-----------------------------

--- Properties of [GcObjectSpawnData.xml] being modified
local obj_spawn_data = {
	props = {
		n = 'MinScale',
		x = 'MaxScale',
		c = 'Coverage',
		w = 'ShearWindStrength'
	}
}

local scale_tags = {
	biomes = {
		{
			tag   = 'LUSH',
			flora = { -- applied to all LUSH sources
				TREE		= {n=1.15,	x=2.4,	c=0.9},
				BUBBLELUSH	= {n=1.15,	x=1.65}
			}
		},
		{
			tag   = 'LUSHBIGPROPSOBJECTSFULL',
			flora = {
				TREE		= {n=1.05,	x=2.2,	c=0.86}
			}
		},
		{
			tag   = 'LUSHBUBBLEOBJECTS',
			flora = {
				TREE		= {x=2.25,	c=0.86},
				FERN		= {n=1.4,	x=2.6}
			}
		},
		{
			tag   = 'LUSHOBJECTSFULL',
			flora = {
				FERN		= {n=1.3,	x=1.9},
				FLOWER		= {n=1.4,	x=1.8}
			}
		},
		{
			tag   = 'TENTACLEOBJECTSFULL',
			flora = {
				TENTACLE	= {n=1.2,	x=1.8,	c=0.94}
			}
		},
		{
			tag   = 'LUSHROOMBOBJECTS',
			flora = {
				SHROOMSINGL	= {n=1.8,	x=2.9,	u=true}
			}
		},
		{
			tag   = 'FROZEN',
			flora = {-- applied to all FROZEN sources
				TREE 		= {n=1.15,	x=2.45,	c=0.85}
			}
		},
		{
			tag   = 'RADIOBIGPROPS',
			flora = {
				ROCK		= {n=1.1,	x=1.3,	c=0.95}
			}
		},
		{
			tag   = 'RADIOSPIKEPOTATO',
			flora = {
				WEIRD		= {x=1.4,	c=1.2} -- potato
			}
		},
		{
			tag   = 'TOXIC',
			flora = {-- applied to all TOXIC sources
				TENDRIL		= {n=1.4,	x=1.9}
			}
		},
		{
			tag   = 'TOXICBIGPROPS',
			flora = {
				HUGEPROPS	= {n=0.7,	x=1.05,	c=0.84}
			}
		},
		{
			tag   = 'TOXICOBJECTSFULL',
			flora = {
				LARGEBLOB	= {n=0.4,	x=0.8},
				FUNGALTREE	= {n=1.15,	x=1.75,	c=0.86}
			}
		},
		{
			tag   = 'ROCKY',
			flora = {-- less -and smaller rocks on rocky biomes
				FACEBLEND	= {n=0.8,	x=0.9,	c=0.84,	u=true}
			}
		},
		{
			tag   = 'SWAMPOBJECTSFULL',
			flora = {
				GROVELARGEF	= {n=1.05,	x=1.55,	c=1.1,	u=true},
				GROVELARGE	= {n=0.8,	x=-0.7, c=0.82},
				HQTREE		= {n=1.15,	x=2.5,	c=0.9,	u=true},
				FERN		= {n=1.5,	x=2.1},
				FLOWER		= {n=1.4,	x=1.8, 	w=0.94}
			}
		},
		{
			tag   = 'ALIEN',
			flora = {
				LARGE		= {n=0.95,	x=1.02,	c=0.92},
				MEDIUM		= {n=0.9,	x=1.05,	c=0.82},
				SMALL		= {n=0.95,	x=1.05}
			}
		},
		{
			tag   = 'LEVELONE',
			flora = {
				DEBRIS		= {c=0.00001,	u=true},
				CRATE		= {c=0.00001},
				UNDERGROUND	= {c=0.05},
				WORDSTONE	= {c=0.33}
			}
		},
		{
			tag   = 'PLANT',
			flora = {
				INTERACTIVE	= {n=0.48,	x=0.01,	c=1.1},
				TENTACLEP	= {c=0.6},
				SPOREVENT	= {c=0.6},
				FLYTRAP		= {c=0.6}
			}
		}
	},
	globals = {
		SHARD		= {n=1.05,	x=1.4},
		SPIRE		= {n=1.15,	x=1.3},
		ROCK		= {n=1.2,	x=1.75},
		CACTUS		= {n=1.1,	x=1.55},
		TREE		= {n=1.15,	x=2.4},
		SHROOM		= {n=1.05,	x=2.5},
		FOLIAGE		= {n=1.1,	x=1.3},
		FLOWER		= {x=1.2},
		CROSS		= {n=0.95,	x=1.1},	      -- grass
		LBOARD		= {n=0.95,	x=1.1},		  -- grass
		TOXICGRASS	= {n=1.2,	x=1.6,	w=0}, -- not grass!
		PLANT		= {n=0.94,	x=1.5},
		BUBBLELUSH	= {x=1.15},
		BOULDER		= {n=1.1,	x=1.4},
		CURVED		= {x=1.5},
		DROPLET		= {n=1.05,	x=1.55},
		SPORE		= {x=1.2},
		LARGE		= {n=1.2,	x=1.6,	c=0.94},
		MEDIUM		= {n=1.05,	x=0.95},
		SMALL		= {n=0.95,	x=0.8},
		FIENDEGG	= {c=0.4},

	---	skipped
		LAVA		= {u=true},
		WEIRD		= {u=true},
		FRAGMENT	= {u=true},
		GRAVEL		= {u=true},
		HUGEPROPS	= {u=true},
		FARM		= {u=true}
	}
}

---------------------------------------------------------------------------
---- CODING
---------------------------------------------------------------------------

local solar_biomes = {
	['METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN'] = {},						--<< preload_source
	['METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN'] = {},				--<< preload_source
	['METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN'] = {},	--<< preload_source
}

local function GetBiomeFlora(biome)
	local gc_spawn_file	= LoadRuntimeMbin(biome)
	local gc_objs		= gc_spawn_file.template.Objects
	local flora			= {}

	for key, objs in pairs(gc_objs) do
		if key ~= 'SelectableObjects' and key ~= 'META' then
			for _, spn in ipairs(objs) do
				flora[spn.Resource.Filename] = 0
				-- if spn.QualityVariants then
					-- c = spn.QualityVariants[#spn.QualityVariants].Coverage
				-- else
					-- c = spn.QualityVariantData.Coverage
				-- end
				-- flora[spn.Resource.Filename] = {
					-- n	= spn.MinScale,
					-- x	= spn.MaxScale,
					-- w	= spn.ShearWindStrength,
					-- c	= c
				-- }
			end
		end
	end
	return flora
end

--	populate solar_biomes with flora data
for mbin,_ in pairs(solar_biomes) do
	solar_biomes[mbin] = GetBiomeFlora(mbin)
end

-- return a deep copy of a tables array in a single merged table
-- Identical keys are overwritten
local function MergeTables(n)
	local function DeepCopy(org)
		local copy
		if type(org) == 'table' then
			copy = {}
			for k, v in pairs(org) do
				copy[k] = DeepCopy(v)
			end
		else
			copy = org
		end
		return copy
	end
	local tbl = {}
	for _,t in ipairs(n) do
		for k, v in pairs(t) do
			tbl[k] = DeepCopy(v)
		end
	end
	return tbl
end

--	property modifier functions for object spawns
function obj_spawn_data:addvalues(tag)
	for k, val in pairs(tag) do
		if val ~= 1 then
			self.mods[k].v = self.mods[k].v + val
			self.mods[k].i = self.mods[k].i + 1
		end
	end
end
function obj_spawn_data:averages()
	for _,d in pairs(self.mods) do
		d.v = d.i > 0 and (d.v / d.i) or 1
	end
end
function obj_spawn_data:copy(tag)
	for k, d in pairs(self.mods) do
		if k ~= 'u' then
			d.v = tag[k] or 1
			d.i = 1
		end
	end
end

-- find all tags for a single spawn and return their average
-- unless a tag includes u=true, then return just the one
local function AverageScales(spawn, worktags)
	-- Generate the modfiers and counters table for each spawn
	obj_spawn_data.mods = {}
	for k,_ in pairs(obj_spawn_data.props) do
		obj_spawn_data.mods[k] = {v=0, i=0}
	end
	for key, tag in pairs(worktags) do
		if spawn:find(key) then
			if tag.u or false then
				obj_spawn_data:copy(tag)
				break
			end
			obj_spawn_data:addvalues(tag)
		end
	end
	obj_spawn_data:averages()
end

-- main work.
-- get a merged tags list for a biome and add modifiers for every spawn
local function SetTheScales()
	-- return biome-specific prop scales
	local function GetBiomeScales(mbin)
		local tbl = {}
		for _,biome in ipairs(scale_tags.biomes) do
			if mbin:find(biome.tag) then
				tbl = MergeTables({tbl, biome.flora})
			end
		end
		return tbl
	end
	local mbin_ct = {}
	for mbin_fs, flora in pairs(solar_biomes) do
		local exml_ct = {}
		local worktags = MergeTables( {scale_tags.globals, GetBiomeScales(mbin_fs)} )
		-- use the flora properties (t_props) if I ever figure what to do with them
		for mbin,_ in pairs(flora) do
			local vct = {}
			AverageScales(mbin, worktags)
			for k, property in pairs(obj_spawn_data.props) do
				if obj_spawn_data.mods[k].v ~= 1 then
					vct[#vct+1] = {property, obj_spawn_data.mods[k].v}
				end
			end
			if #vct > 0 then
				exml_ct[#exml_ct+1] = {
					REPLACE_TYPE 		= 'All',
					INTEGER_TO_FLOAT	= 'Force',
					MATH_OPERATION 		= '*',
					SPECIAL_KEY_WORDS	= {'Filename', mbin},
					SECTION_UP			= 1,
					VALUE_CHANGE_TABLE 	= vct
				}
			end
		end
		mbin_ct[#mbin_ct+1] = {
			MBIN_FILE_SOURCE	= mbin_fs,
			EXML_CHANGE_TABLE	= exml_ct
		}
	end
	return mbin_ct
end

-- naming names
local function GetSourceName(s)
	local name = s:match('[^/]*.MBIN$')
	return name:sub(0, #name - 5)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST big props '..GetSourceName(next(solar_biomes))..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,UNUSED_VARIABLE',
	MODIFICATIONS 		= {{
		MBIN_CHANGE_TABLE	= SetTheScales()
	}
}}

-- solar_biomes = {
-- 	['BIOME1.MBIN'] = {
-- 		['FLORA1.MBIN'] = {
-- 			n = 1,
-- 			x = 1,
-- 			w = 1,
-- 		},
-- 		['FLORA2.MBIN'] = {
-- 			n = 1,
-- 			x = 1,
-- 			w = 1,
-- 		},
-- 	},
-- 	['BIOME2.MBIN'] = {
-- 		['FLORA3.MBIN'] = {
-- 			n = 1,
-- 			x = 1,
-- 			w = 1,
-- 		}
-- 	},
-- }

