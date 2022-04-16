//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class InventoryUnbalance : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			EditBothOptions("METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"); //This also includes permadeath
			EditBothOptions("METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN");
		}

		//...........................................................

		protected void EditBothOptions(string filepath)
		{
			int SubstanceAndProcductStackSizeLimit = 1000000; // (Original 9999)
			//NORMAL
			int SubstanceDefaultStackSizeNormal = 50000; // Stacksize of substances(Original 9999)
			int ProductDefaultStackSizeNormal = 2500; // Stacksize of products you can craft or buy(Original 1)

			int StackMultiPlierExosuitAndShipNormal = 1;// 50000 and 50 after mutiplier
			int StackMultiPlierFreighterAndCargoNormal = 2; // 100000 and 100 after mutiplier
			float RefundNormal = 1; // Refund from base Deconstruct(Original 0.5).This will give you a 100 % refund
			
			// ExoSuit Tech Slot 8 x 4 = 32
			int TechWidthNormal = 8; // Tech slots increase(Original 7)
			int TechHeightNormal = 6; // Tech slots increase(Original 2)

			var mbin = ExtractMbin<GcInventoryStoreBalance>(filepath);

			mbin.DefaultSubstanceMaxAmount =			    SubstanceDefaultStackSizeNormal;
			mbin.DefaultProductMaxAmount =                  ProductDefaultStackSizeNormal;
			mbin.CargoSubstanceStorageMultiplier =          StackMultiPlierFreighterAndCargoNormal;
			mbin.CargoProductStorageMultiplier =		    StackMultiPlierFreighterAndCargoNormal;
			mbin.FreighterSubstanceStorageMultiplier =      StackMultiPlierFreighterAndCargoNormal;
			mbin.FreighterProductStorageMultiplier =	    StackMultiPlierFreighterAndCargoNormal;
			mbin.ShipSubstanceStorageMultiplier =           StackMultiPlierExosuitAndShipNormal;
			mbin.ShipProductStorageMultiplier =             StackMultiPlierExosuitAndShipNormal;
			mbin.ChestSubstanceStorageMultiplier =          StackMultiPlierExosuitAndShipNormal;
			mbin.ChestProductStorageMultiplier =            StackMultiPlierExosuitAndShipNormal;
			mbin.BaseCapsuleSubstanceStorageMultiplier =	StackMultiPlierFreighterAndCargoNormal;
			mbin.BaseCapsuleProductStorageMultiplier =		StackMultiPlierFreighterAndCargoNormal;
			mbin.DefaultSubstanceStorageMultiplier =		StackMultiPlierExosuitAndShipNormal;
			mbin.DefaultProductStorageMultiplier =			StackMultiPlierExosuitAndShipNormal;
			mbin.SubstanceMaxAmountLimit =					SubstanceAndProcductStackSizeLimit;
			mbin.ProductMaxAmountLimit =					SubstanceAndProcductStackSizeLimit;
			mbin.PlayerPersonalInventoryTechWidth =			TechWidthNormal;
            mbin.PlayerPersonalInventoryTechHeight =		TechHeightNormal;
			mbin.DeconstructRefundPercentage =				RefundNormal;
		}
	}
}

//=============================================================================
