//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class PCBANKS_Search_All_MBIN : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{		
			//takes 3-6 min to go through all mbin w/ no feedback	
			Game.PCBANKS.ForEachMbin(( MBIN, CANCEL, LOG ) => {
				var ebin   = MBIN.CreateEBIN();
				var index  = ebin.IndexOf("GRADIENT_LONGFALLOFF.ORANGE.");
				if( index >= 0 ) LOG.AddInformation($"{MBIN.Path}[{ebin.Length}] @ {index}.");
			},	Cancel, Log);
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
