-------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.85.2) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
---	Helper functions for color class, vector class and string arrays
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
	end
	--	get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	function len2(t)
		i=0; for _ in pairs(t) do i=i+1 end; return i
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
					local att, val = cls['meta'][1], cls['meta'][2]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val, '">'})
					else
						exml:add({'name="', att, '" value="', val, '">'})
					end
					exml:add({exml_r(cls), '</Property>'})
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
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end

--	Adds the xml header and data template
--	Uses the contained template meta if found (instead of the received variable)
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
function FileWrapping(data, template)
	local wrapper = '<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>'
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua
	if data.template then data = data.template end
	-- table loaded from file
	if data.meta[1] == 'template' then
		-- strip mock template
		local txt_data = ToExml(data):sub(#data.meta[2] + 36, -12)
		return string.format(wrapper, data.meta[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
end

-- translates a 0xFF hex section from a longer string to 0-1.0 percentage
-- @param hex: hex string (case insensitive [A-z0-9])
-- @param i: the hex pair's index
local function hex2Percent(hex, i)
	return math.floor(tonumber(hex:sub(i * 2 - 1, i * 2), 16) / 255 * 1000) / 1000
end

--	Returns a Colour.xml class
--	@param T: ARGB color in percentage values or hex format.
--	  Either {1.0, 0.5, 0.4, 0.3} or {<a=1.0> <,r=0.5> <,g=0.4> <,b=0.3>} or 'FFA0B1C2'
--	@param name: class name
function ColorData(C, name)
	local argb = {}
	if type(C) == 'string' then
		for i=#C > 6 and 1 or 2, #C/2 do
			argb[i] = hex2Percent(C, i)
		end
	elseif C == 0 then
		argb = {1, -1, -1, -1} -- 'real' black
	else
		argb = C or {}
	end
	return {
		-- if a name is present then use 2-property tags
		meta= {name or 'value', 'Colour.xml'},
		A	= (argb[1] or argb.a) or 1,
		R	= (argb[2] or argb.r) or 1,
		G	= (argb[3] or argb.g) or 1,
		B	= (argb[4] or argb.b) or 1
	}
end

--	Builds an amumss VCT table from a hex color string
--	@param h: hex color string in ARGB or RGB format (default is white)
--	(not really the place for this one, but I have nowhere else)
function Hex2VCT(h)
	local argb = {{'A', 1}, {'R', -1}, {'G', -1}, {'B', -1}}
	if h == 0 then return argb end -- 'real' black
	for i=#h > 6 and 1 or 2, #h/2 do
		argb[i][2] = hex2Percent(h, i)
	end
	return argb
end

--	Returns a Vector 2, 3 or 4f class, depending on number of values
--	@param T: xy<z<t>> vector
--	  Either {1.0, 0.5 <,0.4, <,2>>} or {x=1.0, y=0.5 <,z=0.4 <,t=2>>}
--	@param name: class name
function VectorData(T, name)
	T = T or {}
	return {
		-- if a name is present then use 2-property tags
		meta= {name or 'value', 'Vector'..len2(T)..'f.xml'},
		x	= T[1] or T.x,
		y	= T[2] or T.y,
		z	= (T[3] or T.z) or nil,
		t	= (T[4] or T.t) or nil
	}
end

--	Returns a 'name' type array of strings
--	@param t: an ordered (non-keyed) table of strings
--	@param name: class name
--	@param size: string class size [10:default, 100, 20, 200, 40, 400, 80, 800]
function StringArray(t, name, size)
	if not t then return nil end
	local T = {meta = {'name', name}}
	local n = size or 10
	for _,str in ipairs(t) do
		T[#T+1] = {
			meta	= {'value', 'NMSString0x'..n..'.xml'},
			Value	= str
		}
	end
	return T
end

--	Determine if received is a single or multi-item
--	then process items through the given function
--	@param items: table of item properties or a table of items
--	@param acton: the function to process the items in the table
local function processOnenAll(items, acton)
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
