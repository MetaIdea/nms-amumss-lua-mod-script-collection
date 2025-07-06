--------------------------------------------------------------------
local mod_desc = [[
  Adds procedural colors for the sentinel multitool and staff strap
  Adds procedural colors for the multitool glow parts

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]------------------------------------------------------------------

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
	MOD_FILENAME 		= '_MOD.lMonk.Multitool Procedural Update.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.55',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= {
		{
			FILE_DESTINATION	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/STRAP.TEXTURE.MXML',
			FILE_CONTENT		= SingleLayerProcTexture({
				palette	= 'Paint',
				color	= 'Alternative2',
				texture	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/STRAP.BASE.DDS'
			})
		},
		{
			FILE_DESTINATION 	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.TEXTURE.MXML',
			FILE_CONTENT		= SingleLayerProcTexture({
				palette	= 'Crystal',
				color	= 'Primary',
				texture	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/MULTITOOLGLOW.BASE.DDS'
			})
		},
		(
			function()
				local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Weapon/MULTITOOLGLOW.BASE.DDS'
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