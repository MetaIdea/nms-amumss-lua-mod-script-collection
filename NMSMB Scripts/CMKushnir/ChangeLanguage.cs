//=============================================================================



//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class ChangeLanguage : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			// set current app language.
			Game.Language.Name = "ENGLISH";
			
			// load a language dictionary into a local variable.
			var language = new NMS.Game.Language.Collection(
				Game, NMS.Game.Language.Identifier.Korean
			);
		}
	}
}

//=============================================================================
