//=============================================================================
// Adjust water color.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Water : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcWaterGlobals());
			Try(() => GcWaterColourSettingList());
		}

		//...........................................................

		protected void GcWaterGlobals()
		{
			var mbin = ExtractMbin<GcWaterGlobals>(
				"GCWATERGLOBALS.GLOBAL.MBIN"
			);

			mbin.WaterDataDay.FoamFadeHeight = 1;  // 21
			mbin.WaterColourNight.FoamColour = new(0.3f, 0.3f, 0.3f, 0.5f);  // white

			// only affects night fog
			mbin.WaterColourNight.WaterFogColourNear = new(0, 0, 0.2f, 0);
			mbin.WaterColourNight.WaterFogColourFar  = new(0, 0, 0.2f, 0);
		}

		//...........................................................		

		protected void GcWaterColourSettingList()
		{
			var mbin = ExtractMbin<GcWaterColourSettingList>(
				"METADATA/SIMULATION/SOLARSYSTEM/COLOURS/WATERCOLOURS.MBIN"
			);
			foreach( var setting in mbin.Settings ) {
				// only affects day fog
				setting.WaterFogColourNear = new(0, 0, 0.2f, 0);
				setting.WaterFogColourFar  = new(0, 0, 0.2f, 0);
			}
		}
	}
}

//=============================================================================
