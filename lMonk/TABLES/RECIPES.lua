----------------------------------------------------------------------------------
local desc = [[
  Decrease all refining time by 1/2; Gas reaction time by 1/5
  for gas reaction recipes
  Refine magnetized ferrite into tainted metal: 3*LAND3 + 1*AF_METAL = 3*AF_METAL
]]--------------------------------------------------------------------------------

local function BuildExmlChangeTable(id1, id2, multiplier)
	local T = {}
	for i = id1, id2 do
		local section = {
			INTEGER_TO_FLOAT	= 'PRESERVE',
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_'..i},
			VALUE_CHANGE_TABLE 	= { {'TimeToMake',	multiplier} }
		}
		table.insert(T, section)
	end
	return T
end

local Source_Table_Recipe = 'METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE RECIPE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
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
				INTEGER_TO_FLOAT	= 'PRESERVE',
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	0.5}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_52'},
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	15}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_113'},
				VALUE_CHANGE_TABLE 	= {
					{'Name',		'RECIPE_LAND3'}
				}
			},
			{
				-- Refine magnetized ferrite into tainted metal
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_113'},
				PRECEDING_KEY_WORDS	= 'Result',
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'AF_METAL'},
					{'Amount',		3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_113', 'Id', 'ROBOT1'},
				VALUE_CHANGE_TABLE 	= {
					{'Id',			'AF_METAL'}
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
