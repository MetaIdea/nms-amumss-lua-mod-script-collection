//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class CheapPetSlots : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcDebugOptions();
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcCostTable>("METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN");
			GcCostMoneyList petSlotCost = (GcCostMoneyList)mbin.SimpleInteractionTable.Find(ENTRY => ENTRY.Id == "C_PET_SLOT").Cost;
			petSlotCost.Costs[0] = 25;
			petSlotCost.Costs[1] = 50;
			petSlotCost.Costs[2] = 75;
			petSlotCost.Costs[3] = 100;
			petSlotCost.Costs[4] = 125;
			petSlotCost.Costs[5] = 150;
		}
	}
}

//=============================================================================
