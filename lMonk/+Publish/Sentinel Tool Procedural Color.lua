-----------------------------------------------------
local mod_desc = [[
  Adds procedural colors for the sentinel multitools
]]---------------------------------------------------

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
	MOD_FILENAME 		= 'MOD.lMonk.Sentinel Tool Procedural Color',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.21',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL/ORANGEMETALMAT.MATERIAL.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.BASE.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMasksMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.MASKS.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gNormalMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.NORMAL.DDS'}
				}
			}
		}
	},
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.TEXTURE.MXML',
			FILE_CONTENT	 = OneTextureProcTexFile({
				palette	= 'Custom_Head',
				color	= 'Primary',
				texture	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.BASE.DDS'
			})
		}
	}
}