-----------------------------------------------------
local mod_desc = [[
  Adds procedural colors for the sentinel multitools
]]---------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Sentinel Tool Procedural Color.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL/ORANGEMETALMAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.DDS'}
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
			FILE_DESTINATION = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.TEXTURE.EXML',
			FILE_CONTENT	 = [[<?xml version="1.0" encoding="utf-8"?>
				<Data template="TkProceduralTextureList">
					<Property name="Layers">
						<Property value="TkProceduralTextureLayer.xml">
							<Property name="Name" value="BASE"/>
							<Property name="Probability" value="1"/>
							<Property name="Textures">
								<Property value="TkProceduralTexture.xml">
									<Property name="Palette" value="TkPaletteTexture.xml">
										<Property name="Palette" value="Custom_Head"/>
										<Property name="ColourAlt" value="Primary"/>
									</Property>
									<Property name="Probability" value="1"/>
									<Property name="Diffuse" value="TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/PLASTICGRAIN.BASE.DDS"/>
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
		}
	}
}
