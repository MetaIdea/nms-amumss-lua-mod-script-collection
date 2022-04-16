//=============================================================================
// Shorter missions times (make all timed missions complete in <= 10 sec).
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Mission_Time : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcMissionTable();
		}

		//...........................................................

		protected void GcMissionTable()
		{
			var type = Game.Mbinc.FindClass("GcMissionTable");
			foreach( var path in type.PakItems ) {		
				var mbin = ExtractMbin<GcMissionTable>(path);
				foreach( var mission in mbin.Missions ) {
					GcGenericMissionStage(mission.Stages);
				}
			}
		}

		//...........................................................

		protected void GcGenericMissionStage( List<GcGenericMissionStage> STAGES )
		{
			if( !STAGES.IsNullOrEmpty() )
			foreach( var stage in STAGES ) {
				if( stage.Stage is GcMissionSequenceGroup group ) {
					GcGenericMissionStage(group.Stages);  // recurse
				}
				if( stage.Stage is GcMissionSequenceWaitRealTime timer ) {
					if( timer.Time > 10 ) timer.Time = 10;  // seconds
				}
			}
		}
	}
}

//=============================================================================
