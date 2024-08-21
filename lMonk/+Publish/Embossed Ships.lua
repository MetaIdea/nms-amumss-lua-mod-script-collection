--------------------------------------------------------------------------
local mod_desc = [[
  - Add texture options to fighter, dropship and sailship fabrication menu

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]------------------------------------------------------------------------

local ship_new_textures = {
	{
		name	= 'TOPOMAP',
		metal	= false
	},
	{
		name	= 'PAINTSWIRL',
		metal	= false
	},
	{
		name	= 'MEZO',
		metal	= false
	},
	{
		name	= 'MAYA_SNAKE',
		metal	= true
	},
	{
		name	= 'MAYA_WALL',
		metal	= true
	},
	{
		name	= 'AZTEC_DRAGON',
		metal	= false
	},
	{
		name	= 'AZTEC_FACE',
		metal	= false
	},
	{
		name	= 'CELTIC',
		metal	= true
	},
	{
		name	= 'POLYNESIA',
		metal	= false
	},
	{
		name	= 'POLYNESIA_SEA',
		metal	= true
	},
	{
		name	= 'MAORI_FACE',
		metal	= false
	},
	{
		name	= 'EASTERN',
		metal	= false
	},
	{
		name	= 'WOVEN',
		metal	= true
	},
	{
		name	= 'WOVEN2',
		metal	= true
	},
	{
		name	= 'DEMON',
		metal	= false
	},
	{
		name	= 'TARGET',
		metal	= false
	},
	{
		name	= 'SKULLS',
		metal	= true
	},
	{
		name	= 'THE_HARING',
		metal	= true
	},
}

----------------------------------------------------------------------------------------------------------
local MODULE_CT = {}
-- fighter :: copy GcModularCustomisationColourData
MODULE_CT[#MODULE_CT+1] = {
	SPECIAL_KEY_WORDS	= {'Fighter', 'GcModularCustomisationConfig.xml', 'RequiredTextureOption', 'PANELS'},
	SEC_SAVE_TO			= 'customisation_colour_data',
}
-- fighter :: insert new texture options
for _,snk in ipairs(ship_new_textures) do
	MODULE_CT[#MODULE_CT+1] = {
		SEC_EDIT 			= 'customisation_colour_data',
		VALUE_CHANGE_TABLE 	= {
			{'RequiredTextureOption',	snk.name},
			{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
		}
	}
	MODULE_CT[#MODULE_CT+1] = {
		SPECIAL_KEY_WORDS	= {'Fighter', 'GcModularCustomisationConfig.xml'},
		PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
		ADD_OPTION			= 'AddEndSection',
		SEC_ADD_NAMED		= 'customisation_colour_data'
	}
end
-- dropship :: copy GcModularCustomisationColourData
MODULE_CT[#MODULE_CT+1] = {
	SPECIAL_KEY_WORDS	= {'Dropship', 'GcModularCustomisationConfig.xml', 'RequiredTextureOption', 'PANELS'},
	SEC_SAVE_TO			= 'customisation_colour_data',
}
-- dropship :: insert new texture options
for _,snk in ipairs(ship_new_textures) do
	MODULE_CT[#MODULE_CT+1] = {
		SEC_EDIT 			= 'customisation_colour_data',
		VALUE_CHANGE_TABLE 	= {
			{'RequiredTextureOption',	snk.name},
			{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
		}
	}
	MODULE_CT[#MODULE_CT+1] = {
		SPECIAL_KEY_WORDS	= {'Dropship', 'GcModularCustomisationConfig.xml'},
		PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
		ADD_OPTION			= 'AddEndSection',
		SEC_ADD_NAMED		= 'customisation_colour_data'
	}
end
-- sailship :: copy GcModularCustomisationColourData
MODULE_CT[#MODULE_CT+1] = {
	SPECIAL_KEY_WORDS	= {'Sail', 'GcModularCustomisationConfig.xml', 'RequiredTextureOption', 'PANELS'},
	SEC_SAVE_TO			= 'customisation_colour_data',
}
-- sailship :: insert new texture options
for _,snk in ipairs(ship_new_textures) do
	MODULE_CT[#MODULE_CT+1] = {
		SEC_EDIT 			= 'customisation_colour_data',
		VALUE_CHANGE_TABLE 	= {
			{'RequiredTextureOption',	snk.name},
			{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
		}
	}
	MODULE_CT[#MODULE_CT+1] = {
		SPECIAL_KEY_WORDS	= {'Sail', 'GcModularCustomisationConfig.xml'},
		PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
		ADD_OPTION			= 'AddEndSection',
		SEC_ADD_NAMED		= 'customisation_colour_data'
	}
end

----------------------------------------------------------------------------------------------------------
local CHAR_CT = {}
-- ship :: copy multilayer
CHAR_CT[#CHAR_CT+1] = {
	SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'COATING'},
	SEC_SAVE_TO			= 'multi_texture_option',
}
-- ship :: insert new multilayers
for _,snk in ipairs(ship_new_textures) do
	CHAR_CT[#CHAR_CT+1] = {
		SEC_EDIT 			= 'multi_texture_option',
		VALUE_CHANGE_TABLE 	= {
			{'TextureOptionsID',	snk.name},
			{'Option',				snk.name},
		}
	}
	CHAR_CT[#CHAR_CT+1] = {
		SPECIAL_KEY_WORDS	= {'MultiTextureOptionsID', 'SHIP_FIGHT'},
		PRECEDING_KEY_WORDS = 'Options',
		ADD_OPTION			= 'AddEndSection',
		SEC_ADD_NAMED		= 'multi_texture_option'
	}
	CHAR_CT[#CHAR_CT+1] = {
		SPECIAL_KEY_WORDS	= {'MultiTextureOptionsID', 'SHIP_FIGHT'},
		PRECEDING_KEY_WORDS = 'Tips',
		ADD_OPTION			= 'AddEndSection',
		ADD					= '<Property value="NMSString0x20.xml"><Property name="Value" value="'..snk.name..'" /></Property>'
	}
end

----------------------------------------------------------------------------------------------------------
local PROC_TEX_CT = {}
for _,src in ipairs({
	'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.TEXTURE.MBIN',
	'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_SECONDARY.TEXTURE.MBIN',
	'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.TEXTURE.MBIN',
	'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.TEXTURE.MBIN',
	'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.TEXTURE.MBIN'
}) do
	local T = {{
		SPECIAL_KEY_WORDS	= {'Name', 'PAINTED'},
		SEC_SAVE_TO			= 'procedural_texture',
	}}
	for _,snk in ipairs(ship_new_textures) do
		T[#T+1] = {
			SEC_EDIT 			= 'procedural_texture',
			VALUE_CHANGE_TABLE 	= {
				{'Name',		snk.name},
				{'Probability',	0.001}
			}
		}
		if not src:find('TERTIARY') then
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				VALUE_MATCH			= '{%.xml$}',
				VALUE_MATCH_OPTIONS = '~=',
				VALUE_CHANGE_TABLE 	= {
					{'Palette',		src:find('/PRIM') and 'Paint' or  'Undercoat'},
					{'Multiply',	snk.multi or true},
					{'Diffuse',		'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.'..snk.name..'.DDS'},
					{'Normal',		'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.'..snk.name..'.NORMAL.DDS'},
					{'Mask',		'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.'..snk.name..'.MASKS.DDS'}
				}
			}
		end
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
			PRECEDING_KEY_WORDS = 'Textures',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'procedural_texture'
		}
	end
	PROC_TEX_CT[#PROC_TEX_CT+1] = {
		MBIN_FILE_SOURCE	= src,
		EXML_CHANGE_TABLE	= T
	}
end
-------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Embossed Ships.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.05',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {
	{
		MBIN_CHANGE_TABLE	= {
			{
				MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN',
				EXML_CHANGE_TABLE	= MODULE_CT
			},
			{
				MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN',
				EXML_CHANGE_TABLE	= CHAR_CT
			},
			{
				MBIN_FILE_SOURCE  	= 'UI/SHIP_BUILDER_PAGE.MBIN',
				EXML_CHANGE_TABLE 	= {
					{
						SPECIAL_KEY_WORDS	= {'ID', 'COLOUR'},
						VALUE_CHANGE_TABLE	= {
							{'PositionY',	44},
							{'Height',		580}
						}
					}
				}
			}
		}
	},
	{
		MBIN_CHANGE_TABLE	= PROC_TEX_CT
	}
},
	ADD_FILES	= {(
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/Embossed/'
			if lfs.attributes(tex_path) then
				return {
					EXTERNAL_FILE_SOURCE = tex_path..'*.DDS',
					FILE_DESTINATION	 = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/*.DDS',
				}
			end
			return nil
		end
	)()}
}
