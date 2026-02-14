----------------------------------------------------------------------
local mod_desc = [[
  procedurally-placed keys - Only 3 keys will appear in any instance
  4 Alternate placements for the treasure chest
]]--------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.06
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite', '_remove'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
					-- Just for readability. The compiler doesn't need the ordering
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
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
					if att == 'name' then
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
	-- concatenate consecutive (instead of nested) sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	=> Build a TkSceneNodeAttributeData section
--	@param name: scene attribute name
--	@param value: scene attribute value
local function ScAttribute(name, value)
	return {
		meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
		Name	= name,
		Value	= type(value) == 'boolean' and (value and 'TRUE' or 'FALSE') or value
	}
end

--	=> Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
local function ProcessOnenAll(items, acton)
	-- key==1 exists means multiple entries
	if items[1] then
		local T = {}
		for _,e in ipairs(items) do
			T[#T+1] = acton(e)
		end
		return T
	end
	return acton(items)
end

--	=> Build a single -or list of TkSceneNodeData classes
--	@param props: a keyed table for scene class properties
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  ntype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  pxlud = [optional] PlatformExclusion
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
local function ScNode(nodes)
	--	returns a jenkins hash from a string (by lyravega)
	local function jenkinsHash(input)
		local hash = 0
		local t_chars = {string.byte(input:upper(), 1, #input)}

		for i = 1, #input do
			hash = (hash + t_chars[i]) & 0xffffffff
			hash = (hash + (hash << 10)) & 0xffffffff
			hash = (hash ~ (hash >> 6)) & 0xffffffff
		end
		hash = (hash + (hash << 3)) & 0xffffffff
		hash = (hash ~ (hash >> 11)) & 0xffffffff
		hash = (hash + (hash << 15)) & 0xffffffff
		return tostring(hash)
	end
	--	Build a TkSceneNodeData class
	local function sceneNode(props)
		local T	= {
			meta	= {name='Children', value='TkSceneNodeData'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {name='Transform', value='TkTransformData'},
			TransX	= (props.form.tx or props.form[1]) or nil,
			TransY	= (props.form.ty or props.form[2]) or nil,
			TransZ	= (props.form.tz or props.form[3]) or nil,
			RotX	= (props.form.rx or props.form[4]) or nil,
			RotY	= (props.form.ry or props.form[5]) or nil,
			RotZ	= (props.form.rz or props.form[6]) or nil,
			ScaleX	= (props.form.s_ or props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.s_ or props.form.sy or props.form[8] or props.form[7]) or 1,
			ScaleZ	= (props.form.s_ or props.form.sz or props.form[9] or props.form[7]) or 1
		}
		--	if present, add attributes list
		if props.attr then
			-- add accompanying attributes
			if props.attr.SCENEGRAPH then
				props.attr.EMBEDGEOMETRY = true
			elseif props.attr.TYPE then
				props.attr.NAVIGATION = false
			end
			T.Attr = { meta = {name='Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = ScAttribute(nm, val)
			end
		end
		if props.child then
		--	add children list if found
			local k,_ = next(props.child)
			local cnd = ScNode(props.child)
			T.Child	= k == 1 and cnd or {cnd}
			T.Child.meta = {name='Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end

--	=> Wrapper function. Accepts lua scene nodes and Returns an mxml string.
local function AddSceneNodes(nodes)
	return ToMxml(ScNode(nodes))
end

--	=> Adds the header and class template for a standard mxml file
--	@param data: A lua2mxml formatted table
--	@param template: [optional] A class template string. Overwrites the internal template!
local function ToMxmlFile(tlua, ext_tmpl)
	local wrapper = '<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>'
	if type(tlua) == 'string' then
		return wrapper:format(ext_tmpl, tlua)
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
	return wrapper:format(tlua.meta.template, txt_data)
end
---------------------------------------------------------------------------------

local key_nodes = {
	tid	 = '_CRATES_KEY_',
	name = '_Cratekey_',
	form = {
		{-26.1,	-7.45,	-3.5,	21.0,	31.0,	1.0},	-- below side walk
		{47.8,	-10.3,	8.2,	30.2,	28,		-16.7},	-- bottom of slant
		{37,	-3.3,	18.8,	-2,		5,		6},		-- in tower
		{4.6,	-7.85,	30.0,	-18,	-160,	4.0},	-- mid center & tower
		{-0.3,	-19.15,	-45,	0,		270,	5},		-- stairs bottom
		{-1,	-6.4,	-38.3,	-4.7,	9.2,	-1.3},	-- stairs top
	}
}

local lock_nodes = {
	tid	 = '_CRATES_LOCK_',
	name = '_Cratelock_',
	form = {
		{-0.9,	-8.16,	0.5,	1.7,	2.4,	4.9},		-- original center
		{-0.92,	-12,	-31,	4,		-175,	-1.2},		-- behind stairs
		{33.4,	0.55,	23.2,	2.0,	-35,	3.5, 0.8},	-- on tower
		{-25.6,	-5.84,	-17.1,	8.0,	-177,	5.0},		-- end of side walk
	}
}

local function addChar(n, i, u)
	local s = n..string.char(64 + i)
	return u and s:upper() or s
end

-- build scene nodes for crates and keys
local mx_scn = {}
for i, f in ipairs(key_nodes.form) do
	mx_scn[#mx_scn+1] = {
		name	= addChar(key_nodes.name, i),
		ntype	= 'REFERENCE',
		form	= f,
		attr	= {
			SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATEKEY.SCENE.MBIN'
		}
	}
end
for i, f in ipairs(lock_nodes.form) do
	mx_scn[#mx_scn+1] = {
		name	= addChar(lock_nodes.name, i),
		ntype	= 'REFERENCE',
		form	= f,
		attr	= {
			SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATELOCK.SCENE.MBIN'
		}
	}
end

local function rsrc3Group(name, ix, cmb)
	return {
		meta	= {name='Descriptors', value='TkResourceDescriptorData'},
		Id		= addChar(name, cmb[1], true),
		Name	= addChar(name, cmb[1]),
		Children= {
			meta = {name='Children'},
			{
				meta = {name='Children', value='TkModelDescriptorList'},
				TkModelDescriptorList = {
					meta = {name='TkModelDescriptorList'},
					List = {
						meta = {name='List'},
						{
							meta	= {name='List', value='TkResourceDescriptorList'},
							TypeId	= addChar(name..'ID2_', ix, true),
							Descriptors = {
								meta = {name='Descriptors'},
								{
									meta	= {name='Descriptors', value='TkResourceDescriptorData'},
									Id		= addChar(name, cmb[2], true),
									Name	= addChar(name, cmb[2]),
									Children= {
										meta = {name='Children'},
										{
											meta = {name='Children', value='TkModelDescriptorList'},
											TkModelDescriptorList = {
												meta = {name='TkModelDescriptorList'},
												List = {
													meta = {name='List'},
													{
														meta	= {name='List', value='TkResourceDescriptorList'},
														TypeId	= addChar(name..'ID3_', ix, true),
														Descriptors = {
															meta = {name='Descriptors'},
															{
																meta	= {name='Descriptors', value='TkResourceDescriptorData'},
																Id		= addChar(name, cmb[3], true),
																Name	= addChar(name, cmb[3])
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
end
-- build descriptor for proc-gen scene nodes
local mx_dsc = {
	-- file wrapper template
	meta = {template='cTkModelDescriptorList'},
	List = {
		meta = {name='List'},
		Keys = {
		-- keys descriptor
			meta		= {name='List', value='TkResourceDescriptorList'},
			TypeId		= key_nodes.tid,
			Descriptors	= {
				meta = {name='Descriptors'}
			}
		},
		Locks = {
		-- locks descriptor
			meta		= {name='List', value='TkResourceDescriptorList'},
			TypeId		= lock_nodes.tid,
			Descriptors	= {
				meta = {name='Descriptors'}
			}
		}
	}
}
local key_groups = {}
--	generate combinations of 3 from all key_nodes
for i = 1, #key_nodes.form - 2 do
	for j = i + 1, #key_nodes.form - 1 do
		for k = j + 1, #key_nodes.form do
			key_groups[#key_groups+1] = {i, j, k}
		end
	end
end
-- Add keys
for i, cmb in ipairs(key_groups) do
	table.insert(mx_dsc.List.Keys.Descriptors, rsrc3Group(key_nodes.name, i, cmb))
end
-- Add lock crates
for i=1, #lock_nodes.form do
	table.insert(mx_dsc.List.Locks.Descriptors, {
		meta	= {name='Descriptors', value='TkResourceDescriptorData'},
		Id		= addChar(lock_nodes.name, i, true),
		Name	= addChar(lock_nodes.name, i)
	})
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Treasure Ruin Procedural Crates',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.21',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'RefCrate.-'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Layout_1'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= AddSceneNodes(mx_scn)
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.DESCRIPTOR.MXML',
			FILE_CONTENT	 = ToMxmlFile(mx_dsc)
		}
	}
}