-- Loaded_M <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\_lua_2_mxml.lua>
-------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.03
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
-------------------------------------------------------------------------------
---	MXML builder - Build mxml from lua table
--- Tools for color -and vector class, ordered string list
-------------------------------------------------------------------------------

--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite'}
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

--	=> Adds the header and class template for a standard mxml file
--	@param data: A lua2mxml formatted table
--	@param template: [optional] A class template string. Overwrites the internal template!
function ToMxmlFile(tlua, ext_tmpl)
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

--	=> Translates a 0xFF hex section from a longer string to 0-1.0 percentage
--	@param hex: hex string (case insensitive [A-z0-9])
--	@param i: the hex pair's index
function Hex2Percent(hex, i)
	return math.floor(tonumber(hex:sub(i * 2 - 1, i * 2), 16) / 255 * 1000) / 1000
end

--	=> Builds a Colour class
--	@param T: ARGB color in percentage values or hex format.
--	  Either {1.0, 0.5, 0.4, 0.3} or {<a=1.0> <,r=0.5> <,g=0.4> <,b=0.3>} or 'FFA0B1C2'
--	@param color_name: class name
function ColorData(C, color_name)
	local argb = {}
	if type(C) == 'string' then
		for i=#C > 6 and 1 or 2, #C/2 do
			argb[i] = Hex2Percent(C, i)
		end
	elseif C == 0 then
		argb = {1, -1, -1, -1} -- 'real' black
	else
		argb = C or {}
	end
	return {
		meta= {name=color_name},
		{A	= (argb[1] or argb.a) or 1},
		{R	= (argb[2] or argb.r) or 1},
		{G	= (argb[3] or argb.g) or 1},
		{B	= (argb[4] or argb.b) or 1}
	}
end

--	=> Builds an amumss VCT table from a hex color string
--	@param h: hex color string in ARGB or RGB format (default is white)
--	(not really the place for this one, but it's convenient)
function Hex2VCT(h)
	local argb = {{'A', 1}, {'R', -1}, {'G', -1}, {'B', -1}}
	if h == 0 then return argb end -- 'real' black
	for i=#h > 6 and 1 or 2, #h/2 do
		argb[i][2] = Hex2Percent(h, i)
	end
	return argb
end

--	=> Builds a Vector 2, 3 or 4f class, depending on number of values
--	@param T: xy<z<t>> vector
--	  Either {1.0, 0.5 <,0.4, <,2>>} or {x=1.0, y=0.5 <,z=0.4 <,t=2>>}
--	@param vector_name: class name
function VectorData(T, vector_name)
	if not T then return nil end
	return {
		-- if a name is present then use 2-property tags
		meta= {name=vector_name},
		{X	= T[1] or T.x},
		{Y	= T[2] or T.y},
		{Z	= (T[3] or T.z) or nil},
		{W	= (T[4] or T.w) or nil}
	}
end

--	=> Builds a 'name' type array of strings
--	@param t: an ordered (non-keyed) table of strings
--	@param s_arr_name: class name
function StringArray(t, s_arr_name)
	if not t then return nil end
	local T = { meta = {name=s_arr_name} }
	for _,s in ipairs(t) do
		T[#T+1] = { [s_arr_name] = s }
	end
	return T
end

--	=> Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
function ProcessOnenAll(items, acton)
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

-- END: <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\_lua_2_mxml.lua>
-- Loaded_M <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\scene_tools.lua>
-------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
-------------------------------------------------------------------------------
---	Model scene tools ... version: 1.0.07
---	Build nested TkSceneNodeData nodes
-------------------------------------------------------------------------------

--	=> Build a single -or list of TkSceneNodeData classes
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
function ScNode(nodes)
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
			ScaleX	= (props.form.sl or props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sl or props.form.sy or props.form[8] or props.form[7]) or 1,
			ScaleZ	= (props.form.sl or props.form.sz or props.form[9] or props.form[7]) or 1
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
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= type(val) == 'boolean' and (val and 'TRUE' or 'FALSE') or val
				}
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
function AddSceneNodes(nodes)
	return ToMxml(ScNode(nodes))
end

--	=> Builds light TkSceneNodeData sections.
--	receives a table, or a table of tables, with the following (optional) parameters
--	Light node attibutes:
--	  name= 'n9'	fov= 360	v=	0
--	  i=	30000,	f= 'q'		fr=	2
--	  r=	1		g=	1		b=	1
--	  c=	'7E450A' (color as hex - overwrites rgb)
--	  mt=	MATERIALS/LIGHT.MATERIAL.MBIN
--	Node Transform properties:
--	  tx=	0		ty=	0		tz=	0
--	  rx=	0		ry=	0		rz=	0
--	  sx=	1		sy=	1		sz=	1
function ScLight(lights)
	local function lightNode(lgt)
		if lgt.c then
			lgt.c = lgt.c:sub(#lgt.c > 6 and 3 or 1, #lgt.c) -- remove alpha if present
			for i, col in ipairs({'r', 'g', 'b'}) do
				lgt[col] = Hex2Percent(lgt.c, i)
			end
		end
		return {
			name	= lgt.name or 'n9',
			ntype	= 'LIGHT',
			form	= lgt,
			attr	= {
				FOV			= lgt.fov or 360,
				FALLOFF		= (lgt.f and lgt.f:sub(1,1) == 'l') and 'linear' or 'quadratic',
				FALLOFF_RATE= lgt.fr or 2,
				INTENSITY	= lgt.i  or 30000,
				COL_R		= lgt.r  or 1,
				COL_G		= lgt.g  or 1,
				COL_B		= lgt.b  or 1,
				COOKIE_IDX	= -1,
				VOLUMETRIC	= lgt.v  or nil,
				LIGHTLAYERS	= lgt.l  or 3,
				MATERIAL	= lgt.mt or 'MATERIALS/LIGHT.MATERIAL.MBIN'
			}
		}
	end
	-----------------------------------------------------------------
	if lights then
		-- first key=1 means a list of light nodes
		if next(lights) == 1 then
			local T = {}
			for _,l in pairs(lights) do
				T[#T+1] = lightNode(l)
			end
			return ScNode(T)
		end
	end
	return ScNode(lightNode(lights))
end

--	=> Wrapper function. Accepts lua light nodes and Returns an mxml string.
function AddLightNodes(lights)
	return ToMxml(ScLight(lights))
end
-- END: <D:\MODZ_stuff\NoMansSky\Tools\AMUMSS\ModScript\ModHelperScripts\LIB\scene_tools.lua>
---------------------------------------------------------------------
local mod_desc = [[
  Add collision to corvette internal stairs banister - OSHA approved!
]]-------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.04
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
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite'}
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

--	=> Determine if received is a single or multi-item
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

--	=> Build a single -or list of TkSceneNodeData classes
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
			ScaleX	= (props.form.sl or props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sl or props.form.sy or props.form[8] or props.form[7]) or 1,
			ScaleZ	= (props.form.sl or props.form.sz or props.form[9] or props.form[7]) or 1
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
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= type(val) == 'boolean' and (val and 'TRUE' or 'FALSE') or val
				}
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
---------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Corvette Stairs Banister',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.10',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|corvette interior stairs banister|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/STAIRS0_INTERIOR_A.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Data'},
				PRECEDING_KEY_WORDS	= 'Children',
				ADD 				= ToMxml(ScNode({
					{
						name	= 'ColBanister1',
						ntype	= 'COLLISION',
						form	= {tx=-0.02, ty=1.7, tz=0.2, rx=54},
						attr	= {
							TYPE	= 'Box',
							HEIGHT	= 0.2,
							WIDTH	= 0.05,
							DEPTH	= 3.0
						}
					},
					{
						name	= 'ColBanister2',
						ntype	= 'COLLISION',
						form	= {tx=-0.87, ty=1.7, tz=0.2, rx=54},
						attr	= {
							TYPE	= 'Box',
							HEIGHT	= 0.2,
							WIDTH	= 0.05,
							DEPTH	= 3.0
						}
					}
				}))
			}
		}
	}
}}}}