//=============================================================================
// Dump list of all game products to a file.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class Export_Products : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile();
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);
			
			foreach( var product in Game.Products.List ) {
				file.WriteLine($"{product.Id} {product.Name}");
			}
			
			file.Flush();
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
