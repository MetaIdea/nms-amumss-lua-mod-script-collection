//=============================================================================
// Modify render pipeline config files.
// Get rid of things like star twinkle, bloom, ...
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Shader_Pipeline : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Pipeline();
		}

		//...........................................................

		protected void Pipeline()
		{
			var mbin = Game.PCBANKS.ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);
			string [] paths = new [] {
				(string)mbin.PipelineFile,   // "PIPELINES/PIPELINEDEFERRED.BIN"
				(string)mbin.PipelineFileVR  // "PIPELINES/PIPELINEDEFERREDVR.BIN"
			};
			foreach( var path in paths ) {
				// these are xml files, but treat as strings to preserve comments and spacing
				var data = ExtractData<PAK.BIN.Data>(path);
				var text = data.Text;  // can't ref property
				NoLensFlare (ref text);
				NoBloom     (ref text);
				NoBokeh     (ref text);
				NoParticles (ref text);
				NoSpeedLines(ref text);
				data.Text = text;
			}	
		}
		
		//...........................................................

		protected void NoLensFlare( ref string DATA )
		{
			DATA = DATA.Replace(  // twinkle stars
				"<Stage id=\"LensFlare\">",
				"<Stage id=\"LensFlare\" enabled=\"false\">"
			);
			DATA = DATA.Replace(
				"<Stage id=\"LensFlareAnamorphic\">",
				"<Stage id=\"LensFlareAnamorphic\" enabled=\"false\">"
			);
			//DATA = DATA.Replace(  // required for overall scene brightness
			//	"<Stage id=\"LensFlareResolve\">",
			//	"<Stage id=\"LensFlareResolve\" enabled=\"false\">"
			//);
		}
		
		//...........................................................

		protected void NoBloom( ref string DATA )
		{
			DATA = DATA.Replace(
				"<Stage id=\"NewBloomBright\" enabled=\"true\">",
				"<Stage id=\"NewBloomBright\" enabled=\"false\">"
			);
			DATA = DATA.Replace(
				"<Stage id=\"NewBloomPre\" enabled=\"true\">",
				"<Stage id=\"NewBloomPre\" enabled=\"false\">"
			);
			DATA = DATA.Replace(
				"<Stage id=\"NewBloomPost\" enabled=\"true\">",
				"<Stage id=\"NewBloomPost\" enabled=\"false\">"
			);
			//DATA = DATA.Replace(
			//	"<Stage id=\"NewBloomResolve\" enabled=\"true\">",
			//	"<Stage id=\"NewBloomResolve\" enabled=\"false\">"
			//);
			DATA = DATA.Replace(  // may only need this
				"<Stage id=\"NoBloom\" enabled=\"false\">",
				"<Stage id=\"NoBloom\" enabled=\"true\">"
			);
		}

		//...........................................................

		protected void NoBokeh( ref string DATA )
		{
			DATA = DATA.Replace(
				"<Stage id=\"DepthOfFieldBokeh\">",
				"<Stage id=\"DepthOfFieldBokeh\" enabled=\"false\">"
			);
			DATA = DATA.Replace(
				"<Stage id=\"DepthOfFieldBokehNew\">",
				"<Stage id=\"DepthOfFieldBokehNew\" enabled=\"false\">"
			);
		}

		//...........................................................

		protected void NoParticles( ref string DATA )
		{
			DATA = DATA.Replace(
				"<Stage id=\"Particles\">",
				"<Stage id=\"Particles\" enabled=\"false\">"
			);
		}

		//...........................................................

		protected void NoSpeedLines( ref string DATA )
		{
			// doesn't work ?
			DATA = DATA.Replace(
				"<Stage id=\"SpeedLines\">",
				"<Stage id=\"SpeedLines\" enabled=\"false\">"
			);
		}
	}
}

//=============================================================================
