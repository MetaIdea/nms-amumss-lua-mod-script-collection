-------------------------------
dofile('LIB/_exml_2_lua.lua')
dofile('LIB/_lua_2_exml.lua')
-------------------------------
local mod_desc = [[
  TESTS! -- Scale biome props
]]-----------------------------

--- Properties of [GcObjectSpawnData.xml] being modified
local spawn_data = {
	calcs = {
		n	= 'MinScale',				-- [*]
		x	= 'MaxScale',				-- [*]
		w	= 'ShearWindStrength',		-- [*]
		c	= 'Coverage',				-- [*]
		l	= 'LodDistances',			-- [*]
		d	= 'FlatDensity',			-- [*] affects SlopeDensity
		f	= 'FadeOutStartDistance',	-- [*] affects FadeOutEndDistance
		r	= 'MaxRegionRadius',		-- [+]
	},
	flags = {
        cp	= 'CollideWithPlayer',
        cv	= 'CollideWithPlayerVehicle',
        dv	= 'DestroyedByPlayerVehicle',
		ds	= 'DestroyedByPlayerShip'
	}
}

local solar_modifiers = {
	biomes = {
		{
			biotg = 'LAVA',
			flora = {
				VOLCANO		= {x=1.1, 	u=true}
			}
		},
		{
			biotg = 'LUSH',
			flora = { -- applied to all LUSH sources
				TREE		= {n=1.15,	x=2.4,	c=0.9},
				BUBBLELUSH	= {n=1.15,	x=1.65,	f=2.6}
			}
		},
		{
			biotg = 'LUSHBIGPROPS',
			flora = {
				TREE		= {n=1.05,	x=2.2,	c=0.86}
			}
		},
		{
			biotg = 'LUSHBUBBLE',
			flora = {
				TREE		= {x=2.25,	c=0.86},
				FERN		= {n=1.4,	x=2.6}
			}
		},
		{
			biotg = 'LUSHOBJECTSFULL',
			flora = {
				FERN		= {n=1.3,	x=1.9},
				FLOWER		= {n=1.4,	x=1.8}
			}
		},
		{
			biotg = 'LUSHHQTENTACLE',
			flora = {
				TENTACLE	= {n=1.2,	x=1.78,	c=0.94}
			}
		},
		{
			biotg = 'LUSHROOMB',
			flora = {
				SHROOMSINGL	= {n=1.8,	x=2.85,	o=true}
			}
		},
		{
			biotg = 'FROZEN',
			flora = {-- applied to all FROZEN sources
				TREE 		= {n=1.15,	x=2.45,	c=0.8}
			}
		},
		{
			biotg = 'RADIOBIG',
			flora = {
				ROCK		= {n=1.1,	x=1.3,	c=0.95}
			}
		},
		{
			biotg = 'RADIOSPIKEPOTATO',
			flora = {
				WEIRD		= {x=1.4,	c=1.2} -- potato
			}
		},
		{
			biotg = 'SCORCHED',
			flora = {
				HUGESPIRE	= {n=0.9,	x=0.95,	c=0.8}
			},
			flags = {
				MEDIUMSPIRE	= {dv=true}
			}
		},
		{
			biotg = 'TOXIC',
			flora = {
				HUGETOXIC	= {n=0.7,	x=0.96,	c=0.78}
			}
		},
		{
			biotg = 'TOXICOBJECTSFULL',
			flora = {
				LARGEBLOB	= {n=0.4,	x=0.8},
				FUNGALTREE	= {n=1.15,	x=1.75,	c=0.86}
			}
		},
		{
			biotg = 'ROCKY',
			flora = {-- less -and smaller rocks on rocky biomes
				FACEBLEND	= {n=0.8,	x=0.84,	c=0.76,	o=true},
				TOXICGRASS	= {x=1.9,			c=1.05},
			}
		},
		{
			biotg = 'SWAMP',
			flora = {
				GROVELARGEF	= {n=1.05,	x=1.55,	c=1.05,	o=true},
				GROVELARGE	= {n=0.8,	x=-0.7, c=0.82},
				HQTREE		= {n=1.15,	x=2.5,	c=0.9},
				FERN		= {n=1.5,	x=2.1},
				FLOWER		= {n=1.4,	x=1.8, 	w=0.94}
			}
		},
		{
			biotg = 'ALIEN',
			flora = {
				LARGE		= {n=0.95,	x=1.02,	c=0.92},
				MEDIUM		= {n=0.9,	x=1.05,	c=0.82},
				SMALL		= {n=0.95,	x=1.05},
			}
		},
		{
			biotg = 'WEIRD',
			flora = {
				WEIRD		= {f=2.5,	l=2.0},
			}
		},
		{
			biotg = 'LEVELONE',
			flora = {
				DEBRIS		= {c=0, 	o=true},
				CRATE		= {c=0, 	o=true},
				UNDERGROUND	= {c=0.1, 	o=true},
				WORDSTONE	= {c=0.33}
			}
		},
		{
			biotg = 'PLANT',
			flora = {
				INTERACTIVE	= {n=0.48,	x=0.01,	c=1.1},
				TENTACLEP	= {c=0.5},
				SPOREVENT	= {c=0.5},
				FLYTRAP		= {c=0.5}
			}
		}
	},
	global_flora = {
		SHARD		= {n=1.05,	x=1.4},
		SPIRE		= {n=1.15,	x=1.3},
		ROCK		= {n=1.2,	x=1.75},
		CACTUS		= {n=1.1,	x=1.55},
		TREE		= {n=1.15,	x=2.4,	l=1.75},
		SHROOM		= {n=1.05,	x=2.5},
		FOLIAGE		= {n=1.1,	x=1.3},
		FLOWERS		= {x=1.2,			f=1.4},
		CROSS		= {n=0.95,	x=1.1,	f=2.0,	d=1.2,	l=1.55},	-- grass
		LBOARD		= {n=0.95,	x=1.1,	f=1.8,	d=1.2,	l=1.55},	-- grass
		LUSHGRASS	= {x=1.4,			f=1.6,	d=1.2,	l=1.55},	-- grass
		BUBBLELUSH	= {x=1.15,			f=2.2,			l=1.55},	-- grass
		TOXICGRASS	= {n=1.2,	x=1.6,	f=1.4,	w=0},				-- shrooms not grass!
		PLANT		= {n=0.94,	x=1.5},
		TENDRIL		= {n=1.1,	x=1.55,	f=1.4},
		BOULDER		= {n=1.1,	x=1.4},
		CURVED		= {x=1.5},
		DROPLET		= {n=1.05,	x=1.55},
		SPORE		= {x=1.2},
		LARGE		= {n=1.2,	x=1.6,	c=0.92},
		MEDIUM		= {n=1.05,	x=0.95},
		SMALL		= {n=0.95,	x=0.8},
		FIENDEGG	= {c=0.4},

	--- global lod multiplier
		SCENE		= {l=1.25},

	---	skipped
		-- LAVA		= {i=true},
		FRAGMENT	= {i=true},
		GRAVEL		= {i=true},
		HUGEPROPS	= {i=true},
		FARM		= {i=true}
	},
	global_flags = {}
}

---------------------------------------------------------------------------
---- CODING
---------------------------------------------------------------------------

--- DEBUG! -------------------------
local function ReadExml(path)
	local rf = io.open(path, 'r')
	local t = ToLua(rf:read('*a'))
	rf:close()
	return t
end
------------------------------------

local source_mbins = {
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN',	--<< preload_source
}

-- A deep merge of an array of tables by keys. Last value wins
local function MergeTables(tables)
	local merged = {}
	for _, tbl in ipairs(tables) do
		for k, val in pairs(tbl) do
			if type(val) == 'table' then
				merged[k] = merged[k] or {}
				merged[k] = MergeTables({merged[k], val})
			else
				merged[k] = val
			end
		end
	end
	return merged
end

--	sum scale values and counters for averaging
function spawn_data:addValues(tag)
	for k, val in pairs(tag) do
		if val ~= 1 then
			self.mods[k].v = self.mods[k].v + val
			self.mods[k].i = self.mods[k].i + 1
		end
	end
end
--	calculate scale averages into results
function spawn_data:averages()
	for k, d in pairs(self.mods) do
		if d.i > 0 then self.res[k] = d.v / d.i end
	end
end
--	copy scales to results in order to bypass averaging
function spawn_data:copyRes(tag)
	tag.o = nil
	for k, d in pairs(tag) do
		self.res[k] = d
	end
end

-- find all tags for a single spawn and return their average
-- o=true tag marks unique values not to be averaged with others
-- i=true tag mark ignore. results are deleted and the spawn will be skipped
function spawn_data:averageScales(spawn, worktags)
	-- Generate the modifiers and counters tables for each spawn
	self.mods = {}
	self.res  = {}
	for k,_ in pairs(self.calcs) do
		self.mods[k] = {v=0, i=0}
		self.res[k]  = -1 -- (-1 == empty)
	end
	for key, tag in pairs(worktags) do
		if spawn:find(key) then
			if tag.i then
				self.res = nil
				return
			elseif tag.u then
				self.res.u = true
				tag.u = nil
			elseif tag.o then
				self:copyRes(tag)
				return
			end
			self:addValues(tag)
		end
	end
	self:averages()
end

-- update flag modifiers for a specific biome
function spawn_data:getFlags(spawn, workflags)
	self.modflags = {}
	for tag, flags in pairs(workflags) do
		if spawn:find(tag) then
			for k, f in pairs(flags) do
				self.modflags[k] = f
			end
		end
	end
end

-- return biome-specific flora and flags modifiers
function solar_modifiers:getModifiers(mbin)
	local scales, flags = {}, {}
	for _,biome in ipairs(self.biomes) do
		if mbin:find(biome.biotg) then
			scales = MergeTables({scales, biome.flora})
			if biome.flags then
				flags = MergeTables({flags, biome.flags})
			end
		end
	end
	return scales, flags
end

--	return if result is present for a given property key
local function HasRes(k)
	return spawn_data.res and (spawn_data.res[k] ~= -1)
end

-- main work.
-- get a merged tags list for a biome and apply modifiers for every spawn
local ADF = {}
for _,mbin in pairs(source_mbins) do
	-- local solar_biome	= LoadRuntimeMbin(mbin)
	--- DEBUG --------------------------------------------------------
	local solar_biome	= ReadExml('D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.EXML')
	--- DEBUG --------------------------------------------------------
	local gc_objs		= solar_biome.template.Objects

	local biomeflora, biomeflags = solar_modifiers:getModifiers(mbin)
	local workflora	= MergeTables({solar_modifiers.global_flora, biomeflora})
	local workflags	= MergeTables({solar_modifiers.global_flags, biomeflags})
	for key, objs in pairs(gc_objs) do
		if key ~= 'SelectableObjects' and key ~= 'meta' then
			for _, spn in ipairs(objs) do
				spawn_data:averageScales(spn.Resource.Filename, workflora)
				if HasRes('n') then spn.MinScale		  = spn.MinScale * spawn_data.res.n end
				if HasRes('x') then spn.MaxScale		  = spn.MaxScale * spawn_data.res.x end
				if HasRes('w') then spn.ShearWindStrength = spn.ShearWindStrength * spawn_data.res.w end

				if spn.QualityVariants then
				--	loop thourgh GcObjectSpawnDataVariant objects
					for _,qvr in ipairs(spn.QualityVariants) do
						if HasRes('d') then
							qvr.FlatDensity  = qvr.FlatDensity * spawn_data.res.d
							qvr.SlopeDensity = qvr.FlatDensity * 1.1
						end
						if HasRes('f') then
							qvr.FadeOutStartDistance = qvr.FadeOutStartDistance * spawn_data.res.f
							qvr.FadeOutEndDistance	 = qvr.FadeOutStartDistance + 20
						end
						if HasRes('c') then qvr.Coverage = qvr.Coverage * spawn_data.res.c end

						lod = HasRes('l') and spawn_data.res.l or 1.2
						for i=2, #qvr.LodDistances do
							qvr.LodDistances[i].value = qvr.LodDistances[i].value * lod
						end
						if HasRes('r') then
							qvr.MaxRegionRadius = qvr.MaxRegionRadius + spawn_data.res.r
						else
							mr = tonumber(qvr.MaxRegionRadius)
							qvr.MaxRegionRadius = qvr.MaxRegionRadius + ((mr < 15 and mr > 6) and 1 or 4)
						end
					end
					-- add ULTRA variant (duplicates STANDARD)
					if #spn.QualityVariants == 1 and spawn_data.res.u then
						spn.QualityVariants[2] = MergeTables({spn.QualityVariants[1]})
						spn.QualityVariants[2].ID = 'ULTRA'
					end
				end
				--	loop through boolean flags
				spawn_data:getFlags(spn.Resource.Filename, workflags)
				for k, prp in pairs(spawn_data.flags) do
					if spawn_data.modflags[k] ~= nil then spn[prp] = spawn_data.modflags[k] end
				end
				g = 0
			end
		end
	end
	ADF[#ADF+1] = {
		FILE_CONTENT	 = FileWrapping(solar_biome),
		FILE_DESTINATION = mbin:gsub('.MBIN$', '.EXML')
	}
end

-- naming names
local function GetSourceName(s)
	local name = s:match('[^/]*.MBIN$')
	return name:sub(0, #name - 5)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST big props '..GetSourceName(source_mbins[1])..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= ADF
}
