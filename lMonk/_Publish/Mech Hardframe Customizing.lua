---------------------------------------------------------------------
local desc = [[
  Adds in-game customizing for the hardframe mech body!
  (Customizing is done through the mech's geobay menu)

  * For obvious reasons, if you want the pak to include the textures,
   you'll need to set a relevant file path for them.
]]-------------------------------------------------------------------

local texture_layers = {
	{
	---	hardframe (files are copied in collate script)
		name = 'SENTINELTRIM',
		path = 'TEXTURES/COMMON/ROBOTS/',
		{
			layer	= 'OVERLAY',
			diff	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.OVERLAY.DDS'
		},{
			layer	= 'PRIMARY',
			palette = 'Paint',
			color	= 'Primary',
			diff	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.PRIMARY.DDS'
		},{
			layer	= 'SECONDARY',
			palette = 'Paint',
			color	= 'Alternative1',
			diff	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.SECONDARY.DDS'
		},{
			layer	= 'TERTIARY',
			palette = 'Paint',
			color	= 'Alternative2',
			diff	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.TERTIARY.DDS'
		},{
			layer	= 'BASE',
			diff	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.BASE.DDS',
			normal	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.BASE.NORMAL.DDS',
			masks	= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/SENTINELTRIM.BASE.MASKS.DDS'
		},
	}
}

local function GetProceduralTexture(path, tl)
	return [[
	<Property value="TkProceduralTexture.xml">
		<Property name="Name" value=""/>
		<Property name="Palette" value="TkPaletteTexture.xml">
			<Property name="Palette" value="]]..(tl.palette or 'Rock')..[["/>
			<Property name="ColourAlt" value="]]..(tl.color or 'None')..[["/>
		</Property>
		<Property name="Probability" value="1"/>
		<Property name="Diffuse" value="]]..path..'.'..tl.layer..[[.DDS"/>
		<Property name="Normal" value="]]..
			(tl.normal and path..'.'..tl.layer..'.NORMAL.DDS' or '')..[["/>
		<Property name="Mask" value="]]..
			(tl.masks and path..'.'..tl.layer..'.MASKS.DDS' or '')..[["/>
	</Property>]]
end

local function GetProceduralTextureLayer(tl, layer)
	return [[
		<Property value="TkProceduralTextureLayer.xml">
			<Property name="Name" value="]]..(layer or '')..[["/>
			<Property name="Probability" value="1"/>
			]]..(tl and '<Property name="Textures">'..tl..'</Property>' or '')..[[
		</Property>
	]]
end

local function BuildProcTextureLayers(tex_layer)
	local T = {}
	-- multi layers here
	for _,tl in ipairs(tex_layer) do
		table.insert( T,
			GetProceduralTextureLayer(
				GetProceduralTexture(tex_layer.path..tex_layer.name, tl),
				tl.layer
			)
		)
	end
	-- silly fixed length array
	for _=1, (8 - #tex_layer) do table.insert(T, GetProceduralTextureLayer()) end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="TkProceduralTextureList">
		<Property name="Layers">]]..table.concat(T)..[[</Property></Data>]]
end

local function add_tex_layers_files()
	local T = {}
	for _,lt in ipairs(texture_layers) do
		table.insert(T, {
			FILE_CONTENT		= BuildProcTextureLayers(lt),
			FILE_DESTINATION	= lt.path..lt.name..'.TEXTURE.EXML'
		})
	end
	for _,lt in ipairs(texture_layers) do
		for _,tx in ipairs(lt) do
			if tx.diff then
				table.insert(T, {
					EXTERNAL_FILE_SOURCE= tx.diff,
					FILE_DESTINATION	= lt.path..lt.name..'.'..tx.layer..'.DDS'
				})
			end
			if tx.normal then
				table.insert(T, {
					EXTERNAL_FILE_SOURCE= tx.normal,
					FILE_DESTINATION	= lt.path..lt.name..'.'..tx.layer..'.NORMAL.DDS'
				})
			end
			if tx.masks then
				table.insert(T, {
					EXTERNAL_FILE_SOURCE= tx.masks,
					FILE_DESTINATION	= lt.path..lt.name..'.'..tx.layer..'.MASKS.DDS'
				})
			end
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Mech Hardframe Customizing.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.98,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= add_tex_layers_files()
}
