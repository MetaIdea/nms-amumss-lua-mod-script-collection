---------------------------------------------------------------------
local mod_desc = [[
  Adds in-game customizing for the hardframe and Liquidator mech!
  (Customizing is done through the mech's geobay menu)

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]-------------------------------------------------------------------

-------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.83.2) ... by lMonk
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
	local wrapper = '<Data template="%s">%s</Data>'
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
-------------------------------------------------------------------------------

local proc_texture_files = {
	{--	mech hardframe
		enabled	= true,
		label	= 'SENTINELTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'OVERLAY',
				diff	= true,
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true,
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= true,
			},
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= true,
			},
			{
				name	= 'BASE',
				diff	= true,
				noname	= true, -- omit name from mask & normal path
				normal	= true,
				masks	= true
			}
		}
	},
	{--	mech liquidator
		enabled	= true,
		label	= 'ARMYMECH',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= true,
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true,
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= true,
			},
			{
				name	= 'BASE',
				diff	= true,
				normal	= true,
				masks	= true
			}
		}
	},
	{--	mech liquidator trim
		enabled	= true,
		label	= 'ARMYTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'OVERLAY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= true,
			},
			{
				name	= 'BASE',
				diff	= true,
				noname	= true, -- omit name from mask & normal path
				normal	= true,
				masks	= true
			}
		}
	},
}

local function GetProcTextures(path, layer)
	local function TexPath(b, prts)
		if not b then return nil end
		local pth = ''
		for _,p in ipairs(prts) do
			if p and #p > 0 then
				pth = pth..p..'.'
			end
		end
		return pth..'DDS'
	end
	local T = {meta = {'name', 'Textures'}}

	--	handles 3 options:
	--	* An array of names
	--	* An array of tables of the following - non-essential - properties:
	--	  {n='name', pr=0.3, u=GU_.DNM,	pt='palette', ca='colouralt'} >> u=TextureGameplayUseEnum
	--	* None, in which case all default values apply
	for _,ptex in ipairs(layer.texture or {{n=''}}) do
		if type(ptex) == 'string' then ptex = {n=ptex} end
		T[#T+1] = {
			meta	= {'value', 'TkProceduralTexture.xml'},
			Name				= ptex.n,
			Probability			= ptex.pr or 1,
			TextureGameplayUse	= ptex.u,

			Diffuse				= TexPath(layer.diff,   {path, layer.name, ptex.n}),
			Normal				= TexPath(layer.normal, {path, layer.noname and '' or layer.name, 'NORMAL'}),
			Mask				= TexPath(layer.masks,  {path, layer.noname and '' or layer.name, 'MASKS'}),
			Parallax			= TexPath(layer.prlx,	{path, layer.noname and '' or layer.name, 'PARALLAX'}),
			Palette				= {
				meta	= {'Palette', 'TkPaletteTexture.xml'},
				Palette		= ptex.pt or (layer.palette	or 'Rock'),
				ColourAlt	= ptex.ca or (layer.color	or 'None')
			}
		}
	end
	return T
end

local function BuildProcTexListMbin(proc_tex_list)
	-- Assign the exml table with its designated meta
	local T = { meta = {'name', 'Layers'} }
	for _,ly in ipairs(proc_tex_list.layers) do
		T[#T+1] = {
			meta	= {'value', 'TkProceduralTextureLayer.xml'},
			Name				= ly.name,
			Probability			= proc_tex_list.ly_prob	or 1,
			Group				= proc_tex_list.group,
			SelectToMatchBase	= ly.matchbase,
			Textures			= GetProcTextures(proc_tex_list.nmspath..proc_tex_list.label, ly)
		}
	end
	-- complete to the fixed length (8) array
	for _=1, (8 - #proc_tex_list.layers) do
		T[#T+1] = {value = 'TkProceduralTextureLayer.xml'}
	end
	-- new mbin
	return FileWrapping(T, 'TkProceduralTextureList')
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Mech Customizing.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.02',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= (
		function()
			local T = {}
			for _,ptf in ipairs(proc_texture_files) do
				if ptf.enabled then
					T[#T+1] = {
						FILE_CONTENT	 = BuildProcTexListMbin(ptf),
						FILE_DESTINATION = ptf.nmspath..ptf.label..'.TEXTURE.EXML'
					}
					if ptf.source and lfs.attributes(ptf.source) then
						T[#T+1] = {
							EXTERNAL_FILE_SOURCE = ptf.source..ptf.label..'*.DDS',
							FILE_DESTINATION	 = ptf.nmspath..'*.DDS'
						}
					end
				end
			end
			return T
		end
	)()
}