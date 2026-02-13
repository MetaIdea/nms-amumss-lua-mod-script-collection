----------------------------------------------------------------------------------
local mod_desc = [[
  Fixes fighter's wingsK missing LOD sections and increases it's LOD distances
  Fixes the "unusual" decals descriptor choices so all decals show together
]]--------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= 'MOD.lMonk.fighter wingK FIX',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '6.21',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		MXML_CHANGE_TABLE	= (
			function()
				local T = {}
				for _,node_att in ipairs({
					'WingsK_ALOD',
					'SUB1WingsK_ALOD',
					'SUB3WingsK_ALOD'
				}) do
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Name', node_att..0},
						PRECEDING_KEY_WORDS = 'Attributes',
						REMOVE				= 'Section'
					}
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Name', node_att..1},
						PRECEDING_KEY_WORDS = 'Attributes',
						SEC_SAVE_TO			= 'scene_node_attributes'
					}
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Name', node_att..0},
						SEC_ADD_NAMED		= 'scene_node_attributes'
					}
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Name', node_att..0, 'Name', 'LODLEVEL'},
						VALUE_CHANGE_TABLE 	= { {'Value', 0} }
					}
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'Name', node_att..0},
						VALUE_CHANGE_TABLE 	= { {'NameHash', GNH(node_att..1)} }
					}
				end
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
					VALUE_CHANGE_TABLE 	= {
						{'Value',		160}
					}
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'Name', 'LODDIST2'},
					VALUE_CHANGE_TABLE 	= {
						{'Value',		360}
					}
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'Name', 'LODDIST3'},
					VALUE_CHANGE_TABLE 	= {
						{'Value',		480}
					}
				}
				return T
			end
		)()
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.DESCRIPTOR.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Id', '_RECTANGLERIGHT_ALOD1'},
					{'Id', '_LOGORIGHT_ALOD1'},
					{'Id', '_LETTERRIGHT_ALOD1'}
				},
				REMOVE = 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', '_WINGSK_A'},
				PRECEDING_KEY_WORDS = {'TkModelDescriptorList', 'List'},
				ADD				 	= (
					function()
						local desclist = [[
							<Property name="List" value="TkResourceDescriptorList">
								<Property name="TypeId" value="%s"/>
								<Property name="Descriptors">
									<Property name="Descriptors" value="TkResourceDescriptorData">
										<Property name="Id" value="%s"/>
										<Property name="Name" value="%s"/>
									</Property>
								</Property>
							</Property>]]
						return	desclist:format('_RECTANGLELEFT',	'_RECTANGLERIGHT_ALOD1','_RectangleRight_ALOD1')
								..
								desclist:format('_LOGOLEFT_',		'_LOGORIGHT_ALOD1',		'_logoRight_ALOD1')
								..
								desclist:format('_LETTERLEFT_',		'_LETTERRIGHT_ALOD1',	'_LetterRight_ALOD1')
					end
				)()
			}
		}
	}
}}}}