---------------------------------------------------------------------
local mod_desc = [[
  Adds in-game customizing for the hardframe mech body!
  (Customizing is done through the mech's geobay menu)

  * If you want to pack the texture files with the script,
   you'll need to set a relevant file path for them.
   If you use ModExtraFilesToInclude, just comment/delete 'source'
]]-------------------------------------------------------------------

local proc_texture_files = {
	{
	---	mech hardframe
		label	= 'SENTINELTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		{
			ly_name	= 'OVERLAY',
			diff	= true,
		},{
			ly_name	= 'PRIMARY',
			palette = 'Paint',
			color	= 'Primary',
			diff	= true,
		},{
			ly_name	= 'SECONDARY',
			palette = 'Paint',
			color	= 'Alternative1',
			diff	= true,
		},{
			ly_name	= 'TERTIARY',
			palette = 'Paint',
			color	= 'Alternative2',
			diff	= true,
		},{
			ly_name	= 'BASE',
			diff	= true,
			normal	= true,
			masks	= true
		},
	}
}

local function GetProcTextures(path, layer)
	-- concat table with [.] separator
	local function TexPath(arg)
		if not arg.b then
			return ''
		end
		local con = ''
		for _,ar in ipairs(arg) do
			if ar and #ar > 0 then
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
	MOD_FILENAME 		= '_MOD.lMonk.Mech Hardframe Customizing.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= AddProcTexFiles()
}
