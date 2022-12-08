---------------------------------------------------------------------------------
local desc = [[
  Generate TkProceduralTextureList files for the procedural decals
  diff/normal/masks	= true >> include dds in the layer

  * source is used for importing the dds files (needs path to the files' folder)
  * The script STILL WORKS if the source path is incorrect or no dds
   files are found - except no textures will be packed with the mbin files.  
]]-------------------------------------------------------------------------------

local proc_texture_files = {
	{
	---	ship decals : logo
		label	= 'LOGO',
		group	= 'DECALLOGO',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/logo/',
		nmspath	= 'TEXTURES/COMMON/DECALS/LOGO/',
		{
			ly_name	= 'OVERLAY',
			normal	= true,
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'L15', 'L14', 'L13', 'L12', 'L11', 'L10', 'L9', 'L8', 'L7', 'L6', 'L5', 'L4', 'L3', 'L2', 'L1'},
			palette = 'Paint',
			color	= 'Alternative2',
			diff	= true
		}
	},
	{
	---	ship decals : rectangle
		label	= 'RECTANGLE',
		group	= 'DECALRECTANGLE',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/rectangle/',
		nmspath	= 'TEXTURES/COMMON/DECALS/RECTANGLE/',
		{
			ly_name	= 'OVERLAY',
			normal	= true,
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'R15', 'R14', 'R13', 'R12', 'R11', 'R10', 'R9', 'R8', 'R7', 'R6', 'R5', 'R4', 'R3', 'R2', 'R1'},
			palette = 'Paint',
			color	= 'Alternative2',
			diff	= true
		}
	},
	{
	---	ship decals : smallsign
		label	= 'SMALLSIGN',
		group	= 'DECALSMALLSIGN',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/smallsign/',
		nmspath	= 'TEXTURES/COMMON/DECALS/SMALLSIGN/',
		{
			ly_name	= 'OVERLAY',
			normal	= true,
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'S6', 'S5', 'S4', 'S3', 'S2', 'S1'},
			palette = 'Paint',
			color	= 'Alternative3',
			diff	= true
		}
	},
	{
	---	ship decals : number
		label	= 'NUMBER',
		group	= 'DECALNUMBER',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/number/',
		nmspath	= 'TEXTURES/COMMON/DECALS/NUMBER/',
		{
			ly_name	= 'OVERLAY',
			normal	= true,
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'B8', 'B9', 'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
			palette = 'Paint',
			color	= 'Alternative1',
			diff	= true
		}
	},
	{
	---	ship decals : lettering
		label	= 'LETTERING',
		group	= 'DECALLET',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/lettering/',
		nmspath	= 'TEXTURES/COMMON/DECALS/LETTERING/',
		{
			ly_name	= 'OVERLAY',
			normal	= true,
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'LT1', 'LT2', 'LT3', 'LT4', 'LT5', 'LT6', 'LT7', 'LT8', 'LT9'},
			palette = 'Paint',
			color	= 'Alternative2',
			diff	= true
		}
	},
	{
	---	space station front lettering
		label	= 'LETTERING',
		group	= 'DECALLETTER',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/station/',
		nmspath	= 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		{
			ly_name	= 'OVERLAY',
			color	= 'Primary',
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'ST1', 'ST2', 'ST3', 'ST4', 'ST5', 'ST6', 'ST7'},
			diff	= true
		}
	},
	{
	---	space station front number
		label	= 'NUMBER',
		group	= 'DECALNUMBER',
		source	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/station/',
		nmspath	= 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		{
			ly_name	= 'OVERLAY',
			color	= 'Primary',
			masks	= true
		},{
			ly_name	= 'BASE',
			tx_name	= {'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
			diff	= true
		}
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
		table.insert(T, {
			EXTERNAL_FILE_SOURCE= ptf.source..ptf.label..'*.DDS',
			FILE_DESTINATION	= ptf.nmspath..'*.DDS'
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Alt Ship Decals.2.5.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 4.0,
	MOD_DESCRIPTION		= desc,
	ADD_FILES			= AddProcTexFiles()
}
