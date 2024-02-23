-------------------------------------------------------------------------------
---	Model scene tools (VERSION: 0.82.3) ... by lMonk
---	Helper functions for adding new TkSceneNodeData nodes and properties
---	* Requires lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

--	Build a TkSceneNodeData class
--	@param name: scene node name
--	@param stype: scene node type
--	@param T: (optional) a table for scene class properties >> attributes, transform and children
function ScNode(name, stype, T)
	--	returns a jenkins hash from a string (by lyravega)
	local function JenkinsHash(input)
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
	T = T or {}
	T.META 		= {'value', 'TkSceneNodeData.xml'}
	T.Name 		= name
	T.NameHash	= JenkinsHash(name)
	T.Type 		= stype
	return T
end

--	Builds a TkTransformData class
--	@param T: a list of 9 values in order or keyed values (but NOT a combination of the two)
function ScTransform(T)
	T = T or {}
	return {
		META	= {'Transform', 'TkTransformData.xml'},
		TransX	= (T.tx or T[1]) or 0,
		TransY	= (T.ty or T[2]) or 0,
		TransZ	= (T.tz or T[3]) or 0,
		RotX	= (T.rx or T[4]) or 0,
		RotY	= (T.ry or T[5]) or 0,
		RotZ	= (T.rz or T[6]) or 0,
		ScaleX	= (T.sx or T[7]) or 1,
		ScaleY	= (T.sy or T[8]) or 1,
		ScaleZ	= (T.sz or T[9]) or 1
	}
end

--	Builds a scene node attributes array
--	@param T: a list of {name, value} pairs
function ScAttributes(T)
	local atr = {META = {'name', 'Attributes'}}
	for _,at in ipairs(T) do
		atr[#atr+1] = {
			META	= {'value', 'TkSceneNodeAttributeData.xml'},
			Name	= at[1],
			Value	= at[2]
		}
	end
	return atr
end

--	Returns a scene node's children list
--	@param T: a list of scene classes
function ScChildren(T)
	T.META = {'name', 'Children'}
	return T
end

--	Builds light TkSceneNodeData sections.
--	receives a table, or a table of tables, with the following (optional) parameters
--	  name= 'n9',	fov= 360,
--	  i=	30000,	f= 'q',		fr=	2,
--	  r=	1,		g=	1,		b=	1,
--	  c=	'7E450A' (color as hex - overwrites rgb)
--	  tx=	0,		ty=	0,		tz=	0,
--	  rx=	0,		ry=	0,		rz=	0,
--	  sx=	1,		sy=	1,		sz=	1
function ScLight(lights)
	local function LightNode(light)
		if light.c then
			for i, col in ipairs({'r', 'g', 'b'}) do
				--  skip the alpha if present
				light[col] = Hex2Percent(light.c, #light.c > 6 and i+1 or i)
			end
		end
		return ScNode(
			light.name or 'n9', 'LIGHT', {
				ScTransform(light),
				ScAttributes({
					{'FOV',		 	light.fov or 360},
					{'FALLOFF',	 	(light.f and light.f:sub(1,1) == 'l') and 'linear' or 'quadratic'},
					{'FALLOFF_RATE',light.fr or 2},
					{'INTENSITY',	light.i  or 30000},
					{'COL_R',		light.r  or 1},
					{'COL_G',		light.g  or 1},
					{'COL_B',		light.b  or 1},
					{'VOLUMETRIC',	0},
					{'COOKIE_IDX',	-1},
					{'MATERIAL',	'MATERIALS/LIGHT.MATERIAL.MBIN'}
				})
			}
		)
	end
	if lights then
	--  handle table of lights
		local _,l = next(lights)
		if type(l) == 'table' then
			local T = {}
			for _,lght in pairs(lights) do
				T[#T+1] = LightNode(lght)
			end
			return T
		end
	end
	return LightNode(lights)
end

--	wrapper: returns the exml text of ScLight
function AddNewLight(l)
	return ToExml(ScLight(l))
end
