---------------------------------------------------------------------
local desc = [[
  Generate single-layer proc texture files
]]-------------------------------------------------------------------

local layered_textures = {
	{
	-- multitool glow parts
		dds		= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Weapon/MULTITOOLGLOW.DDS',
		path	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/',
		palette = 'Crystal',
		color	= 'Primary',
		diff	= 'MULTITOOLGLOW'
	},
	-- {
	-- -- ship: fake light beam & some glow parts (uses internal texture)
	-- -- WARNING: affect ships pro-gen PAINTED/PANELS
		-- path   = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		-- palette = 'Paint',
		-- color	= 'Primary',
		-- diff	= 'RECTWHITELIGHT'
		-- }
	-- },
	-- {
	-- -- ship: glow rectangle parts (uses internal texture)
	-- -- WARNING: affect ships pro-gen PAINTED/PANELS
		-- path   = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		-- palette = 'Paint',
		-- color	= 'Primary',
		-- diff	= 'RECTLIGHT'
	-- },
	-- {
	-- -- ship: glow circle parts (uses internal texture)
	-- -- WARNING: affect ships pro-gen PAINTED/PANELS
		-- group  = '',
		-- path   = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		-- palette = 'Paint',
		-- color	= 'Primary',
		-- diff	= 'CIRCLELIGHT'
	-- },
}

local function GetProceduralTexture(tex)
	return [[
		<Property value="TkProceduralTexture.xml">
			<Property name="Name" value=""/>
			<Property name="Palette" value="TkPaletteTexture.xml">
				<Property name="Palette" value="]]..tex.palette..[["/>
				<Property name="ColourAlt" value="]]..tex.color..[["/>
			</Property>
			<Property name="Probability" value="1"/>
			<Property name="TextureGameplayUse" value="IgnoreName"/>
			<Property name="OverrideAverageColour" value="False"/>
			<Property name="AverageColour" value="Colour.xml">
				<Property name="R" value="0"/>
				<Property name="G" value="0"/>
				<Property name="B" value="0"/>
				<Property name="A" value="0"/>
			</Property>
			<Property name="Diffuse" value="]]..tex.path..tex.diff..[[.BASE.DDS"/>
			<Property name="Normal" value=""/>
			<Property name="Mask" value=""/>
		</Property>]]
end

local function GetProceduralTextureLayer(textures, name)
	if textures then
		textures = '<Property name="Textures">'..textures..'</Property>'
	else
		textures = '<Property name="Textures"/>'
	end
	return [[
		<Property value="TkProceduralTextureLayer.xml">
			<Property name="Name" value="]]..(name or '')..[["/>
			<Property name="Probability" value="1"/>
			<Property name="Group" value=""/>
			<Property name="SelectToMatchBase" value="False"/>
			]]..textures..[[
		</Property>
	]]
end

local function BuildProcTextureLayers(tex)
	local exml = {}
	table.insert(exml, GetProceduralTextureLayer(GetProceduralTexture(tex), 'BASE'))
	-- silly fixed length array
	for _=1, 7 do table.insert(exml, GetProceduralTextureLayer()) end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="TkProceduralTextureList">
		<Property name="Layers">]]..table.concat(exml)..[[</Property></Data>]]
end

-- local function writeToFile(text, file)
	-- assert(io.open(file, 'w')):write(text)
-- end

-- writeToFile(BuildProcTextureLayers(layered_textures[1]), 'e:/_dump/MULTITOOLGLOW.TEXTURE.EXML')

local function add_tex_layers_files()
	local T = {}
	for _,lt in ipairs(layered_textures) do
		table.insert(T, {
			FILE_CONTENT		= BuildProcTextureLayers(lt),
			FILE_DESTINATION	= lt.path..lt.diff..'.TEXTURE.EXML'
		})
		if lt.dds then
			table.insert(T, {
				EXTERNAL_FILE_SOURCE= lt.dds,
				FILE_DESTINATION	= lt.path..lt.diff..'.BASE.DDS'
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 14 add single layer.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= add_tex_layers_files()
}
