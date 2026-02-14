---------------------------------------------------------------------
local mod_desc = [[
  Restores procedural colors for the cockpit interior plastic parts
  This affects all ship types except the living ship
]]-------------------------------------------------------------------

local function OneTextureProcTexFile(t)
	return ([[<Data template="cTkProceduralTextureList">
		<Property name="Layers">
			<Property name="Layers" value="TkProceduralTextureLayer">
				<Property name="Name" value="%s"/>
				<Property name="Probability" value="1"/>
				<Property name="Textures">
					<Property name="Textures" value="TkProceduralTexture">
						<Property name="Name" value="%s" />
						<Property name="Palette" value="TkPaletteTexture">
							<Property name="Palette" value="%s"/>
							<Property name="ColourAlt" value="%s"/>
							<Property name="Index" value="-1"/>
						</Property>
						<Property name="Probability" value="1"/>
						<Property name="TextureName" value="%s"/>
					</Property>
				</Property>
			</Property>
			<Property value="TkProceduralTextureLayer"/>
			<Property value="TkProceduralTextureLayer"/>
			<Property value="TkProceduralTextureLayer"/>
			<Property value="TkProceduralTextureLayer"/>
			<Property value="TkProceduralTextureLayer"/>
			<Property value="TkProceduralTextureLayer"/>
			<Property value="TkProceduralTextureLayer"/>
		</Property>
	</Data>]]):format(
		t.layer		or 'BASE',
		t.name		or '',
		t.palette	or 'Rock',
		t.color		or 'None',
		t.texture
	)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Ship Interior Procedural Color',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.21',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.TEXTURE.MXML',
			FILE_CONTENT	 = OneTextureProcTexFile({
				palette	= 'Paint',
				color	= 'Alternative3',
				texture	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.BASE.DDS',
			})
		},
	}
}