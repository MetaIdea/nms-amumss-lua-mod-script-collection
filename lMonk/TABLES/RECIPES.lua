--[[┎──────────────────────────────────────────────────────────────
	┃ Decrease all refining time by 1/2; Gas reaction time by 1/5
	┃ for gas reaction recipes
────┸──────────────────────────────────────────────────────────--]]
local function BuildExmlChangeTable(id1, id2, multiplier)
	local T = {}
	for i = id1, id2 do
		local section = {
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_'..i},
			VALUE_CHANGE_TABLE 	= { {'TimeToMake',	multiplier} }
		}
		table.insert(T, section)
	end
	return T
end

Source_Table_Recipe = 'METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE RECIPE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Recipe,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_322'},
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	90}	-- ancient bug fix
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	0.5}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Recipe,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(132, 137, 0.4)
	},
	{
		MBIN_FILE_SOURCE	= Source_Table_Recipe,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(311, 322, 0.4)
	}
}}}}
