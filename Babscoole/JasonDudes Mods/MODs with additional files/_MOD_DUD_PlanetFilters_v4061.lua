--Must get the TEXTURES folder from the orignal .pak and place into ModExtraFilesToInclude

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_MOD_DUD_PlanetFilters_v4061.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["FOREACH_SKW_GROUP"] = 
							{  
								{"Weird4", "GcScreenFilterData.xml"},  
								{"SepiaExtreme", "GcScreenFilterData.xml"},
							},  
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FadeDistance", "200"} 
							} 
						}, 							
						{
							["SPECIAL_KEY_WORDS"]  = { "Weird7", "GcScreenFilterData.xml"  },
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FadeDistance", "600"}
							}	
						},
						{
							["FOREACH_SKW_GROUP"] = 
							{  
								{"HueShiftA", "GcScreenFilterData.xml"},  
								{"HueShiftB", "GcScreenFilterData.xml"},
								{"HueShiftC", "GcScreenFilterData.xml"},  
								{"HueShiftD", "GcScreenFilterData.xml"},
							},  
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FadeDistance", "500"} 
							} 
						}, 	
						{
							["FOREACH_SKW_GROUP"] = 
							{  
								{"NMSRetroA", "GcScreenFilterData.xml"},  
								{"NMSRetroB", "GcScreenFilterData.xml"},
								{"NMSRetroC", "GcScreenFilterData.xml"},  
								{"NMSRetroD", "GcScreenFilterData.xml"},
								{"NMSRetroE", "GcScreenFilterData.xml"},  
								{"NMSRetroF", "GcScreenFilterData.xml"},
								{"NMSRetroG", "GcScreenFilterData.xml"},
							},  
							["VALUE_CHANGE_TABLE"] = 
							{
								{"FadeDistance", "300"} 
							} 
						}, 							
					}
				},
			}
		},
	}	
}