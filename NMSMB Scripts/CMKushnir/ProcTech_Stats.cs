//=============================================================================
// Dump all unique min|max stats for all proc gen tech.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class ProcTechStats : cmk.NMS.QueryScript
	{
		public class StatLevel {
			public GcWeightingCurve.WeightingCurveEnum Curve;
			public float Min;
			public float Max;
			public int   Count;
		}
		
		string [] StatTypeNames = Enum.GetNames(typeof(GcStatsTypes.StatsTypeEnum));
		string [] CurveNames    = Enum.GetNames(typeof(GcWeightingCurve.WeightingCurveEnum));
	
		protected override void Execute()
		{
			Log.Clear();

			var save_path = Dialog.SaveFile();		
			var file      = save_path.IsNullOrEmpty() ?
				null : System.IO.File.CreateText(save_path)
			;
			
			var mbin = ExtractMbin<GcProceduralTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"
			);
			
			var types = new List<StatLevel>[StatTypeNames.Length];
			
			foreach( var data in mbin.Table ) {
				foreach( var level in data.StatLevels ) {
					var type = types[(int)level.Stat.StatsType];
					if( type == null ) {
						type = new();
						types[(int)level.Stat.StatsType] = type;
					}
					var entry = type.Find(STAT =>
						STAT.Curve == level.WeightingCurve.WeightingCurve &&
						STAT.Min   == level.ValueMin &&
						STAT.Max   == level.ValueMax
					);
					if( entry != null ) { ++entry.Count; continue; }
					type.Add(new(){
						Curve = level.WeightingCurve.WeightingCurve,
						Min   = level.ValueMin,
						Max   = level.ValueMax,
						Count = 1,
					});
				}
			}
			
			for( var i = 0; i < types.Length; ++i ) {
				var name = StatTypeNames[i];
				var type = types[i];
				if( type == null ) continue;
				var info = $"{name}:";
				Log.AddInformation(info);
				file?.WriteLine(info);
				foreach( var level in type ) {
					info = $"\t{CurveNames[(int)level.Curve]}, Min = {level.Min}, Max = {level.Max}, Count = {level.Count}";
					Log.AddInformation(info);
					file?.WriteLine(info);
				}
			}
			
			file?.Flush();
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
