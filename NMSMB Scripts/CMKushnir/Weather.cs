//=============================================================================
// Adjust weather frequency and durations.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Weather : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcSkyGlobals();
			GcWeatherProperties();
		}

		//...........................................................

		protected void GcSkyGlobals()
		{
			var mbin = ExtractMbin<GcSkyGlobals>(
				"GCSKYGLOBALS.GLOBALS.MBIN"
			);
			mbin.MinTimeBetweenStormsLow  =  2400;  //  900
			mbin.MaxTimeBetweenStormsLow  =  9000;  // 2400
			mbin.MinTimeBetweenStormsHigh =  5000;  //  120
			mbin.MaxTimeBetweenStormsHigh = 11000;  //  620
			mbin.MinTimeBetweenStormsExtremeFallback =  5000;  // 240
			mbin.MaxTimeBetweenStormsExtremeFallback = 11000;  // 620
			mbin.MinStormLengthLow  = 50;    // 120
			mbin.MaxStormLengthLow  = 60;    // 180
			mbin.MinStormLengthHigh = 70;    // 150
			mbin.MaxStormLengthHigh = 75;    // 320
			mbin.ExtremeAudioLevel  = 0.1f;  // 0.3
			mbin.StormAudioLevel    = 0.3f;  // 0.5
		}
		
		//...........................................................

		protected void GcWeatherProperties()
		{
			var GcWeatherPropertiesClass = Game.Mbinc.FindClass("GcWeatherProperties");

			// go through all mbin that have GcWeatherProperties as top-level class
			foreach( var path in GcWeatherPropertiesClass.PakItems ) {
				var mbin = ExtractMbin<GcWeatherProperties>(path);
				mbin.LowStormsChance      *= 0.33f;
				mbin.HighStormsChance     *= 0.33f;
				mbin.ExtremeWeatherChance *= 0.25f;
			}
		}
	}
}

//=============================================================================
