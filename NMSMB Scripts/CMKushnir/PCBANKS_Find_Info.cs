//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class PCBANKS_Find_Info : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{		
			foreach( var info in Game.PCBANKS.FindInfoEndsWith("SPAWNDENSITYLIST.MBIN", Cancel) ) {
				Log.AddInformation(info.Path);
			}		
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
