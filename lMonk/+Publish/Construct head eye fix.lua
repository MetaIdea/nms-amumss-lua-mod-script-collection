---------------------------------------
mod_desc = [[
  restore the costruct head eye lights
]]-------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Costruct head eyes fix.1.1.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.38',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'EYE'},
				PRECEDING_KEY_WORDS = 'Options',
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'EYE'},
				PRECEDING_KEY_WORDS = 'Tips',
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'EYE'},
				ADD					= (
					function()
						exml = '<Property name="Options">'
						for i=0, 8 do
							exml = exml..'<Property value="NMSString0x20.xml"><Property name="Value" value="'..i..'"/></Property>'
						end
						return exml..'</Property>'
					end
				)()
			},
			{
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'EYE'},
				VALUE_CHANGE_TABLE 	= {
					{'TextureOptionsID',	'BUILDEREYES'},
					{'Group',				'BUILDEREYES'},
					{'ColourAlt',			'Alternative3'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/CHARACTERCUSTOMISATIONUIDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'DescriptorOption', 'HEAD_ASTBOT1', 'TextureOptionGroup', 'HEAD_ASTRO'},
					{'DescriptorOption', 'HEAD_ASTBOT2', 'TextureOptionGroup', 'HEAD_ASTRO'},
				},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= [[
					<Property value="GcCustomisationTextureGroup.xml">
						<Property name="Title" value="BUILD_GROUP_LIGHTS"/>
						<Property name="TextureOptionGroup" value="BUILDEREYES"/>
					</Property>]]
			},
			{
				SPECIAL_KEY_WORDS	= {
					{'DescriptorOption', 'HEAD_ASTBOT1', 'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'HEAD_ASTBOT2', 'Title', 'CUSTOMISE_TERTIARY'},
				},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= [[
					<Property value="GcCustomisationColourGroup.xml">
						<Property name="Title" value="Headlights Color"/>
						<Property name="Palette" value="TkPaletteTexture.xml">
							<Property name="Palette" value="Custom_Head" />
							<Property name="ColourAlt" value="Alternative3" />
						</Property>
					</Property>]]
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'TEXTURES/COMMON/ROBOTS/BUILDERLIGHTS.TEXTURE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'ColourAlt', 'Alternative3'},
				}
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Player/BUILDERLIGHTS.EYE.*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/COMMON/ROBOTS/*.DDS',
		}
	}
}