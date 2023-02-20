----------------------------------------------------------------------
-- Loaded <E:/MODZ_stuff/NoMansSky/AMUMss_Scripts/~LIB/scene_tools.lua>
-------------------------------------------------------------------------
-- Loaded <E:/MODZ_stuff/NoMansSky/AMUMss_Scripts/~LIB/lua_2_exml.lua>
--------------------------------------------------------------------------------
---	Convert EXML to an equivalent lua table and back again to exml text
---	helper functions and ENUMs...
--------------------------------------------------------------------------------

--	replace a boolean with its text (ignore otherwise)
function bool(b)
	return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
end

--	Generate an EXML-tagged text from a lua table representation of exml class
function ToExml(class)
	local function len2(t)
	--	get the count of ALL objects in a table (non-recursive)
		i=0; for _ in pairs(t) do i=i+1 end ; return i
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
						-- because you can't read an unknown key directly
						for k,v in pairs(cls) do key = k; cls = v end
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
function FileWrapping(data, template)
	local wrapper = [[<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>]]
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua (FIX THIS!)
	if data.template then data = data.template end
	-- table loaded from file
	if data.META[1] == 'template' then
		-- strip mock template
		txt_data = ToExml(data):sub(#data.META[2] + 36, -12)
		return string.format(wrapper, data.META[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
end

--	Remove the EXML header and data template if found
--	The template is re-added as a property
local function UnWrap(data)
	if data:sub(1, 5) == '<?xml' then
		local template = data:match('<Data template="([%w_]+)">')
		return '<Property name="template" value="'..template..'">\\n'..
				data:sub(data:find('<Property'), -8)..'</Property>'
	else
		return data
	end
end

--	Returns a table representation of EXML sections
--	When parsing a full file, the header is stripped and a mock template is added
--	Rquires complete EXML sections in the nomral format ...
--	 Each property in a separate line with no blank lines or comments
function ToLua(exml)
	local function eval(val)
		if val == 'True' then
			return true
		elseif val == 'False' then
			return false
		else
			return val
		end
	end
	local tag1	= [[<Property ([%w_]+)="(.+)"[ ]?([/]?)>]]
	local tag2	= [[<Property name="([%w_]+)" value="(.*)"[ ]?([/]?)>]]
	local tlua, st_node, st_array = {}, {}, {false}
	local parent= tlua
	local node	= nil
	--	array=true when processing an ordered (name) section
	local array	= false
	for line in UnWrap(exml):gmatch('([^\\n]+)') do -- parse lines
		if line:match('Property') then -- properties only
			_,eql = line:gsub('=', '')
			if eql > 0 then
				-- choose tag by the count of [=] in a line
				local att, val, close = line:match(eql > 1 and tag2 or tag1)
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
	end
	return tlua
end

--	Converts EXML to a pretty-printed, ready-to-work, lua table script
--	When parsing a full file, the header is stripped and a mock template is added
--	Rquires complete EXML sections in the nomral format ...
--	 Each property in a separate line with no blank lines or comments
function PrintExmlAsLua(exml, indent, com)
	local function eval(val)
		if #val == 0 then
			return 'nil'
		elseif val == 'True' or val == 'False' then
			return val:lower()
		elseif tonumber(val) and #val < 18 and not val:match('^0x') then
			return val
		else
			return '[['..val..']]'
		end
	end
	local tag1	= [[<Property ([%w_]+)="(.+)"[ ]?([/]?)>]]
	local tag2	= [[<Property name="([%w_]+)" value="(.*)"[ ]?([/]?)>]]
	indent		= indent or '\\t'
	com			= com or [[']]
	local lvl	= 0
	local tlua	= {'exml_source'}
	function tlua:add(t)
		for _,v in ipairs(t) do self[#self+1] = v end
	end
	--	array=true when processing an ordered (name) section
	local array	= false
	local st_array = {false}
	for line in UnWrap(exml):gmatch('([^\\n]+)') do -- parse lines
		if line:match('Property') then -- properties only
			_,eql = line:gsub('=', '')
			if eql > 0 then
				-- choose tag by the count of [=] in a line
				local att, val, close = line:match(eql > 1 and tag2 or tag1)
				if close == '' then
					-- opening a new table
					array = att == 'name'
					-- look up if parent is an array
					if st_array[#st_array] or att == 'value' then
						tlua:add({indent:rep(lvl), '{\\n'})
					else
						tlua:add({indent:rep(lvl), (att == 'name' and val or att), ' = ', '{\\n'})
					end
					table.insert(st_array, att == 'name')
					lvl = lvl + 1
					tlua:add({indent:rep(lvl), 'META = {', com, att, com, ',', com, val, com, '},\\n'})
				else
					-- value property or properties in an array
					if att == 'value' or array then
						tlua:add({indent:rep(lvl), '{', att, ' = ', com, val, com, '},\\n'})
					-- regular property (skips stubs)
					elseif att ~= 'name' then
						tlua:add({indent:rep(lvl), att, ' = ', eval(val), ',\\n'})
					end
				end
			else
				-- closing the table
				lvl = lvl - 1
				tlua:add({indent:rep(lvl), '},\\n'})
				table.remove(st_array)
			end
		end
	end
	-- start & end trims
	tlua[3] = #tlua[3] > 2 and '' or ' = {\\n'
	tlua[#tlua] = '}'
	return table.concat(tlua)
end

function Hex2Prc(h)
	-- translates a 0xFF hex string to 0-1.0 percentage
	-- math.floor(X / 255 * 1000) / 1000 == X * 0.00392
	return tonumber(h, 16) * 0.00392
end

function ColorFromHex(hex)
	local rgb = {{'R', 1}, {'G', 1}, {'B', 1}, {'A', 1}}
	for i=1, (#hex/2) do
		rgb[i][2] = Hex2Prc(hex:sub(i*2-1, i*2))
	end
	return rgb
end

--	return a color table from 3-4 number table or hex
--	n=class name, c=hex color (overwrites the rgb)
function ColorData(t, n)
	t = t  or {}
	if t.c then
		for i=1, (#t.c/2) do
			t[i] = Hex2Prc(t.c:sub(i*2-1, i*2))
		end
	end
	return {
		-- if a name (n) is present then use 2-property tag
		META= {n or 'value', 'Colour.xml'},
		R	= t[1] or 1,
		G	= t[2] or 1,
		B	= t[3] or 1,
		A	= t[4] or 1
	}
end

--	InventoryType Enum
I_={ PRD='Product', SBT='Substance', TCH='Technology' }

--	just let me clutter up my code in peace
NMS_MOD_DEFINITION_CONTAINER = {
	AMUMSS_SUPPRESS_MSG = 'MULTIPLE_STATEMENTS,UNDEFINED_VARIABLE,UNUSED_VARIABLE'
}

-- END: <E:/MODZ_stuff/NoMansSky/AMUMss_Scripts/~LIB/lua_2_exml.lua>
-------------------------------------------------------------------------
--	Helper functions for adding new TkSceneNodeData nodes and properties
-------------------------------------------------------------------------

--	Returns a keyed table of TkSceneNodeData sections, using the Name property as keys,
--	* Use to enable direct access to nodes in a table generated with ToLua
function SceneNames(node, keys)
	keys = keys or {}
	if node.META[2] == 'TkSceneNodeData.xml' then
		keys[node.Name] = node
	end
	for k, scn in pairs(node.Children or {}) do
		if k ~= 'META' then SceneNames(scn, keys) end
	end
	return keys
end

--	T (optional) is a table for scene class properties - attributes, transform and children
function ScNode(name, stype, T)
	T = T or {}
	T.META = {'value', 'TkSceneNodeData.xml'}
	T.Name = name
	T.Type = stype
	return T
end

--	accepts either a list of 9 values or keyed values (but NOT a combiantion of the two)
function ScTransform(t)
	t = t or {}
	return {
		META	= {'Transform', 'TkTransformData.xml'},
		TransX	= (t.tx or t[1]) or 0,
		TransY	= (t.ty or t[2]) or 0,
		TransZ	= (t.tz or t[3]) or 0,
		RotX	= (t.rx or t[4]) or 0,
		RotY	= (t.ry or t[5]) or 0,
		RotZ	= (t.rz or t[6]) or 0,
		ScaleX	= (t.sx or t[7]) or 1,
		ScaleY	= (t.sy or t[8]) or 1,
		ScaleZ	= (t.sz or t[9]) or 1
	}
end

--	accepts a list of {name, value} pairs
function ScAttributes(t)
	local T = {META = {'name', 'Attributes'}}
	for _,at in ipairs(t) do
		T[#T+1] = {
			META	= {'value', 'TkSceneNodeAttributeData.xml'},
			Name	= at[1],
			Value	= at[2]
		}
	end
	return T
end

function ScChildren(t)
	t.META = {'name', 'Children'}
	return t
end

-- END: <E:/MODZ_stuff/NoMansSky/AMUMss_Scripts/~LIB/scene_tools.lua>
----------------------------------------------------------------------
mod_desc = [[
  proceduraly-placed keys - Only 3 keys will appear in any instance
  4 Alternarate placements for the treasure chest
]]--------------------------------------------------------------------

local keys = {
	tid	 = '_CRATES_KEY_',
	name = '_Cratekey_',
	{-26.324,	-7.32,		-2.868,		-21.9603,	95.8,		-18.8346},	-- below side walk
	{47.79934,	-10.29004,	8.20181,	30.20214,	28.048,		-16.6737},	-- bottom of slant
	{35.64062,	-3.38012,	21.2812,	-2.890653,	23.66665,	6.40387},	-- in tower
	{5.75298,	-8.189,		29.6927,	-16.1759,	-159.0387,	3.875},		-- mid center & tower
	{-1.9188,	-19.8312,	-51.76936,	9.22353,	184.20784,	-1.3652},	-- stairs bottom
	{-0.9938,	-6.0703,	-38.33277,	-4.67097,	9.22354,	-1.3652},	-- stairs top
}

local locks = {
	tid	 = '_CRATES_LOCK_',
	name = '_Cratelock_',
	{-0.91945,	-8.16323,	0.4867,		1.69392,	2.41958,	4.91478},				-- original ceneter
	{-0.91945,	-12.19,		-31.1867,	1.6939,		182.42,		-1.51},					-- behind stairs
	{33.35,		0.45,		22.2867,	4.694,		-48.43,		3.615,	0.8, 0.8, 0.8},	-- on tower
	{-25.6,		-5.84,		-17.1,		1.6939,		182.24,		4.9148},				-- end of side walk
}

local function AddChar(n, i, u)
	local s = n..string.char(64 + i)
	return u and s:upper() or s
end

local function AddSceneNodes()
	local T = {}
	for i, key in ipairs(keys) do
		T[#T+1] = ScNode(AddChar(keys.name, i), 'LOCATOR')
		T[#T+1] = ScNode(
			AddChar(keys.name, i), 'REFERENCE', {
				ScTransform(key),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATEKEY.SCENE.MBIN'}
				})
			}
		)
	end
	for i, lck in ipairs(locks) do
		T[#T+1] = ScNode(AddChar(locks.name, i), 'LOCATOR')
		T[#T+1] = ScNode(
			AddChar(locks.name, i), 'REFERENCE', {
				ScTransform(lck),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATELOCK.SCENE.MBIN'}
				})
			}
		)
	end
	return T
end

local function GenerateDescriptor()
	local function Rsrc3Group(name, ix, cmb)
		return {
			META	= {'value','TkResourceDescriptorData.xml'},
			Id		= AddChar(name, cmb[1], true),
			Name	= AddChar(name, cmb[1]),
			Children= {
				META = {'name','Children'},
				{
					META = {'value','TkModelDescriptorList.xml'},
					List = {
						META = {'name','List'},
						{
							META	= {'value','TkResourceDescriptorList.xml'},
							TypeId	= AddChar(name..'ID2_', ix, true),
							Descriptors = {
								META = {'name','Descriptors'},
								{
									META	= {'value','TkResourceDescriptorData.xml'},
									Id		= AddChar(name, cmb[2], true),
									Name	= AddChar(name, cmb[2]),
									Children= {
										META = {'name','Children'},
										{
											META = {'value','TkModelDescriptorList.xml'},
											List = {
												META = {'name','List'},
												{
													META	= {'value','TkResourceDescriptorList.xml'},
													TypeId	= AddChar(name..'ID3_', ix, true),
													Descriptors = {
														META = {'name','Descriptors'},
														{
															META	= {'value','TkResourceDescriptorData.xml'},
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
	end
	local function RsrcList(tid)
		return {
			META		= {'value', 'TkResourceDescriptorList.xml'},
			TypeId		= tid,
			Descriptors	= {META = {'name', 'Descriptors'}}
		}
	end
	local combinations = {}
	--	generate combinations for 6 crate-keys
	for i=1, 4 do
		for j=i+1, 5 do
			for k=j+1, 6 do
				combinations[#combinations+1] = {i, j, k}
			end
		end
	end
	local T = {
		--	file wrapper template
		META = {'template', 'TkModelDescriptorList'},
		List = {
			META = {'name', 'List'},
			[1]  = RsrcList(keys.tid)
		}
	}
	-- Add key crates
	for i, k in ipairs(combinations) do
		table.insert(T.List[1].Descriptors, Rsrc3Group(keys.name, i, k))
	end
	-- Add lock crates
	T.List[#T.List+1] = RsrcList(locks.tid)
	for i=1, #locks do
		table.insert(T.List[2].Descriptors, {
			META	= {'value', 'TkResourceDescriptorData.xml'},
			Id		= AddChar(locks.name, i, true),
			Name	= AddChar(locks.name, i)
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL treasure ruin proc crates.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 4.08,
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'RefCrateKey'},
					{'Name', 'RefCrateKey1'},
					{'Name', 'RefCrateKey2'},
					{'Name', 'RefCrateKey3'},
					{'Name', 'RefCrateKey7'},
					{'Name', 'RefCrateKey8'},
					{'Name', 'RefCrateLock'}
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Layout_1'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= ToExml(AddSceneNodes())
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.DESCRIPTOR.EXML',
			FILE_CONTENT	 = FileWrapping(GenerateDescriptor())
		}
	}
}