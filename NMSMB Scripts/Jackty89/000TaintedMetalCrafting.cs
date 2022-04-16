//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class TaintedMetalCrafting : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			AddTaintedMetalRecipe();
		}

		//...........................................................

		protected void AddTaintedMetalRecipe()
		{
			var mbin = ExtractMbin<GcRecipeTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"
			);

			var taintedRecipe = CreateRefinerRecipe(
				"R_CMK_X031415",   			// RecipeType, normally a lang id else will use supplied string
				"R_CMK_X031415",            // RecipeName, not sure how game uses this
				10,							// Time
				"AF_METAL",					//Result
				250,						//Amount
				new List<Tuple<string, int>> {
				new("SPACEGUNK3", 500),  // Rusted Metal
				new("SENTINEL_LOOT",      1),  // Pugneum
				new("STORM_CRYSTAL",   1)   // storm crystal
				},
				Log
			);

			mbin.Table.Add(taintedRecipe);
		}
	}
}

//=============================================================================
