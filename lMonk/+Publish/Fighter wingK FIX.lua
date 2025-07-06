----------------------------------------------------------------------------------
local mod_desc = [[
  Fixes fighter's wingsK missing LOD sections and increases it to to 5 LOD stages
  Fixes the "unusual" decals descriptor choices so all decals show together
]]--------------------------------------------------------------------------------

local function WingK_LodFixes()
	local attr = {
		BATCHSTARTPHYSI	= {37668,			41736,			53247		},
		VERTRSTARTPHYSI	= {21866,			24590,			31380		},
		VERTRENDPHYSICS	= {24589,			29311,			33122		},
		BATCHCOUNT		= {4068,			7890,			2856		},
		VERTRENDGRAPHIC	= {2723,			4721,			1742		},
		BOUNDHULLST		= {212,				248,			328			},
		BOUNDHULLED		= {248,				292,			352			},
		AABBMINX		= {-2.891207,		-3.749691,		-3.733948	},
		AABBMINY		= {0.836564,		nil,			0.712383	},
		AABBMINZ		= {-1.380045,		-2.157869,		-2.149216	},
		AABBMAXX		= {nil,				3.749691,		3.733998	},
		AABBMAXY		= {1.77087,			nil,			1.885870	},
		AABBMAXZ		= {0.631633,		1.163431,		0.729330	},
		MESHLINK		= {'WingsK_ALODShape1', 'WingsK_ALODShape1', 'WingsK_ALODShape1'}
	}
	local T = {}
	for i, lod in ipairs({'WingsK_ALOD', 'SUB1WingsK_ALOD', 'SUB3WingsK_ALOD'}) do
		for name, prop in pairs(attr) do
			if prop[i] then
				T[#T+1] = {
					SECTION_ACTIVE		= -1,
					SPECIAL_KEY_WORDS	= {'Name', (lod..'0'), 'Name', name},
					VALUE_CHANGE_TABLE 	= { {'Value', prop[i]} }
				}
			end
		end
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'Name', lod..'0'},
			VALUE_MATCH			= lod..'0',
			VALUE_CHANGE_TABLE 	= { {'Name', lod..'1'} }
		}
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.fighter wingK FIX.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'LODDIST1'},
					{'Name', 'LODDIST2'},
					{'Name', 'LODDIST3'},
				},
				REMOVE = 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
				VALUE_CHANGE_TABLE 	= { {'Value', 4} }
			},
			{
				PRECEDING_KEY_WORDS	= 'Attributes',
				SECTION_ACTIVE		= -1,
				ADD 				= [[
					<Property name="Attributes" value="TkSceneNodeAttributeData">
						<Property name="Name" value="ATTACHMENT"/>
						<Property name="Value" value="MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN"/>
					</Property>]]
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.9715},
					{'ScaleZ',		1.26}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= WingK_LodFixes()
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
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
						return	string.format(desclist, '_RECTANGLELEFT', '_RECTANGLERIGHT_ALOD1', '_RectangleRight_ALOD1')
								..
								string.format(desclist, '_LOGOLEFT_', '_LOGORIGHT_ALOD1', '_logoRight_ALOD1')
								..
								string.format(desclist, '_LETTERLEFT_', '_LETTERRIGHT_ALOD1', '_LetterRight_ALOD1')
					end
				)()
			}
		}
	}
}}}}
