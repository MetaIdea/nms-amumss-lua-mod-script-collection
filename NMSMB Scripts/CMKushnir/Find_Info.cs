//=============================================================================
// Search all game info records for ones with matching paths.
// Use a site like https://regex101.com/ to help with generating valid regex patterns.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class Find_Info : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			Log.AddInformation($"Searching ...");

			// can search using regex, predicate, startswith, endwith, contains.
			// click on FindInfo and look at intellisense list below.
			var regex = new Regex("FILENAMES.*MBIN");		
			var list  = Game.PCBANKS.FindInfo(regex);

			foreach( var info in list ) {
				Log.AddInformation(info.Path);
			}
			
			Log.AddSuccess($"Finished: {list.Count} found");
		}
	}
}

//=============================================================================
