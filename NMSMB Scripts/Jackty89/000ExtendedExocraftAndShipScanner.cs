//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class ExtendedExocraftAndShipScanner : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			ImproveShipScanRange();
			AddNewExoCraftScanEvents();
		}

		//...........................................................
		protected void ImproveShipScanRange()
		{
			var Mbin = ExtractMbin<GcBuildingGlobals>(
				"GCBUILDINGGLOBALS.GLOBAL.MBIN"
			);
			Mbin.UnknownBuildingRange = 10000;  //  600
			Mbin.MaxIconRange = 10000;			// 1200
			Mbin.MinShipScanBuildings = 1;      //    0
			Mbin.MaxShipScanBuildings = 5;      //    2
		}
		protected void AddNewExoCraftScanEvents()
		{
			string[][] ExocraftNewScanEventsData = new string[][]
			{
				 new string[] {"DISTRESS", "BUILDING_DISTRESSSIGNAL_L", "VEHICLE_SCAN2", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.SHIP.DDS" },
				 new string[] {"CRASHED_FREIGHTER", "UI_CORE_ACT2_STEP8_MARKER", "VEHICLE_SCAN", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.FREIGHTER.DDS" },
				 new string[] {"DISTRESS_NPC", "UI_PULSE_ENCOUNTER_NAME_REPAIR", "VEHICLE_SCAN1", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.REPAIR.DDS" }, //check scan event
				 new string[] {"FACTORY", "BUILDING_FACTORY_L", "VEHICLE_SCAN2", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.COLLECT.DDS" },
				 new string[] {"HARVESTER", "BUILDING_HARVESTER_L", "VEHICLE_SCAN1", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.WHEAT.DDS" },
				 new string[] {"OBSERVATORY", "BUILDING_OBSERVATORY_L", "VEHICLE_SCAN1", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.PLANET.DDS" },
				 new string[] {"RADIOTOWER", "BUILDING_RADIOTOWER_L", "VEHICLE_SCAN1", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.SCAN.DDS" },
				 new string[] {"SHOP", "BUILDING_SHOP_L", "VEHICLE_SCAN", "TEXTURES\\UI\\HUD\\ICONS\\MISSIONS\\MISSION.CONSTRUCTION.DDS" },
			};
			var Mbin = ExtractMbin<GcVehicleScanTable>(
				"METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.MBIN"
			);

			foreach (string[]  Data in ExocraftNewScanEventsData)
            {
				AddNewScanEvent(Data, Mbin.VehicleScanTable);
            }
		}

		protected void AddNewScanEvent(string[] Data, List<GcVehicleScanTableEntry> ScanEvents)
		{
			var ScanEntry = new GcVehicleScanTableEntry()
			{
				ScanList = new() { Data[0] },
				Name = Data[1],  // Claim Base
				RequiredTech = Data[2],            // Exocraft Signal Booster
				Icon = new() { Filename = Data[3] }
			};

			ScanEvents.Add(ScanEntry);
		}
	}
}

//=============================================================================
