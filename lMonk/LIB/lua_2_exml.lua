-------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.82.8) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
---	Helper functions for color class, vector class and string arrays
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

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

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
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
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
function FileWrapping(data, template)
	local wrapper = [[<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>]]
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua
	if data.template then data = data.template end
	-- table loaded from file
	if data.META[1] == 'template' then
		-- strip mock template
		local txt_data = ToExml(data):sub(#data.META[2] + 36, -12)
		return string.format(wrapper, data.META[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
end

-- translates a 0xFF hex section from a longer string to 0-1.0 percentage
-- @param i: the hex pair's index
function Hex2Percent(hex, i)
	return math.floor(tonumber(hex:sub(i * 2 - 1, i * 2), 16) / 255 * 1000) / 1000
end

--	@param h: hex color string in ARGB or RGB format (default is white)
--	(not really the place for this, but I have nowhere else)
function ColorFromHex(h)
	local argb = {{'A', 1}, {'R', 1}, {'G', 1}, {'B', 1}}
	for i=1, (#h / 2) do
		argb[#h > 6 and i or i + 1][2] = Hex2Percent(h, i)
	end
	return argb
end

--	Returns a Colour.xml class
--	@param T: ARGB color in percentage values or hex format.
--	  Either {1.0, 0.5, 0.4, 0.3} or {a=1.0, r=0.5, g=0.4, b=0.3} or 'FFA0B1C2'
--	@param name: class name
function ColorData(T, name)
	local argb = {}
	if type(T) == 'string' then
		for i=1, (#T / 2) do
			argb[#T > 6 and i or i + 1] = Hex2Percent(T, i)
		end
	else
		argb = T or {}
	end
	return {
		-- if a name is present then use 2-property tags
		META= {name or 'value', 'Colour.xml'},
		A	= (argb[1] or argb.a) or 1,
		R	= (argb[2] or argb.r) or 1,
		G	= (argb[3] or argb.g) or 1,
		B	= (argb[4] or argb.b) or 1
	}
end

--	Returns a Vector3f.xml or Vector4f.xml class, depending on number of values
--	@param T: xyz<t> vector
--	  Either {1.0, 0.5, 0.4, <2>} or {x=1.0, y=0.5, z=0.4, <t=2>}
--	@param name: class name
function VectorData(T, name)
	T = T or {}
	return {
		-- if a name is present then use 2-property tags
		META= {name or 'value', 'Vector'..len2(T)..'f.xml'},
		x	= T[1] or T.x,
		y	= T[2] or T.y,
		z	= T[3] or T.z,
		t	= (T[4] or T.t) or nil
	}
end

--	Returns a 'name' type array of strings
--	@param t: an ordered (non-keyed) table of strings
--	@param name: class name
--	@param size: string class size [10, 100, 20, 200, 40, 400, 80, 800]
function StringArray(t, name, size)
	if not t then return nil end
	local T = {META = {'name', name}}
	for _,str in ipairs(t) do
		T[#T+1] = {
			META	= {'value', 'NMSString0x'..size..'.xml'},
			Value	= str
		}
	end
	return T
end
