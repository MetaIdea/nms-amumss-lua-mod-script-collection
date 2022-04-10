//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class SlotMaster : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			ImproveShipAndWeaponInventory();
			ImprovePlayerInventory();
		}

		//...........................................................

		protected void ImproveShipAndWeaponInventory()
		{
			var mbin = ExtractMbin<GcInventoryTable>("METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN");
			
			foreach(var inventoryType in mbin.ShipInventoryMaxUpgradeSize)
            {
				for (int i = 0; i < 4; i++)
				{
					inventoryType.MaxInventoryCapacity[i] = 48;
					inventoryType.MaxTechInventoryCapacity[i] = 48;
				}
			}
			
			for(int i = 0; i < 4; i++ )
            {
				mbin.WeaponInventoryMaxUpgradeSize.MaxInventoryCapacity[i] = 48;
			}
		}

		protected void ImprovePlayerInventory()
		{
			string[] paths = new string[] { "METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCESURVIVAL.MBIN", "METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN"};
			foreach(var path in paths)
            {
				var mbin = ExtractMbin<GcInventoryStoreBalance>(path); 
				mbin.PlayerPersonalInventoryTechWidth = 8;
				mbin.PlayerPersonalInventoryTechHeight = 6;

			}
			
		}
	}
}

//=============================================================================
