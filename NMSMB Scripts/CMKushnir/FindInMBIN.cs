//=============================================================================



//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class FindInMBIN : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{		
			//takes 3-6 min to go through all mbin w/ no feedback	
			Game.PAK.ForEachMbin(( MBIN, CANCEL, LOG ) => {
				var ebin   = MBIN.CreateEBIN();
				var index  = ebin.IndexOf("UPGRADE_1_STAT_COMMON_DESC");  // LANGUAGE/NMS_LOC4_*.MBIN
				if( index >= 0 ) LOG.AddInformation($"{MBIN.Path}[{ebin.Length}] @ {index}.");
			},	Cancel, Log);
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
