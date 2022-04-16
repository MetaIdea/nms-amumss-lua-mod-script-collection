//=============================================================================
// Adjust asteroid spacing and density.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Space_Asteroid : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcSolarGenerationGlobals();
		}
		
		//...........................................................
		
		protected void GcSolarGenerationGlobals()
		{
			var mbin = ExtractMbin<GcSolarGenerationGlobals>(
				"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"
			);

			mbin.AsteroidSpacing         *= 2;   //  1000
			mbin.AsteroidMaxNumGenerates /= 10;  // 50000

			var GcSolarGenerationGlobals_t = typeof(GcSolarGenerationGlobals);
			
			foreach( var field in GcSolarGenerationGlobals_t.GetFields() ) {
				if( field.Name.Contains("AsteroidNoiseRange") &&
				    field.GetValue(mbin) is nms.Vector2f vector
				) {
					vector.x /= 2;
					vector.y /= 2;
				}
			}
		}
	}
}

//=============================================================================
