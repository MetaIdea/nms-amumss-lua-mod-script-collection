//=============================================================================
// Use helper methods to add new refiner and cooking recipes.
// If using any new products|substannces as results or ingredients then they
// need to already be added to the appropriate mbin, see: Add_Product.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Add_Recipe : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => {
				var recipes = CreateRefiner();
				GcRecipeTable(recipes);
				GcDefaultSaveData(recipes);
			});
			//Try(() => {  // Add_Product broken	
			//	var recipes = CreateCooking();
			//	GcRecipeTable(recipes);
			//	GcDefaultSaveData(recipes);
			//});
		}

		//...........................................................

		// Add new refiner recipes here:
		protected List<GcRefinerRecipe> CreateRefiner()
		{
			var list = new List<GcRefinerRecipe>();
			list.Add(CreateRefinerRecipe(
				// Tainted Metal:
				// Shredded fragments of a soft, grey metal. Its surface is porous,
				// and when touched it oozes ever-so-slightly.
				// Found in the creaking wreck of a derelict freighter.
				// The space station <STELLAR>Scrap Dealer<> may find this interesting...
				"X031415 - [CLASSIFIED]",   // RecipeType, normally a lang id else will use supplied string
				"R_CMK_X031415",            // RecipeName, not sure how game uses this
				10, "AF_METAL", 10,         // Tainted Metal
				new List<Tuple<string,int>> {
					new("SPACEGUNK3", 10),  // Rusted Metal
					new("ROBOT1",      5),  // Pugneum
					new("CREATURE1",   5)   // Mordite
				},
				Log
			));
			list.Add(CreateRefinerRecipe(
				// Walker Brain:
				// Shifting nanite clusters sewn together with a pugneum filament,
				// this circuit is painfully hot to the touch.
				// A sinister purple light leaks from deep within its wiring,
				// changing in intensity as it watches its holder.
				"Neural Construction",
				"R_CMK_NEURAL_CONSTRUCTION",
				120, "WALKER_PROD", 1,       // Walker Brain
				new List<Tuple<string,int>> {
					new("TECHFRAG", 10000),  // Nanite Cluster
					new("ROBOT1",    1000),  // Pugneum
					new("SOULFRAG",   100),  // Fragmented Qualia
				},
				Log
			));	
			return list;
		}
	
		//...........................................................

		// Add new cooking recipes here:
		protected List<GcRefinerRecipe> CreateCooking()
		{
			var list = new List<GcRefinerRecipe>();
			list.Add(CreateCookingRecipe(
				"UI_COOK_CAKE",                 // Assemble Baked Product
				"R_CMK_FOOD_SCHIPCOOK",
				60, "FOOD_SCHIPCOOK", 10,       // Stellar Chip Cookies
				new List<Tuple<string,int>> {
					new("FOOD_R_GCAKEMIX", 1),  // Proto-Batter
					new("FOOD_SCHIPS",     1),  // Stellar Chips
				},
				Log
			));	
			list.Add(CreateCookingRecipe(
				"UI_COOK_CAKE",                 // Assemble Baked Product
				"R_CMK_FOOD_SCHIPCOOKA",
				60, "FOOD_SCHIPCOOKA", 10,      // Activated Stellar Chip Cookies
				new List<Tuple<string,int>> {
					new("FOOD_R_BCAKEMIX", 1),  // Thick, Sweet Batter
					new("FOOD_SCHIPSA",    1),  // Activated Stellar Chips
				},
				Log
			));
			return list;
		}
		
		//...........................................................

		protected void GcRecipeTable( List<GcRefinerRecipe> RECIPES )
		{
			if( RECIPES.IsNullOrEmpty() ) return;
			var mbin = ExtractMbin<GcRecipeTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"
			);
			RECIPES.ForEach(RECIPE => mbin.Table.Add(RECIPE));
		}

		//...........................................................

		protected void GcDefaultSaveData( List<GcRefinerRecipe> RECIPES )
		{
			if( RECIPES.IsNullOrEmpty() ) return;
			var paths = new [] {
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
				"METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
			};		
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcDefaultSaveData>(path);
				RECIPES.ForEach(RECIPE => 
					mbin.State.KnownRefinerRecipes.AddUnique(RECIPE.Id)
				);
			}
		}
	}
}

//=============================================================================
