NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "EasierBarter",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "6.05.2",
["MOD_DESCRIPTION"]	= "Increases barter success chance",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VCT"]	= {
								{"BarterPriceMultiplier", "2"}, -- Multiplier for the price of the part that you want to buy. The percentage in game shows the progress towards this price. Original: 2.5
								{"BarterItemPreferenceFloor", "1"} -- Multiplier for the prices of the parts that are traded in. Original: 0.7
							},
						},
						{
							["PKW"] = "BarterAcceptanceCurve",
							["REPLACE_TYPE"] = "ALL",
							["VCT"]	= {
								{"Curve", "Linear"} -- Makes the result more predictable. Original: EaseInSine
								-- See https://easings.net/ for a list of easing functions. Check the "CurveEnum" in NMSMB for easing functions supported by NMS
							},
						},
					},
				},
			}
		}
	}	
}	