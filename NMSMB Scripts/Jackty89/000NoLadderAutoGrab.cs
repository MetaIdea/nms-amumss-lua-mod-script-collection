//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class NoLadderAutoGrab : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcCharacterGlobals();
		}

		//...........................................................

		protected void GcCharacterGlobals()
		{
			var mbin = ExtractMbin<GcCharacterGlobals>(
				"GCCHARACTERGLOBALS.GLOBAL.MBIN"
			);
			
			mbin.LadderDistanceToAutoMount = -1;
			mbin.SitPostureChangeTimeMin = 0.1f;
			mbin.SitPostureChangeTimeMax = 1;
		}
	}
}

//=============================================================================
