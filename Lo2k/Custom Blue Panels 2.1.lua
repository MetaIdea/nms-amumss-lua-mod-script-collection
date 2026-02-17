NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Custom Blue Panels 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.22",
["MOD_DESCRIPTION"]			= "This mod make panel backgrounds blue",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "UI\POPUP_BUILD.MBIN",  -- 8 big icons popup when building item
												"UI\POPUP_BUILDMENUITEM.MBIN", -- build/transfer popup
												"UI\POPUP_BUYSELL.MBIN",
												"UI\POPUP_BUYSELLTECH.MBIN",
												"UI\POPUP_EMPTYSLOT.MBIN",
												"UI\POPUP_NEWTECHNOLOGY.MBIN",
												"UI\POPUP_TECHNOLOGY.MBIN",  -- new item (tech or non-tech) build preview popup
												"UI\COMPONENTS\TECH\HEROIMGSECTION.MBIN",	
												"UI\COMPONENTS\TECH\SUBSTANCEAMOUNTSECTION.MBIN",	
												"UI\COMPONENTS\TECH\TECHBUILDSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHCHARGESECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHINSTALLSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHSTATSSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHSTATSSECTIONSMALL.MBIN",
												"UI\COMPONENTS\TECH\TECHREFINERSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHREPAIRSECTION.MBIN",
												
												--"UI\POPUP_INVENTORY.MBIN",					
												--"UI\COMPONENTS\ACTIONBUTTON.MBIN",
												--"UI\COMPONENTS\EMPTYSLOTBUTTON.MBIN",
												--"UI\COMPONENTS\POPUPTAB.MBIN",
												--"UI\COMPONENTS\POPUPTABFRAME.MBIN",
												--"UI\COMPONENTS\POPUPTITLEWITHSUBTITLE.MBIN",
												--"UI\COMPONENTS\SUBSTANCEAMOUNT.MBIN",
												--"UI\COMPONENTS\SUBSTANCEAMOUNTBLANK.MBIN",
												--"UI\COMPONENTS\REQUIREMENTS.MBIN",							
												--"UI\COMPONENTS\TECH\TECHSTATBAR.MBIN",
												},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"A",	"0.850980401"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.00"},		-- Red tint - Original "0.00"	
								{"G",	"0.15"},		-- Green tint - Original "0.00"	
								{"B",	"0.23"},		-- Blue tint - Original "0.00"	
								{"A",	"0.88"},		-- Alpha/transparency - Original "0.85"									
							}
						},
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= {"UI\COMPONENTS\INTERACTIONTECHSHOP.MBIN",},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"A",	"0.501960814"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.00"},		-- Red tint - Original "0.768627465"	
								{"G",	"0.15"},		-- Green tint - Original "0.768627465"	
								{"B",	"0.23"},		-- Blue tint - Original "0.768627465"	
								{"A",	"0.85"},		-- Alpha/transparency - Original "0.501960814"											
							}
						},
					}
				}							
			}
		}
	}	
}