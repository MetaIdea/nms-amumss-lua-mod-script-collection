NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "OpaquePanels.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "Removes transparency from info panels",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
												"UI\POPUP_BUILD.MBIN",
												"UI\POPUP_BUILDMENUITEM.MBIN",
												"UI\POPUP_BUYSELL.MBIN",
												"UI\POPUP_BUYSELLTECH.MBIN",
												"UI\POPUP_INVENTORY.MBIN",
												"UI\POPUP_NEWTECHNOLOGY.MBIN",
												"UI\POPUP_TECHNOLOGY.MBIN",
												},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"A",	"1"},
							}
						},
					}
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= {
												"UI\COMPONENTS\TECH\SUBSTANCEAMOUNTSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHCHARGESECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHSTATSSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHREPAIRSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHREFINERSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHINSTALLSECTION.MBIN",
												"UI\COMPONENTS\TECH\TECHBUILDSECTION.MBIN",
--												"UI\COMPONENTS\TECH\SWITCH_TECHSTATSSECTION.MBIN",
--												"UI\COMPONENTS\TECH\SWITCH_TECHINSTALLSECTION.MBIN",
												"UI\COMPONENTS\TECH\HEROIMGSECTION.MBIN",
--												"UI\COMPONENTS\SUBSTANCEVALUESECTION.MBIN",
--												"UI\COMPONENTS\POPUPTAB.MBIN",
--												"UI\COMPONENTS\POPUPTABFRAME.MBIN",
											},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"Style", "TkNGuiGraphicStyle.xml"},
							["SECTION_ACTIVE"]		= 1,
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"A",	"1"},
							}
						},
					}
				},
			}
		}
	}	
}