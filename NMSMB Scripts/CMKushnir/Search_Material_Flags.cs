//=============================================================================
// Search all material mbin's for those that contain all specified material flags.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	using MaterialFlagEnum = TkMaterialFlags.MaterialFlagEnum;

	//=========================================================================
	
	public class Search_Material_Flags : cmk.NMS.QueryScript
	{
		// look for material mbin's that use ALL following flags:
		MaterialFlagEnum [] matches = new [] {
			MaterialFlagEnum._F01_,
			MaterialFlagEnum._F10_,
			MaterialFlagEnum._F22_,
			MaterialFlagEnum._F53_,
		};		
	
		//...........................................................
		
		protected override void Execute()
		{
			// can be many matches, write them to a file not log
			var file_path = Dialog.SaveFile(null, "MaterialFlags.log");
			if( file_path.IsNullOrEmpty() ) return;
	
			var file = System.IO.File.CreateText(file_path);
			
			var TkMaterialDataClass = Game.Mbinc.FindClass("TkMaterialData");
			var paths = TkMaterialDataClass.PakItems;
	
			file.WriteLine($"{Game.Location.Release} searched {paths.Count} material mbin's for: ");
			foreach( var match in matches ) {
				file.WriteLine($"{match}");
			}
			
			Log.AddSuccess($"Searching {paths.Count} material mbin's ...");
			
			foreach( var path in paths ) {
				var mbin  = ExtractMbin<TkMaterialData>(path, false, false);
				var found = true;
				foreach( var match in matches ) {
					if( !FlagListContains(mbin.Flags, match) ) {
						found = false;
						break;
					}
				}
				if( found ) file.WriteLine(path);
			}
			
			file.Flush();
			Log.AddSuccess($"Finished saerching {paths.Count} material mbin's");
		}

		//...........................................................
		
		protected bool FlagListContains( List<TkMaterialFlags> FLAGS, MaterialFlagEnum MATCH )
		{
			foreach( var flag in FLAGS ) {
				if( flag.MaterialFlag == MATCH ) return true;
			}
			return false;
		}
	}
}

//=============================================================================
