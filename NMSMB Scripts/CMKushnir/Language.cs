//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	// Show different ways of using the game language objects.
	public class Language : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			// set language for current game instance
			Game.Language.Name = "ENGLISH";
			
			// load a language dictionary from the current game instance
			var language = new NMS.Game.Language.Collection(
				Game, NMS.Game.Language.Identifier.Korean
			);
			
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
