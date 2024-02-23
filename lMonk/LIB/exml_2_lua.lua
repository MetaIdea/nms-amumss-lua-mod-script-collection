-------------------------------------------------------------------------------
---	EXML 2 LUA (VERSION: 0.83.2) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
---	Functions for converting an exml file, or sections of one, to
---	 a lua table during run-time, or printing the exml as a lua script.
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
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

--	Converts EXML to a pretty-printed, ready-to-work, lua script.
--	When parsing a full file, the header is stripped and a mock template is added
--	@param exml: requires complete EXML sections in the nomral format
--	* Does not handle commented lines!
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
	local tag	= [[<[/]?Property[ ]?(.-[/]?)>]]
	local tag1	= [[([%w_]+)="(.+)"[ ]?([/]?)]]
	local tag2	= [[name="([%w_]+)" value="(.*)"[ ]?([/]?)]]
	indent		= indent or '\t'
	com			= com or [[']]
	local lvl	= 0
	local tlua	= {'exml_source'}
	function tlua:add(t)
		for _,v in ipairs(t) do self[#self+1] = v end
	end
	--	array=true when processing an ordered (name) section
	local array	= false
	local st_array = {false}
	for prop in UnWrap(exml):gmatch(tag) do
		_,eql = prop:gsub('=', '')
		if eql > 0 then
			-- choose tag by the count of [=] in a property
			local att, val, closed = prop:match(eql > 1 and tag2 or tag1)
			if closed == '' then
				-- opening a new table
				array = att == 'name'
				-- look up if parent is an array
				if st_array[#st_array] or att == 'value' then
					tlua:add({indent:rep(lvl), '{\n'})
				else
					tlua:add({indent:rep(lvl), (att == 'name' and val or att), ' = ', '{\n'})
				end
				table.insert(st_array, att == 'name')
				lvl = lvl + 1
				tlua:add({indent:rep(lvl), 'META = {', com, att, com, ',', com, val, com, '},\n'})
			else
				-- value property or properties in an array
				if att == 'value' or array then
					tlua:add({indent:rep(lvl), '{', att, ' = ', com, val, com, '},\n'})
				-- regular property (skips stubs)
				elseif att ~= 'name' then
					tlua:add({indent:rep(lvl), att, ' = ', eval(val), ',\n'})
				end
			end
		else
			-- closing the table
			lvl = lvl - 1
			-- trim the comma from the last object
			tlua[#tlua] = tlua[#tlua]:gsub(',\n', '\n')
			tlua:add({indent:rep(lvl), '},\n'})
			table.remove(st_array)
		end
	end
	-- start & end trims
	tlua[3] = #tlua[3] > 2 and '' or ' = {\n'
	tlua[#tlua] = '}'
	return table.concat(tlua)
end

--	Returns a keyed table of TkSceneNodeData sections, with the Name property as keys,
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

--	Load an mbin from the amumss runtime processing temp folder
--	* The mbin must be loaded from a merged script that runs before the one calling LoadRuntimeMbin
function LoadRuntimeMbin(path)
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
