NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Small Panels 3.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.40",
["MOD_DESCRIPTION"]			= "This mod reduces the size of most game panels",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUILD.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","37"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"30"},		-- Original "37"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","635"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"508"},		-- Original "635"   
								{"Height",	"460"},		-- Original "523"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TABBG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"0"},		-- Original "317.5"   
								{"Width",	"508"},		-- Original "100"   
								{"WidthPercentage",	"False"},		-- Original "True"   
								{"Height",	"69"},		-- Original "85"   
								{"Horizontal",	"Left"},		-- Original "Center"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","INV",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"185"},		-- Original "190"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","610",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"488"},		-- Original "610"
								{"Height",	"260"},		-- Original "280"   								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CATAGORY",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"70"},		-- Original "100"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionY","488.00998",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"425"},		-- Original "488.00998"								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUILDMENUITEM.MBIN",  
					["EXML_CHANGE_TABLE"] 	= 
					{
						{  --main window and main description width  
							["SPECIAL_KEY_WORDS"] = {"Width","650"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},  
							}
						},
						{  -- Action Key reminder buttons
							["SPECIAL_KEY_WORDS"] = {"Height",	"79"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"60"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionX","20"},
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"0"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUYSELL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","24"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"20"},		-- Original "24"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","594"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "594"   
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUYSELLTECH.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","31"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"26"},		-- Original "31"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","24"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"20"},		-- Original "24"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"20"},		-- Original "30"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","29"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"20"},		-- Original "29"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","650"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"   
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_EMPTYSLOT.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Width","580"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "580"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","BUTTON2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"162"},		-- Original "158"   
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_INVENTORY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"MarginX",	"5"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MarginX",	"4"},		-- Original "5"   
								{"MarginY",	"4"},		-- Original "5"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"112"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"90"},		-- Original "112"   
								{"Height",	"105"},		-- Original "131"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","610"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"488"},		-- Original "610"   
								{"Height",	"260"},		-- Original "280"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionY","71.799995"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"52"},		-- Original "71.799995"   
								{"Width",	"88"},		-- Original "106.4"   
								{"Height",	"105"},		-- Original "124.45"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionY","212.59999"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"192"},		-- Original "212.59999"   
								{"Width",	"88"},		-- Original "106.4"   
								{"Height",	"105"},		-- Original "124.45"   
							}
						},
					}
				},  
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_NEWTECHNOLOGY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"650"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"   
							}
						},
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_TECHNOLOGY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","28"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"22"},		-- Original "28"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","24"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"20"},		-- Original "24"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight","31"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"25"},		-- Original "31"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","29"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "29"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"     
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingY","10"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingY",	"8"},		-- Original "10"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingY","15"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingY",	"12"},		-- Original "15"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"1000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"850"},		-- Original "1000"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"650"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"24"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"20"},		-- Original "24"   
								{"Height",	"20"},		-- Original "24"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"79"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"60"},		-- Original "79"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","BUTTON"},
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"0"},		-- Original "20"   
							}
						},
					}
				},
				--COMPONENTS
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\ACTIONBUTTON.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PositionY",	"6"},
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"0"},		-- Original "6"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"6"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"0"},		-- Original "6"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"20"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"10"},		-- Original "20"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"33"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"23"},		-- Original "33"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"80"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"424"},		-- Original "80"   
								{"Height",	"60"},		-- Original "73"  
								{"WidthPercentage",	"False"},		-- Original "True"   
								{"Vertical",	"Middle"},		-- Original "Top"   
								{"Horizontal",	"Right"},		-- Original "Left"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"0"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"12"},		-- Original "0"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"20"},
							["REPLACE_TYPE"]    = "ALL",  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"16"},		-- Original "0"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BUTTON"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"15"},		-- Original "20"   
								{"Height",	"60"},		-- Original "79"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"23"},		-- Original "33"  
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\EMPTYSLOTBUTTON.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"440"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"424"},		-- Original "440"   
							}
						},
					}
				},		
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\POPUPTAB.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"TABICON"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"60"},		-- Original "84.07"
								{"WidthPercentage",	"False"},		-- Original "True" 
								{"Height",	"60"},		-- Original "83.10"
								{"HeightPercentage",	"False"},		-- Original "True"   								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"128"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"104"},		-- Original "128"   
								{"Height",	"104"},		-- Original "128"   
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\POPUPTABFRAME.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"TABBG"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"0"},		-- Original "317.5"
								{"Height",	"69"},		-- Original "85"
								{"Horizontal",	"Left"},		-- Original "Center"   								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"86"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"69"},		-- Original "86"
								{"Height",	"69"},		-- Original "86"						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"TAB"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"100"},		-- Original "99.99"
								{"Height",	"100"},		-- Original "98.85"						
							}
						},
					}
				},		
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\POPUPTITLEWITHSUBTITLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ -- ITEM TOP BAR WIDTH
							["SPECIAL_KEY_WORDS"] = {"Width",	"650"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"					
							}
						},
						{  -- ITEM AMOUNT at the right of TOP BAR
							["SPECIAL_KEY_WORDS"] = {"PositionX",	"642"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"512"},		-- Original "642"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"SUBTITLE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"-120"},		-- Original "-244"					
							}
						},
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\SUBSTANCEAMOUNT.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BAR"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"416"},		-- Original "528"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"24"},		-- Original "30"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"32"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"26"},		-- Original "32"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"320"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"246"},		-- Original "320"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"AMOUNT"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"208"},		-- Original "246"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionY",	"14"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"18"},		-- Original "14"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"ICON"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"24"},		-- Original "32"					
							}
						},
					}
				},	
{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\SUBSTANCEAMOUNTBLANK.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BAR"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"416"},		-- Original "528"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"24"},		-- Original "30"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"NO_TICK"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"246"},		-- Original "320"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"AMOUNT"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",	"18"},		-- Original "14"		
								{"Width",	"208"},		-- Original "282"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"WITH_TICK"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"True"},		-- Original "False"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"ICON"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"24"},		-- Original "32"					
							}
						},
					}
				},	
				--COMPONENTS\TECH
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\SUBSTANCEAMOUNTSECTION.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MarginY",	"18"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MarginY",	"14"},		-- Original "18"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MarginY",	"6"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MarginY",	"5"},		-- Original "18"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"19"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"16"},		-- Original "19"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"20"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"18"},		-- Original "20"					
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"22"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"18"},		-- Original "22"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"24"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"18"},		-- Original "24"					
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"26"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"20"},		-- Original "26"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"24"},		-- Original "30"					
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"34"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"27"},		-- Original "34"					
							}
						},
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHCHARGESECTION.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"CHARGE"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"167"},		-- Original "297"			
								{"PositionY",	"52"},		-- Original "64"	
								{"Height",	"84"},		-- Original "144"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionX",	"-7"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"-5"},		-- Original "-7"			
								{"Width",	"52"},		-- Original "64"	
								{"Height",	"52"},		-- Original "64"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"CHARGE_ICON"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"40"},		-- Original "43"			
								{"Width",	"52"},		-- Original "64"	
								{"Height",	"52"},		-- Original "64"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BAR"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"Width",	"428"},		-- Original "544"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionX",	"534"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"428"},		-- Original "534"			
								{"PositionY",	"39"},		-- Original "50"	
								{"Width",	"388"},		-- Original "88"	
								{"WidthPercentage",	"False"},		-- Original "True"										
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PositionX",	"81.9853"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"77"},		-- Original "81.9853"			
								{"PositionY",	"88"},		-- Original "100"								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHSTATBAR.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"STAT1"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"236"},		-- Original "290"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"50"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"40"},		-- Original "50"
								{"Height",	"40"},		-- Original "50"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BAR"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"175"},		-- Original "240"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"NAME"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"170"},		-- Original "225"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"10"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"0"},		-- Original "10"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BONUS"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",	"60"},		-- Original "60.000004"
								{"Width",	"120"},		-- Original "225"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"571"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"450"},		-- Original "571"											
							}
						},
						--[[{
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"16"},		-- Original "0"	or 22										
							}
						}, ]]--
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHSTATSSECTION.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"STATS"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"144"},		-- Original "202"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"180"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"144"},		-- Original "180"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FontHeight",	"30"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FontHeight",	"24"},		-- Original "30"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"290"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"200"},		-- Original "290"									
							}
						},
					}
				},					
			}
		}
	}	
}