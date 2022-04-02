//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class UninstallCoreWeapons : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcTechnologyTable();
		}

		//...........................................................

		protected void GcTechnologyTable()
		{
			var Mbin = ExtractMbin<GcTechnologyTable>("METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN");
			Mbin.Table.Find(PRODUCT => PRODUCT.ID == "SHIPGUN1").Core = false;
			Mbin.Table.Find(PRODUCT => PRODUCT.ID == "LASER").Core = false;
		}
	}
}

//=============================================================================
