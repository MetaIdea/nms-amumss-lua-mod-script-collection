---------------------------------------------------------------------
local mod_desc = [[
  Separates the construct head lights color to its own color chooser
]]-------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Construct separate light color.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.62',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/CHARACTERCUSTOMISATIONUIDATA.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'DescriptorOption', 'HEAD_ASTBOT[12]', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'HEAD_ASTBOT2', 'Title', 'CUSTOMISE_TERTIARY'},
					{'DescriptorOption', 'BHEAD_%d.-', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_3', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_4', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_5', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_6', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_7', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_9', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_10', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_11', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_12', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_13', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_14', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_15', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_16', 'Title', 'CUSTOMISE_TERTIARY'},
					-- {'DescriptorOption', 'BHEAD_17', 'Title', 'CUSTOMISE_TERTIARY'},
				},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= [[
					<Property name="ColourGroups" value="GcCustomisationColourGroup">
						<Property name="GroupID" value="" />
						<Property name="Title" value="Light Color" />
						<Property name="Palette" value="TkPaletteTexture">
							<Property name="Palette" value="Custom_Head" />
							<Property name="ColourAlt" value="Alternative3" />
							<Property name="Index" value="-1" />
						</Property>
					</Property>]]
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'TEXTURES/COMMON/ROBOTS/BUILDERLIGHTS.TEXTURE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'ColourAlt', 'Alternative3'},
				}
			}
		}
	}
}}}}