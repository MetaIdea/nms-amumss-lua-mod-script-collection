//=============================================================================
// Alter inventory related settings, but not starting inventory contents.
// e.g. max # of slots, max items per slot stack.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using SizeTypeEnum = GcInventoryLayoutSizeType.SizeTypeEnum;
	
	//=========================================================================

	public class Inventory : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcPlayerGlobals());
			Try(() => GcGameplayGlobals());
			Try(() => GcInventoryStoreBalance());
			Try(() => GcInventoryTable());
			Try(() => GcDefaultSaveData());
		}

		//...........................................................

		public static int MaxAmount { get; set; } = 100000;

		//...........................................................

		protected void GcPlayerGlobals()
		{
			var mbin = ExtractMbin<GcPlayerGlobals>(
				"GCPLAYERGLOBALS.GLOBAL.MBIN"
			);
			// do you feel lucky punk
			mbin.LuckyWithTech          = true;  // max stats for every upgrade
			mbin.ChanceHighGradeIllegal = 15;    // 10, useless if LuckyWithTech ?
		}

		//...........................................................
		
		protected void GcGameplayGlobals()
		{
			var mbin = ExtractMbin<GcGameplayGlobals>(
				"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
			);
			// change when get overload warning for multiple upgrades of same type.
			mbin.MaxNumSameGroupTech = 4;  // 3, overload warning if exceed this
		}

		//...........................................................

		// change max slots for exosuit tech and cargo.
		// change max products | substances per stack.
		protected void GcInventoryStoreBalance()
		{
			var mbin = ExtractMbin<GcInventoryStoreBalance>(
				"METADATA/GAMESTATE/DEFAULTINVENTORYBALANCE.MBIN"
			);
	
			mbin.DeconstructRefundPercentage = 0.8f; // 0.5

			mbin.PlayerPersonalInventoryTechWidth   = 8;  // 7
			mbin.PlayerPersonalInventoryTechHeight  = 6;  // 2
			mbin.PlayerPersonalInventoryCargoWidth  = 8;  // 8
			mbin.PlayerPersonalInventoryCargoHeight = 6;  // 6
		
			// it seems substance and product amounts work in opposite ways:
			// - substances use a default max amount = x, and a mult = 1.
			// - products   use a default max amount = 1, and a mult = x.
			// trying to use the same method for products as for substances
			// can lead to things not being buildable, even w/ enough material to build.
			
			mbin.SubstanceMaxAmountLimit               = MaxAmount;  // 9999
			mbin.DefaultSubstanceMaxAmount             = MaxAmount;  // 9999
			mbin.DefaultSubstanceStorageMultiplier     = 1;  // 1
			mbin.CargoSubstanceStorageMultiplier       = 1;  // 1
			mbin.ShipSubstanceStorageMultiplier        = 1;  // 1
			mbin.FreighterSubstanceStorageMultiplier   = 1;  // 1
			mbin.ChestSubstanceStorageMultiplier       = 1;  // 1
			mbin.BaseCapsuleSubstanceStorageMultiplier = 1;  // 1
			GcSubstanceTable(1);

			// used to set *StorageMultiplier's = MaxAmount,
			// but game no longer propagates them to corresponding storage,
			// so we now set = 1 and set Multiplier for each product = MaxAmount.
			// not ideal, won't handle any new products added by mods.
			mbin.ProductMaxAmountLimit                 = MaxAmount;  // 9999
			mbin.DefaultProductMaxAmount               = 1;  //   1
			mbin.DefaultProductStorageMultiplier       = 1;  //   5
			mbin.CargoProductStorageMultiplier         = 1;  //  10
			mbin.ShipProductStorageMultiplier          = 1;  //   5
			mbin.FreighterProductStorageMultiplier     = 1;  //  10
			mbin.ChestProductStorageMultiplier         = 1;  //  20
			mbin.BaseCapsuleProductStorageMultiplier   = 1;  // 100
			GcProductTable(MaxAmount);
		}

		//...........................................................
		
		protected void GcSubstanceTable( int STACK_MULTIPLIER )
		{
			var mbin = ExtractMbin<GcSubstanceTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN"
			);
			foreach( var substance in mbin.Table ) {
				// won't apply to new substances added after this script
				if( substance.StackMultiplier > 0 ) substance.StackMultiplier = STACK_MULTIPLIER;
			}
		}
		
		//...........................................................
		
		protected void GcProductTable( int STACK_MULTIPLIER )
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			foreach( var product in mbin.Table ) {
				// won't apply to new products added after this script
				if( product.StackMultiplier > 0 ) product.StackMultiplier = STACK_MULTIPLIER;
			}
		}
		
		//...........................................................
		
		// change max slots for large chests.
		protected void GcInventoryTable()
		{
			var mbin = ExtractMbin<GcInventoryTable>(
				"METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"
			);
			// broken ?
			var data = mbin.GenerationData.GenerationDataPerSizeType;
			data[(int)SizeTypeEnum.ChestLarge].MinSlots = 48;  // 20
			data[(int)SizeTypeEnum.ChestLarge].MaxSlots = 48;  // 20			
		}

		//...........................................................

		// change max slots for storage containers (the 10 safes you can build)
		protected void GcDefaultSaveData()
		{
			var paths = new [] {
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
				"METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
			};
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcDefaultSaveData>(path);
				ChestInventory(mbin.State.Chest1Layout, mbin.State.Chest1Inventory);
				ChestInventory(mbin.State.Chest2Layout, mbin.State.Chest2Inventory);
				ChestInventory(mbin.State.Chest3Layout, mbin.State.Chest3Inventory);
				ChestInventory(mbin.State.Chest4Layout, mbin.State.Chest4Inventory);
				ChestInventory(mbin.State.Chest5Layout, mbin.State.Chest5Inventory);
				ChestInventory(mbin.State.Chest6Layout, mbin.State.Chest6Inventory);
				ChestInventory(mbin.State.Chest7Layout, mbin.State.Chest7Inventory);
				ChestInventory(mbin.State.Chest8Layout, mbin.State.Chest8Inventory);
				ChestInventory(mbin.State.Chest9Layout, mbin.State.Chest9Inventory);
				ChestInventory(mbin.State.Chest10Layout, mbin.State.Chest10Inventory);
			}
		}

		//...........................................................

		// resizing no longer works, but can still add starting items to these inventories.
		protected void ChestInventory( GcInventoryLayout LAYOUT, GcInventoryContainer INVENTORY )
		{	
			// used to work, now stored in save file, but not propagated to INVENTORY
			LAYOUT.Slots = 48;  //INVENTORY.Width * INVENTORY.Height;

			// even these are being ignored
			INVENTORY.SubstanceMaxStorageMultiplier = 1;
			INVENTORY.ProductMaxStorageMultiplier   = 1;
			INVENTORY.Width  = 8;
			INVENTORY.Height = 6;
		}
	}
}

//=============================================================================
