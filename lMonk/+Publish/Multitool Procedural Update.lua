--------------------------------------------------------------------
local mod_desc = [[
  Adds procedural colors for the sentinel multitool and staff strap
  Adds procedural colors for the multitool glow parts

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]------------------------------------------------------------------

local function OneLayerProcTexFile(t)
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
	MOD_FILENAME 		= '_MOD.lMonk.Multitool Procedural Update.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.02',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= {
		{
			FILE_DESTINATION	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/STRAP.TEXTURE.MXML',
			FILE_CONTENT		= OneLayerProcTexFile({
				palette	= 'Paint',
				color	= 'Alternative2',
				texture	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/STRAP.BASE.DDS'
			})
		},
		{
			FILE_DESTINATION 	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.TEXTURE.MXML',
			FILE_CONTENT		= OneLayerProcTexFile({
				palette	= 'Crystal',
				color	= 'Primary',
				texture	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.BASE.DDS'
			})
		},
		(
			function()
				local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/common/weapons/multitool/MULTITOOLGLOW.BASE.DDS'
				if lfs.attributes(tex_path) then
					return {
						EXTERNAL_FILE_SOURCE = tex_path,
						FILE_DESTINATION	 = 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.BASE.DDS'
					}
				end
				return nil
			end
		)()
	}
}