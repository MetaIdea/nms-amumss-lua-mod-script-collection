//=============================================================================



//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class FindPakItems : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{		
			foreach( var info in Game.PAK.FindInfoEndsWith(".DDS", Cancel) ) {
				Log.AddInformation(info.Path);
			}		
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
