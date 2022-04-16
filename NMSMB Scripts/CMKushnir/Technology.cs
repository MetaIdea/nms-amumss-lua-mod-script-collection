//=============================================================================
// Allow everything to be dismantled e.g. ship photon cannon.
// Adjust personal, portable, medium refiners to have 3 inputs.
// Adjust jetpack settings.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Technology : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcTechnologyTable());
			Try(() => PersonalRefiner());
			Try(() => PortableRefiner());
			Try(() => MediumRefiner());
			Try(() => Jetpack());
		}

		//...........................................................

		protected void GcTechnologyTable()
		{
			var mbin = ExtractMbin<GcTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
			);
			// allow everything to be dismantled, except damaged slots
			// e.g. SHIPGUN1 - Photon Cannon
			foreach( var tech in mbin.Table ) {
				if( tech.Core && !tech.ID.Value.Contains("DMG")
				)	tech.Core = false;
			}
		}

		//...........................................................

		// - removing PreInstalledTech."MAINT_FUEL1" i.e. trying to make no fuel input
		//   causes crash when try to view refiner.
		// - changing "MAINT_FUEL1".CompletionRequirement to NoRequirement to make no cost
		//   (like Portal script) causes crash when try to view refiner.
		// - changing "MAINT_FUEL1" to "MAINT_FUEL5" i.e. to change generator type
		//   doesn't crash but still shows generator as Fuel Inverter not Kinetic Dynamo.
		// - making NumInputs > 3 causes crash when try to view refiner.
		protected void PersonalRefiner()
		{
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN"
			);
			var refiner = mbin.Components.FindFirst<GcRefinerUnitComponentData>();

			var maint = refiner.MaintenanceData.PreInstalledTech.Find(ELEMENT => ELEMENT.Id == "MAINT_FUEL1");
			maint.AmountEmptyTimePeriod *= 10;

            refiner.MaintenanceData.VisibleMaintenanceSlots = 5;  // 3 in, 1 fuel, 1 out
            refiner.NumInputs = 3;
		}

		//...........................................................

		protected void PortableRefiner()
		{
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER1.ENTITY.MBIN"
			);
			var refiner = mbin.Components.FindFirst<GcRefinerUnitComponentData>();

			var maint = refiner.MaintenanceData.PreInstalledTech.Find(ELEMENT => ELEMENT.Id == "MAINT_FUEL1");
			maint.AmountEmptyTimePeriod *= 10;

            refiner.MaintenanceData.VisibleMaintenanceSlots = 5;  // 3 in, 1 fuel, 1 out
            refiner.NumInputs = 3;
		}

		//...........................................................

		protected void MediumRefiner()
		{
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER/ENTITIES/REFINER2.ENTITY.MBIN"
			);
			var refiner = mbin.Components.FindFirst<GcRefinerUnitComponentData>();

            refiner.MaintenanceData.VisibleMaintenanceSlots = 4;  // 3 in, 0 fuel, 1 out
            refiner.NumInputs = 3;
		}

		//...........................................................

		protected void Jetpack()
		{
			var mbin = ExtractMbin<GcPlayerGlobals>(
				"GCPLAYERGLOBALS.GLOBAL.MBIN"
			);
			mbin.JetpackDrainHorizontalFactor = 0.2f;  // 2.5
			mbin.JetpackForce = 40.0f;  // 31
			mbin.JetpackBrake =  4.0f;  //  2.2
			mbin.JetpackMaxSpeed   = 15.0f;  //  5 
			mbin.JetpackMaxUpSpeed = 40.0f;  // 30
			mbin.JetpackIgnitionForce   = 90.0f;  // 60
			mbin.JetpackIgnitionTime    = 0.10f;  //  0.4
			mbin.JetpackMinIgnitionTime = 0.01f;  //  0.2
			mbin.JetpackTankTimes[0] = 12.0f;  // 4
			mbin.JetpackTankTimes[1] = 18.0f;  // 6
			mbin.JetpackTankTimes[2] = 24.0f;  // 8
			mbin.JetpackFillRate         = 1.5f;  // 0.5
			mbin.JetpackFillRateHardMode = 1.0f;  // 0.2
			mbin.JetpackUpForceDeadPlanetExtra       = 15.0f;  // 10
			mbin.JetpackForceDeadPlanetExtra         = 70.0f;  // 45
			mbin.JetpackIgnitionForceDeadPlanetExtra =  0.0f;  // 45
		}
	}
}

//=============================================================================
