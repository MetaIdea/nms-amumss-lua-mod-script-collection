//=============================================================================
// Allow Base Site and Portal scanning from vehicles.
// Requires: Add_ScanEvent for bases and portals.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Scan_ExoCraft : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcVehicleGlobals();
			GcVehicleScanTable();
		}
		
		//...........................................................

		protected void GcVehicleGlobals()
		{
			var mbin = ExtractMbin<GcVehicleGlobals>(
				"GCVEHICLEGLOBALS.GLOBAL.MBIN"
			);
			// use keyboard instead of mouse for steering
			mbin.VehicleAltControlScheme = true;
		}
		
		//...........................................................

		protected void GcVehicleScanTable()
		{
			var mbin = ExtractMbin<GcVehicleScanTable>(
				"METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.MBIN"
			);			
			GcVehicleScanTable_Base  (mbin.VehicleScanTable);
			GcVehicleScanTable_Portal(mbin.VehicleScanTable);
		}
		
		//...........................................................

		protected void GcVehicleScanTable_Base( List<GcVehicleScanTableEntry> LIST )
		{
			var entry = new GcVehicleScanTableEntry() {
				ScanList     = new(){ "BASE" },
				Name         = "UI_BASE_ANYWHERE_OPT_A",  // Claim Base
				RequiredTech = "VEHICLE_SCAN",            // Exocraft Signal Booster
				Icon         = new(){ Filename = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.BASECOREFLAG.DDS" }
			};
			LIST.Add(entry);
		}

		//...........................................................

		// Doesn't work, always says "NO NEARBY BUILDING LOCATED",
		// no matter the distance to a portal.
		protected void GcVehicleScanTable_Portal( List<GcVehicleScanTableEntry> LIST )
		{
			var entry = new GcVehicleScanTableEntry() {
				ScanList     = new(){ "PORTAL" },
				Name         = "BUILDING_PORTAL_L",  // Portal
				RequiredTech = "VEHICLE_SCAN",       // Exocraft Signal Booster
				Icon         = new(){ Filename = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PORTAL.MSHOP.DDS" }
			};
			LIST.Add(entry);
		}		
	}
}

//=============================================================================
