NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_MOD_DUD_GraphicFX_v3911.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"LUTDistanceFlightMultiplier",				"1"}, -- Original "0"
								{"SunLightIntensity",				"4.9"}, -- Original "3"
								{"DOFFarStrengthWater",				"0.6"}, -- Original "0"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"GraphicsDetailPresetPS4Pro","TkGraphicsDetailPreset.xml",},												
							["VALUE_CHANGE_TABLE"] = 
							{
								{"UIQuality",	"_4K"}, -- Original Normal
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"GraphicsDetailPresetPS4ProVR","TkGraphicsDetailPreset.xml",},													
							["VALUE_CHANGE_TABLE"] = 
							{
								{"UIQuality",	"_4K"}, -- Original Normal
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"GraphicsDetailPresetXB1X","TkGraphicsDetailPreset.xml",},							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"UIQuality",	"_4K"}, -- Original Normal
							}
						},						
					}
				},
			}
		},
	}	
}