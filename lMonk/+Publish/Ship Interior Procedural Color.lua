---------------------------------------------------------------------
local mod_desc = [[
  Restores procedural colors for the cockpit interior plastic parts
  This affects all ship types except the living ship
]]-------------------------------------------------------------------

local function SingleLayerProcTexture(t)
	return [[<Data template="cTkProceduralTextureList">
		<Property name="Layers">
			<Property name="Layers" value="TkProceduralTextureLayer">
				<Property name="Name" value="]]..(t.layer or 'BASE')..[["/>
				<Property name="Probability" value="1"/>
				<Property name="Textures">
					<Property name="Textures" value="TkProceduralTexture">
						<Property name="Name" value="]]..(t.name or '')..[[" />
						<Property name="Palette" value="TkPaletteTexture">
							<Property name="Palette" value="]]..(t.palette or 'Rock')..[["/>
							<Property name="ColourAlt" value="]]..(t.color or 'None')..[["/>
							<Property name="Index" value="-1"/>
						</Property>
						<Property name="Probability" value="]]..(t.prob or '1')..[["/>
						<Property name="TextureName" value="]]..t.texture..[["/>
					</Property>
				</Property>
			</Property>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
			<Property name="Layers" value="TkProceduralTextureLayer"/>
		</Property>
	</Data>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Ship Interior Procedural Color.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.58',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.TEXTURE.MXML',
			FILE_CONTENT	 = SingleLayerProcTexture({
				palette	= 'Paint',
				color	= 'Alternative3',
				texture	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.BASE.DDS',
			})
		},
	}
}