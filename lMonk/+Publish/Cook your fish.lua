------------------------------------------------------------------------------------
local mod_desc = [[
  Add a bottle standing on the cooker's left shelf that opens the fish storage menu
]]----------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.85.7) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
--- The complete tool can be found at: https://github.com/roie-r/exml_2_lua
-------------------------------------------------------------------------------
--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	--	Get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	local function len2(t)
		if type(t) ~= 'table' then return -1 end
		i=0; for _ in pairs(t) do i=i+1 end; return i
	end
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'true' or 'false') or b
	end
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'meta' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.meta then
					local att, val, lnk = cls['meta'][1], cls['meta'][2], cls['meta'][3]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val})
					else
						exml:add({'name="', att, '" value="', val})
						if lnk then
							exml:add({'" linked="', lnk})
						end
					end
					exml:add({'">', exml_r(cls), '</Property>'})
				else
					-- add a regular property
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
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].meta then
		return exml_r(class)
	elseif class.meta and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated (instead of nested) exml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
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

--	Build a single -or list of TkSceneNodeData classes
--	@param props: a keyed table for scene class properties.
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
			meta	= {'Children', 'TkSceneNodeData'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {'Transform', 'TkTransformData'},
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
			T.Attr = { meta = {'name', 'Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {'Attributes', 'TkSceneNodeAttributeData'},
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
			T.Child.meta = {'name', 'Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.cook your fish.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.52',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/COOKER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= -1,
				ADD 				= ToExml(ScNode({
					name	= 'LocFishBottle',
					ntype	= 'LOCATOR',
					form	= {tx=-0.72, ty=0.785, tz=0.62, sx=0.8, sy=0.8, sz=0.8},
					attr	= {
						ATTACHMENT = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/FISHINGPLATFORM/ENTITIES/FISHCASES.ENTITY.MBIN'
					},
					child	= {
						{
							name	= 'FishBottleCollision',
							ntype	= 'COLLISION',
							form	= {ty=0.2},
							attr	= {
								TYPE	= 'Sphere',
								RADIUS	= 0.26
							}
						},
						{
							name	= 'RefFishBottle',
							ntype	= 'REFERENCE',
							attr	= {
								SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKBOTTLE.SCENE.MBIN'
							}
						}
					}
				}))
			}
		}
	}
}}}}