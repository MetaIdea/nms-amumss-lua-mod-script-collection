//=============================================================================
// Experimental: from discord post, force a starting system.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using BootModeEnum                    = GcDebugOptions.BootModeEnum;
	using PlayerSpawnLocationOverrideEnum = GcDebugOptions.PlayerSpawnLocationOverrideEnum;
	using SolarSystemBootEnum             = GcDebugOptions.SolarSystemBootEnum;
	using SolarSystemClassEnum            = GcSolarSystemClass.SolarSystemClassEnum;
	using PlanetSizeEnum                  = GcPlanetSize.PlanetSizeEnum;
	using BiomeEnum                       = GcBiomeType.BiomeEnum;
	using AlienRaceEnum                   = GcAlienRace.AlienRaceEnum;

	//=========================================================================
	
	public class Start_Debug : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcDebugOptions();
			GcSolarSystemData();
		}

		//...........................................................

		// Some Debug Settings to help Stress-test
		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);

			mbin.EverythingIsFree                    = true;
			mbin.EverythingIsKnown                   = true;
			mbin.EverythingIsStar                    = true;
			mbin.MultiplePlayerFreightersInASystem   = true;
			mbin.DebugGalaxyMapInQuickMenu           = true;
			mbin.MapWarpCheckIgnoreFuel              = true;
			mbin.MapWarpCheckIgnoreDrive             = true;
			mbin.InfiniteStamina                     = true;
			mbin.IgnoreMissionRank                   = true;
			mbin.CanLeaveDialogs                     = true;
			mbin.IgnoreFreighterSpawnWarpRequirement = true;
			mbin.DisableSaveSlotSorting              = true;
			mbin.ForceNexusInQuickMenu               = true;

			// All the setting changes to load in a scene
			mbin.PlayerSpawnLocationOverride = PlayerSpawnLocationOverrideEnum.FromSettings;
			mbin.SolarSystemBoot             = SolarSystemBootEnum.FromSettings;
			mbin.SceneSettings    = "SCENES/TESTSCENES/TESTPLANETS/ZOOPLANETSETTINGS.MXML";
			mbin.WorkingDirectory = "SCENES/TESTSCENES/TESTPLANETS";

			//Don't know what this does, it would just crash my game
			//mbin.BootMode = BootModeEnum.GalaxyMap;
		}

		//...........................................................

		// All of this is for editing a solar system, although the referenced system here is for the MARCH19VR demo.
		protected void GcSolarSystemData()
		{
			var mbin = ExtractMbin<GcSolarSystemData>(
				"SCENES/DEMOS/MARCH19VR/SOLARSYSTEMS/SYSTEM_18695887738244.MBIN"
				);

			mbin.Name    = "System Creation Test 1";
			mbin.Planets = 6;

			mbin.Class.SolarSystemClass   = SolarSystemClassEnum.Default;
			mbin.InhabitingRace.AlienRace = AlienRaceEnum.Explorers;

			var inputs = mbin.PlanetGenerationInputs;

			foreach( var entry in inputs ) {
				entry.PlanetSize.PlanetSize = PlanetSizeEnum.Large;
				if( entry.Seed.UseSeedValue == false ) {
					entry.Seed.UseSeedValue = true;
					entry.Seed.Seed         = 0x6d39c24d7b5c1616;
					entry.Biome.Biome       = BiomeEnum.Frozen;
					entry.HasRings          = true;
				}
			}

			// Couldn't get this to work when generating a new world,
			// thought that might be because I changed values in the system file,
			// and didnt make a new planet file.
			var position  = mbin.PlanetPositions;
			position[4].x =  330864;
			position[4].y =    2284;
			position[4].z = 1061928;
		}
	}
}

//=============================================================================
