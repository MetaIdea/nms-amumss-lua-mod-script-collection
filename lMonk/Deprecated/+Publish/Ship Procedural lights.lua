------------------------------------------------------------------
local desc = [[
  All those small, glowing lights; the old, fake, light beams;
    various headlights, will will match the ship's main color.
	
  * Affects fighter, dropship, shuttle & sailship
  * Restore procedural sail lights who match the sail's color

  --- WARNING: may affect ship proc-gen PAINTED/PANELS
]]----------------------------------------------------------------

local layered_textures = {
	{
	---	ship: fake light beam & some glow parts (uses internal texture)
		path   = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		palette = 'Paint',
		color	= 'Primary',
		diff	= 'RECTWHITELIGHT',
		dds		= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/RECTWHITELIGHT.DDS'
	},
	{
	---	ship: glow rectangle parts (uses internal texture)
		path   = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		palette = 'Paint',
		color	= 'Primary',
		diff	= 'RECTLIGHT',
		dds		= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/RECTLIGHT.DDS'
	},
	{
	---	ship: glow circle parts (uses internal texture)
		path   = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		palette = 'Paint',
		color	= 'Primary',
		diff	= 'CIRCLELIGHT',
		dds		= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/CIRCLELIGHT.DDS'
	},
	{
	---	ship: headlight
		path   = 'TEXTURES/COMMON/SPACECRAFT/SHARED/',
		palette = 'Paint',
		color	= 'Primary',
		diff	= 'HEADLIGHT',
		dds		= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/HEADLIGHT.DDS'
	}
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
	for _=1, 7 do
		table.insert(exml, GetProceduralTextureLayer())
	end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="TkProceduralTextureList">
		<Property name="Layers">]]..table.concat(exml)..[[</Property></Data>]]
end

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
	MOD_FILENAME 		= '_MOD.lMonk.ship procedural lights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	ADD_FILES			= add_tex_layers_files(),
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/HEADLAMP/HEADLIGHT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/SHARED/HEADLIGHT.DDS'}
				}
			}
		}
	},
	{
		-- sailship |sail proc lights|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/HQLIGHT_MAT11.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SAILS/RECTLIGHTPROC.DDS'}
				}
			}
		}
	}
}}}}
