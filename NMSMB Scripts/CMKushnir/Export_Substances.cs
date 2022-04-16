//=============================================================================
// Dump list of all game substances to a file.
// An extension of Export_Products script but for substances.
// Shows three ways of exporting substance data.
// 1. CurrentGame.  Iterate through loaded list of substances, like Export_Products script.
// 2. Language.  Iterate through loaded list of substances, but get the localized strings for a specific language.
// 3. Languages.Iterate through loaded list of substances, but export the localized strings for multiple languages.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class Export_Substances : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile();
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);
			
			//CurrentGame(file);	
			//Language(file, NMS.Game.Language.Identifier.German);
			Languages(file,
				NMS.Game.Language.Identifier.English,
				NMS.Game.Language.Identifier.German
	        );
			
			file.Flush();
			Log.AddSuccess("Finished");
		}

		//...........................................................
		
		protected void CurrentGame( StreamWriter STREAM )
		{
			foreach( var substance in Game.Substances.List ) {
				STREAM.WriteLine($"{substance.Id} {substance.Name}");
			}		
		}
		
		//...........................................................

		protected void Language( StreamWriter STREAM, NMS.Game.Language.Identifier IDENTIFIER )
		{
			Log.AddInformation($"Loading {IDENTIFIER.Text} ...");
			var language = Game.Languages.Get(IDENTIFIER);
			
			foreach( var substance in Game.Substances.List ) {
				var name = language.GetText(substance.NameId, "?");
				STREAM.WriteLine($"{substance.Id} {name}");
			}
		}			

		//...........................................................

		protected void Languages( StreamWriter STREAM, params NMS.Game.Language.Identifier[] IDENTIFIERS )
		{
			foreach( var substance in Game.Substances.List ) {
				STREAM.Write($"{substance.Id}");
				foreach( var identifier in NMS.Game.Language.Identifier.List ) {
					var language = Game.Languages.Get(identifier);
					var name     = language.GetText(substance.NameId, "?");
					STREAM.Write($", {name}");
				}
				STREAM.Write(STREAM.NewLine);
			}
		}			
	}
}

//=============================================================================
