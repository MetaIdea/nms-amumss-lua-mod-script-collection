//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class zzz : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcDebugOptions();
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);
		}
	}
}

//=============================================================================
