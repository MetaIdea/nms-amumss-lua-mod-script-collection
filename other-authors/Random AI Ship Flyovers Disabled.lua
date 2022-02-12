NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"] 			= "_GPA_Random_AI_Ship_Flyovers_Disabled.pak", 
["MOD_AUTHOR"]				= "GhengopelALPHA",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]		= "",
["MODIFICATIONS"] 			= {
	{
		["MBIN_CHANGE_TABLE"] = 
		{
			{
				["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
				["EXML_CHANGE_TABLE"] = 
				{
					{
						["PRECEDING_KEY_WORDS"]  = {"FlybySpawns", "Count"},
						["VALUE_CHANGE_TABLE"] = 
						{
							{"x",	"0"}, --originally == 1
							{"y",	"0"},  --originally == 3. Setting the range x=0, y=1 will, for example, probably keep the event, which will happen at half-frequency, but with only one ship at a time
						},
					}
				}
			}
		}
	}
}

}