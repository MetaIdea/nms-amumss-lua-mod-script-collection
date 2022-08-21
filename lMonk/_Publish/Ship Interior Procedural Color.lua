---------------------------------------------------------------------
local desc = [[
  Restores procedural colors for the cockpit interior plastic parts
  This affects all ship types except the living ship
]]-------------------------------------------------------------------

local proc_texture_files = {
	{
	--- ship interior: plastic
		label	= 'PLASTICGRAIN',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		{
			ly_name	= 'BASE',
			palette = 'Paint',
			color	= 'Alternative3',
			diff	= true
		}
	},
	{
	--- ship interior: plastic alt1
		label	= 'PLASTICGRAINALT1',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		{
			ly_name	= 'BASE',
			palette = 'Paint',
			color	= 'Primary',
			diff	= true
		}
	},
	{
	--- ship interior: plastic alt2
		label	= 'PLASTICGRAINALT2',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		{
			ly_name	= 'BASE',
			palette = 'Paint',
			color	= 'Primary',
			diff	= true
		}
	},
}

local function GetProcTextures(path, layer)
	-- concat table with [.] separator
	local function TexPath(arg)
		if not arg.b then
			return ''
		end
		local con = ''
		for _,ar in ipairs(arg) do
			if ar and ar:len() > 0 then
				con = con..ar..'.'
			end
		end
		return con..'DDS'
	end
	local tk_proc_tex = [[
		<Property value="TkProceduralTexture.xml">
			<Property name="Name" value="%s"/>
			<Property name="Palette" value="TkPaletteTexture.xml">
				<Property name="Palette" value="%s"/>
				<Property name="ColourAlt" value="%s"/>
			</Property>
			<Property name="Probability" value="%s"/>
			<Property name="Diffuse" value="%s"/>
			<Property name="Normal" value="%s"/>
			<Property name="Mask" value="%s"/>
		</Property>]]
	local exml = ''
	-- handles 3 options: names list, {name, probability} list, or nothing
	-- if no list found, name='' & probability=1
	for _,name_prob in ipairs(layer.tx_name and layer.tx_name or {{'', 1}}) do
		if type(name_prob) == 'string' then
			name_prob = {name_prob, 1}
		end
		exml = exml..string.format(
			tk_proc_tex,
			name_prob[1],
			layer.palette or 'Rock',
			layer.color or 'None',
			name_prob[2],
			TexPath({b=layer.diff, path, layer.ly_name, name_prob[1]}),
			TexPath({b=layer.normal, path, layer.ly_name, 'NORMAL'}),
			TexPath({b=layer.masks, path, layer.ly_name, 'MASKS'})
		)
	end
	return exml
end

local function BuildProcTexListMbin(tex_layer)
	local T = {}
	-- build proc-tex layers
	for _,ly in ipairs(tex_layer) do
		table.insert( T, [[
			<Property value="TkProceduralTextureLayer.xml">
				<Property name="Name" value="]]..(ly.ly_name or '')..[["/>
				<Property name="Probability" value="]]..(tex_layer.ly_prob or 1)..[["/>
				<Property name="Group" value="]]..(tex_layer.group or '')..[["/>
				<Property name="Textures">]]..
				GetProcTextures(tex_layer.nmspath..tex_layer.label, ly)..
			[[</Property></Property>]]
		)
	end
	-- silly fixed length array
	for _=1, (8 - #tex_layer) do
		table.insert(T, '<Property value="TkProceduralTextureLayer.xml"/>')
	end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="TkProceduralTextureList">
		<Property name="Layers">]]..table.concat(T)..[[</Property></Data>]]
end

local function AddProcTexFiles()
	local T = {}
	for _,ptf in ipairs(proc_texture_files) do
		table.insert(T, {
			FILE_CONTENT		= BuildProcTexListMbin(ptf),
			FILE_DESTINATION	= ptf.nmspath..ptf.label..'.TEXTURE.EXML'
		})
		if ptf.source then
			table.insert(T, {
				EXTERNAL_FILE_SOURCE= ptf.source..ptf.label..'*.DDS',
				FILE_DESTINATION	= ptf.nmspath..'*.DDS'
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Ship Interior Procedural Color.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.99.1',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= AddProcTexFiles()
}
