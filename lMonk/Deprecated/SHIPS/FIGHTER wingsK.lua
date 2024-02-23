----------------------------------------------------------------------------------
local desc = [[
  Fixes fighter's wingsK missing LOD sections and increases it to to 5 LOD stages
  Fixes the "unusual" decals descriptor choices so all decals show together
]]--------------------------------------------------------------------------------

local function WingK_LodFixes()
	local section = {
		'WingsK_ALOD',
		'SUB1WingsK_ALOD',
		'SUB3WingsK_ALOD'
	}
	local vals = {
		{atr='BATCHSTARTPHYSI',	37668,		41736,		53247},
		{atr='VERTRSTARTPHYSI',	21866,		24590,		31380},
		{atr='VERTRENDPHYSICS',	24589,		29311,		33122},
		{atr='BATCHCOUNT', 		4068,		7890,		2856},
		{atr='VERTRENDGRAPHIC', 2723,		4721,		1742},
		{atr='BOUNDHULLST', 	212,		248,		328},
		{atr='BOUNDHULLED', 	248,		292,		352},
		{atr='AABBMINX', 		-2.891207,	-3.749691,	-3.733948},
		{atr='AABBMINY', 		0.836564,	nil,		0.712383},
		{atr='AABBMINZ', 		-1.380045,	-2.157869,	-2.149216},
		{atr='AABBMAXX', 		nil,		3.749691,	3.733998},
		{atr='AABBMAXY', 		1.77087,	nil,		1.885870},
		{atr='AABBMAXZ', 		0.631633,	1.163431,	0.729330},
		{atr='MESHLINK',		'WingsK_ALODShape1', 'WingsK_ALODShape1', 'WingsK_ALODShape1'}
	}
	local T = {}
	for i, lod in ipairs(section) do
		for _,v in ipairs(vals) do
			if v[i] then
				table.insert(T, {
					SECTION_ACTIVE		= 1,
					SPECIAL_KEY_WORDS	= {'Name', (lod..'0'), 'Name', v.atr},
					VALUE_CHANGE_TABLE 	= { {'Value', v[i]} }
				})
			end
		end
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'Name', (lod..'0')},
			VALUE_CHANGE_TABLE 	= { {'Name', (lod..'1')} }
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__SHIP fighter wingK fixes.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.08',
	MOD_DESCRIPTION			= desc,
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
				VALUE_CHANGE_TABLE 	= { {'Value', 5} }
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'WingsK_ALOD0'},
					{'Name', 'WingsK_BLOD0'}
				},
				PRECEDING_KEY_WORDS	= 'Attributes',
				SECTION_ACTIVE		= 1,
				ADD 				= [[
					<Property value="TkSceneNodeAttributeData.xml">
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
				PRECEDING_KEY_WORDS = {'TkModelDescriptorList.xml', 'List'},
				ADD				 	= (
					function()
						desclist = [[
							<Property value="TkResourceDescriptorList.xml">
								<Property name="TypeId" value="%s"/>
								<Property name="Descriptors">
									<Property value="TkResourceDescriptorData.xml">
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
