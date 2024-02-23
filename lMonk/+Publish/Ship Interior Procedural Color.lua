---------------------------------------------------------------------
local mod_desc = [[
  Restores procedural colors for the cockpit interior plastic parts
  This affects all ship types except the living ship
]]-------------------------------------------------------------------

local function SingleLayerTextureMbin(diffuse, palette, altcolor)
	return [[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkProceduralTextureList">
		<Property name="Layers">
			<Property value="TkProceduralTextureLayer.xml">
				<Property name="Name" value="BASE"/>
				<Property name="Probability" value="1"/>
				<Property name="Textures">
					<Property value="TkProceduralTexture.xml">
						<Property name="Palette" value="TkPaletteTexture.xml">
							<Property name="Palette" value="]]..palette..[["/>
							<Property name="ColourAlt" value="]]..altcolor..[["/>
						</Property>
						<Property name="Probability" value="1"/>
						<Property name="Diffuse" value="]]..diffuse..[["/>
					</Property>
				</Property>
			</Property>
			<Property value="TkProceduralTextureLayer.xml"/>
			<Property value="TkProceduralTextureLayer.xml"/>
			<Property value="TkProceduralTextureLayer.xml"/>
			<Property value="TkProceduralTextureLayer.xml"/>
			<Property value="TkProceduralTextureLayer.xml"/>
			<Property value="TkProceduralTextureLayer.xml"/>
			<Property value="TkProceduralTextureLayer.xml"/>
		</Property>
	</Data>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Ship Interior Procedural Color.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.TEXTURE.EXML',
			FILE_CONTENT	 = SingleLayerTextureMbin(
				'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.BASE.DDS',
				'Paint',
				'Alternative3'
			)
		},
		{
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAINALT1.TEXTURE.EXML',
			FILE_CONTENT	 = SingleLayerTextureMbin(
				'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAINALT1.BASE.DDS',
				'Paint',
				'Primary'
			)
		},
		{
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAINALT2.TEXTURE.EXML',
			FILE_CONTENT	 = SingleLayerTextureMbin(
				'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAINALT2.BASE.DDS',
				'Paint',
				'Primary'
			)
		}
	}
}
