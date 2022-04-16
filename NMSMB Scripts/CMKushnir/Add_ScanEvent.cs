//=============================================================================
// Add scan events for missing locations e.g. bases and portal.
// This is a dependency for other scripts e.g. Reward_Location and Scan_ExoCraft.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using EventStartTypeEnum   = GcScanEventData.EventStartTypeEnum;
	using InteractionTypeEnum  = GcInteractionType.InteractionTypeEnum;
	using BuildingClassEnum    = GcBuildingClassification.BuildingClassEnum;
	using BuildingLocationEnum = GcScanEventData.BuildingLocationEnum;

	//=========================================================================

	public class AddScanEvent : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			ScanEventTables();
		}

		//...........................................................

		protected void ScanEventTables()
		{
			ScanEventTable_Planet();
			ScanEventTable_Vehicle();
		}

		//...........................................................

		protected void ScanEventTable_Planet()
		{
			var mbin = ExtractMbin<GcScanEventTable>(
				"METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN"
			);			
			GcScanEventTabl_Base(mbin);
			GcScanEventTabl_Portal(mbin);
		}
		
		//...........................................................

		protected void ScanEventTable_Vehicle()
		{
			var mbin = ExtractMbin<GcScanEventTable>(
				"METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN"
			);			
			GcScanEventTabl_Base(mbin);
			GcScanEventTabl_Portal(mbin);
		}
		
		//...........................................................

		protected void GcScanEventTabl_Base( GcScanEventTable TABLE )
		{
			var scan = GcScanEventTable_Add(TABLE, "HARVESTER", "BASE", BuildingClassEnum.Base);
		}

		//...........................................................

		protected void GcScanEventTabl_Portal( GcScanEventTable TABLE )
		{	
			var scan = GcScanEventTable_Add(TABLE, "MONOLITH", "PORTAL", BuildingClassEnum.Portal);
			scan.ForceInteractionType.InteractionType = InteractionTypeEnum.Portal;
			scan.BuildingLocation = BuildingLocationEnum.AllNearest;
			scan.ReplaceEventIfAlreadyActive = true;
		}
		
		//...........................................................

		// Can't seem to get any version of a portal scan event to work
		// w/ exocraft, this even tries copying a working one from tutorial.
		protected void GcScanEventTabl_Portal2( GcScanEventTable TABLE )
		{
			var mbin = ExtractMbin<GcScanEventTable>(
				"METADATA/SIMULATION/SCANNING/SCANEVENTTABLETUTORIAL.MBIN"
			);			
			var scan = mbin.Events.Find(EVENT => EVENT.Name == "PORTAL");
			TABLE.Events.Add(scan);
		}
		
		//...........................................................

		protected GcScanEventData GcScanEventTable_Add(
			GcScanEventTable  TABLE,
			string            SOURCE,  // "MONOLITH", find in TABLE.Events
			string            TARGET,  // "PORTAL",   add  to TABLE.Events
			BuildingClassEnum CLASS    // BuildingClassEnum.Portal,
		){
			var target  = TABLE.Events.Find(EVENT => EVENT.Name == TARGET);
			if( target != null ) return target;  // no error, already exists

			target = CloneMbin(TABLE.Events.Find(EVENT => EVENT.Name == SOURCE));
			
			target.Name           = TARGET;
			target.OSDMessage     = "SIGNAL_" + TARGET;
			target.TooltipMessage = "TIP_"    + TARGET;
			target.BuildingClass.BuildingClass = CLASS;

			TABLE.Events.Add(target);
			return target;
		}
	}
}

//=============================================================================
