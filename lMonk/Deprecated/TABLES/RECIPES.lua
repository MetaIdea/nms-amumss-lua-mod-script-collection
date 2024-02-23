----------------------------------------------------------------------------------
local desc = [[
  Decrease all refining time by 1/2; Gas reaction time by 1/5
  for gas reaction recipes
]]--------------------------------------------------------------------------------

local new_recipe = {
	{
	---	make lots of sand from ferrite
		id		= 'RECIPE_MORESAND',
		name	= 'UI_SANDWORD_DIET7',
		make	= 40,
		cook	= 'False',
		{'SAND1',			6,	'S',	true}, -- result!
		{'LAND1',			1,	'S'},
		{'LAND1',			1,	'S'}
	},{
	---	glowing pellets are good for you
		id		= 'RECIPE_HEALTHMAJOR',
		name	= 'RECIPE_CATALYST1_ROBOT1',
		make	= 3,
		cook	= 'False',
		{'FOOD_V_ROBOT',	1,	'P',	true}, -- result!
		{'SENTINEL_LOOT',	1,	'P'},
		{'STELLAR2',		25,	'S'},
		{'LAUNCHSUB2',		35,	'S'}
	},{
	---	Spawning Sac - bioship inventory
		id   	= 'RECIPE_BIOCARGO',
		name	= 'RECIPE_ASTEROID_MIX',
		make	= 4,
		cook	= 'False',
		{'ALIEN_INV_TOKEN', 1,	'P',	true}, -- result!
		{'FIENDCORE', 		2,	'P'},
		{'SPACEGUNK2', 		40,	'S'},
		{'ROBOT1', 			80,	'S'}
	},{
	---	taint mag ferrite for more taint
		id		= 'RECIPE_TAINT3',
		name	= 'RECIPE_ASTEROID2',
		make	= 40,
		cook	= 'False',
		{'AF_METAL',		3,	'S',	true}, -- result!
		{'AF_METAL',		1,	'S'},
		{'LAND3',			3,	'S'}
	}
}

local function BuildRecipe(rec)
	local function AddIngredient(x)
		return [[
			<Property ]]..(x[4] and 'name="Result"' or '')..[[ value="GcRefinerRecipeElement.xml">
				<Property name="Id" value="]]..x[1]..[[" />
				<Property name="Type" value="GcInventoryType.xml">
					<Property name="InventoryType" value="]]..(x[3] == 'S' and 'Substance' or 'Product')..[[" />
				</Property>
				<Property name="Amount" value="]]..x[2]..[[" />
			</Property>]]
	end
	part = ''
	for i=2, #rec do
		part = part..AddIngredient(rec[i])
	end
	return [[
		<Property value="GcRefinerRecipe.xml">
			<Property name="Id" value="]]..rec.id..[["/>
			<Property name="RecipeType" value="]]..rec.name..[["/>
			<Property name="RecipeName" value="]]..rec.name..[["/>
			<Property name="TimeToMake" value="]]..rec.make..[["/>
			<Property name="Cooking" value="]]..rec.cook..[["/>
			]]..AddIngredient(rec[1])..[[
			<Property name="Ingredients">]]..part..[[</Property>
		</Property>
	]]
end

local function AddNewRecipes()
	local T = {}
	for _,r in ipairs(new_recipe) do
		table.insert(T, BuildRecipe(r))
	end
	return table.concat(T)
end

local function ChangeTimeToMakeRange(id1, id2, multiplier)
	local T = {}
	T[1] = {
		FSKWG				= {},
		INTEGER_TO_FLOAT	= 'Preserve',
		MATH_OPERATION 		= '*',
		VALUE_CHANGE_TABLE 	= { {'TimeToMake',	multiplier} }
	}
	for i = id1, id2 do
		table.insert(T[1].FSKWG, {'Id', 'REFINERECIPE_'..i})
	end
	return T
end

local source_table_recipe = 'METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE RECIPE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_recipe,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Preserve',
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	0.5}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_322'},
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	45}	-- ancient bug fix
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'REFINERECIPE_52'},
				VALUE_CHANGE_TABLE 	= {
					{'TimeToMake',	25}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Table',
				ADD 				= AddNewRecipes()
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= source_table_recipe,
		EXML_CHANGE_TABLE	= ChangeTimeToMakeRange(132, 137, 0.4)
	},
	{
		MBIN_FILE_SOURCE	= source_table_recipe,
		EXML_CHANGE_TABLE	= ChangeTimeToMakeRange(311, 322, 0.4)
	}
}}}}
