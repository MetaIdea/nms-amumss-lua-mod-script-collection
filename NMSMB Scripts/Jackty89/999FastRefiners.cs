//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class FastRefiners : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcRecipeTable();
		}

		//...........................................................

		protected void GcRecipeTable()
		{
			var mbin = ExtractMbin<GcRecipeTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"
			);
			foreach( var recipe in mbin.Table ) {
				recipe.TimeToMake = 0.1f;  // seconds
				recipe.Result.Amount = 1;
			}
		}
	}
}

//=============================================================================
