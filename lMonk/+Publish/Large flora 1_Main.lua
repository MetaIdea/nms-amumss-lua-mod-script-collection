--------------------------------------------------------------------------------
local mod_desc = [[
  Utilizes the SCENE files' descriptive name and path to match 'tags'
  from scale_tags table to each scene, then multiples the tags' values with the
  properties in object_spawn_prop table.

  Multiple modifiers in the same scene path are averaged:
  - Example:
   ROCKS/LARGE/LARGEROCK.SCENE.MBIN   >> LARGE & ROCK
   ROCKS/MEDIUM/MEDIUMROCK.SCENE.MBIN >> MEDIUM & ROCK
   FOLIAGE/MEDIUMPLANT.SCENE.MBIN     >> FOLIAGE & MEDIUM & PLANT

  - The correct tag can match anything from any scene files across all
   biomes (MODEL), to a single instance of one scene (VOLCANO).
  - scale_tags.biomes are modifiers for specific source files. They can match more
   than one source: LUSH will be applied to ALL lush biomes, and LUSHBUBBLE
   applied to the one source with the matching name, overwriting LUSH.
  - The biome-specific modifiers are added to -or replace scale_tags.global table
   and are averaged with it.
  - Adding u=true makes a tag unique - Other matches will be ignored, unless the
   the tag is overwritten by a biome tag.
  - A tag with the single modifier {i=true} causes the scene to be ignored.
  - Other properties of GcObjectSpawnData.xml can be modded by adding a property's
   name to object_spawn_prop with a unique key, then adding tag modifiers for it.

  * MUST BE LAUNCHED WITH A SOURCE PRE-LOADER SCRIPT
]]------------------------------------------------------------------------------

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
				SHROOMSINGL	= {n=1.8,	x=2.85,	u=true}
			}
		},
		{
			biotg = 'FROZEN',
			flora = {-- applied to all FROZEN sources
				TREE 		= {n=1.15,	x=2.45,	c=0.8}
			}
		},
		{
			biotg = 'RADIOBIGPROPS',
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
			biotg = 'TOXICBIGPROPS',
			flora = {
				HUGETOXIC	= {n=0.7,	x=1.05,	c=0.84}
			}
		},
		{
			biotg = 'HUGESCORCHED',
			flora = {
				HUGESPIRE	= {n=0.9,	x=0.95,	c=0.8}
			},
			flags = {
				-- HUGESPIRE	= {ds=true},
				MEDIUMSPIRE	= {dv=true}
			}
		},
		{
			biotg = 'SCORCHBIGPROPS',
			flora = {
				HUGESPIRE	= {n=0.9,	x=0.95,	c=0.8}
			},
			flags = {
				MEDIUMSPIRE	= {dv=true}
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
				FACEBLEND	= {n=0.8,	x=0.84,	c=0.76,	u=true},
				TOXICGRASS	= {x=1.9,	c=0.4},
			}
		},
		{
			biotg = 'SWAMP',
			flora = {
				GROVELARGEF	= {n=1.05,	x=1.55,	c=1.05,	u=true},
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
				DEBRIS		= {c=0, 	u=true},
				CRATE		= {c=0, 	u=true},
				UNDERGROUND	= {c=0.1, 	u=true},
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
		LAVA		= {i=true},
		FRAGMENT	= {i=true},
		GRAVEL		= {i=true},
		HUGEPROPS	= {i=true},
		FARM		= {i=true}
	},
	global_flags = {}
}

---------------------------------------------------------------------------
---- EXML 2 LUA (VERSION: 0.83.2) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
--- The complete tool can be found at: https://github.com/roie-r/exml_2_lua
-------------------------------------------------------------------------------

--	Strip the XML header and data template if found
--	The template is re-added as a property
--	@param exml: exml-formatted string
local function UnWrap(exml)
	if exml:sub(1, 5) == '<?xml' then
		local template = exml:match('<Data template="([%w_]+)">')
		return '<Property name="template" value="'..template..'">\n'..
				exml:sub(exml:find('<Property'), -8)..'</Property>'
	else
		return exml
	end
end

--	Returns a table representation of EXML sections
--	When parsing a full file, the header is stripped and a mock template is added
--	@param exml: requires complete EXML sections in the nomral format
--	* Does not handle commented lines!
local function ToLua(exml)
	local function eval(val)
		if val == 'True' then
			return true
		elseif val == 'False' then
			return false
		else
			return val
		end
	end
	local tag	= [[<[/]?Property[ ]?(.-[/]?)>]]
	local tag1	= [[([%w_]+)="(.+)"[ ]?([/]?)]]
	local tag2	= [[name="([%w_]+)" value="(.*)"[ ]?([/]?)]]
	local tlua, st_node, st_array = {}, {}, {false}
	local parent= tlua
	local node	= nil
	--	array=true when processing an ordered (name) section
	local array	= false
	for prop in UnWrap(exml):gmatch(tag) do
		_,eql = prop:gsub('=', '')
		if eql > 0 then
			-- choose tag by the count of [=] in a property
			local att, val, close = prop:match(eql > 1 and tag2 or tag1)
			if close == '' then
				array = att == 'name'
				-- open new property table
				table.insert(st_node, parent)
				node = {META = {att , val}}

				 -- look up if parent is an array
				if st_array[#st_array] or att == 'value' then
					parent[#parent+1] = node
				elseif att == 'name' then
					parent[val] = node
				else
					parent[att] = node
				end
				table.insert(st_array, att == 'name')
				parent = node
			else
				-- add property to parent table
				if att == 'value' or array then
					node[#node+1] = {[att] = eval(val)}
				-- regular property (skips stubs)
				elseif att ~= 'name' then
					node[att] = eval(val)
				end
			end
		else
			-- go back to parent node
			parent = table.remove(st_node)
			table.remove(st_array)
			node = parent
		end
	end
	return tlua
end

--	Load an mbin from the amumss runtime processing temp folder
--	* The mbin must be loaded from a merged script that runs before the one calling LoadRuntimeMbin
local function LoadRuntimeMbin(path)
	path = '../MODBUILDER/_TEMP/DECOMPILED/'..path:gsub('.MBIN$', '.EXML')
	f = io.open(path, 'r')
	if f then
		t = ToLua(f:read('*a'))
		f:close()
		return t
	else
		print('LoadRuntimeMbin failed to load: '..path)
	end
end

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
local function ToExml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
	end

	--	get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	local function len2(t)
		i=0; for _ in pairs(t) do i=i+1 end; return i
	end
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'META' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.META then
					local att, val = cls['META'][1], cls['META'][2]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val, '">'})
					else
						exml:add({'name="', att, '" value="', val, '">'})
					end
					exml:add({exml_r(cls), '</Property>'})
				else
					-- add normal property
					if type(cls) == 'table' then
						key, cls = next(cls)
					end
					if key == 'name' or key == 'value' then
						exml:add({key, '="', bool(cls), '"/>'})
					else
						exml:add({'name="', key, '" value="', bool(cls), '"/>'})
					end
				end
			end
		end
		return table.concat(exml)
	end

	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].META then
		return exml_r(class)
	elseif class.META and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.META and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end

--	Adds the xml header and data template
--	Uses the contained template META if found (instead of the received variable)
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
local function FileWrapping(data, template)
	local wrapper = [[<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>]]
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua
	if data.template then data = data.template end
	-- table loaded from file
	if data.META[1] == 'template' then
		-- strip mock template
		local txt_data = ToExml(data):sub(#data.META[2] + 36, -12)
		return string.format(wrapper, data.META[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
end

---------------------------------------------------------------------------
---- MODDING

--	pull the source mbins list from the pre-loader script
dofile('Large flora 0_pre-loader.lua')
local source_mbins = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].MBIN_FILE_SOURCE

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
	tag.u = nil
	for k, d in pairs(tag) do
		self.res[k] = d
	end
end

-- find all tags for a single spawn and return their average
-- u=true tag marks unique values not to be averaged with others
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
	local solar_biome	= LoadRuntimeMbin(mbin)
	local gc_objs		= solar_biome.template.Objects

	local biomeflora, biomeflags = solar_modifiers:getModifiers(mbin)
	local workflora	= MergeTables({solar_modifiers.global_flora, biomeflora})
	local workflags	= MergeTables({solar_modifiers.global_flags, biomeflags})
	for key, objs in pairs(gc_objs) do
		if key ~= 'SelectableObjects' and key ~= 'META' then
			for _, spn in ipairs(objs) do
				spawn_data:averageScales(spn.Resource.Filename, workflora)
				if HasRes('n') then spn.MinScale		  = spn.MinScale * spawn_data.res.n end
				if HasRes('x') then spn.MaxScale		  = spn.MaxScale * spawn_data.res.x end
				if HasRes('w') then spn.ShearWindStrength = spn.ShearWindStrength * spawn_data.res.w end

				if spn.QualityVariants then
				--	loop thourgh GcObjectSpawnDataVariant objects
					for _,var in ipairs(spn.QualityVariants) do
						if HasRes('d') then
							var.FlatDensity  = var.FlatDensity	* spawn_data.res.d
							var.SlopeDensity = var.SlopeDensity	+ (spawn_data.res.d * 0.2)
						end
						if HasRes('f') then
							var.FadeOutStartDistance = var.FadeOutStartDistance * spawn_data.res.f
							var.FadeOutEndDistance	 = var.FadeOutStartDistance + 20
						end
						if HasRes('c') then var.Coverage = var.Coverage * spawn_data.res.c end

						lod = HasRes('l') and spawn_data.res.l or 1.2
						var.LodDistances[2].value = var.LodDistances[2].value * lod
						var.LodDistances[3].value = var.LodDistances[3].value * lod
						var.LodDistances[4].value = var.LodDistances[4].value * lod
						var.LodDistances[5].value = var.LodDistances[5].value * lod

						if HasRes('r') then
							var.MaxRegionRadius = var.MaxRegionRadius + spawn_data.res.r
						else
							mr = tonumber(var.MaxRegionRadius)
							var.MaxRegionRadius = var.MaxRegionRadius + ((mr < 15 and mr > 6) and 1 or 4)
						end
					end
				end
				--	loop through boolean flags
				spawn_data:getFlags(spn.Resource.Filename, workflags)
				for k, prp in pairs(spawn_data.flags) do
					if spawn_data.modflags[k] ~= nil then spn[prp] = spawn_data.modflags[k] end
				end
			end
		end
	end
	ADF[#ADF+1] = {
		FILE_CONTENT	 = FileWrapping(solar_biome),
		FILE_DESTINATION = mbin:gsub('.MBIN$', '.EXML')
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.large flora.pak', -- set by the batch name
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	ADD_FILES			= ADF
}