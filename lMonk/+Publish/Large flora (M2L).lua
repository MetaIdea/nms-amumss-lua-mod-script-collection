---------------------------------------------------------------------------------------
local mod_desc = [[
  Utilizes the SCENE files' descriptive name and path to match 'tags'
  from solar_modifiers table to each scene, then multiples the tags' values
  with the properties in spawn_data table.

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
  - Adding {ov=true} to a tag make it an override - Other matches will be discarded,
   unless the the tag is overwritten by a biome tag. A biome override tag supersedes
   a global ignore tag!
  - A tag with the single modifier {ig=true} causes the scene to be ignored,
   even if other tags match it.
  - Adding {ul=true} to a tag adds an ULTRA section to QualityVariants and performs
   the mod's changes only in the new section.
  - Other properties of GcObjectSpawnData.xml can be modded by adding a property's
   name to spawn_data with a unique key, then adding tag modifiers for it.
]]-------------------------------------------------------------------------------------

--	Properties of [GcObjectSpawnData] being modified
local spawn_data = {
	numr = {
		ns	= 'MinScale ',				-- [*] The space is NOT a bug!!
		xs	= 'MaxScale',				-- [*] multiplier modifier
		an	= 'MaxAngle',				-- [+] additive modifier
		sw	= 'ShearWindStrength',		-- [*]
		cr	= 'Coverage',				-- [*]
		ld	= 'LodDistances',			-- [*]
		df	= 'FlatDensity',			-- [*] affects SlopeDensity
		ds	= 'SlopeDensity',
		fs	= 'FadeOutStartDistance',	-- [*] affects FadeOutEndDistance
		fe	= 'FadeOutEndDistance',
		rr	= 'MaxRegionRadius',		-- [+]
		pr	= 'MaxImposterRadius',		-- [+] *10 multiplier
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
			flora = {-- applied to all LUSH sources
				TREE		= {ns=1.15,	xs=2.4,		cr=0.9,	ld=1.25},
				BUBBLELUSH	= {ns=1.15,	xs=1.65,	fs=2.6}
			}
		},
		{
			biotg = 'LUSHBIGPROPS',
			flora = {
				TREE		= {ns=1.05,	xs=2.2,		cr=0.86},
				CROSS		= {an=-5}
			}
		},
		{
			biotg = 'LUSHBUBBLE',
			flora = {
				TREE		= {xs=2.25,	cr=0.86},
				FERN		= {ns=1.4,	xs=2.6}
			}
		},
		{
			biotg = 'LUSHOBJECTSFULL',
			flora = {
				FERN		= {ns=1.3,	xs=1.9},
				FLOWER		= {ns=1.4,	xs=1.8}
			}
		},
		{
			biotg = 'LUSHHQTENTACLE',
			flora = {
				TENTACLE	= {ns=1.2,	xs=1.78,	cr=0.94}
			}
		},
		{
			biotg = 'LUSHROOMB',
			flora = {
				SHROOMSINGL	= {ns=1.8,	xs=2.85,	ov=true}
			}
		},
		{
			biotg = 'FROZEN',
			flora = {-- applied to all FROZEN sources
				TREE 		= {ns=1.15,	xs=2.45,	cr=0.8,	ld=1.22},
				LIVINGSHIP	= {rr=-1,	ld=1.02}
			}
		},
		{
			biotg = 'RADIOBIG',
			flora = {
				ROCK		= {ns=1.1,	xs=1.3,		cr=0.95}
			}
		},
		{
			biotg = 'RADIOSPIKEPOTATO',
			flora = {
				WEIRD		= {xs=1.4,	cr=1.2} -- potato
			}
		},
		{
			biotg = 'IRRADIATE',
			flora = {
				HUGE		= {ns=0.75,	xs=3.6,		cr=0.8,		ld=2.2}
			}
		},
		{
			biotg = 'SCORCHED',
			flora = {
				HUGESPIRE	= {ns=0.9,	xs=1.02,	cr=0.9,		ov=true}
			},
			flags = {
				MEDIUMSPIRE	= {dv=true}
			}
		},
		{
			biotg = 'TOXIC',
			flora = {
				HUGETOXIC	= {ns=0.7,	xs=0.97,	cr=0.88,	ov=true}
			}
		},
		{
			biotg = 'TOXICOBJECTSFULL',
			flora = {
				LARGEBLOB	= {ns=0.4,	xs=0.8},
				FUNGALTREE	= {ns=1.15,	xs=1.75,	cr=0.86}
			}
		},
		{
			biotg = 'ROCKY',
			flora = {-- less -and smaller rocks on rocky biomes
				FACEBLEND	= {ns=0.8,	xs=0.84,	cr=0.76,	ov=true},
				TOXICGRASS	= {xs=1.9,				cr=1.05},
			}
		},
		{
			biotg = 'SWAMP',
			flora = {
				GROVELARGEF	= {ns=1.05,	xs=1.55,	cr=1.02,	ul=true,	ov=true},
				GROVELARGE	= {ns=0.8,	xs=-0.7, 	cr=0.82,	ul=true},
				HQTREE		= {ns=1.15,	xs=2.5,		cr=0.9},
				FERN		= {ns=1.5,	xs=2.1},
				FLOWER		= {ns=1.4,	xs=1.8, 	sw=0.94}
			}
		},
		{
			biotg = 'HUGERING',
			flora = {
				ROCKRING	= {cr=0.85,	ov=true}
			}
		},
		{
			biotg = 'ALIEN',
			flora = {
				LARGE		= {ns=0.95,	xs=1.02,	cr=0.92},
				MEDIUM		= {ns=0.9,	xs=1.05,	cr=0.82},
				SMALL		= {ns=0.95,	xs=1.05},
			}
		},
		{
			biotg = 'WEIRD',
			flora = {
				WEIRD		= {ld=2.6,	rr=6,		ul=true},
				BONESPIRE	= {pr=7},
				CONTOUR		= {pr=7},
				SHELLSAIL	= {pr=8},
				SHELLSHARD	= {pr=8},
				HYDROGARDEN	= {pr=7},
				MSTRUCTURE	= {pr=7},
			}
		},
		{
			biotg = 'STORMCRYSTAL',
			flags = {
				STORMCRYST	= {cv=true,	dv=false}
			}
		},
		{
			biotg = 'PLANT',
			flora = {
				INTERACTIVE	= {ns=0.48,	xs=0.01,	cr=1.1},
			}
		},
		{
			biotg = 'UNDERWATER',
			flora = {
				CRYSTAL		= {xs=0.95,	cr=0.5,	df=0.8, 	ov=true},
				GASBAG		= {xs=0.85,	cr=0.5,	df=0.9}
			}
		}
	},
	global_flora = {
		SHARD		= {ns=1.05,	xs=1.4},
		SPIRE		= {ns=1.15,	xs=1.3},
		ROCK		= {ns=1.2,	xs=1.75},
		CACTUS		= {ns=1.1,	xs=1.55},
		TREE		= {ns=1.15,	xs=2.4,	ld=1.8},
		SHROOM		= {ns=1.05,	xs=2.5},
		FOLIAGE		= {ns=1.1,	xs=1.3},
		FLOWERS		= {xs=1.2,			fs=1.4},
		CROSS		= {ns=0.95,	xs=1.1,	fs=1.8,	df=0.88,	ld=1.5},	-- grass
		LBOARD		= {ns=0.95,	xs=1.1,	fs=1.8,	df=0.88,	ld=1.5},	-- grass
		LUSHGRASS	= {xs=1.4,			fs=1.6,	df=0.88,	ld=1.5},	-- grass
		BUBBLELUSH	= {xs=1.15,			fs=2.2,				ld=1.5},	-- grass
		TOXICGRASS	= {ns=1.2,	xs=1.6,	fs=1.4,	sw=0},					-- shrooms!
		PLANT		= {ns=0.94,	xs=1.5},
		TENDRIL		= {ns=1.1,	xs=1.55,		fs=1.4},
		BOULDER		= {ns=1.1,	xs=1.4},
		CURVED		= {xs=1.5},
		DROPLET		= {ns=1.05,	xs=1.55},
		SPORE		= {xs=1.2},
		LARGE		= {ns=1.2,	xs=1.6,	cr=0.92},
		MEDIUM		= {ns=1.05,	xs=0.95},
		SMALL		= {ns=0.95,	xs=0.8},

	--- global lod multiplier
		SCENE		= {ld=1.2},

	---	ignored
		LAVA		= {ig=true},
		FRAGMENT	= {ig=true},
		GRAVEL		= {ig=true},
		HUGEPROPS	= {ig=true},
		FARM		= {ig=true}
	},
	global_flags = {}
}

---	MXML 2 LUA (VERSION: 0.88.03) ... by lMonk
---	A tool for converting between mxml and lua.
--- The full version can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out[#out+1] = '<Property '
				if type(cls) == 'table' and cls.meta then
				-- add and recurs for an inner table
					for k, v in pairs(cls.meta) do
						if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' or att == 'value' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate unrelated (instead of nested) mxml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end


local function FileWrapping(tlua, ext_tmpl)
	local wrapper = '<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>'
	if type(tlua) == 'string' then
		return string.format(wrapper, ext_tmpl, tlua)
	end
	-- replace existing or add template layer if needed
	if ext_tmpl then
		if tlua.meta.template then
			tlua.meta.template = ext_tmpl
		else
			tlua = {
				meta = {template=ext_tmpl},
				tlua
			}
		end
	end
	-- strip mock template
	local txt_data = ToMxml(tlua):sub(#tlua.meta.template + 23, -12)
	return string.format(wrapper, tlua.meta.template, txt_data)
end

local function UnionTables(arr)
	local merged = {}
	for _, tbl in ipairs(arr) do
		for k, val in pairs(tbl) do
			if type(val) == 'table' then
				merged[k] = merged[k] or {}
				merged[k] = UnionTables({merged[k], val})
			else
				merged[k] = val
			end
		end
	end
	return merged
end

local function UnWrap(mxml)
	if mxml:sub(1, 5) == '<?xml' then
		local template = mxml:match('<Data template="([%w_]+)">')
		return '<Property template="'..template..'">\n'..
				mxml:sub(mxml:find('<Property'), -8)..'</Property>'
	else
		return mxml
	end
end

local function ToLua(mxml, use_id)
	local function eval(val)
		if val == 'true' then
			return true
		elseif val == 'false' then
			return false
		elseif tonumber(val) and #val < 18 and not val:match('^0x') then
			return tonumber(val)
		else
			return val
		end
	end
	local function parseTag(line)
		if #line < 1 then return nil end
		local attr = {
			opn_ = line:sub(-1) ~= '/',
			n_	 = 0
		}
		for att, val in line:gmatch('(.-)="(.-)"') do
			attr[att:gsub('^%s+', '')] = val
			attr.n_ = attr.n_ + 1
		end
		return attr
	end
	local tlua, st_node = {}, {}
	local parent= tlua
	local node	= nil
	for prop in UnWrap(mxml):gmatch('<[/]?Property[ ]?(.-[/]?)>') do
		local tag = parseTag(prop)
		if tag then
			if tag.opn_ then -- open tag; add new section
				st_node[#st_node+1] = parent
				node = {meta = tag}
				if tag._id then
					if use_id then
						key = tag._id
					else
						key = #parent + 1
					end
				elseif tag._index then
					key = #parent + 1
				elseif (tag.name and tag.n_ == 1) or (parent.meta and parent.meta.n_ > 1) then
					key = tag.name
				else
					key = #parent + 1
				end
				parent[key] = node
				parent = node
			else -- closed tag; add property to section
				local att, val = nil, nil
				if tag.name and tag.n_ == 1 then
					att = #node+1
					val = {name = eval(tag.name)} -- list stub
				elseif parent.meta.n_ > 1 or parent.meta.template then
					att = tag.name
					val = eval(tag.value)
				elseif parent.meta.n_ == 1 then
					att = #node+1
					if parent.meta.name == tag.name then
						val = eval(tag.value)
					else
						val = {[tag.name] = eval(tag.value)}
					end
				else
					att = tag.name
					val = eval(tag.value)
				end
				node[att] = val
			end
		else
			-- go back to parent node
			parent = table.remove(st_node)
			node = parent
		end
	end
	return tlua[1] -- discard the wrapping table
end
---------------------------------------------------------------------------------

local source_mbins = {
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOCEANOBJECTSA.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOCEANOBJECTSB.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENOCEANOBJECTSC.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENPEACOCKOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENRUINSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BURNT/BURNTOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BURNT/BURNTREMIX/BURNTREMIXOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSOBJECTSVAR1.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSOBJECTSVAR2.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/FROZENDEADWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DESOLATE/DESOLATEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FLORAL/FLORALOBJECTSEMPTY.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FLORAL/FLORALOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FLORAL/FLORALOBJECTSGRASS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENALIENOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENISLANDSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLAROBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENRUINSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUWPLANTOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/IRRADIATED/IRRADIATEDOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/IRRADIATED/IRRADREMIX/IRRADREMIXOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/JUNGLE/JUNGLEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAISLANDSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVAOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLEOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMAOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHRUINSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NOXIOUS/NOXIOUSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NOXIOUS/NOXREMIX/NOXREMIXOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/BARREN.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/BARRENINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FROZEN.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FROZENINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/LUSH.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/LUSHINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/RADIOACTIVE.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/RADIOACTIVEINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SCORCHED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SCORCHEDINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TOXIC.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TOXICINFESTED.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEISLANDSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVERUINSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/ROCKY/ROCKOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDALIENOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDRUINSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHOCEANOBJECTSA.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHOCEANOBJECTSB.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHOCEANOBJECTSC.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SUBZERO/SUBZEROOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SUBZERO/SUBZREMIX/SUBZREMIXOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPISLANDSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSMOONOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICINFESTEDOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICISLANDSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOCEANOBJECTSA.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOCEANOBJECTSB.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICOCEANOBJECTSC.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICRUINSOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESOBJECTS.MBIN',
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESOBJECTS.MBIN',
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
-------------------------------------------------------------------------------
--	sum scale values and counters for averaging
function spawn_data:addValues(tag)
	for k, val in pairs(tag) do
		if val ~= 1 and k ~= 'ul' then
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
--	ov=true tag marks an override, values will not to be averaged with others
--	ig=true tag marks ignored. results are deleted and the spawn will be unchanged
function spawn_data:averageScales(spawn, worktags)
	-- Generate/reset the modifiers and counters tables for each spawn
	self.mods	= {}
	self.res	= {} -- will store the calculated result
	self.ultra	= nil
	for k,_ in pairs(self.numr) do
		self.mods[k] = {v=0, i=0}
		self.res[k]  = -1 -- (-1 == empty)
	end
	for key, tag in pairs(worktags) do
		if spawn:find(key) then
			-- process special flags first
			if tag.ul then
				self.ultra = true
			end
			if tag.ov then
				self:copyRes(tag)
				return
			end
			if tag.ig then
				self.res = nil
				return
			end
			self:addValues(tag)
		end
	end
	self:averages()
end

--	update flag modifiers for a specific biome
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

--	True if result exists for a given property key
function spawn_data:HasMod(k)
	return self.res and self.res[k] ~= -1
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

--	main work process (Receives the exml file from amumss)
local function ProcessBiome(exml, mbin)
	local function getHighVariant(qvars)
	--	Select the highest GcObjectSpawnDataVariant (between LOW STANDARD ULTRA)
	--	Add ULTRA section if flagged and return it for editing
		for _,qv in ipairs(qvars) do
			-- map variant id for direct access
			-- key ending with [_] is ignored by ToMxml
			qvars.meta[qv.ID..'_'] = qv
		end
		if qvars.meta.ULTRA_ then
			return qvars.meta.ULTRA_
		elseif spawn_data.ultra then -- add ultra section
			local qhigh		= UnionTables({qvars.meta.STANDARD_})
			qhigh.ID		= 'ULTRA'
			qvars[#qvars+1] = qhigh
			return qhigh
		else
			return qvars.meta.STANDARD_
		end
	end
	-- if [QualityVariants] is missing then mbin is deprecated
	local function hasQVariant(t)
		for k, v in pairs(t) do
			if k == 'QualityVariants' then
				return true
			elseif type(v) == 'table' then
				if hasQVariant(v) then return true end
			end
		end
		return false
	end
	local solar_biome = ToLua(exml)
	if not hasQVariant(solar_biome) then return 'IGNORE' end

	local prp = spawn_data.numr -- shorter reference to GcObjectSpawnData property names
	local biomeflora, biomeflags = solar_modifiers:getModifiers(mbin)
	-- merged, biome-specific modifiers table
	local workflora	= UnionTables({solar_modifiers.global_flora, biomeflora})
	-- merged, biome-specific flags table
	local workflags	= UnionTables({solar_modifiers.global_flags, biomeflags})
	-- for key, objs in pairs(solar_biome.template.Objects) do
	for key, objs in pairs(solar_biome[1]) do
		if key ~= 'meta' and objs[1] and objs[1].meta.value == 'GcObjectSpawnData' then
			for _, spn in ipairs(objs) do
				---DEBUG---------------------------
				-- valueDump(mbin, spn, 'MaxScale')
				-----------------------------------
				spawn_data:averageScales(spn.Resource.Filename, workflora)
				if spawn_data:HasMod('ns') then spn[prp.ns] = spn[prp.ns] * spawn_data.res.ns end	-- MinScale
				if spawn_data:HasMod('xs') then spn[prp.xs]	= spn[prp.xs] * spawn_data.res.xs end	-- MaxScale
				if spawn_data:HasMod('an') then spn[prp.an]	= spn[prp.an] + spawn_data.res.an end	-- MaxAngle
				if spawn_data:HasMod('sw') then spn[prp.sw] = spn[prp.sw] * spawn_data.res.sw end	-- ShearWindStrength

				-- edit GcObjectSpawnDataVariant
				local qvr = getHighVariant(spn.QualityVariants)
				if spawn_data:HasMod('df') then
					qvr[prp.df] = qvr[prp.df] * spawn_data.res.df	-- FlatDensity
					qvr[prp.ds] = qvr[prp.df] * 1.06				-- SlopeDensity
				end
				if spawn_data:HasMod('fs') and tonumber(qvr[prp.fs]) < 9000 then
					qvr[prp.fs] = qvr[prp.fs] * spawn_data.res.fs	-- FadeOutStartDistance
					qvr[prp.fe] = qvr[prp.fs] + 20					-- FadeOutEndDistance
				end
				if spawn_data:HasMod('cr') then qvr[prp.cr] = qvr[prp.cr] * spawn_data.res.cr end	-- Coverage

				lod = spawn_data:HasMod('ld') and spawn_data.res.ld or 1.22 -- default overwritten by SCENE global
				for i=2, #qvr[prp.ld] do
					qvr[prp.ld][i] = qvr[prp.ld][i] * lod			-- LodDistances
				end
				local rr = tonumber(qvr[prp.rr])
				if spawn_data:HasMod('rr') then
					qvr[prp.rr] = math.floor(rr + spawn_data.res.rr)-- MaxRegionRadius
				elseif rr < 90 then
					qvr[prp.rr] = rr + ((rr < 15 and rr > 6) and 1 or 4)
				end
				if spawn_data:HasMod('pr') and tonumber(qvr[prp.pr]) < 90 and rr < 90 then
					qvr[prp.pr] = math.floor(qvr[prp.pr] + spawn_data.res.pr * 10) -- MaxImposterRadius
				end
				--	loop through boolean flags
				spawn_data:getFlags(spn.Resource.Filename, workflags)
				for k, flg in pairs(spawn_data.flags) do
					if spawn_data.modflags[k] ~= nil then spn[flg] = spawn_data.modflags[k] end
				end
			end
		end
	end
	return FileWrapping(solar_biome)
end

-----------------------------------------------------------------------------------------
ProcessRawMxml = nil -- to silence unused_variable
function ProcessRawMxml(the_index) -- called by AMUMSS
	local T = {}
	for _,mbin in ipairs(source_mbins) do
		local norm_path	= NormalizePath(mbin, true)
		T[norm_path]	= ProcessBiome(table.concat(the_index.ModdedEXMLs[norm_path]), mbin)
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.large flora.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.58',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE,UNDEFINED_VARIABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = source_mbins,
		EXT_FUNC		 = { 'ProcessRawMxml' }
	}
}}}}