---------------------------------------------------------------------------------
local mod_desc = [[
  Replaces old style space station numbers and decals.

  * 'source' path in the table is used for importing the files!
    it must be updated to a local path in order to be used.

  * DDS files import is skipped SILENTLY if file paths are not found!
]]-------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.06
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
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite', '_remove'}
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
					-- Just for readability. The compiler doesn't need the ordering
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
	-- concatenate consecutive (instead of nested) sections
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
	{--	space station front lettering
		edit	= 'exml',
		label	= 'LETTERING',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/space/spacestation/decals/',
		path	= 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		layers	= {
			{
				name	= 'BASE',
				texture	= {'ST1', 'ST2', 'ST3', 'ST4', 'ST5', 'ST6', 'ST7'},
				dds		= 1
			}
		}
	},
	{--	space station front number
		edit	= 'exml',
		label	= 'NUMBER',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/space/spacestation/decals/',
		path	= 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		layers	= {
			{
				name	= 'BASE',
				texture	= {'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
				dds		= 1
			}
		}
	}
}


--	Build TkProceduralTexture list :: handles 3 options:
--	* An array of names
--	* An array of tables of the following - non-essential - properties:
--	  {n='name', pr=0.3, u=GU_.NOT,	pt='palette', ca='colouralt'} >> u=TextureGameplayUseEnum
--	* nil, in which case all default values apply
local function BuildProcTextures(path, layer)
	local T = { meta = {name='Textures'} }
	for _,ptex in ipairs(layer.texture or {{n=''}}) do
		if type(ptex) == 'string' then ptex = {n=ptex} end
		T[#T+1] = {
			meta	= {name='Textures', value='TkProceduralTexture'},
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
			Palette	= {
				meta	= {name='Palette', value='TkPaletteTexture'},
				Palette		= ptex.pt or (layer.palette	or 'Rock'),
				ColourAlt	= ptex.ca or (layer.color	or 'None'),
				Index		= -1
			}
		}
	end
	return T
end

-- Build TkProceduralTextureLayer
local function BuildProcLayer(layer, group, fpath)
	return {
		meta	= {name='Layers', value='TkProceduralTextureLayer'},
		Name				= layer.name,
		Probability			= 1,
		Group				= group,
		SelectToMatchBase	= layer.matchbase,
		Textures			= BuildProcTextures(fpath, layer)
	}
end

-- make changes to a cTkProceduralTextureList file
local function ProcTexLayersChanges(proc_texs)
	local T = {}
	for _,layer in ipairs(proc_texs.layers) do
		if layer.delete then
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Name', layer.name},
				REMOVE				= 'Section'
			}
		else
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Name', layer.name},
				ADD_OPTION			= 'ReplaceWholeSection',
				ADD					= ToMxml(BuildProcLayer(layer, proc_texs.group, proc_texs.fpath))
			}
		end
	end
	return T
end

-- build a full cTkProceduralTextureList file
local function BuildProcTexListMbin(proc_texs)
	local T = { meta = {name='Layers'} }
	for _,layer in ipairs(proc_texs.layers) do
		T[#T+1] = BuildProcLayer(layer, proc_texs.group, proc_texs.fpath)
	end
	-- complete to the fixed length (8) array
	for _=1, (8 - #proc_texs.layers) do
		T[#T+1] = {value = 'TkProceduralTextureLayer'}
	end
	-- return full mxml
	return ToMxmlFile(T, 'cTkProceduralTextureList')
end

local mct, add = {}, {}
for _,ptf in ipairs(proc_texture_files) do
	if ptf.active == nil or ptf.active == true then
		ptf.fpath = ptf.path..ptf.label
		if ptf.edit then
			mct[#mct+1] = {
				MBIN_FILE_SOURCE	= ptf.fpath..'.TEXTURE.MXML',
				EXML_CREATE			= ptf.edit:lower() == 'exml',
				MXML_CHANGE_TABLE	= ProcTexLayersChanges(ptf)
			}
		else
			add[#add+1] = {
				FILE_DESTINATION 	= ptf.fpath..'.TEXTURE.MXML',
				FILE_CONTENT	 	= BuildProcTexListMbin(ptf)
			}
		end
		if ptf.source and lfs.attributes(ptf.source) then
			add[#add+1] = {
				EXTERNAL_FILE_SOURCE = ptf.source..ptf.label..'*.DDS',
				FILE_DESTINATION	 = ptf.path..'*.DDS'
			}
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Alt Space Staion Decals',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.23',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= #add > 0 and add or nil,
	MODIFICATIONS 		= #mct > 0 and {{ MBIN_CHANGE_TABLE = mct }} or nil
}