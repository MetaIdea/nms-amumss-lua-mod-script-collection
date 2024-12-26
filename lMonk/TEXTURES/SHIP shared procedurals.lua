---------------------------------------------------------------------------
dofile('LIB/shared_lists.lua')
---------------------------------------------------------------------------
local mod_desc = [[
  - Add new ship textures - for fighter, dropship, sailship and scientific
]]-------------------------------------------------------------------------

local ship_path = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/'
local ship_mct = {}
for _,src in ipairs({
	'HQTRIM_PRIMARY.TEXTURE.MBIN',
	'HQTRIM_SECONDARY.TEXTURE.MBIN',
	'PRIMARY.TEXTURE.MBIN',
	'SECONDARY.TEXTURE.MBIN',
	'TERTIARY.TEXTURE.MBIN'
}) do
	local T = {{
		SPECIAL_KEY_WORDS	= {'Name', 'PAINTED'},
		SEC_SAVE_TO			= 'procedural_texture',
	}}
	for _,snk in ipairs(new_ship_texture) do
		if not snk.org then	
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				VALUE_CHANGE_TABLE 	= {
					{'Name',		snk.name},
					{'Probability',	0.005}
				}
			}
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				VALUE_CHANGE_TABLE 	= {
					{'Diffuse',		ship_path..'PRIMARY.X2.DDS'},
					{'Normal',		ship_path..'PRIMARY.'..snk.name..'.NORMAL.DDS'},
					{'Mask',		ship_path..'PRIMARY.'..snk.name..'.MASKS.DDS'}
				}
			}
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				PRECEDING_KEY_WORDS = 'Palette',
				REPLACE_TYPE 		= 'OnceInside',
				VALUE_CHANGE_TABLE 	= {
					{'Palette', (src:match('^PRIM') or src:match('^TERT')) and 'Paint' or  'Undercoat'}
				}
			}
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
				PRECEDING_KEY_WORDS = 'Textures',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'procedural_texture'
			}
		end
	end
	ship_mct[#ship_mct+1] = {
		MBIN_FILE_SOURCE	= ship_path..src,
		EXML_CHANGE_TABLE	= T
	}
end
--- scientific ------------------------------------------------------------------------------------
local sci_path = 'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/'
local sci_ect = {
	{
		SPECIAL_KEY_WORDS	= {'Name', 'PAINT1', 'Name', 'PAINTED'},
		SEC_SAVE_TO			= 'procedural_texture_paint',
	},
	{
		SPECIAL_KEY_WORDS	= {'Name', 'BASE', 'Name', 'SHINY'},
		SEC_SAVE_TO			= 'procedural_texture_base',
	}
}
for _,snk in ipairs(new_ship_texture) do
	if snk.sci and not snk.org then
		sci_ect[#sci_ect+1] = {
			SEC_EDIT 			= 'procedural_texture_paint',
			VALUE_CHANGE_TABLE 	= {
				{'Name',		snk.name},
				{'Probability',	0.005},
				{'Diffuse',		sci_path..'SCIENTIFIC.PAINT1.SHINY.DDS'},
				{'Normal',		sci_path..'PAINT1.'..snk.name..'.NORMAL.DDS'},
				{'Mask',		sci_path..'SCIENTIFIC.BASE.SHINY.MASKS.DDS'}
			}
		}
		sci_ect[#sci_ect+1] = {
			SPECIAL_KEY_WORDS	= {'Name', 'PAINT1'},
			PRECEDING_KEY_WORDS = 'Textures',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'procedural_texture_paint'
		}
		sci_ect[#sci_ect+1] = {
			SEC_EDIT 			= 'procedural_texture_base',
			VALUE_CHANGE_TABLE 	= {
				{'Name',		snk.name},
				{'Probability',	0.005},
				{'Normal',		sci_path..'PAINT1.'..snk.name..'.NORMAL.DDS'},
				{'Mask',		sci_path..'SCIENTIFIC.BASE.SHINY.MASKS.DDS'}
				
				
				
			}
		}
		sci_ect[#sci_ect+1] = {
			SPECIAL_KEY_WORDS	= {'Name', 'BASE'},
			PRECEDING_KEY_WORDS = 'Textures',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'procedural_texture_base'
		}
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__TEXTURE ship shared.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.29',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',	
	MODIFICATIONS 			= {
	{
		MBIN_CHANGE_TABLE	= ship_mct
	},
	{
		MBIN_CHANGE_TABLE	= {{
			MBIN_FILE_SOURCE	= sci_path..'SCIENTIFIC.TEXTURE.MBIN',
			EXML_CHANGE_TABLE	= sci_ect
		}}
	}
}}
