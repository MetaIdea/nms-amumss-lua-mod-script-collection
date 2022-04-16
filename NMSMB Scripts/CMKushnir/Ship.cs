//=============================================================================
// Teleport range, auto-aim all weapons, hover, ...
// Adjust distribution of ship in system, increase chance of Royals.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using AlienRaceEnum = GcAlienRace.AlienRaceEnum;
	using ShipClassEnum = GcSpaceshipClasses.ShipClassEnum;
	using StatsTypeEnum = GcStatsTypes.StatsTypeEnum;

	//=========================================================================
	
	public class Ship : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcGameplayGlobals());
			Try(() => GcTechnologyTable());
			Try(() => GcAISpaceshipGlobals());
			Try(() => GcRealityManagerData());
			Try(() => GcSpaceshipGlobals());
			Try(() => GcSolarGenerationGlobals());
		//	Try(() => Squid());
		}
			
		//...........................................................

		// quick poc to create a squid ship using only the cockpit.
		// proper mod would lower cockpit to align w/ jet trails and landing gear,
		// and add as new exotic instead of replacing all exotic.
		protected void Squid()
		{
			var desc = ExtractMbin<TkModelDescriptorList>(
				"MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.DESCRIPTOR.MBIN"
			);
			var squid = CloneMbin(desc.List[0].Descriptors.Find(DESC => DESC.Id == "_SCLASSSHIP_SQU"));
			squid.ReferencePaths.Clear();
			squid.ReferencePaths.Add("MODELS/COMMON/SPACECRAFT/S-CLASS/SQUIDPARTS/COCKPIT/COCKPIT_A.SCENE.MBIN");
			squid.ReferencePaths.Add("MODELS/COMMON/SPACECRAFT/SHARED/WEAPONS/SHIPGUN.SCENE.MBIN");
			desc.List[0].Descriptors.Clear();
			desc.List[0].Descriptors.Add(squid);

			var scene = ExtractMbin<TkSceneNodeData>(
				"MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"
			);
			var node = scene.Children[4].Children[1].Children.Find(NODE => NODE.Name == "Cockpit_A");
			scene.Children[4].Children[1].Children.Clear();
			scene.Children[4].Children[1].Children.Add(node);
		}

		//...........................................................

		protected void GcGameplayGlobals()
		{
			var mbin = ExtractMbin<GcGameplayGlobals>(
				"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
			);
			// interact with ship from farther away
			mbin.ShipInteractRadius = 2000;
		}

		//...........................................................

		protected void GcTechnologyTable()
		{
			var mbin = ExtractMbin<GcTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
			);
			// teleport material between exosuit and ship from farther away
			var tech    = mbin.Table.Find(TECH => TECH.ID == "SHIP_TELEPORT");
			var bonus   = tech.StatBonuses.Find(BONUS => BONUS.Stat.StatsType == StatsTypeEnum.Ship_Teleport);
			bonus.Bonus = 2000;
		}

		//...........................................................

		protected void GcAISpaceshipGlobals()
		{
			var mbin = ExtractMbin<GcAISpaceshipGlobals>(
				"GCAISPACESHIPGLOBALS.GLOBAL.MBIN"
			);
			mbin.VisibleDistance = 20000;  // 3500
		}

		//...........................................................

		protected void GcRealityManagerData()
		{
			var mbin = ExtractMbin<GcRealityManagerData>(
				"METADATA/REALITY/DEFAULTREALITY.MBIN"
			);
			// all ship weapons have auto-aim
			foreach( var weapon in mbin.ShipWeapons ) {
				weapon.AutoAimAngle      =  5;
				weapon.AutoAimExtraAngle = 15;
			}
		}

		//...........................................................

		protected void GcSpaceshipGlobals()
		{
			var mbin = ExtractMbin<GcSpaceshipGlobals>(
				"GCSPACESHIPGLOBALS.GLOBAL.MBIN"
			);
			
			mbin.DoPreCollision        = false;  // true
			mbin.LandingCheckBuildings = false;  // true		

			mbin.LandSlopeMax = 50;
			mbin.LandingAreaRadius = 1;
			
			mbin.GroundHeightSmoothTime = 100000;  // 0, fly underwater

			mbin.NearGroundPitchCorrectMinHeight = 1;  // 23
			mbin.NearGroundPitchCorrectRange     = 1;  // 15
			mbin.NearGroundPitchCorrectMinHeightRemote = 3;  // 30
			mbin.NearGroundPitchCorrectRangeRemote     = 3;  // 30
			
			mbin.PitchCorrectSoftDownAngle = 360;  // 25
			mbin.PitchCorrectMaxDownAngle  = 360;  // 50
			mbin.PitchCorrectMaxDownAnglePostCollision  = 360;  //  10
			mbin.PitchCorrectSoftDownAnglePostCollision = 360;  // -10
			mbin.PitchCorrectMaxDownAngleWater          = 360;  //  20
		
			mbin.GroundHeightSoft      =  7;  // 20
			mbin.GroundHeightSoftForce = 14;  // 35

			mbin.LandHeightThreshold     = 60;  // 100
			mbin.LandingPushNoseUpFactor =  0;  // 0.15

			// ship hover			
			var min_speed = 0.0001f;

			mbin.HoverMinSpeed    = min_speed;  //  1
			mbin.HoverSpeedFactor = 0.0001f;    // 20

			mbin.Control.SpaceEngine .MinSpeed = min_speed;
			mbin.Control.PlanetEngine.MinSpeed = min_speed;
			mbin.Control.CombatEngine.MinSpeed = min_speed;

			mbin.ControlLight.SpaceEngine .MinSpeed = min_speed;
			mbin.ControlLight.PlanetEngine.MinSpeed = min_speed;
			mbin.ControlLight.CombatEngine.MinSpeed = min_speed;

			mbin.ControlHeavy.SpaceEngine .MinSpeed = min_speed;
			mbin.ControlHeavy.PlanetEngine.MinSpeed = min_speed;
			mbin.ControlHeavy.CombatEngine.MinSpeed = min_speed;

			mbin.MiniWarpLinesNum             = 0;     // 4
			mbin.MiniWarpFlashIntensity       = 0.1f;  // 0.9
			mbin.MiniWarpHUDArrowAttractAngle = 2;     // 10

			mbin.FreighterBattleIgnoreFriendlyFireDistance *= 10;  // 10,000
		}

		//...........................................................

		// adjust distribution of ship types in a system
		protected void GcSolarGenerationGlobals()
		{
			var mbin = ExtractMbin<GcSolarGenerationGlobals>(
				"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"
			);
			
			// # of ship seeds generated per system - 1
			//mbin.CivilianTraderSpaceshipsCacheCount = 39;  // 20
			
			IncreaseChanceRoyal(mbin);
			//ManyRoyal(mbin);  // test
		}

		//...........................................................
		
		protected void IncreaseChanceRoyal( GcSolarGenerationGlobals MBIN )
		{		
			// used to be array indexed on mbin_gc.GcAlienRace.AlienRaceEnum, now a List<>.
			// weightings is tied to enum, but enum is specified as an attrib.
			
			var weightings = MBIN.SpaceshipWeightings[(int)AlienRaceEnum.Traders].CivilianClassWeightings;
			weightings[(int)ShipClassEnum.Shuttle] = 81;
			weightings[(int)ShipClassEnum.Royal]   = 20;

			weightings = MBIN.SpaceshipWeightings[(int)AlienRaceEnum.Warriors].CivilianClassWeightings;
			weightings[(int)ShipClassEnum.Shuttle] = 81;
			weightings[(int)ShipClassEnum.Royal]   = 20;

			weightings = MBIN.SpaceshipWeightings[(int)AlienRaceEnum.Explorers].CivilianClassWeightings;
			weightings[(int)ShipClassEnum.Shuttle] = 81;
			weightings[(int)ShipClassEnum.Royal]   = 20;
		}

		//...........................................................
		
		// 20/21 ships are royal in each system
		protected void ManyRoyal( GcSolarGenerationGlobals MBIN )
		{		
			// need at least 2 values to be non-0 in order to get large selection of bigger #.
			// e.g. Royal = 100, Alien = 1, all others = 0, gives large selection of Royal in system.		
			foreach( var spaceship in MBIN.SpaceshipWeightings ) {
				var civilian = spaceship.CivilianClassWeightings;
				for( var i = 0; i < civilian.Length; ++i ) civilian[i] = 0;
				civilian[(int)ShipClassEnum.Royal] = 100;
				civilian[(int)ShipClassEnum.Alien] = 1;
			}
		}
	}
}

//=============================================================================
