//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class InventoryRebalance : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			EditSurvivalOptions("METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"); //This also includes permadeath
			EditNormalOptions("METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN");
		}

		//...........................................................

		protected void EditSurvivalOptions(string filepath)
		{
			int SubstanceDefaultStackSizeSurvival = 250; // Stacksize of substances(Original 50)
			int ProductDefaultStackSizeSurvival = 1; // Stacksize of products you can craft or buy(Original 1)

			int StackMultiPlierExosuitInvetorySurvival = 2; // Inventory stack size  250 x 2 = 500
			int StackMultiPlierExosuitCargoSurvival = 4; // CargoInvetory 250 x 4 = 1000

			int StackMultiPlierShipSurvival = 8;// Ship Inventory 250 x 10 = 2000
			int StackMultiPlierFreighterAndContainerSurvival = 20; // Freighter and Cotainer 250 x 20 = 5000

			int ProductStackMultiPlierExosuitInvetorySurvival = 5; // Product Stack Size = 5 ExoSuitInvetory
			int ProductStackMutiplierExosuitCargoAndShip = 10; // Product Stack Size = 10 ExoSuitCargo and ShipInvetory
			int ProductStackMutiplierFreighterAndContainer = 25; // Product Stack Size = 25 Freigher and BaseContainer

			// ExoSuit Tech Slot 8 x 3 = 24
			int TechWidthSurvival = 8; // Exosuit Tech slots increase(Original 7) (8 is max)
			int TechHeightSurvival = 3; // Exosuit Tech slots increase(Original 2)	(5 is max)

			float RefundSurvival = 0.5f; // Refund from base Deconstruct(Original 0.5).This will refund 50 % when deconstructing

			int SubstanceAndProcductStackSizeLimit = 1000000; //(Original 9999)

			var mbin = ExtractMbin<GcInventoryStoreBalance>(filepath);

			mbin.DefaultSubstanceMaxAmount =			    SubstanceDefaultStackSizeSurvival;
			mbin.DefaultProductMaxAmount =                  ProductDefaultStackSizeSurvival;
			mbin.CargoSubstanceStorageMultiplier =          StackMultiPlierExosuitCargoSurvival;
			mbin.CargoProductStorageMultiplier =		    ProductStackMutiplierExosuitCargoAndShip;
			mbin.FreighterSubstanceStorageMultiplier =      StackMultiPlierFreighterAndContainerSurvival;
			mbin.FreighterProductStorageMultiplier =	    ProductStackMutiplierFreighterAndContainer;
			mbin.ShipSubstanceStorageMultiplier =           StackMultiPlierShipSurvival;
			mbin.ShipProductStorageMultiplier =             ProductStackMutiplierExosuitCargoAndShip;
			mbin.ChestSubstanceStorageMultiplier =          StackMultiPlierFreighterAndContainerSurvival;
			mbin.ChestProductStorageMultiplier =            ProductStackMutiplierFreighterAndContainer;
			mbin.BaseCapsuleSubstanceStorageMultiplier =    StackMultiPlierFreighterAndContainerSurvival;
			mbin.BaseCapsuleProductStorageMultiplier =      ProductStackMutiplierFreighterAndContainer;
			mbin.DefaultSubstanceStorageMultiplier =        StackMultiPlierExosuitInvetorySurvival;
			mbin.DefaultProductStorageMultiplier =          ProductStackMultiPlierExosuitInvetorySurvival;
			mbin.SubstanceMaxAmountLimit =                  SubstanceAndProcductStackSizeLimit;
			mbin.ProductMaxAmountLimit =                    SubstanceAndProcductStackSizeLimit;
			mbin.PlayerPersonalInventoryTechWidth =         TechWidthSurvival;
            mbin.PlayerPersonalInventoryTechHeight =        TechHeightSurvival;
			mbin.DeconstructRefundPercentage =				RefundSurvival;
		}

		protected void EditNormalOptions(string filepath)
		{
			int SubstanceAndProcductStackSizeLimit = 1000000; // (Original 9999)
			//NORMAL
			int SubstanceDefaultStackSizeNormal = 50000; // Stacksize of substances(Original 9999)
			int ProductDefaultStackSizeNormal = 50; // Stacksize of products you can craft or buy(Original 1)

			int StackMultiPlierExosuitAndShipNormal = 1;// 50000 and 50 after mutiplier
			int StackMultiPlierFreighterAndCargoNormal = 2; // 100000 and 100 after mutiplier
			float RefundNormal = 1; // Refund from base Deconstruct(Original 0.5).This will give you a 100 % refund
			
			// ExoSuit Tech Slot 8 x 4 = 32
			int TechWidthNormal = 8; // Tech slots increase(Original 7)
			int TechHeightNormal = 4; // Tech slots increase(Original 2)

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
