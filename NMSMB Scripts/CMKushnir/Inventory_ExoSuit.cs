//=============================================================================
// New game ExoSuit settings | inventory.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Inventory_ExoSuit : cmk.NMS.ModScript
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
			mbin.SuitStartingSlotLayout        .Slots = 48;
			mbin.SuitTechOnlyStartingSlotLayout.Slots = 48;
			mbin.SuitCargoStartingSlotLayout   .Slots = 48;
		}

		//...........................................................

		protected void GcDefaultSaveData()
		{
			var mbin = ExtractMbin<GcDefaultSaveData>(
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"
			);
			GcPlayerStateData (mbin.State);
			KnownTech    (mbin.State.KnownTech);      // optional
			KnownProducts(mbin.State.KnownProducts);  // optional
		}

		//...........................................................

		protected void GcPlayerStateData( GcPlayerStateData DATA )
		{			
			// if you add more items to an inventory than its StartingSlotLayout the extra items are ignored.
			// if you stack more in a slot than allowed the amount is truncated to the max allowable.		
			GcInventoryContainer_Main (DATA.Inventory);
			GcInventoryContainer_Tech (DATA.Inventory_TechOnly);
			GcInventoryContainer_Cargo(DATA.Inventory_Cargo);
		}

		//...........................................................
		
		protected void GcInventoryContainer_Main( GcInventoryContainer CONTAINER )
		{			
			CONTAINER.Slots.Clear();
			CONTAINER.AddProductUnindexed("ACCESS3", 1, MaxAmount);  // AtlasPass v3

			// see Reward_Location for custom MAP_*
			CONTAINER.AddProductUnindexed("MAP_DISTRESS",   1000, MaxAmount);  // 
			CONTAINER.AddProductUnindexed("MAP_SHOP",       1000, MaxAmount);  // 
			CONTAINER.AddProductUnindexed("MAP_PORTAL",     1000, MaxAmount);  // 
			CONTAINER.AddProductUnindexed("CHART_SETTLE",   1000, MaxAmount);  // Settlement - Yellow Beacon
			
			CONTAINER.AddProductUnindexed("NAV_DATA",    10000, MaxAmount);  // Navigation Data
			CONTAINER.AddProductUnindexed("ABAND_LOCATOR", 200, MaxAmount);  // Emergency Broadcast Receiver
			CONTAINER.AddProductUnindexed("POI_LOCATOR",   200, MaxAmount);  // Anomaly Detector
			
			CONTAINER.AddProductUnindexed("SHIP_INV_TOKEN", 2000, MaxAmount);  // Storage Augmentation
			CONTAINER.AddProductUnindexed("WEAP_INV_TOKEN", 1000, MaxAmount);  // Multi-Tool Expansion Slot
			CONTAINER.AddProductUnindexed("SUIT_INV_TOKEN",   40, MaxAmount);  // Exosuit Expansion Unit, for seasonal

			CONTAINER.AddProductUnindexed("STATION_KEY", 100, MaxAmount);  // Station Override
			
			CONTAINER.AddProductUnindexed("EXP_CURIO1", 500, MaxAmount);  // Korvax Casing
			CONTAINER.AddProductUnindexed("WAR_CURIO2", 500, MaxAmount);  // Vy'keen Dagger
			CONTAINER.AddProductUnindexed("TRA_CURIO1", 500, MaxAmount);  // Gek Relic
			
			CONTAINER.AddProductUnindexed("AMMO",       StartAmount, MaxAmount);  // Projectile Ammunition
			CONTAINER.AddProductUnindexed("BAIT_BASIC", StartAmount, MaxAmount);  // Creature Pellets

			CONTAINER.AddSubstanceUnindexed("AF_METAL", StartAmount, MaxAmount);  // Tainted Metal
		}
		
		//...........................................................
		
		protected void GcInventoryContainer_Tech( GcInventoryContainer CONTAINER )
		{	
			CONTAINER.Slots.Clear();
			CONTAINER.AddTechnologyUnindexed("SUIT_REFINER",   100, 100);  // Personal Refiner
			CONTAINER.AddTechnologyUnindexed("ENERGY",         100, 100);  // Life Support
			CONTAINER.AddTechnologyUnindexed("PROTECT",        100, 100);  // Hazard Protection
			CONTAINER.AddTechnologyUnindexed("POWERGLOVE",     100, 100);  // Haz-Mat Gauntlet
			CONTAINER.AddTechnologyUnindexed("UT_WATER",       100, 100);  // Aeration Membrane
			CONTAINER.AddTechnologyUnindexed("UT_WATERENERGY", 100, 100);  // Oxygen Rerouter
			CONTAINER.AddTechnologyUnindexed("JET1",           100, 100);  // Jetpack
			CONTAINER.AddTechnologyUnindexed("UT_MIDAIR",      100, 100);  // Airburst Engine
			CONTAINER.AddTechnologyUnindexed("UT_WATERJET",    100, 100);  // Efficient Water Jets
		}

		//...........................................................
		
		// mainly geared to play-as salvager, may want to comment out items for other play-as styles.
		protected void GcInventoryContainer_Cargo( GcInventoryContainer CONTAINER )
		{								
			CONTAINER.Slots.Clear();
			
			// essential first		
			CONTAINER.AddSubstanceUnindexed("LAUNCHSUB", StartAmount, MaxAmount);  // Di-hydrogen
			CONTAINER.AddSubstanceUnindexed("ROCKETSUB", StartAmount, MaxAmount);  // Tritium
			CONTAINER.AddSubstanceUnindexed("OXYGEN",    StartAmount, MaxAmount);  // Oxygen
			CONTAINER.AddSubstanceUnindexed("FUEL1",     StartAmount, MaxAmount);  // Carbon
			CONTAINER.AddSubstanceUnindexed("CATALYST1", StartAmount, MaxAmount);  // Sodium	
			CONTAINER.AddSubstanceUnindexed("LAND1",     StartAmount, MaxAmount);  // Ferrite Dust
			CONTAINER.AddSubstanceUnindexed("YELLOW2",   StartAmount, MaxAmount);  // Copper
			CONTAINER.AddSubstanceUnindexed("CAVE1",     StartAmount, MaxAmount);  // Cobalt
			
			// then nice-to-have, duplicated in Inventory_Ship.GcInventoryContainer_MainSeasonal
			CONTAINER.AddSubstanceUnindexed("LAUNCHSUB2", StartAmount, MaxAmount);  // Deuterium

			CONTAINER.AddSubstanceUnindexed("COLD1", StartAmount, MaxAmount);  // Dioxite

			CONTAINER.AddSubstanceUnindexed("FUEL2", StartAmount, MaxAmount);  // Condensed Carbon

			CONTAINER.AddSubstanceUnindexed("CATALYST2", StartAmount, MaxAmount);  // Sodium Nitrate

			CONTAINER.AddSubstanceUnindexed("LAND2", StartAmount, MaxAmount);  // Pure Ferrite
			CONTAINER.AddSubstanceUnindexed("LAND3", StartAmount, MaxAmount);  // Magnetised Ferrite
			CONTAINER.AddSubstanceUnindexed("SAND1", StartAmount, MaxAmount);  // Silicate Powder

			CONTAINER.AddSubstanceUnindexed("EX_YELLOW", StartAmount, MaxAmount);  // Activated Copper
			CONTAINER.AddSubstanceUnindexed("STELLAR2",  StartAmount, MaxAmount);  // Chromatic Metal
	
			CONTAINER.AddSubstanceUnindexed("CAVE2", StartAmount, MaxAmount);  // Ionised Cobalt

			CONTAINER.AddSubstanceUnindexed("ASTEROID1", StartAmount, MaxAmount);  // Silver
			CONTAINER.AddSubstanceUnindexed("ASTEROID3", StartAmount, MaxAmount);  // Platinum
			CONTAINER.AddSubstanceUnindexed("ASTEROID2", StartAmount, MaxAmount);  // Gold
			CONTAINER.AddSubstanceUnindexed("RADIO1",    StartAmount, MaxAmount);  // Uranium		
			CONTAINER.AddSubstanceUnindexed("DUSTY1",    StartAmount, MaxAmount);  // Pyrite

			CONTAINER.AddSubstanceUnindexed("CREATURE1", StartAmount, MaxAmount);  // Mordite
			CONTAINER.AddSubstanceUnindexed("ROBOT1",    StartAmount, MaxAmount);  // Pugneum
			
			CONTAINER.AddSubstanceUnindexed("HOT1",  StartAmount, MaxAmount);  // Phosphorus
			CONTAINER.AddSubstanceUnindexed("LUSH1", StartAmount, MaxAmount);  // Paraffinium

			CONTAINER.AddSubstanceUnindexed("WATER1", StartAmount, MaxAmount);  // Salt
			CONTAINER.AddSubstanceUnindexed("WATER2", StartAmount, MaxAmount);  // Chlorine
			CONTAINER.AddSubstanceUnindexed("TOXIC1", StartAmount, MaxAmount);  // Ammonia

			CONTAINER.AddSubstanceUnindexed("RED2",   StartAmount, MaxAmount);  // Cadmium
			CONTAINER.AddSubstanceUnindexed("GREEN2", StartAmount, MaxAmount);  // Emeril
			CONTAINER.AddSubstanceUnindexed("BLUE2",  StartAmount, MaxAmount);  // Indium

			CONTAINER.AddProductUnindexed("TECH_COMP", StartAmount, MaxAmount);  // Wiring Loom
			CONTAINER.AddProductUnindexed("MICROCHIP", StartAmount, MaxAmount);  // Microprocessor

			CONTAINER.AddProductUnindexed("GEODE_SPACE",   StartAmount, MaxAmount);  // Tritium Hypercluster
			CONTAINER.AddProductUnindexed("STORM_CRYSTAL", StartAmount, MaxAmount);  // Storm Crystal

			CONTAINER.AddProductUnindexed("FARMPROD3", StartAmount, MaxAmount);  // Glass
			CONTAINER.AddProductUnindexed("CLAMPEARL", StartAmount, MaxAmount);  // Living Pearl
			CONTAINER.AddProductUnindexed("VENTGEM",   StartAmount, MaxAmount);  // Crystal Sulphide

			CONTAINER.AddProductUnindexed("ANTIMATTER", StartAmount, MaxAmount);  // Antimatter
			CONTAINER.AddProductUnindexed("HYPERFUEL1", StartAmount, MaxAmount);  // Warp Cell

			CONTAINER.AddProductUnindexed("JELLY",       StartAmount, MaxAmount);  // Di-hydrogen Jelly
			CONTAINER.AddProductUnindexed("NANOTUBES",   StartAmount, MaxAmount);  // Carbon Nanotubes
			CONTAINER.AddProductUnindexed("CASING",      StartAmount, MaxAmount);  // Metal Plating
			CONTAINER.AddProductUnindexed("CARBON_SEAL", StartAmount, MaxAmount);  // Hermetic Seal
		}
		
		//...........................................................

		protected void KnownTech( List<nms.NMSString0x10> LIST )
		{
			LIST.AddUnique("SUIT_REFINER");
			LIST.AddUnique("ENERGY");
			LIST.AddUnique("PROTECT");
			LIST.AddUnique("POWERGLOVE");
			LIST.AddUnique("UT_WATER");
			LIST.AddUnique("UT_WATERENERGY");
			LIST.AddUnique("JET1");
			LIST.AddUnique("UT_MIDAIR");
			LIST.AddUnique("UT_WATERJET");
		}

		//...........................................................

		protected void KnownProducts( List<nms.NMSString0x10> LIST )
		{
			LIST.AddUnique("JELLY");
			LIST.AddUnique("NANOTUBES");
			LIST.AddUnique("CASING");
			LIST.AddUnique("CARBON_SEAL");
			LIST.AddUnique("TECH_COMP");
			LIST.AddUnique("MICROCHIP");
			LIST.AddUnique("ANTIMATTER");
			LIST.AddUnique("HYPERFUEL1");
			LIST.AddUnique("ACCESS3");
			LIST.AddUnique("BP_SALVAGE");
			LIST.AddUnique("NAV_DATA");
			LIST.AddUnique("FACT_TOKEN");
			LIST.AddUnique("SHIP_INV_TOKEN");
			LIST.AddUnique("WEAP_INV_TOKEN");
			LIST.AddUnique("SUIT_INV_TOKEN");
			LIST.AddUnique("NAV_DATA_DROP");
			LIST.AddUnique("GEODE_SPACE");
			LIST.AddUnique("STORM_CRYSTAL");
			LIST.AddUnique("EXP_CURIO1");
			LIST.AddUnique("WAR_CURIO2");
			LIST.AddUnique("TRA_CURIO1");
			LIST.AddUnique("FARMPROD3");
			LIST.AddUnique("CLAMPEARL");
			LIST.AddUnique("VENTGEM");
			LIST.AddUnique("BAIT_BASIC");
			LIST.AddUnique("WALKER_PROD");
			LIST.AddUnique("ABAND_LOCATOR");
			LIST.AddUnique("POI_LOCATOR");
		}		
	}
}

//=============================================================================
