------------------------------------------------------------------
local mod_desc = [[
  All those small, glowing lights; the old, fake, light beams;
    various headlights, will will match the ship's main color.

  * ADD_FILES will skipped SILENTLY if new files are not found!
  * Affects fighter, dropship, shuttle & sailship
  * Restore procedural sail lights who match the sail's color

  --- WARNING: may affect ship proc-gen PAINTED/PANELS
]]----------------------------------------------------------------

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
	MOD_FILENAME 		= '_MOD.lMonk.ship procedural lights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.73',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= (
		function()
			local T = {
				{
					FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/RECTWHITELIGHT.TEXTURE.MXML',
					FILE_CONTENT	 = OneLayerProcTexFile({
						palette	= 'Paint',
						color	= 'Primary',
						texture	= 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/RECTWHITELIGHT.DDS'
					})
				},
				{
					FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/RECTLIGHT.TEXTURE.MXML',
					FILE_CONTENT	 = OneLayerProcTexFile({
						palette	= 'Paint',
						color	= 'Primary',
						texture	= 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/RECTLIGHT.DDS'
					})
				},
				{
					FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/CIRCLELIGHT.TEXTURE.MXML',
					FILE_CONTENT	 = OneLayerProcTexFile({
						palette	= 'Paint',
						color	= 'Primary',
						texture	= 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/CIRCLELIGHT.DDS'
					})
				}
			}
			local headlight = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/_extra/Ship/Shared/HEADLIGHT.DDS'
			if lfs.attributes(headlight) then
				local dds = 'TEXTURES/COMMON/SPACECRAFT/SHARED/HEADLIGHT.DDS'
				T[#T+1] = {
					EXTERNAL_FILE_SOURCE= headlight,
					FILE_DESTINATION	= dds
				}
				T[#T+1] = {
					FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/HEADLIGHT.TEXTURE.MXML',
					FILE_CONTENT	 = OneLayerProcTexFile({
						palette	= 'Paint',
						color	= 'Primary',
						texture	= dds
					})
				}
			end
			return T
		end
	)(),
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/HEADLAMP/HEADLIGHT.MATERIAL.MBIN',
		MXML_CHANGE_TABLE	= {
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
		MXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SAILS/RECTLIGHTPROC.DDS'}
				}
			}
		}
	}
}}}}