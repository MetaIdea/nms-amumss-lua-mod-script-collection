-------------------------------
local mod_desc = [[
  TESTS! -- Scale biome props
]]-----------------------------

--- Properties of [GcObjectSpawnData.xml] being modified
local object_spawn_prop = {
	n = 'MinScale',
	x = 'MaxScale',
	c = 'Coverage',
	d = 'SlopeDensity',
	w = 'ShearWindStrength'
}

local scale_tags = {
	biome = {
		{
			'LUSH', { --- applied to all LUSH sources
				TREE		= {n=1.15,	x=2.4,	c=0.9},
				BUBBLELUSH	= {n=1.15,	x=1.65}
			}
		},
		{
			'LUSHBIGPROPSOBJECTSFULL', {
				TREE		= {n=1.05,	x=2.2,	c=0.86}
			}
		},
		{
			'LUSHBUBBLEOBJECTS', {
				TREE		= {x=2.25,	c=0.86},
				FERN		= {n=1.4,	x=2.6}
			}
		},
		{
			'LUSHOBJECTSFULL', {
				FERN		= {n=1.3,	x=1.9},
				FLOWER		= {n=1.4,	x=1.8}
			}
		},
		{
			'TENTACLEOBJECTSFULL', {
				TENTACLE	= {n=1.2,	x=1.8,	c=0.94}
			}
		},
		{
			'LUSHROOMBOBJECTS', {
				SHROOMSINGL	= {n=1.8,	x=2.9,	u=true}
			}
		},
		{
			'FROZEN', { --- applied to all FROZEN sources
				TREE 		= {n=1.15,	x=2.45,	c=0.85}
			}
		},
		{
			'RADIOBIGPROPS', {
				ROCK		= {n=1.1,	x=1.3,	c=0.95}
			}
		},
		{
			'RADIOSPIKEPOTATO', {
				WEIRD		= {x=1.4,	c=1.2} -- potato
			}
		},
		{
			'TOXIC', { --- applied to all TOXIC sources
				TENDRIL		= {n=1.4,	x=1.9}
			}
		},
		{
			'TOXICBIGPROPS', {
				HUGEPROPS	= {n=0.7,	x=1.05,	c=0.84}
			}
		},
		{
			'TOXICOBJECTSFULL', {
				LARGEBLOB	= {n=0.4,	x=0.8},
				FUNGALTREE	= {n=1.15,	x=1.75,	c=0.86}
			}
		},
		{
			'ROCKY', { --- less -and smaller rocks on rocky biomes
				FACEBLEND	= {n=0.8,	x=0.9,	c=0.84,	u=true}
			}
		},
		{
			'SWAMPOBJECTSFULL', {
				GROVELARGEF	= {n=1.05,	x=1.55,	c=1.1,	u=true},
				GROVELARGE	= {n=0.8,	x=-0.7, c=0.82},
				HQTREE		= {n=1.15,	x=2.5,	c=0.9,	u=true},
				FERN		= {n=1.5,	x=2.1},
				FLOWER		= {n=1.4,	x=1.8, 	w=0.94}
			}
		},
		{
			'ALIEN', {
				LARGE		= {n=0.95,	x=1.02,	c=0.92},
				MEDIUM		= {n=0.9,	x=1.05,	c=0.82},
				SMALL		= {n=0.95,	x=1.05}
			}
		},
		{
			'LEVELONE', {
				DEBRIS		= {c=0.00001,	u=true},
				CRATE		= {c=0.00001,	u=true},
				UNDERGROUND	= {c=0.1},
				WORDSTONE	= {c=0.33}
			}
		},
		{
			'PLANT', {
				INTERACTIVE	= {n=0.48,	x=0.01,	c=1.1},
				TENTACLEP	= {c=0.6,	u=true},
				SPOREVENT	= {c=0.6,	u=true},
				FLYTRAP		= {c=0.6,	u=true}
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
		CROSS		= {n=0.95,	x=1.1},	      	-- grass
		LBOARD		= {n=0.95,	x=1.1,	d=0.05},-- grass
		TOXICGRASS	= {n=1.2,	x=1.6,	w=0},	-- not grass!
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

-- find all tags for a single spawn and return their average
-- unless a tag includes u=true, then return just the one
local function AverageScales(spawn, worktags)
	local mods = {}
	function mods:addvals(tag)
		for k, val in pairs(tag) do
			if val ~= 1 then
				self[k].v = self[k].v + val
				self[k].i = self[k].i + 1
			end
		end
	end
	function mods:avgs()
		for _,d in pairs(self) do
			if type(d) ~= 'function' then
				d.v = d.i > 0 and (d.v / d.i) or 1
			end
		end
	end
	function mods:copy(tag)
		for k, d in pairs(self) do
			if type(d) ~= 'function' and k ~= 'u' then
				d.v = tag[k] or 1
			end
		end
	end

	-- Generate the modfiers and counters table for object_spawn_prop
	for k,_ in pairs(object_spawn_prop) do
		mods[k] = {v=0, i=0}
	end

	for key, tag in pairs(worktags) do
		if spawn:find(key) then
			if tag.u or false then
				mods:copy(tag)
				return mods
			end
			mods:addvals(tag)
		end
	end
	mods:avgs()
	return mods
end


_modifier = nil
function MathOpSelect(property, currentValue)
	currentValue = tonumber(currentValue)
	if currentValue ~= 0 then
		print(string.format('%s = %s * %s -- %s', currentValue * _modifier, currentValue, _modifier, property))
		return currentValue * _modifier
	else
		print(string.format('%s = %s + %s -- %s', currentValue + _modifier, currentValue, _modifier, property))
		return currentValue + _modifier
	end
end

-- main work.
-- get a merged tags list for a biome and add modifiers for every spawn
local function SetTheScales(biome_objects)
	-- return biome-specific prop scales
	function GetBiomeScales(src)
		local tbl = {}
		for _,d in ipairs(scale_tags.biome) do
			if src:find(d[1]) then
				tbl = MergeTables({tbl, d[2]})
			end
		end
		return tbl
	end
	function AddVal(T, prop, modifier)
		if modifier.v ~= 1 then
			_modifier = modifier.v
			-- print(string.format('modifier = %s', modifier.v))
			T[#T+1] = {prop, 'MathOpSelect()'}
		end
	end
	local mbin_chg_tbl = {}
	for _,src in pairs(biome_objects) do
		local mods_tbl = {
			MBIN_FILE_SOURCE	= src.source,
			EXML_CHANGE_TABLE	= {}
		}
		local worktags = MergeTables( {scale_tags.globals, GetBiomeScales(src.source)} )
		for _,spn in pairs(src.spawn) do
			local vct = {}
			local mods = AverageScales(spn, worktags)
			for k, pr in pairs(object_spawn_prop) do
				AddVal(vct, pr, mods[k])
			end
			if #vct > 0 then
				local spawn_props = {
					REPLACE_TYPE 		= 'All',
					INTEGER_TO_FLOAT	= 'Force',
					SPECIAL_KEY_WORDS	= {'Filename', spn},
					SECTION_UP			= 1,
					VALUE_CHANGE_TABLE 	= vct
				}
				table.insert(mods_tbl.EXML_CHANGE_TABLE, spawn_props)
			end
		end
		table.insert(mbin_chg_tbl, mods_tbl)
	end
	return mbin_chg_tbl
end

local biome_objects = {
	{
		source = 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN',
		spawn = {
			'MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SNOWFRAGMENTS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHSNOWBLEND.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/BARREN/HQ/SMALLROCK.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/SMALLROCK.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKSSHARDS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/PLANTS/SPRIGBUSH.SCENE.MBIN',
	}},
}

-- naming names
local function GetSourceName(s)
	local name = s:match('[^/]*.MBIN$')
	return name:sub(0, #name - 5)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST big props '..GetSourceName(biome_objects[1].source)..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,UNUSED_VARIABLE',
	MODIFICATIONS 		= {{
		MBIN_CHANGE_TABLE	= SetTheScales(biome_objects)
	}
}}
