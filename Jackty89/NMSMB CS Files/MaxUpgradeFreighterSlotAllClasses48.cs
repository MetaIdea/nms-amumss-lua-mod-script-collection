//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class MaxUpgradeFreighterSlotAllClasses48 : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			FreighterInventoryEdit();
		}

		//...........................................................

		protected void FreighterInventoryEdit()
		{
			var mbin = ExtractMbin<GcInventoryTable>("METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN");
			for(int i = 0; i < 4; i++)
            {
				mbin.ShipInventoryMaxUpgradeSize[(int)GcSpaceshipClasses.ShipClassEnum.Freighter].MaxInventoryCapacity[i] = 48;
				mbin.ShipInventoryMaxUpgradeSize[(int)GcSpaceshipClasses.ShipClassEnum.Freighter].MaxTechInventoryCapacity[i] = 48;
			}
		}
	}
}

//=============================================================================
