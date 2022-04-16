//=============================================================================



//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class DecompressAllWem: cmk.NMS.QueryScript
	{
		protected override void Execute()
		{		
			foreach( var info in Game.PAK.FindInfoEndsWith(".WEM", Cancel) ) {
				// side-effect, will dump uncompressed block error info to Log.
				// if nothing in Log then was able to extract all .wem w/o error.
				var wem = info.Data<PAK.Item.Data>(Log);
				System.Threading.Thread.Sleep(1000);
			}		
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
