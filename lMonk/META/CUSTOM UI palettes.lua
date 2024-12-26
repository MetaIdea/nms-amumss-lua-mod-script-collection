---------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
---------------------------------------------------------------------
local mod_desc = [[
  - Add cusomization options for the skiff.
  - restore the costruct head eye lights
   * requires changing palette colorAlt in BUILDERLIGHTS.TEXTURE.MBIN
   (done in textures script)
]]-------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ui cutomization palettes.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/CHARACTERCUSTOMISATIONUIDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Skiff', 'GcCustomisationUI.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'ForceShowAllColourOptions', true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Skiff', 'GcCustomisationUI.xml'},
				PRECEDING_KEY_WORDS = 'ColourGroups',
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Vehicle_Mech', 'GcCustomisationUI.xml'},
				PRECEDING_KEY_WORDS = 'ColourGroups',
				SEC_SAVE_TO			= 'mech_colour_groups'
			},
			{
				SEC_EDIT 			= 'mech_colour_groups',
				SPECIAL_KEY_WORDS	= {'Title', 'CUSTOMISE_TERTIARY'},
				REPLACE_TYPE 		= 'OnceInside',
				PRECEDING_KEY_WORDS = 'Palette',
				VALUE_CHANGE_TABLE 	= {
					{'Palette',		'SailShip_Sails'},
					{'ColourAlt',	'Primary'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Skiff', 'GcCustomisationUI.xml'},
				PRECEDING_KEY_WORDS = 'GcCustomisationGroup.xml',
				SEC_ADD_NAMED		= 'mech_colour_groups'
			},
			{
				SPECIAL_KEY_WORDS	= (
					function()
						local T = {}
						for _,head in ipairs({
							'HEAD_ASTBOT1',
							'HEAD_ASTBOT2',
							'BHEAD_3',
							'BHEAD_4',
							'BHEAD_5',
							'BHEAD_6',
							'BHEAD_7',
							'BHEAD_9',
							'BHEAD_10',
							'BHEAD_11',
							'BHEAD_12',
							'BHEAD_13',
							'BHEAD_14',
							'BHEAD_15',
							'BHEAD_16',
							'BHEAD_17'
						}) do
							T[#T+1] = {'DescriptorOption', head, 'Title', 'CUSTOMISE_TERTIARY'}
						end
						return T
					end
				)(),
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml({
					meta	= {'value', 'GcCustomisationColourGroup.xml'},
					Title	= 'Light Color',
					Palette	= {
						meta		= {'Palette', 'TkPaletteTexture.xml'},
						Palette		= 'Custom_Head',
						ColourAlt	= 'Alternative3'
					}
				})
			}
		}
	}
}}}}