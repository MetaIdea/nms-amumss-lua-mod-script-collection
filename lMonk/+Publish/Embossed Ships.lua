---------------------------------------------------------------------------------------------------
local mod_desc = [[
  - Add embossed texture options to fighter, dropship, sailship and scientific fabrication menu

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]-------------------------------------------------------------------------------------------------

-- 	ship fabricator texture additions
--	names and palette selection ships texture groups
local new_ship_texture = {
	{
		name	= 'SHINY',
		sci		= true,		-- shared with scientific
		org		= true,		-- existing original
		palette	= {			-- shared with -and changed by the following
			PRIMARY		= {'Metal', 'Primary'},
			SECONDARY	= {'Paint', 'Alternative1'},
			TERTIARY	= {'Paint', 'Primary'},
		}
	},
	{
		name	= 'DEFAULT',
		sci		= true,
		org		= true,
		palette	= {
			PRIMARY		= {'Undercoat', 'Primary'},
		}
	},
	{
		name	= 'TOPOMAP',
		metal	= true,
		sci		= true,
		palette	= {
			PRIMARY		= {'Paint', 'Primary'},
			TERTIARY	= {'Undercoat', 'Primary'},
		}
	},
	{
		name	= 'PAINTSWIRL',
		metal	= false,
		sci		= true
	},
	{
		name	= 'MEZO',
		metal	= false,
		sci		= true
	},
	{
		name	= 'MAYA_SNAKE',
		metal	= true,
		sci		= true
	},
	{
		name	= 'MAYA_WALL',
		metal	= true,
		sci		= true
	},
	{
		name	= 'AZTEC_DRAGON',
		metal	= false,
		sci		= true
	},
	{
		name	= 'AZTEC_FACE',
		metal	= false,
		sci		= true
	},
	{
		name	= 'CELTIC',
		metal	= true,
		sci		= true
	},
	{
		name	= 'POLYNESIA',
		metal	= false,
		sci		= true
	},
	{
		name	= 'POLYNESIA_SEA',
		metal	= true,
		sci		= true
	},
	{
		name	= 'MAORI_FACE',
		metal	= false,
		sci		= true
	},
	{
		name	= 'EASTERN',
		metal	= false,
		sci		= true
	},
	{
		name	= 'WOVEN',
		metal	= true,
		sci		= true
	},
	{
		name	= 'WOVEN2',
		metal	= true,
		sci		= true
	},
	{
		name	= 'DEMON',
		metal	= false,
		sci		= true
	},
	{
		name	= 'TARGET',
		metal	= false,
		sci		= true
	},
	{
		name	= 'SKULLS',
		metal	= true,
		sci		= true
	},
	{
		name	= 'THE_HARING',
		metal	= true,
		sci		= true
	}
}

---------------------------------------------------------------------------------------------------
local module_ct = {}
for _, ship in ipairs({'Fighter', 'Dropship', 'Sail'}) do
	-- ship :: copy GcModularCustomisationColourData
	module_ct[#module_ct+1] = {
		SPECIAL_KEY_WORDS	= {ship, 'GcModularCustomisationConfig.xml', 'RequiredTextureOption', 'PANELS'},
		SEC_SAVE_TO			= 'customisation_colour_data',
	}
	-- ship :: insert new texture options
	for _,snk in ipairs(new_ship_texture) do
		if not snk.org then
			module_ct[#module_ct+1] = {
				SEC_EDIT 			= 'customisation_colour_data',
				VALUE_CHANGE_TABLE 	= {
					{'RequiredTextureOption',	snk.name},
					{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
				}
			}
			module_ct[#module_ct+1] = {
				SPECIAL_KEY_WORDS	= {ship, 'GcModularCustomisationConfig.xml'},
				PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'customisation_colour_data'
			}
		end
	end
end
-- Scientific :: ready and insert new options
module_ct[#module_ct+1] = {
	REPLACE_TYPE 		= 'All',
	SPECIAL_KEY_WORDS	= {'Scientific', 'GcModularCustomisationConfig.xml'},
	PRECEDING_KEY_WORDS = 'GcModularCustomisationColourData.xml',
	REMOVE				= 'Section'
}
module_ct[#module_ct+1] = {
	SEC_EDIT 			= 'customisation_colour_data',
	VALUE_CHANGE_TABLE 	= {
		{'RequiredTextureGroup',	'SHIP_SCI'}
	}
}
for _,snk in ipairs(new_ship_texture) do
	if snk.sci then
		module_ct[#module_ct+1] = {
			SEC_EDIT 			= 'customisation_colour_data',
			VALUE_CHANGE_TABLE 	= {
				{'RequiredTextureOption',	snk.name},
				{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
			}
		}
		for col, pal in pairs(snk.palette or {}) do
			module_ct[#module_ct+1] = {
				SEC_EDIT 			= 'customisation_colour_data',
				SPECIAL_KEY_WORDS	= {'Title', 'CUSTOMISE_'..col},
				VALUE_CHANGE_TABLE 	= {
					  {'Palette',	pal[1]},
					  {'ColourAlt',	pal[2]},
				}
			}
		end
		module_ct[#module_ct+1] = {
			SPECIAL_KEY_WORDS	= {'Scientific', 'GcModularCustomisationConfig.xml'},
			PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'customisation_colour_data'
		}
	end
end
---------------------------------------------------------------------------------------------------
local char_ct = {}
local str20 = '<Property value="NMSString0x20.xml"><Property name="Value" value="%s"/></Property>'
-- ship :: copy multilayer
char_ct[#char_ct+1] = {
	SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'COATING'},
	SEC_SAVE_TO			= 'multi_texture_option',
}
-- ship :: insert new multilayers
for _,snk in ipairs(new_ship_texture) do
	if not snk.org then
		char_ct[#char_ct+1] = {
			SEC_EDIT 			= 'multi_texture_option',
			VALUE_CHANGE_TABLE 	= {
				{'TextureOptionsID',	snk.name},
				{'Option',				snk.name}
			}
		}
		char_ct[#char_ct+1] = {
			SPECIAL_KEY_WORDS	= {'MultiTextureOptionsID', 'SHIP_FIGHT'},
			PRECEDING_KEY_WORDS = 'Options',
			ADD_OPTION			= 'AddEndSection',
			SEC_ADD_NAMED		= 'multi_texture_option'
		}
		char_ct[#char_ct+1] = {
			SPECIAL_KEY_WORDS	= {'MultiTextureOptionsID', 'SHIP_FIGHT'},
			PRECEDING_KEY_WORDS = 'Tips',
			ADD_OPTION			= 'AddEndSection',
			ADD					= string.format(str20, snk.name)
		}

		-- scientific :: add options and tips
		if snk.sci then
			char_ct[#char_ct+1] = {
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'SHIP_SCI'},
				PRECEDING_KEY_WORDS = 'Options',
				ADD_OPTION			= 'AddEndSection',
				ADD					= string.format(str20, snk.name)
			}
			char_ct[#char_ct+1] = {
				SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'SHIP_SCI'},
				PRECEDING_KEY_WORDS = 'Tips',
				ADD_OPTION			= 'AddEndSection',
				ADD					= string.format(str20, snk.name)
			}
		end
	end
end
--- fighter proc texture --------------------------------------------------------------------------
local ship_mct = {}
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
	for _,snk in ipairs(new_ship_texture) do
		if not snk.org then
			T[#T+1] = {
				SEC_EDIT 			= 'procedural_texture',
				VALUE_CHANGE_TABLE 	= {
					{'Name',		snk.name},
					{'Probability',	0.005},
				}
			}
			if not src:find('TERTIARY') then
				T[#T+1] = {
					SEC_EDIT 			= 'procedural_texture',
					VALUE_CHANGE_TABLE 	= {
						{'Diffuse',		'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.X2.DDS'},
						{'Normal',		'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.'..snk.name..'.NORMAL.DDS'},
						{'Mask',		'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.'..snk.name..'.MASKS.DDS'}
					}
				}
				T[#T+1] = {
					SEC_EDIT 			= 'procedural_texture',
					PRECEDING_KEY_WORDS = 'Palette',
					REPLACE_TYPE 		= 'OnceInside',
					VALUE_CHANGE_TABLE 	= {
						{'Palette',		src:find('/PRIM') and 'Paint' or  'Undercoat'}
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
	end
	ship_mct[#ship_mct+1] = {
		MBIN_FILE_SOURCE	= src,
		EXML_CHANGE_TABLE	= T
	}
end
--- scientific proc texture -----------------------------------------------------------------------
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
				{'Diffuse',		'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/SCIENTIFIC.PAINT1.SHINY.DDS'},
				{'Normal',		'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/PAINT1.'..snk.name..'.NORMAL.DDS'},
				{'Mask',		'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/SCIENTIFIC.BASE.SHINY.MASKS.DDS'}
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
				{'Normal',		'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/PAINT1.'..snk.name..'.NORMAL.DDS'},
				{'Mask',		'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/SCIENTIFIC.BASE.SHINY.MASKS.DDS'}
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
---------------------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Embossed Ships.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.12',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {
		{
			MBIN_CHANGE_TABLE	= {
				{
					MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN',
					EXML_CHANGE_TABLE	= module_ct
				},
				{
					MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN',
					EXML_CHANGE_TABLE	= char_ct
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
			MBIN_CHANGE_TABLE	= ship_mct
		},
		{
			MBIN_CHANGE_TABLE	= {{
				MBIN_FILE_SOURCE	= 'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/SCIENTIFIC.TEXTURE.MBIN',
				EXML_CHANGE_TABLE	= sci_ect
			}}
		}
	},
	ADD_FILES	= (
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/Embossed/'
			if lfs.attributes(tex_path) then
				return {
					{
						EXTERNAL_FILE_SOURCE = tex_path..'Ship_2048/*.DDS',
						FILE_DESTINATION	 = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/*.DDS'
					},
					{
						EXTERNAL_FILE_SOURCE = tex_path..'Scientific/*.DDS',
						FILE_DESTINATION	 = 'TEXTURES/COMMON/SPACECRAFT/SCIENTIFIC/SHARED/*.DDS'
					}
				}
			end
			return nil
		end
	)()
}
