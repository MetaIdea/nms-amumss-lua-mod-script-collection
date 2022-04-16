//=============================================================================
// todo:
// Programmatically control what scripts, or parts of scripts, get executed.
// In particular, define different gropups of settings that define different play-as styles.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Configure : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Presets();

			// optionally call 1+ play-as method
		//	Explorer();
		//	Fighter();
		//	Miner();
		//	Cartographer();
		//	Archaeologist();
		//	Zoologist();
		//	Settler();
			Salvager();  

			Postsets();
		}

		//...........................................................
		
		// set initial state for scripts
		protected void Presets()
		{		
			// todo: remove these once all play-as config complete:
			Scan_Auto.EnableBlackBox         = true;
			Scan_Auto.EnableBones            = true;
			Scan_Auto.EnableSettlements      = true;
			Scan_Auto.EnableMinorSettlements = true;
		}

		//...........................................................
		
		// force script states, may override play-as settings
		protected void Postsets()
		{
			// experimental, leave disabled unless you know what you are doing.
			Mod<Start_Debug>().CanExecute = false;
			
			// removes missions from mbins, can affect existing saved games,
			// so leave disabled unless you understand potential impact.
			Mod<Mission_Skip>().CanExecute = false;
		}

		//...........................................................
		
		// I come in peace.
		protected void Explorer()
		{
			Log.AddInformation("Playing as: Explorer");

			// Starting ship:
			// - explorer, big engines
			// - max warp drives
			// - max shields
			// - supply of warp cores
			
			// Starting Multitool
			// - vanilla (random)
			
			// Inventory
			// - vanilla
		}

		//...........................................................
		
		// Regardless of what side of the law you are on, you love shooting things.
		protected void Fighter()
		{
			Log.AddInformation("Playing as: Fighter");

			// Starting ship:
			// - fighter
			// - max weapons
			
			// Starting Multitool
			// - rifle
			// - max weapons
			
			// Inventory
			// - vanilla
			
			// - increase chance for post-warp freighter battles
			// - increase chance for pirate attacks
		}

		//...........................................................
		
		// You excel at extracting, buying, and selling raw materials.
		protected void Miner()
		{
			Log.AddInformation("Playing as: Miner");

			// Starting ship:
			// - dropship, front box, side balls
			
			// Starting Multitool
			// - max mining
			
			// Inventory
			// - max suit and ship slots
		}

		//...........................................................
		
		// Maps, maps, and more maps.
		protected void Cartographer()
		{
			Log.AddInformation("Playing as: Cartographer");

			// Starting ship:
			// - shuttle, tiny
			
			// Starting Multitool
			// - vanilla (random)
			
			// Inventory
			// - vanilla		
			// - a bunch of each map type

			// - auto-mark most building locations
			Scan_Auto.EnableBaseSite         = true;
			Scan_Auto.EnableMinorSettlements = true;
			Scan_Auto.EnableMonolith         = true;
			Scan_Auto.EnablePortal           = true;
			Scan_Auto.EnableSettlements      = true;
		}

		//...........................................................
		
		// You like digging up buried treasures.
		protected void Archaeologist()
		{
			Log.AddInformation("Playing as: Archaeologist");

			// Starting ship:
			// - dropship, x2 side boxes
			
			// Starting Multitool
			// - vanilla (random)
			
			// Inventory
			// - vanilla
			
			// - auto-mark buried items and ruins
			Scan_Auto.EnableBones = true;
			Scan_Auto.EnableGrave = true;
		}

		//...........................................................
		
		// You specialize in cataloging the varied flora and fauna you experience.
		protected void Zoologist()
		{
			Log.AddInformation("Playing as: Zoologist");

			// Starting ship:
			// - shuttle, large
			
			// Starting Multitool
			// - vanilla (random)
			// - max scanning
			
			// Inventory
			// - vanilla
			
			// - can make all fauna pets
			// - can ride all fauna
		}

		//...........................................................
		
		// It's all about the base.
		protected void Settler()
		{
			Log.AddInformation("Playing as: Settler");

			// Starting ship:
			// - vanilla (random)
			
			// Starting Multitool
			// - vanilla (random)
			
			// Inventory
			// - max suit and ship
			
			// - auto-mark base related locations
			Scan_Auto.EnableBaseSite         = true;
			Scan_Auto.EnableSettlements      = true;
			Scan_Auto.EnableMinorSettlements = true;
			Scan_Auto.EnablePortal           = true;
		}

		//...........................................................
		
		// You live off salvaging crashed ships.
		protected void Salvager()
		{
			Log.AddInformation("Playing as: Salvager");

			// Starting ship:
			// - dropship, front box, side x2 boxes
			
			// Starting Multitool
			// - vanilla (random)
			
			// Inventory
			// - max suit and ship slots
			// - loaded with raw materials to repair
			// - Storage Augmentation tokens
			
			// - buildable Salvage stations

			// - auto-mark crashed ships and radio towers
			Scan_Auto.EnableBlackBox = true;
		}
	}
}

//=============================================================================
