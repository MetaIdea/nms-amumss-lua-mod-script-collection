---------------------------------------------------------------------
local mod_desc = [[
  Adds in-game customizing for the hardframe and Liquidator mech!
  (Customizing is done through the mech's geobay menu)

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]-------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.01
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

--	=> Adds the header and class template for a standard mxml file
--	@param data: A lua2mxml formatted table
--	@param template: [optional] A class template string. Overwrites the internal template!
local function ToMxmlFile(tlua, ext_tmpl)
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
---------------------------------------------------------------------------------

local proc_texture_files = {
	{--	mech hardframe
		label	= 'SENTINELTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/common/robots/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'OVERLAY',
				dds		= 1
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				dds		= 1
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				dds		= 1
			},
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				dds		= 1
			},
			{
				name	= 'BASE',
				dds		= 1
			}
		}
	},
	{--	mech liquidator
		label	= 'ARMYMECH',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/common/robots/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				dds		= 1,
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				dds		= 1,
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				dds		= 1,
			},
			{
				name	= 'BASE',
				dds		= 1
			}
		}
	},
	{--	mech liquidator trim
		label	= 'ARMYTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/common/robots/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'OVERLAY',
				palette = 'Paint',
				color	= 'Alternative2',
				dds		= 1,
			},
			{
				name	= 'BASE',
				dds		= 1
			}
		}
	}
}

local function GetProcTextures(path, layer)
	local T = { meta = {name='Textures'} }
	--	handles 3 options:
	--	* An array of names
	--	* An array of tables of the following - non-essential - properties:
	--	  {n='name', pr=0.3, u=GU_.DNM,	pt='palette', ca='colouralt'} >> u=TextureGameplayUseEnum
	--	* nil, in which case all default values apply
	for _,ptex in ipairs(layer.texture or {{n=''}}) do
		if type(ptex) == 'string' then ptex = {n=ptex} end
		T[#T+1] = {
			meta = {name='Textures', value='TkProceduralTexture'},
			Name				= ptex.n,
			Probability			= ptex.pr or 1,
			TextureGameplayUse	= ptex.u,
			TextureName			= table.concat({
				path,
				'.',
				layer.dds ~= 0 and layer.name..'.' or '',
				ptex.n ~= '' and ptex.n..'.' or '',
				'DDS'
			}),
			Palette				= {
				meta = {name='Palette', value='TkPaletteTexture'},
				Palette		= ptex.pt or (layer.palette	or 'Rock'),
				ColourAlt	= ptex.ca or (layer.color	or 'None'),
				Index		= -1
			}
		}
	end
	return T
end

local function BuildProcTexListMbin(proc_tex_list)
	local T = { meta = {name='Layers'} }
	for _,layr in ipairs(proc_tex_list.layers) do
		T[#T+1] = {
			meta = {name='value', value='TkProceduralTextureLayer'},
			Name				= layr.name,
			Probability			= proc_tex_list.ly_prob	or 1,
			Group				= proc_tex_list.group,
			SelectToMatchBase	= layr.matchbase,
			Textures			= GetProcTextures(proc_tex_list.nmspath..proc_tex_list.label, layr)
		}
	end
	-- complete to the fixed length (8) array
	for _=1, (8 - #proc_tex_list.layers) do
		T[#T+1] = {value = 'TkProceduralTextureLayer'}
	end
	-- new mbin
	return ToMxmlFile(T, 'cTkProceduralTextureList')
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Mech Customizing.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.01',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= (
		function()
			local T = {}
			for _,ptf in ipairs(proc_texture_files) do
				T[#T+1] = {
					FILE_CONTENT	 = BuildProcTexListMbin(ptf),
					FILE_DESTINATION = ptf.nmspath..ptf.label..'.TEXTURE.MXML'
				}
				if ptf.source and lfs.attributes(ptf.source) then
					T[#T+1] = {
						EXTERNAL_FILE_SOURCE = ptf.source..ptf.label..'*.DDS',
						FILE_DESTINATION	 = ptf.nmspath..'*.DDS'
					}
				end
			end
			return T
		end
	)()
}