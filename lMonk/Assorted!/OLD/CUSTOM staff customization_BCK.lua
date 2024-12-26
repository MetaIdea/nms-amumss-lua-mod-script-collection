------------------------------------------------------------
-- EXCLUDED FROM BATCH
-------------------------------------------------------
dofile('LIB/_exml_2_lua.lua')
-------------------------------------------------------
local mod_desc = [[
  Add substances to the staff parts customization list
  (UI added in UI/MULTITOOL_BUILDER_PAGE.MBIN)
]]-----------------------------------------------------

-- local substance_ids		= {
	-- 'FUEL1', 'FUEL2', 'OXYGEN', 'LAUNCHSUB', 'LAUNCHSUB2', 'ROCKETSUB', 'LAND1', 'LAND2', 'LAND3', 'SAND1', 'CATALYST1', 'CATALYST2', 'CAVE1', 'CAVE2', 'WATER1', 'WATER2', 'WATERPLANT', 'YELLOW2', 'RED2', 'GREEN2', 'BLUE2', 'STELLAR2', 'LUSH1', 'DUSTY1', 'TOXIC1', 'RADIO1', 'COLD1', 'HOT1', 'LAVA1', 'CREATURE1', 'ROBOT1', 'ROBOT2', 'ASTEROID1', 'ASTEROID2', 'ASTEROID3', 'GAS1', 'GAS2', 'GAS3', 'EX_YELLOW', 'EX_RED', 'EX_GREEN', 'EX_BLUE', 'PLANT_TOXIC', 'PLANT_SNOW', 'PLANT_RADIO', 'PLANT_DUST', 'PLANT_HOT', 'PLANT_LUSH', 'PLANT_CAVE', 'PLANT_WATER', 'PLANT_POOP', 'SPACEGUNK1', 'SPACEGUNK2', 'SPACEGUNK3', 'SPACEGUNK4', 'SPACEGUNK5', 'AF_METAL', 'BUI_SCRAP', 'SPECIAL_POOP', 'SUNGOLD', 'SOULFRAG', 'WORMDUST', 'TIMEDUST', 'TIMEMILK'
-- }
local substance_ids		= {}

local function GetSubstanceIds(exml)
	local gc_subs = ToLua(exml)
	for _,subs in ipairs(gc_subs.template.Table) do
		if subs.Symbol ~= 'UI_REWARDPOP_SYM' and not subs.ID:find('TECH') then
			substance_ids[#substance_ids+1] = subs.ID
		end
	end
	print('substance get: '..#substance_ids)
end

local source_substances	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN'
ProcessExmlData = nil -- to silence unused_variable
function ProcessExmlData(arg) -- called by AMUMSS
	return {
		[source_substances] = GetSubstanceIds(arg[1])
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META staff customization upgrade.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = {source_substances},
		EXML_DATA		 = { 'ProcessExmlData', {source_substances} }
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = {}
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
				print('substance loop: '..#substance_ids)
				for _,sbt in ipairs(substance_ids) do
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
				return T
			end
		)()
	},
}}}}