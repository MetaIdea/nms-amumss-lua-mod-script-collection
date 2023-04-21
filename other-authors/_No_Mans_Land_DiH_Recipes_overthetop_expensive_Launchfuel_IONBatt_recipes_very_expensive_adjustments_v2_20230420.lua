ModName = "No Mans Land Recipe adjustments" --  originally authored by Xen0nex for PtsD; adjusted by youngneil1 for changes around launchfuel and launchsub recipes
GameVersion = "4_20"
Description = "Brings recipes for launchfuel and launchsub (Di-Hydrogen) in line with increased launchfuel production cost."

RecipeChanges =
{	
	-- yn1: adjusting LaunchFuel recipes to require 40x more resources
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_258",	1,					90},				--Makes Launchfuel				x1	in	90 time
		{
			{"LAUNCHSUB",		400},									--Requires Di-Hydrogen				x10
			{"LAND1",		    800},										--Requires Ferrite Dust				x20
			{"CATALYST2",		200}									--Requires Sodium Nitrate 			x5
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_259",	1,					90},				--Makes Launchfuel 				x1	in	90 time
		{
			{"LAUNCHSUB",		400},									--Requires Di-Hydrogen				x10
			{"LAND2",		800},										--Requires Pure Ferrite				x20
			{"CATALYST1",		400}									--Requires Sodium 		 			x10
		}
	},
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_260",	1,					90},				--Makes Launchfuel 				x1	in	90 time
		{
			{"LAUNCHSUB",		400},									--Requires Di-Hydrogen				x10
			{"LAND3",		400},										--Requires Magnetised Ferrite		x10
			{"CATALYST2",		200}									--Requires Sodium Nitrate 			x5
		}
	},
	-- yn1: adjusting Launchsub (Di-Hydrogen) recipes to be practically irrelevant
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_22",	40,					1000},					--Makes Launchsub (Di-Hydrogen)	x1	in	1000 time
		{
			{"JELLY",		10000},									--Requires Di-Hydrogen				x1
			
		}
	},
	-- yn1: adjusting Launchsub (Di-Hydrogen) recipes to be practically irrelevant
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_56",	1,					90},					--Makes Launchsub (Di-Hydrogen)	x1	in	90 time
		{
			{"ROCKETSUB",		50000},									--Requires Di-Hydrogen				x5
			
		}
	},
	--yn1: increase cost for refining an ION Battery by 2 times
	{							--Amount per batch	--Time per batch
		{"REFINERECIPE_261",	1,					90},				--Makes ION Battery (POWERCELL) 				x1	in	90 time
		{
			{"LAND1",		20},									--Requires Ferrite Dust				x10
			{"ASTEROID1",		20},										--Requires Silver		x10
			{"CATALYST1",		20}									--Requires Sodium 			x10
		}
	},
}


--Nothing below this should need to be changed. All values can be edited in the sections above this line

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Youngneil1", --oroginally by Xen0nex for PtsD
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			
		}
	}
}}}}




local ChangesToRecipes = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	local RecipeId = RecipeChanges[i][1][1]
	local Time = RecipeChanges[i][1][3]
	local AmountResult = RecipeChanges[i][1][2]
	local Ingredients = RecipeChanges[i][2]
	
		for j = 1, #Ingredients do
			INGId = Ingredients[j][1]
			AmountING = Ingredients[j][2]
			
			ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId, "Id", INGId},
				--["PRECEDING_KEY_WORDS"] = {"GcRefinerRecipeElement.xml"},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Amount", AmountING}
				}
			}
		end
		
		ChangesToRecipes[#ChangesToRecipes+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeId},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TimeToMake", Time},
					{"Amount", AmountResult}
				}
			}
end



