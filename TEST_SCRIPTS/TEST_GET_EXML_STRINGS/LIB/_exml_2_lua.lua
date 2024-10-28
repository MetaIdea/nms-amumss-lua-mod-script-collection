-------------------------------------------------------------------------------
---	EXML 2 LUA (VERSION: 0.83.6) ... by lMonk
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
	local tlua, st_node, is_ord = {}, {}, {false}
	local parent= tlua
	local node	= nil
	for prop in UnWrap(exml):gmatch(tag) do
		_,eql = prop:gsub('=', '')
		if eql > 0 then
			-- choose tag by the count of [=] in a property
			local att, val, close = prop:match(eql > 1 and tag2 or tag1)
			if close == '' then
				-- open new property table
				table.insert(st_node, parent)
				node = {META = {att , val}}

				-- is_ord[#is_ord] == true when parent is an ordered (name) section
				if is_ord[#is_ord] == true or att == 'value' then
					parent[#parent+1] = node
				elseif att == 'name' then
					parent[val] = node
				else
					parent[att] = node
				end
				parent = node
				-- keep meta if classes are ordered
				is_ord[#is_ord+1] = att == 'name'
			else
				-- add property to parent table
				if is_ord[#is_ord] == true or att == 'value' then
					node[#node+1] = {[att] = eval(val)}
				-- regular property (skips stubs)
				elseif att ~= 'name' then
					node[att] = eval(val)
				end
			end
		else
			-- go back to parent node
			parent = table.remove(st_node)
			table.remove(is_ord)
			node = parent
		end
	end
	return tlua
end

--	Converts EXML to a pretty-printed, ready-to-work, lua script.
--	When parsing a full file, the header is stripped and a mock template is added
--	@param vars: a table containing the required properties
--	{
--	  exml	 = complete EXML sections in the nomral format or a full file
--	  name	 = the table's variable name..	Default: EXML_SOURCE
--	  indent = code indentation..			Default: [\t] (tab)
--	  com	 = ['] or ["]..					Default: [']
--	}
--	* Does not handle commented lines!
function PrintExmlAsLua(vars)
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
	local ind	= vars.indent or '\t'
	local com	= vars.com or [[']]
	local lvl	= 0
	local tlua	= {(vars.name or 'EXML_SOURCE')}
	function tlua:add(t)
		for _,v in ipairs(t) do self[#self+1] = v end
	end
	local is_ord = {false}
	for prop in UnWrap(vars.exml):gmatch(tag) do
		_,eql = prop:gsub('=', '')
		if eql > 0 then
			-- choose tag by the count of [=] in a property
			local att, val, closed = prop:match(eql > 1 and tag2 or tag1)
			if closed == '' then
				-- opening a new table
				-- is_ord[#is_ord] == true when parent is an ordered (name) section
				if is_ord[#is_ord] == true or att == 'value' then
					tlua:add({ind:rep(lvl), '{\n'})
				else
					tlua:add({ind:rep(lvl), (att == 'name' and val or att), ' = ', '{\n'})
				end
				-- keep meta if classes are ordered
				is_ord[#is_ord+1] = att == 'name'
				lvl = lvl + 1
				tlua:add({ind:rep(lvl), 'META = {', com, att, com, ',', com, val, com, '},\n'})
			else
				-- value property or properties in an ordered array
				if is_ord[#is_ord] == true or att == 'value' then
					tlua:add({ind:rep(lvl), '{', att, ' = ', com, val, com, '},\n'})
				-- regular property (skips stubs)
				elseif att ~= 'name' then
					tlua:add({ind:rep(lvl), att, ' = ', eval(val), ',\n'})
				end
			end
		else
			-- closing the table
			lvl = lvl - 1
			-- trim the comma from the last object
			tlua[#tlua] = tlua[#tlua]:gsub(',\n', '\n')
			tlua:add({ind:rep(lvl), '},\n'})
			table.remove(is_ord)
		end
	end
	-- start & end trims
	tlua[3] = #tlua[3] > 2 and '' or ' = {\n'
	tlua[#tlua] = '}'
	return table.concat(tlua)
end

--	A direct access-index for a SCENE file.
--	Returns a table with Name property as keys linking to their to TkSceneNodeData sections.
function SceneNames(node, keys)
	keys = keys or {}
	if node.META[2] == 'TkSceneNodeData.xml' then
		keys[node.Name] = node
	end
	for k, scn in ipairs(node.Children or {}) do
		SceneNames(scn, keys)
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

-- A Union All function for an ordered array of tables
-- Returns a copy by-value. Repeating keys's values are overwritten.
--	@param arr: A table of tables.
function UnionTables(arr)
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
