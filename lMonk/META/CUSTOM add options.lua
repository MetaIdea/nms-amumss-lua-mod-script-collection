-------------------------------------------------------
dofile('LIB/_exml_2_lua.lua')
dofile('LIB/shared_lists.lua')
-------------------------------------------------------
local mod_desc = [[
  - Add texture options to ship builder menu
  - Add substances to the staff parts customization list
   * (UI added in UI/MULTITOOL_BUILDER_PAGE.MBIN)
]]-----------------------------------------------------

local mbin_substances = 'METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN'
local mbin_mod_custom = 'METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN'
local mbin_chr_custom = 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN'

local function AddToModCustom(the_index, mbin)
	local T = {}
	for _,ship in ipairs({'Fighter', 'Dropship', 'Sail'}) do
		-- ship :: copy GcModularCustomisationColourData
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {ship, 'GcModularCustomisationConfig.xml', 'RequiredTextureOption', 'PANELS'},
			SEC_SAVE_TO			= 'customisation_colour_data',
		}
		-- ship :: insert new texture options
		for _,snk in ipairs(new_ship_texture) do
			if not snk.org then
				T[#T+1] = {
					SEC_EDIT 			= 'customisation_colour_data',
					VALUE_CHANGE_TABLE 	= {
						{'RequiredTextureOption',	snk.name},
						{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
					}
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {ship, 'GcModularCustomisationConfig.xml'},
					PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
					ADD_OPTION			= 'AddEndSection',
					SEC_ADD_NAMED		= 'customisation_colour_data'
				}
			end
		end
	end
	-- Scientific :: ready and insert new options
	T[#T+1] = {
		REPLACE_TYPE 		= 'All',
		SPECIAL_KEY_WORDS	= {'Scientific', 'GcModularCustomisationConfig.xml'},
		PRECEDING_KEY_WORDS = 'GcModularCustomisationColourData.xml',
		REMOVE				= 'Section'
	}
	T[#T+1] = {
		SEC_EDIT 			= 'customisation_colour_data',
		VALUE_CHANGE_TABLE 	= {
			{'RequiredTextureGroup',	'SHIP_SCI'}
		}
	}
	for _,snk in ipairs(new_ship_texture) do
		if snk.sci then
			T[#T+1] = {
				SEC_EDIT 			= 'customisation_colour_data',
				VALUE_CHANGE_TABLE 	= {
					{'RequiredTextureOption',	snk.name},
					{'PaletteID',				snk.metal and 'SHIP_METALLIC' or 'SHIP'},
				}
			}
			for col, pal in pairs(snk.palette or {}) do
				T[#T+1] = {
					SEC_EDIT 			= 'customisation_colour_data',
					SPECIAL_KEY_WORDS	= {'Title', 'CUSTOMISE_'..col},
					VALUE_CHANGE_TABLE 	= {
						  {'Palette',	pal[1]},
						  {'ColourAlt',	pal[2]},
					}
				}
			end
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Scientific', 'GcModularCustomisationConfig.xml'},
				PRECEDING_KEY_WORDS = 'ColourDataPriorityList',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'customisation_colour_data'
			}
		end
	end

	-----------------------------------------------------------------------------------------------
	-- staff :: copy new slot header
	T[#T+1] = {
		SPECIAL_KEY_WORDS	= {'SlotID', 'STAFF_HEAD'},
		SEC_SAVE_TO			= 'customisation_config',
	}
	T[#T+1] = {
		SEC_EDIT 			= 'customisation_config',
		VALUE_CHANGE_TABLE 	= {
			{'SlotID',		'STAFF_COLOR'},
			{'LabelLocID',	'UI_BUILD_MENU_RECOLOUR_NAME'},
		}
	}
	-- staff :: copy and ready slot sections
	T[#T+1] = {
		SPECIAL_KEY_WORDS	= {'ItemID', 'STAFF_PART_C'},
		SEC_SAVE_TO			= 'customisation_slot_item',
	}
	T[#T+1] = {
		SEC_EDIT 			= 'customisation_slot_item',
		VALUE_CHANGE_TABLE 	= {
			{'ActivatedDescriptorGroupID', ''}
		}
	}
	T[#T+1] = {
		SEC_EDIT 			= 'customisation_config',
		SPECIAL_KEY_WORDS	= {'SlotEmptyCustomisation', 'GcModularCustomisationSlotItemData.xml'},
		VALUE_CHANGE_TABLE 	= {
			{'ActivatedDescriptorGroupID', ''}
		}
	}
	T[#T+1] = {
		REPLACE_TYPE 		= 'All',
		SEC_EDIT 			= 'customisation_config',
		PRECEDING_KEY_WORDS = 'GcModularCustomisationSlotItemData.xml',
		REMOVE				= 'Section'
	}
	-- staff :: insert new slotable items
	for _,sbt in ipairs(the_index.substance_ids) do
		T[#T+1] = {
			SEC_EDIT 			= 'customisation_slot_item',
			VALUE_CHANGE_TABLE 	= {
				{'ItemID',		sbt}
			}
		}
		T[#T+1] = {
			SEC_EDIT 			= 'customisation_config',
			PRECEDING_KEY_WORDS = 'SlottableItems',
			SEC_ADD_NAMED		= 'customisation_slot_item',
		}
	end
	-- staff :: add new slot header
	T[#T+1] = {
		SPECIAL_KEY_WORDS	= {'SlotID', 'STAFF_POLE'},
		ADD_OPTION			= 'AddAfterSection',
		SEC_ADD_NAMED		= 'customisation_config',
	}
	-- Add to MBIN_CT
	the_index.MBIN_CT[#the_index.MBIN_CT+1] = {
		MBIN_FILE_SOURCE	= mbin,
		EXML_CHANGE_TABLE	= T
	}
end

local function AddToCharCustom(the_index, mbin)
	local T = {}
	local str20 = '<Property value="NMSString0x20.xml"><Property name="Value" value="%s"/></Property>'
	-- ship :: copy multilayer
	T[#T+1] = {
		SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'COATING'},
		SEC_SAVE_TO			= 'multi_texture_option',
	}
	-- ship :: insert new multilayers
	for _,snk in ipairs(new_ship_texture) do
		if not snk.org then
			T[#T+1] = {
				SEC_EDIT 			= 'multi_texture_option',
				VALUE_CHANGE_TABLE 	= {
					{'TextureOptionsID',	snk.name},
					{'Option',				snk.name}
				}
			}
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'MultiTextureOptionsID', 'SHIP_FIGHT'},
				PRECEDING_KEY_WORDS = 'Options',
				ADD_OPTION			= 'AddEndSection',
				SEC_ADD_NAMED		= 'multi_texture_option'
			}
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'MultiTextureOptionsID', 'SHIP_FIGHT'},
				PRECEDING_KEY_WORDS = 'Tips',
				ADD_OPTION			= 'AddEndSection',
				ADD					= string.format(str20, snk.name)
			}

			-- scientific :: add options and tips
			if snk.sci then
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'SHIP_SCI'},
					PRECEDING_KEY_WORDS = 'Options',
					ADD_OPTION			= 'AddEndSection',
					ADD					= string.format(str20, snk.name)
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'TextureOptionsID', 'SHIP_SCI'},
					PRECEDING_KEY_WORDS = 'Tips',
					ADD_OPTION			= 'AddEndSection',
					ADD					= string.format(str20, snk.name)
				}
			end
		end
	end
	-- Add to MBIN_CT
	the_index.MBIN_CT[#the_index.MBIN_CT+1] = {
		MBIN_FILE_SOURCE	= mbin,
		EXML_CHANGE_TABLE	= T
	}
end

local function ReadSubstances(the_index, mbin)
	local gc_subs = ToLua(table.concat(the_index.ModdedEXMLs[NormalizePath(mbin, true)]))
	-- read substances ids
	local ids = {}
	for _,subs in ipairs(gc_subs.template.Table) do
		if subs.Symbol ~= 'UI_REWARDPOP_SYM' and not subs.ID:find('TECH') then
			ids[#ids+1] = subs.ID
		end
	end
	the_index.substance_ids = ids
	return 'IGNORE'
end

ProcessRawExml = nil -- to silence unused_variable
function ProcessRawExml(the_index) -- called by AMUMSS
	return {
		[NormalizePath(mbin_substances, true)] = ReadSubstances(the_index, mbin_substances),
		[NormalizePath(mbin_mod_custom, true)] = AddToModCustom(the_index, mbin_mod_custom),
		[NormalizePath(mbin_chr_custom, true)] = AddToCharCustom(the_index, mbin_chr_custom)
	}
end
-------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META add customization options.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {
	{
		MBIN_CHANGE_TABLE	= {
			{
				MBIN_FILE_SOURCE 	= {
					mbin_substances,
					mbin_mod_custom,
					mbin_chr_custom
				},
				EXT_FUNC		 	= {'ProcessRawExml'}
			}
		}
	},
}}
