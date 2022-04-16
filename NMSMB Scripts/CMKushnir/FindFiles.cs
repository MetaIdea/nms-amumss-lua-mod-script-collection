//=============================================================================

using System.Collections.Generic;

//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class FindFiles : cmk.NMS.IScriptQuery
	{
		protected override void Execute ()
		{		
			foreach( var info in Game.PAK.FindInfoRegex("SPAWNER") ) {
				Log.AddInformation(info.Path);
				//System.Threading.Thread.Sleep(10);  // test Cancel|Stop
				if( Cancel.IsCancellationRequested ) break;
			}		
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
