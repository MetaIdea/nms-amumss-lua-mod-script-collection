//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class InstantScan : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcGamePlayGlobals();
		}

		//...........................................................

		protected void GcGamePlayGlobals()
		{
			var mbin = ExtractMbin<GcGameplayGlobals>(
				"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
			);
			
			mbin.BinocMinScanTime = 0;
			mbin.BinocScanTime = 0;
			mbin.BinocCreatureScanTime = 0;
			
		}
	}
}

//=============================================================================
