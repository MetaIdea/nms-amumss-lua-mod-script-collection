---------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
---------------------------------------------------------------------
local mod_desc = [[
  restore the costruct head eye lights
  * requires changing palette colorAlt in BUILDERLIGHTS.TEXTURE.MBIN
   (done in textures script)
]]-------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META costruct head eyes.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'EYES_BUILDER'},
				VALUE_CHANGE_TABLE 	= {
					{'ColourAlt',	'Alternative3'} -- Alternative2
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/CHARACTERCUSTOMISATIONUIDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'DescriptorOption', 'HEAD_ASTBOT1','Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'HEAD_ASTBOT2','Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_3',		'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_4',		'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_5',		'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_6',		'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_7',		'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_9',		'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_10',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_11',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_12',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_13',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_14',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_15',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_16',	'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_17',	'Title', 'CUSTOMISE_TERTIARY'}
				},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml({
					META	= {'value', 'GcCustomisationColourGroup.xml'},
					Title	= 'Light Color',
					Palette	= {
						META		= {'Palette', 'TkPaletteTexture.xml'},
						Palette		= 'Custom_Head',
						ColourAlt	= 'Alternative3'
					}
				})
			}
		}
	}
}}}}