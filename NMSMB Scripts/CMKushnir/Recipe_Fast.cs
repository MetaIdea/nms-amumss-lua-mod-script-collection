//=============================================================================
// Make all refiner|cooking recipes faster to make.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Recipe_Fast : cmk.NMS.ModScript
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
				recipe.TimeToMake = 1;  // seconds
			}
		}
	}
}

//=============================================================================
