//=============================================================================
// Make star colors in galaxy map more vibrant.
// Make space darker.
// Adjust trade routes colors (make all dark red) and alpha.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using GalaxyStarTypeEnum = GcGalaxyStarTypes.GalaxyStarTypeEnum;
	
	//=========================================================================
	
	public class Space_Colour : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcGalaxyGlobals());
			Try(() => GcAISpaceshipGlobals());
			Try(() => SpaceSkyColours());
		}

		//...........................................................

		protected void GcGalaxyGlobals()
		{
			var mbin = ExtractMbin<GcGalaxyGlobals>(
				"GCGALAXYGLOBALS.GLOBAL.MBIN"
			);
			
			// make star colours more vibrant
			var colors = mbin.BaseStarDefaultColours.ColourByStarType;
			colors[(int)GalaxyStarTypeEnum.Yellow] = new(0.5f, 0.4215f, 0.0f, 1);
			colors[(int)GalaxyStarTypeEnum.Green]  = new(0.0f, 0.5f,    0.0f, 1);
			colors[(int)GalaxyStarTypeEnum.Blue]   = new(0.0f, 0.0f,    0.5f, 1);
			colors[(int)GalaxyStarTypeEnum.Red]    = new(0.5f, 0.0f,    0.0f, 1);
			
			// nerf overly bright nebulae ?
			mbin.DefaultRenderSetup = mbin.FinalAnimationRenderSetup;
		
			var radii = mbin.SolarSystemParameters.PlanetRadii;
			for( var i = 0; i < radii.Length; ++i ) {
				radii[i] = 5 * (radii.Length - i);
			}
		}

		//...........................................................

		protected void GcAISpaceshipGlobals()
		{
			var mbin = ExtractMbin<GcAISpaceshipGlobals>(
				"GCAISPACESHIPGLOBALS.GLOBAL.MBIN"
			);
			// adjust trade routes visibility.
			// make darker for vanilla space (non-dark)
			// to make it easier to follow them down to planet.
			// or lighter if using dark space.
			foreach( var color in mbin.TradeRouteColours ) {
				// initially all diff colours, make all red
				color.R = 0.50f;
				color.G = 0.00f;
				color.B = 0.00f;
				color.A = 0.075f;  // 0.1
			}
		}

		//...........................................................

		protected void SpaceSkyColours()
		{
			var paths = new [] {
				"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN",
				"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN"
			};		
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcSpaceSkyColourSettingList>(path);
				GcSpaceSkyColourSettingList(mbin);
			}
		}
		
		//...........................................................

		protected void GcSpaceSkyColourSettingList( GcSpaceSkyColourSettingList MBIN )
		{
			// make space darker
			foreach( var colors in MBIN.Settings ) {
				var nebula = 0.1f;
				colors.NebulaColour1.R *= nebula;
				colors.NebulaColour1.G *= nebula;
				colors.NebulaColour1.B *= nebula;
				colors.NebulaColour2.R *= nebula;
				colors.NebulaColour2.G *= nebula;
				colors.NebulaColour2.B *= nebula;
				colors.NebulaColour3.R *= nebula;
				colors.NebulaColour3.G *= nebula;
				colors.NebulaColour3.B *= nebula;

				var space = 0.1f;
				colors.TopColour.R *= space;
				colors.TopColour.G *= space;
				colors.TopColour.B *= space;
				colors.MidColour.R *= space;
				colors.MidColour.G *= space;
				colors.MidColour.B *= space;
				colors.BottomColour.R *= space;
				colors.BottomColour.G *= space;
				colors.BottomColour.B *= space;

				var light = 0.9f;
				colors.LightColour.R *= light;
				colors.LightColour.G *= light;
				colors.LightColour.B *= light;
				
				var cloud = 0.5f;
				colors.CloudColour.R *= cloud;
				colors.CloudColour.G *= cloud;
				colors.CloudColour.B *= cloud;

				var fog = 0.5f;
				colors.FogColour.R *= fog;
				colors.FogColour.G *= fog;
				colors.FogColour.B *= fog;

				var fog2 = 0.1f;
				colors.FogColour2.R *= fog2;
				colors.FogColour2.G *= fog2;
				colors.FogColour2.B *= fog2;
				
				var planet = 0.8f;
				colors.TopColourPlanet.R *= planet;
				colors.TopColourPlanet.G *= planet;
				colors.TopColourPlanet.B *= planet;
				colors.MidColourPlanet.R *= planet;
				colors.MidColourPlanet.G *= planet;
				colors.MidColourPlanet.B *= planet;
				colors.BottomColourPlanet.R *= planet;
				colors.BottomColourPlanet.G *= planet;
				colors.BottomColourPlanet.B *= planet;			
			}
		}		
	}
}

//=============================================================================
