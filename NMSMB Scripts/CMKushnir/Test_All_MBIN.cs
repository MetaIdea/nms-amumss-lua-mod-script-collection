//=============================================================================
// Try to round-trip all mbin's in all game pak files.
// Useful to identify issues when a new game release comes out.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class Test_All_MBIN : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile();
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);

			var mbinc = Game.Mbinc;
			var fail_decompile1 = new List<string>();
			var fail_decompile2 = new List<string>();
			var fail_compile    = new List<string>();
			var fail_rount_trip = new List<string>();
			
			// try to round-trip all mbin's in parallel.
			Game.PCBANKS.ForEachMbin(( MBIN, CANCEL, LOG ) => {
				var exml1 = MBIN.CreateEXML();  // mbin -> exml
				if( exml1.IsNullOrEmpty() ) {
					Log.AddFailure($"Decompile 1 {MBIN.Path}");
					lock( fail_decompile1 ) fail_decompile1.Add(MBIN.Path);
					return;
				}
				var mbin  = mbinc.ExmlToNMSTemplate(exml1) as libMBIN.NMSTemplate;  // exml -> mbin
				if( mbin == null ) {
					Log.AddFailure($"Compile {MBIN.Path}");
					lock( fail_compile ) fail_compile.Add(MBIN.Path);
					return;
				}
				var exml2 = mbinc.NMSTemplateToExml(mbin);  // mbin -> exml
				if( exml2.IsNullOrEmpty() ) {
					Log.AddFailure($"Decompile 2 {MBIN.Path}");
					lock( fail_decompile2 ) fail_decompile2.Add(MBIN.Path);
					return;
				}
				if( exml1 != exml2 ) {  // check if round-trip ok
					Log.AddFailure($"Round-Trip {MBIN.Path}");
					lock( fail_rount_trip ) fail_rount_trip.Add(MBIN.Path);
					return;
				}
			},	Log, Cancel);
			
			file.WriteLine($"Failed to decompile 1:");
			foreach( var fail in fail_decompile1 ) {
				file.WriteLine(fail);
			}

			file.WriteLine($"Failed to compile:");
			foreach( var fail in fail_compile ) {
				file.WriteLine(fail);
			}
			
			file.WriteLine($"Failed to decompile 2:");
			foreach( var fail in fail_decompile2 ) {
				file.WriteLine(fail);
			}
	
			file.WriteLine($"Failed to round-trip:");
			foreach( var fail in fail_rount_trip ) {
				file.WriteLine(fail);
			}
			
			file.Flush();		
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
