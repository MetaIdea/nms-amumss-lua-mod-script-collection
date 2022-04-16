//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class FuelEconomy : cmk.NMS.ModScript
	{
		static readonly string Tritium = "ROCKETSUB";
		static readonly string Deutrium = "LAUNCHSUB2";
		static readonly string DiHydrogen = "LAUNCHSUB";

		static readonly string[] RecipeTypes = { "RECIPE_3INPUT_LAUNCHFUEL_1", "RECIPE_GAS1_LAND" };
		static readonly string[] FrigateFuelIds = {"FRIGATE_FUEL_1", "FRIGATE_FUEL_2", "FRIGATE_FUEL_3"};

		static GcInventoryType Product = new GcInventoryType { InventoryType = GcInventoryType.InventoryTypeEnum.Product };
		static GcInventoryType Substance = new GcInventoryType { InventoryType = GcInventoryType.InventoryTypeEnum.Substance };

        List<GcRefinerRecipe> NewRecipes = new List<GcRefinerRecipe>()
        {
            new GcRefinerRecipe{
                Id = "Trit_D_H",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1}
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 1},
                TimeToMake = 5
            },
            new GcRefinerRecipe{
                Id = "Trit_3H",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1},
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 1},
                TimeToMake = 5
            },
            new GcRefinerRecipe{
                Id = "Trit_2D",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1},
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 2},
                TimeToMake = 5
            },
            new GcRefinerRecipe{
                Id = "Trit_2H_T",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1}
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 2},
                TimeToMake = 5
            },
            new GcRefinerRecipe{
                Id = "Trit_3D",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1}
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 3},
                TimeToMake = 5
            },
            new GcRefinerRecipe{
                Id = "Deut_T_H",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1}
                },
                Cooking = false,
                RecipeName = RecipeTypes[1],
                RecipeType = RecipeTypes[1],
                Result = new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 3},
                TimeToMake = 5
            },
            new GcRefinerRecipe{
                Id = "DeutRecycling",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1}
                },
                Cooking = false,
                RecipeName = RecipeTypes[1],
                RecipeType = RecipeTypes[1],
                Result = new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 2},
                TimeToMake = 5
            }
        };

        List<GcRefinerRecipe> ExistingRecipes = new List<GcRefinerRecipe>()
        {
            new GcRefinerRecipe{
                Id = "REFINERECIPE_56",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = Tritium, Type = Substance, Amount = 1},
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 3},
                TimeToMake = 7
            },
            new GcRefinerRecipe{
                Id = "REFINERECIPE_92",
                Ingredients = new(){
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1},
                    new GcRefinerRecipeElement { Id = DiHydrogen, Type = Substance, Amount = 1}
                },
                Cooking = false,
                RecipeName = RecipeTypes[0],
                RecipeType = RecipeTypes[0],
                Result = new GcRefinerRecipeElement { Id = Deutrium, Type = Substance, Amount = 1},
                TimeToMake = 5
            },
        };

        protected override void Execute()
		{
			//GcDefaultSaveData(NewRecipes);
            GcRecipeTable(NewRecipes);
            GcEditRecipeTable(ExistingRecipes);
        }

        //...........................................................

        protected void GcRecipeTable(List<GcRefinerRecipe> Recipes)
		{
			if (Recipes.IsNullOrEmpty()) return;
				var mbin = ExtractMbin<GcRecipeTable>("METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN");
            foreach (var recipe in Recipes)
            {
				mbin.Table.Add(recipe);
            }		
		}

		protected void GcEditRecipeTable(List<GcRefinerRecipe> Recipes)
		{
			if (Recipes.IsNullOrEmpty()) return;
				var mbin = ExtractMbin<GcRecipeTable>("METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN");
			
			foreach (var recipe in Recipes)
            {
                var existingRecipe = mbin.Table.Find(RECIPE => RECIPE.Id.Value == recipe.Id.Value);
				
                existingRecipe.Ingredients.Clear();
				existingRecipe.Result = recipe.Result;
                foreach (var ingredient in recipe.Ingredients)
					existingRecipe.Ingredients.Add(ingredient);
            }
		}
        protected void GcDefaultSaveData(List<GcRefinerRecipe> Recipes)
        {
            if (Recipes.IsNullOrEmpty()) return;
            var paths = new[] {
                "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                "METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
            };
            foreach (var path in paths)
            {
                var mbin = ExtractMbin<GcDefaultSaveData>(path);
                Recipes.ForEach(RECIPE => mbin.State.KnownRefinerRecipes.AddUnique(RECIPE.Id));
            }
        }
    }
}

//=============================================================================
