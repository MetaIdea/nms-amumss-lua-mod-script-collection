//=============================================================================
// New game Ship settings | inventory.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Inventory_Ship : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcRealityManagerData());
			Try(() => GcDefaultSaveData());
		}

		//...........................................................
		
		public static int MaxAmount   { get; set; } = Inventory.MaxAmount;
		public static int StartAmount { get; set; } = MaxAmount / 2;	
		
		//...........................................................
		
		protected void GcRealityManagerData()
		{
			var mbin = ExtractMbin<GcRealityManagerData>(
				"METADATA/REALITY/DEFAULTREALITY.MBIN"
			);
			mbin.ShipStartingLayout        .Slots = 48;
			mbin.ShipTechOnlyStartingLayout.Slots = 48;
		}

		//...........................................................

		protected void GcDefaultSaveData()
		{
			var mbin = ExtractMbin<GcDefaultSaveData>(
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"
			);
			GcInventoryContainer_Main(mbin.State.ShipInventory);
			KnownTech(mbin.State.KnownTech);  // optional
		}
	
		//...........................................................

		protected void GcInventoryContainer_Main( GcInventoryContainer CONTAINER )
		{
			CONTAINER.Slots.Clear();
			CONTAINER.AddTechnologyUnindexed("LAUNCHER",        100, 100);  // Launch Thruster
			CONTAINER.AddTechnologyUnindexed("UT_LAUNCHCHARGE", 100, 100);  // Launch System Recharger		
			CONTAINER.AddTechnologyUnindexed("SHIPMINIGUN",     100, 100);  // Infra-Knife Accelerator
			CONTAINER.AddTechnologyUnindexed("SHIPSHIELD",      100, 100);  // Deflector Shield
			CONTAINER.AddTechnologyUnindexed("UT_SHIPSHIELD",   100, 100);  // Ablative Armour
			CONTAINER.AddTechnologyUnindexed("SHIPJUMP1",       100, 100);  // Pulse Engine
			CONTAINER.AddTechnologyUnindexed("HYPERDRIVE",      100, 100);  // Hyperdrive
			CONTAINER.AddTechnologyUnindexed("UT_QUICKWARP" ,   100, 100);  // Emergency Warp Unit
			CONTAINER.AddTechnologyUnindexed("SHIP_TELEPORT",   100, 100);  // Teleport Receiver
			CONTAINER.AddTechnologyUnindexed("SHIPSCAN_ECON",   100, 100);  // Economy  Scanner
			CONTAINER.AddTechnologyUnindexed("SHIPSCAN_COMBAT", 100, 100);  // Conflict Scanner
		}

		//...........................................................

		// optionally, make sure we know how to re-add all items in inventory
		protected void KnownTech( List<nms.NMSString0x10> LIST )
		{
			LIST.AddUnique("LAUNCHER");
			LIST.AddUnique("UT_LAUNCHCHARGE");
			LIST.AddUnique("SHIPMINIGUN");
			LIST.AddUnique("SHIPSHIELD");
			LIST.AddUnique("UT_SHIPSHIELD");
			LIST.AddUnique("SHIPJUMP1");
			LIST.AddUnique("HYPERDRIVE");
			LIST.AddUnique("UT_QUICKWARP");
			LIST.AddUnique("SHIP_TELEPORT");
			LIST.AddUnique("SHIPSCAN_ECON");
			LIST.AddUnique("SHIPSCAN_COMBAT");
		}
	}
}

//=============================================================================
