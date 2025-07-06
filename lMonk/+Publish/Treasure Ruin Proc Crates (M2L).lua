----------------------------------------------------------------------
local mod_desc = [[
  procedurally-placed keys - Only 3 keys will appear in any instance
  4 Alternate placements for the treasure chest
]]--------------------------------------------------------------------
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


local function ProcessOnenAll(items, acton)
	-- first key = 1 means multiple entries
	if next(items) == 1 then
		local T = {}
		for _,e in ipairs(items) do
			T[#T+1] = acton(e)
		end
		return T
	end
	return acton(items)
end

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
			ScaleX	= (props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sy or props.form[8]) or 1,
			ScaleZ	= (props.form.sz or props.form[9]) or 1
		}
		--	if present, add attributes list
		if props.attr then
			-- add accompanying attribute to scenegraph
			if props.attr.SCENEGRAPH then
				props.attr.EMBEDGEOMETRY = 'TRUE'
			end
			T.Attr = { meta = {name='Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= val
				}
			end
		end
		if props.child then
		--	add children list if found
			local k,_ = next(props.child)
			cnd = ScNode(props.child)
			T.Child	= k == 1 and cnd or {cnd}
			T.Child.meta = {name='Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
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
---------------------------------------------------------------------------------

local key_nodes = {
	tid	 = '_CRATES_KEY_',
	name = '_Cratekey_',
	form = {
		{-26.1,		-7.45,		-3.5,		21.0,		31.0,		1.0},		-- below side walk
		{47.79934,	-10.29004,	8.20181,	30.20214,	28.048,		-16.6737},	-- bottom of slant
		{35.64062,	-3.38012,	21.2812,	-2.890653,	23.66665,	6.40387},	-- in tower
		{4.6,		-7.85,		30.0,		-18,		-160,		4.0},		-- mid center & tower
		{-1.9188,	-19.8312,	-51.76936,	9.22353,	184.20784,	-1.3652},	-- stairs bottom
		{-0.9938,	-6.0703,	-38.33277,	-4.67097,	9.22354,	-1.3652},	-- stairs top
	}
}

local lock_nodes = {
	tid	 = '_CRATES_LOCK_',
	name = '_Cratelock_',
	form = {
		{-0.91945,	-8.16323,	0.4867,		1.69392,	2.41958,	4.91478},				-- original center
		{-0.91945,	-12.19,		-31.1867,	1.7,		-175,		-1.2},					-- behind stairs
		{33.4,		0.55,		23.2,		2.0,		-35,		3.5,	0.8, 0.8, 0.8},	-- on tower
		{-25.6,		-5.84,		-17.1,		8.0,		-177,		5.0},					-- end of side walk
	}
}

local function AddChar(n, i, u)
	local s = n..string.char(64 + i)
	return u and s:upper() or s
end

local function AddCrateAndKey()
	local T = {}
	for i, f in ipairs(key_nodes.form) do
		T[#T+1] = {
			name	= AddChar(key_nodes.name, i),
			ntype	= 'REFERENCE',
			form	= f,
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATEKEY.SCENE.MBIN'
			}
		}
	end
	for i, f in ipairs(lock_nodes.form) do
		T[#T+1] = {
			name	= AddChar(lock_nodes.name, i),
			ntype	= 'REFERENCE',
			form	= f,
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATELOCK.SCENE.MBIN'
			}
		}
	end
	return ToMxml(ScNode(T))
end

local function GenerateDescriptor()
	local function Rsrc3Group(name, ix, cmb)
		return {
			meta = {name='Descriptors', value='TkResourceDescriptorData'},
			Id		= AddChar(name, cmb[1], true),
			Name	= AddChar(name, cmb[1]),
			Children= {
				meta = {name='Children'},
				{
					meta = {name='Children', value='TkModelDescriptorList'},
					TkModelDescriptorList = {
						meta = {name='TkModelDescriptorList'},
						List = {
							meta = {name='List'},
							{
								meta = {name='List', value='TkResourceDescriptorList'},
								TypeId	= AddChar(name..'ID2_', ix, true),
								Descriptors = {
									meta = {name='Descriptors'},
									{
										meta = {name='Descriptors', value='TkResourceDescriptorData'},
										Id		= AddChar(name, cmb[2], true),
										Name	= AddChar(name, cmb[2]),
										Children= {
											meta = {name='Children'},
											{
												meta = {name='Children', value='TkModelDescriptorList'},
												TkModelDescriptorList = {
													meta = {name='TkModelDescriptorList'},
													List = {
														meta = {name='List'},
														{
															meta = {name='List', value='TkResourceDescriptorList'},
															TypeId	= AddChar(name..'ID3_', ix, true),
															Descriptors = {
																meta = {name='Descriptors'},
																{
																	meta = {name='Descriptors', value='TkResourceDescriptorData'},
																	Id		= AddChar(name, cmb[3], true),
																	Name	= AddChar(name, cmb[3])
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
	local T = {
		-- file wrapper template
		meta = {template='cTkModelDescriptorList'},
		List = {
			meta = {name='List'},
			Keys = {
			-- keys descriptor
				meta = {name='List', value='TkResourceDescriptorList'},
				TypeId		= key_nodes.tid,
				Descriptors	= {
					meta = {name='Descriptors'}
				}
			},
			Locks = {
			-- locks descriptor
				meta = {name='List', value='TkResourceDescriptorList'},
				TypeId		= lock_nodes.tid,
				Descriptors	= {
					meta = {name='Descriptors'}
				}
			}
		}
	}
	local combinations = {}
	--	generate combinations of 3 from all key_nodes
	for i = 1, #key_nodes.form - 2 do
		for j = i + 1, #key_nodes.form - 1 do
			for k = j + 1, #key_nodes.form do
				combinations[#combinations+1] = {i, j, k}
			end
		end
	end
	-- Add keys
	for i, cmb in ipairs(combinations) do
		table.insert(T.List.Keys.Descriptors, Rsrc3Group(key_nodes.name, i, cmb))
	end
	-- Add lock crates
	for i=1, #lock_nodes.form do
		table.insert(T.List.Locks.Descriptors, {
			meta = {name='Descriptors', value='TkResourceDescriptorData'},
			Id		= AddChar(lock_nodes.name, i, true),
			Name	= AddChar(lock_nodes.name, i)
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Treasure Ruin Procedural Crates.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.58',
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
				ADD 				= AddCrateAndKey()
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.DESCRIPTOR.MXML',
			FILE_CONTENT	 = FileWrapping(GenerateDescriptor())
		}
	}
}