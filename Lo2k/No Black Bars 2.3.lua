NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "No Black Bars 2.3.pak", 
["MOD_AUTHOR"]= "Lo2k (script by MrFisse)",
["NMS_VERSION"]  = "3.63",
["MOD_DESCRIPTION"] = "No cutscene black bars",
["MODIFICATIONS"]= 
	{
		{
			--["PAK_FILE_SOURCE"] = "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"UI/COMPONENTS/INTERACTION/CINEMATICBARS.MBIN", "UI/HUD/HUDBARS.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {{"IsHidden", "True"}},
						},
					}
				},
			}
		}
	}
}