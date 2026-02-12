----------------------------------------------------------------------------------
local mod_desc = [[
  procedurally placed containers in the crashed -and underwater-crashed freigther
  replaces the underwater one with the land model
]]--------------------------------------------------------------------------------
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
---------------------------------------------------------------------------------

local loot_containers = {
	{
		name = '_OutLeft_',
		form = {
			{45,	-4.6,	-46,	310,	65,		-33.5,	0.6},
			{70.8,	-4.2,	-52.3,	-96.2,	46.62,	-13.5,	0.6},
			{27.2,	-1.7,	-48.5,	10,		45,		5,		0.5},
			{62,	-4.5,	-45,	0,		105,	30,		0.5}
		}
	},
	{
		name = '_OutBack_',
		form = {
			{-5,	35.5,	85.6,	-9,		55,		-28,	0.6},
			{5,		35,		88.5,	330,	-22,	0,		0.5},
			{-58.49,-3.4,	23.5,	-29.0,	122.0,	-165.8,	0.8},
			{-79,	-3.8,	16,		-20,	-10,	20,		0.5},
			{-42.4,	-3.4,	16.4,	-55,	30,		115,	0.4}
		}
	},
	{
		name = '_FrontLt_',
		form = {
			{40.6,	-5.9,	-19.6,	2,		-8,		175.4,	0.5},
			{41.5,	-6.2,	-6.5,	0.5,	171,	-10.4,	0.6},
			{32.4,	-7.6,	-5.2,	-11,	80,		0,		0.5}
		}
	},
	{
		name = '_CenterDn_',
		form = {
			{45.4,	-4.3,	23.3,	5,		210,	-2,		0.4},
			{57.5,	-5.1,	21.5,	30,		61.0,	5.4,	0.4},
			{55.5,	-1.9,	16.5,	260,	75,		5,		0.6},
			{43,	-5.1,	13,		-1,		-10,	8,		0.6}
		}
	},
	{
		name = '_RightUp_',
		form = {
			{58.5,	-4.5,	57.2,	-70.5,	30.1,	15.4,	0.6},
			{52.5,	4.6,	65.7,	0,		-10,	8,		0.6},
			{37.7,	1.2,	42.4,	-1.2,	-5.1,	9.8,	0.3},
			{32,	1.09,	63.5,	-9,		90,		-2,		0.3}
		}
	},
	{
		name = '_LeftUp_',
		form = {
			{72.2,	-5.2,	-0.5,	240,	20,		-30,	0.5},
			{71.6,	11.1,	-3.6,	280,	-140,	-60,	0.4},
			{77.5,	5.7,	3,		8,		270,	0,		0.6},
			{79,	5.7,	-5.8,	1,		-15,	10.4,	0.7}
		}
	}
}

-- build proc-gen scene nodes
local mx_scn = {}
for _,scn in ipairs(loot_containers) do
	for i=1, #scn.form do
		mx_scn[#mx_scn+1] = {
			name	= scn.name..string.char(64 + i),
			ntype	= 'REFERENCE',
			form	= scn.form[i],
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/PARTS/CRASH_CONTAINER.SCENE.MBIN'
			}
		}
	end
end

-- build proc-gen descriptor sections
local mx_dsc = {}
for _,scn in ipairs(loot_containers) do
	local tmp = {
		meta		= {name='List', value='TkResourceDescriptorList'},
		TypeId		= scn.name:upper(),
		Descriptors	= {meta = {name='Descriptors'}}
	}
	for i=1, #scn.form do
		tmp.Descriptors[#tmp.Descriptors+1] = {
			meta	= {name='Descriptors', value='TkResourceDescriptorData'},
			Id		= (scn.name..string.char(64 + i)):upper(),
			Name	= scn.name..string.char(64 + i),
			Chance	= 0
		}
	end
	mx_dsc[#mx_dsc+1] = tmp
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Crashed Freighter Procedural Containers',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.21',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/MODULES/LARGEROOM.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/MODULES/SMALLROOM.SCENE.MBIN'
		},
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'HeightAdjust1'},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.SCENE.MBIN'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.SCENE.MBIN'
		},
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'HeightAdjust[34]'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LargeCargoRoomRef'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= AddSceneNodes(mx_scn)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					-- vfx
					{'Name', 'REFSmokeVFX.-'},
					{'Name', 'REF.-CrashedFreighter[CMS].-'},
					-- mist
					{'Name', 'REFPlatformMistVFX'},
					-- builder parts
					{'Name', 'Interior_'},
					{'Name', 'NAV_POI.-'},
					{'Name', 'NAV_NODE.-'},
					{'Name', '_Tents_Group_.-'},
					{'Name', 'RefRobotTerminalMesh'},
					{'Name', 'Barrel_Ref'}
				},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.DESCRIPTOR.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.DESCRIPTOR.MBIN'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.DESCRIPTOR.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.DESCRIPTOR.MBIN'
		},
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'List',
				ADD					= ToMxml(mx_dsc)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.DESCRIPTOR.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'TypeId', '_TENTS_'},
				REMOVE				= 'Section'
			}
		}
	}
}}}}