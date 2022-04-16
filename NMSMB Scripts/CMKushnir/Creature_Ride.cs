//=============================================================================
// Make all creatures ridable, requires Creature_Pet to add GcCreatureComponentData.
// Ported from: Corvus - RideAllCreatures.lua
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Creature_Ride : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcCreatureDataTable();
			GcCreatureDataTable_RobotFix();
		}

		//...........................................................

		// non-default creature ride data
		protected class RideData {
			public string Id;
			public string Joint;
		}
		protected RideData [] CreatureRideData = new [] {
			new RideData{ Id = "FISH",           Joint = "joint1" },
			new RideData{ Id = "SWIMRODENT",     Joint = "GlobalJNT" },
			new RideData{ Id = "JELLYFISH",      Joint = "centre" },
			new RideData{ Id = "SHARK",          Joint = "Root" },
			new RideData{ Id = "BIRD",           Joint = "Root" },
			new RideData{ Id = "FLYINGLIZARD",   Joint = "Back1JNT" },
			new RideData{ Id = "BUTTERFLY",      Joint = "Root" },
			new RideData{ Id = "SMALLBIRD",      Joint = "Root" },
			new RideData{ Id = "MOLE",           Joint = "DiggerROOT" },
			new RideData{ Id = "PROTODIGGER",    Joint = "EyeStalkROOT" },
			new RideData{ Id = "DRILL",          Joint = "DiggerROOT" },
			new RideData{ Id = "WEIRDBUTTERFLY", Joint = "shellfly_ROOTSHJnt" },
			new RideData{ Id = "FIENDFISHSMALL", Joint = "joint1" },
			new RideData{ Id = "FLOATER",        Joint = "FrontJNT" },
			new RideData{ Id = "FIENDFISHBIG",   Joint = "joint1" },
			new RideData{ Id = "WALKER",         Joint = "Root" },
			new RideData{ Id = "QUAD",           Joint = "Root" },
		};

		//...........................................................
		
		protected void GcCreatureDataTable()
		{
			var mbin = ExtractMbin<GcCreatureDataTable>(
				"METADATA/SIMULATION/ECOSYSTEM/CREATUREDATATABLE.MBIN"
			);		
			mbin.Table.ForEach(CREATURE => {
				var existing  = CREATURE.Data.FindFirst<GcCreatureRidingData>();
				if( existing == null ) CREATURE.Data.Add(CreateRidingData(CREATURE.Id));
			});
		}
		
		//...........................................................

		protected void GcCreatureDataTable_RobotFix()
		{
			var mbin = ExtractMbin<GcCreatureDataTable>(
				"METADATA/SIMULATION/ECOSYSTEM/ROBOTDATATABLE.MBIN"
			);
			
			// add WALKER ride data
			var creature = mbin.Table.Find(CREATURE => CREATURE.Id == "WALKER");
			creature.Data.Add(CreateRidingData(creature.Id));
			
			// replace QUAD ride data
			creature = mbin.Table.Find(CREATURE => CREATURE.Id == "QUAD");
			creature.Data.RemoveAll(DATA => DATA is GcCreatureRidingData);
			creature.Data.Add(CreateRidingData(creature.Id));			
		}

		//...........................................................
		
		protected GcCreatureRidingData CreateRidingData( string CREATURE )
		{
			// check if CREATURE has non-default data specified
			var data = CreatureRideData.FindFirst(DATA => DATA.Id == CREATURE);		
			
			// from TWOLEGANTELOPE, evidently doesn't matter too much
			return new GcCreatureRidingData {
				JointName       = data?.Joint ?? "RootJNT",
				UprightStrength = 1,
				LegSpread       = true,
				ScaleForNeutralLegSpread = 1.25f,
				ScaleForMinLegSpread     = 0.5f,
				ScaleForMaxLegSpread     = 4.75f,
				IdleRidingAnim    = "RIDE_ANT_IDLE",
				DefaultRidingAnim = "RIDE_ANT_WALK",
			};
		}
	}
}

//=============================================================================
