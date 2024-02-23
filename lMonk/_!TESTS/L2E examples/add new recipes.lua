------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/table_entry.lua')
------------------------------------------------
local mod_desc = [[
  Add new recipes
]]----------------------------------------------

local new_recipes = {
	{--	make lots of sand from ferrite
		id			= 'RECIPE_MARROW_2',
		name		= 'UI_COOK_EGGS',
		make		= 5,
		cook		= true,
		result		= {id='FOOD_EGGPIE_B', n=1, tp=IT_.PRD},
		ingredients	= {
			{id='FOOD_V_DIPLO',	n=1,	tp=IT_.PRD},
			{id='FOOD_R_BCHEESE',n=1,	tp=IT_.PRD}
		}
	},
	{--	Spawning Sac - bioship inventory
		id   		= 'RECIPE_BIOCARGO',
		name		= 'RECIPE_ASTEROID_MIX',
		make		= 4,
		result		= {id='ALIEN_INV_TOKEN',n=1, tp=IT_.PRD},
		ingredients	= {
			{id='FIENDCORE', 	n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2', 	n=40,	tp=IT_.SBT},
			{id='ROBOT1', 		n=80,	tp=IT_.SBT}
		}
	},
	{--	taint mag ferrite for more taint
		id			= 'RECIPE_TAINT3',
		name		= 'RECIPE_ASTEROID2',
		make		= 40,
		result		= {id='AF_METAL', n=3, tp=IT_.SBT},
		ingredients	= {
			{id='AF_METAL',		n=1,	tp=IT_.SBT},
			{id='LAND3',		n=3,	tp=IT_.SBT}
		}
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE RECIPE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'Table',
				ADD 				= (
					function()
						local T = {}
						for _,r in ipairs(new_recipes) do
							T[#T+1] = RefinerRecipeEntry(r)
						end
						return ToExml(T)
					end
				)()
			}
		}
	}
}}}}
