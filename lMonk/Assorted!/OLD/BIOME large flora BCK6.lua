---------------------------------------------------------------------------------------
dofile('LIB/_exml_2_lua.lua')
dofile('LIB/_lua_2_exml.lua')
---------------------------------------------------------------------------------------
local mod_desc = [[
  Utilizes the SCENE files' descriptive name and path to match 'tags'
  from solar_modifiers table to each scene, then multiples the tags' values
  with the properties in object_spawn_prop table.

  Multiple modifiers in the same scene path are averaged:
  - Example:
   ROCKS/LARGE/LARGEROCK.SCENE.MBIN   >> LARGE & ROCK
   ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN >> MEDIUM & ROCK
   FOLIAGE/MEDIUMPLANT.SCENE.MBIN     >> FOLIAGE & MEDIUM & PLANT

  - A well-chosen tag can match anything from any scene file across all
   biomes (MODEL), to a single instance of one scene (VOLCANO).
  - solar_modifiers.biomes are modifiers for specific source files.
   They can match more than one source: LUSH will be applied to ALL lush biomes,
   and LUSHBUBBLE applied to the one source with the matching name, overwriting LUSH.
  - The biome-specific modifiers are added to -or replace solar_modifiers.global_flora
   table and are averaged with it.
  - Adding o=true makes a tag an override - Other matches will be ignored, unless the
   the tag is overwritten by a biome tag.
  - A tag with the single modifier {i=true} causes the scene to be ignored.
  - Other properties of GcObjectSpawnData.xml can be modded by adding a property's
   name to object_spawn_prop with a unique key, then adding tag modifiers for it.
]]-------------------------------------------------------------------------------------

--	Properties of [GcObjectSpawnData.xml] being modified
local spawn_data = {
	calcs = {
		n	= 'MinScale',				-- [*] multiplier modifier
		x	= 'MaxScale',				-- [*]
		a	= 'MaxAngle',				-- [+] additive modifier
		w	= 'ShearWindStrength',		-- [*]
		c	= 'Coverage',				-- [*]
		l	= 'LodDistances',			-- [*]
		d	= 'FlatDensity',			-- [*] affects SlopeDensity
		f	= 'FadeOutStartDistance',	-- [*] affects FadeOutEndDistance
		r	= 'MaxRegionRadius',		-- [+]
		p	= 'MaxImposterRadius',		-- [*]
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
			biotg = 'LUSH',
			flora = { -- applied to all LUSH sources
				TREE		= {n=1.15,	x=2.4,	c=0.9,	l=1.25},
				BUBBLELUSH	= {n=1.15,	x=1.65,	f=2.6}
			}
		},
		{
			biotg = 'LUSHBIGPROPS',
			flora = {
				TREE		= {n=1.05,	x=2.2,	c=0.86},
				CROSS		= {a=-5}
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
				TREE 		= {n=1.15,	x=2.45,	c=0.8,	l=1.25},
				LIVINGSHIP	= {r=-1,	l=1.02}
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
				GROVELARGEF	= {n=1.05,	x=1.55,	c=1.02,	u=true,	o=true},
				GROVELARGE	= {n=0.8,	x=-0.7, c=0.82,	u=true},
				HQTREE		= {n=1.15,	x=2.5,	c=0.9},
				FERN		= {n=1.5,	x=2.1},
				FLOWER		= {n=1.4,	x=1.8, 	w=0.94}
			}
		},
		{
			biotg = 'HUGERING',
			flora = {
				ROCKRING	= {c=0.7}
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
				WEIRD		= {l=2.6,	r=6,	u=true},
				SHELLSAIL	= {p=9},
				SHELLSHARD	= {p=9},
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
			biotg = 'STORMCRYSTAL',
			flags = {
				STORMCRYST	= {cv=true,	dv=false}
			}
		},
		{
			biotg = 'FIENDEGG',
			flora = {
				FIENDEGG	= {c=0.4}
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
		},
		{
			biotg = 'UNDERWATER',
			flora = {
				CRYSTAL		= {x=0.9,	c=0.5,	d=0.8, 	o=true},
				GASBAG		= {x=0.85,	c=0.5,	d=0.9},
				-- CRYSTALSSHAPE/LARGE
				LARGE		= {x=1.02,	o=true}
			}
		}
	},
	global_flora = {
		SHARD		= {n=1.05,	x=1.4},
		SPIRE		= {n=1.15,	x=1.3},
		ROCK		= {n=1.2,	x=1.75},
		CACTUS		= {n=1.1,	x=1.55},
		TREE		= {n=1.15,	x=2.4,	l=1.8},
		SHROOM		= {n=1.05,	x=2.5},
		FOLIAGE		= {n=1.1,	x=1.3},
		FLOWERS		= {x=1.2,			f=1.4},
		CROSS		= {n=0.95,	x=1.1,	f=2.0,	d=0.88,	l=1.5},	-- grass
		LBOARD		= {n=0.95,	x=1.1,	f=1.8,	d=0.88,	l=1.5},	-- grass
		LUSHGRASS	= {x=1.4,			f=1.6,	d=0.88,	l=1.5},	-- grass
		BUBBLELUSH	= {x=1.15,			f=2.2,			l=1.5},	-- grass
		TOXICGRASS	= {n=1.2,	x=1.6,	f=1.4,	w=0},			-- shrooms!
		PLANT		= {n=0.94,	x=1.5},
		TENDRIL		= {n=1.1,	x=1.55,	f=1.4},
		BOULDER		= {n=1.1,	x=1.4},
		CURVED		= {x=1.5},
		DROPLET		= {n=1.05,	x=1.55},
		SPORE		= {x=1.2},
		LARGE		= {n=1.2,	x=1.6,	c=0.92},
		MEDIUM		= {n=1.05,	x=0.95},
		SMALL		= {n=0.95,	x=0.8},

	--- global lod multiplier
		SCENE		= {l=1.24},

	---	skipped
		LAVA		= {i=true},
		FRAGMENT	= {i=true},
		GRAVEL		= {i=true},
		HUGEPROPS	= {i=true},
		FARM		= {i=true}
	},
	global_flags = {}
}

local source_mbins = {
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENPEACOCKOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BURNT/BURNTOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DESOLATE/DESOLATEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FLORAL/FLORALOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FLORAL/FLORALOBJECTSGRASS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENALIENOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/IRRADIATED/IRRADIATEDOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NOXIOUS/NOXIOUSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/BARREN.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/BARRENINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FROZEN.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FROZENINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/LUSH.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/LUSHINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/RADIOACTIVE.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/RADIOACTIVEINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SCORCHED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SCORCHEDINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TOXIC.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TOXICINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/FIENDEGGS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/STORMCRYSTALS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/ROCKY/ROCKOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDALIENOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SUBZERO/SUBZEROOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSMOONOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICINFESTEDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCRYSTALS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERGASBAGS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSOBJECTSDEAD.MBIN',
}

---------------------------------------------------------------------------
---- CODING
---------------------------------------------------------------------------

--	sum scale values and counters for averaging
function spawn_data:addValues(tag)
	for k, val in pairs(tag) do
		if val ~= 1 and k ~= 'u' then
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
	for k, d in pairs(tag) do
		self.res[k] = d
	end
end

--	find all tags for a single spawn and return their average
--	o=true tag marks an override, values will not to be averaged with others
--	i=true tag marks ignored. results are deleted and the spawn will be unchanged
function spawn_data:averageScales(spawn, worktags)
	-- Generate the modifiers and counters tables for each spawn
	self.mods	= {}
	self.res	= {} -- will store the calculated result
	self.ultra	= nil
	for k,_ in pairs(self.calcs) do
		self.mods[k] = {v=0, i=0}
		self.res[k]  = -1 -- (-1 == empty)
	end
	for key, tag in pairs(worktags) do
		if spawn:find(key) then
			-- process special flags first
			if tag.i then
				self.res = nil
				return
			end
			if tag.u then
				self.ultra = true
			end
			if tag.o then
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

--	return biome-specific flora and flags modifiers
function solar_modifiers:getModifiers(mbin)
	local scales, flags = {}, {}
	for _,biome in ipairs(self.biomes) do
		if mbin:find(biome.biotg) then
			scales = UnionTables({scales, biome.flora})
			if biome.flags then
				flags = UnionTables({flags, biome.flags})
			end
		end
	end
	return scales, flags
end

local function valueDump(mbin, spn, key)
	if mbin:find('FROZEN') then
		if spn.Resource.Filename:find('TREE') then
			print(mbin:sub(40)..'-->'..spn.Resource.Filename:sub(23)..'~> '..spn[key])
		end
	end
end

--	main work process.
--	Receives the exml file from amumss
local function ProcessBiome(exml, mbin)
	local function HasMod(k)
	--	True if result is present for a given property key
		return spawn_data.res and (spawn_data.res[k] ~= -1)
	end
	local function getHighVariant(qvars)
	--	Select the highest GcObjectSpawnDataVariant (between LOW STANDARD ULTRA)
	--	Add ULTRA section if flagged and return it for editing
		for _,qv in ipairs(qvars) do
			qvars.meta[qv.ID] = qv
		end
		if qvars.meta.ULTRA then
			return qvars.meta.ULTRA
		elseif spawn_data.ultra then -- add ultra section
			local qhigh		= UnionTables({qvars.meta.STANDARD})
			qhigh.ID		= 'ULTRA'
			qvars[#qvars+1] = qhigh
			return qhigh
		else
			return qvars.meta.STANDARD
		end
	end
	local solar_biome = ToLua(exml)

	local biomeflora, biomeflags = solar_modifiers:getModifiers(mbin)
	-- merged, biome-specific modifiers table
	local workflora	= UnionTables({solar_modifiers.global_flora, biomeflora})
	-- merged, biome-specific flags table
	local workflags	= UnionTables({solar_modifiers.global_flags, biomeflags})
	for key, objs in pairs(solar_biome.template.Objects) do
		if key ~= 'SelectableObjects' and key ~= 'Creatures' and key ~= 'meta' then
			for _, spn in ipairs(objs) do
				---DEBUG---------------------------
				-- valueDump(mbin, spn, 'MaxScale')
				-----------------------------------
				spawn_data:averageScales(spn.Resource.Filename, workflora)
				if HasMod('n') then spn.MinScale		  = spn.MinScale * spawn_data.res.n end
				if HasMod('x') then spn.MaxScale		  = spn.MaxScale * spawn_data.res.x end
				if HasMod('a') then spn.MaxAngle		  = spn.MaxAngle + spawn_data.res.a end
				if HasMod('w') then spn.ShearWindStrength = spn.ShearWindStrength * spawn_data.res.w end

				-- edit GcObjectSpawnDataVariant
				local qvr = getHighVariant(spn.QualityVariants)
				if HasMod('d') then
					qvr.FlatDensity  = qvr.FlatDensity * spawn_data.res.d
					qvr.SlopeDensity = qvr.FlatDensity * 1.1
				end
				if HasMod('f') and tonumber(qvr.FadeOutStartDistance) < 9000 then
					qvr.FadeOutStartDistance = qvr.FadeOutStartDistance * spawn_data.res.f
					qvr.FadeOutEndDistance	 = qvr.FadeOutStartDistance + 20
				end
				if HasMod('c') then qvr.Coverage = qvr.Coverage * spawn_data.res.c end

				lod = HasMod('l') and spawn_data.res.l or 1.22 -- default overwritten by SCENE global
				for i=2, #qvr.LodDistances do
					qvr.LodDistances[i].value = qvr.LodDistances[i].value * lod
				end
				if HasMod('r') then
					qvr.MaxRegionRadius = math.floor(qvr.MaxRegionRadius + spawn_data.res.r)
				else
					rr = tonumber(qvr.MaxRegionRadius)
					qvr.MaxRegionRadius = rr + ((rr < 15 and rr > 6) and 1 or 4)
				end
				if HasMod('p') then
					qvr.MaxImposterRadius = math.floor(qvr.MaxImposterRadius * spawn_data.res.p)
				end
				--	loop through boolean flags
				spawn_data:getFlags(spn.Resource.Filename, workflags)
				for k, prp in pairs(spawn_data.flags) do
					if spawn_data.modflags[k] ~= nil then spn[prp] = spawn_data.modflags[k] end
				end
			end
		end
	end
	return FileWrapping(solar_biome)
end

-----------------------------------------------------------------------------------------
function ProcessRawExml(the_index) -- called by AMUMSS
	local T = {}
	for _,mbin in ipairs(source_mbins) do
		local norm_path	= NormalizePath(mbin, true)
		T[norm_path]	= ProcessBiome(table.concat(the_index.ModdedEXMLs[norm_path]), mbin)
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META large flora.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'UNUSED_VARIABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = source_mbins,
		EXT_FUNC		 = { 'ProcessRawExml' }
	}
}}}}
