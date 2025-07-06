NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Small Panels 4.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k & Basbcoole",
["NMS_VERSION"]				= "5.73",
["MOD_DESCRIPTION"]			= "This mod reduces the size of most game panels",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUILD.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","37.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"30.000000"},		-- Original "37"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","635.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"508.000000"},		-- Original "635"   
								{"Height",	"460.000000"},		-- Original "523"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TABBG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"0.000000"},		-- Original "317.5"   
								{"Width",	"508"},		-- Original "100"   
								{"Width Percentage",	"False"},		-- Original "True"   
								{"Height",	"69"},		-- Original "85"   
								{"Horizontal",	"Left"},		-- Original "Center"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","INV",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"185"},		-- Original "190"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","610.000000",},
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
								{"Position Y",	"70"},		-- Original "100"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Position Y","488.009979",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"425"},		-- Original "488.009979"								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUILDMENUITEM.MBIN",  
					["MXML_CHANGE_TABLE"] 	= 
					{
						{  --main window and main description width  
							["SPECIAL_KEY_WORDS"] = {"Width","650.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},  
							}
						},
						{  -- Action Key reminder buttons
							["SPECIAL_KEY_WORDS"] = {"Height",	"79.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"60"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Position X","20.000000"},
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"0"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUYSELL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","24.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"20"},		-- Original "24"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","594.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "594"   
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_BUYSELLTECH.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","31.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"26"},		-- Original "31"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","24.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"20"},		-- Original "24"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"20"},		-- Original "30"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","29.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"20"},		-- Original "29"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","650.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"   
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_EMPTYSLOT.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Width","580.000000"},
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
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"MarginX",	"5.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MarginX",	"4"},		-- Original "5"   
								{"MarginY",	"4"},		-- Original "5"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"112.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"90"},		-- Original "112"   
								{"Height",	"105"},		-- Original "131"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width","610.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"488"},		-- Original "610"   
								{"Height",	"260"},		-- Original "280"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Position Y","71.7999954"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"52"},		-- Original "71.799995"   
								{"Width",	"88"},		-- Original "106.4"   
								{"Height",	"105"},		-- Original "124.45"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Position Y","212.599991"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"192"},		-- Original "212.59999"   
								{"Width",	"88"},		-- Original "106.4"   
								{"Height",	"105"},		-- Original "124.45"   
							}
						},
					}
				},  
				{
					["MBIN_FILE_SOURCE"] 	= "UI\POPUP_NEWTECHNOLOGY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"650.000000"},
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
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","28.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"22"},		-- Original "28"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","24.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"20"},		-- Original "24"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height","31.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"25"},		-- Original "31"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","29.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "29"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX","30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"     
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingY","10.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingY",	"8"},		-- Original "10"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingY","15.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingY",	"12"},		-- Original "15"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"1000.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"850"},		-- Original "1000"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"650.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"24.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"20"},		-- Original "24"   
								{"Height",	"20"},		-- Original "24"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"79.000000"},
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
								{"Position X",	"0"},		-- Original "20"   
							}
						},
					}
				},
				--COMPONENTS
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\ACTIONBUTTON.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Position Y",	"6.000000"},
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"0"},		-- Original "6"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"6.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"0"},		-- Original "6"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"20.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"10"},		-- Original "20"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"33.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"23"},		-- Original "33"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"80.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"424"},		-- Original "80"   
								{"Height",	"60"},		-- Original "73"  
								{"Width Percentage",	"False"},		-- Original "True"   
								{"Vertical",	"Middle"},		-- Original "Top"   
								{"Horizontal",	"Right"},		-- Original "Left"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"0.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"12"},		-- Original "0"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"20.000000"},
							["REPLACE_TYPE"]    = "ALL",  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"16"},		-- Original "0"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"BUTTON"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"15"},		-- Original "20"   
								{"Height",	"60"},		-- Original "79"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"DESCRIPTION"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"23"},		-- Original "33"  
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\EMPTYSLOTBUTTON.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"440.000000"},
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
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"TABICON"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"60"},		-- Original "84.07"
								{"Width Percentage",	"False"},		-- Original "True" 
								{"Height",	"60"},		-- Original "83.10"
								{"Height Percentage",	"False"},		-- Original "True"   								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"128.000000"},
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
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"TABBG"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"0"},		-- Original "317.5"
								{"Height",	"69"},		-- Original "85"
								{"Horizontal",	"Left"},		-- Original "Center"   								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"86.000000"},
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
					["MXML_CHANGE_TABLE"] 	= 
					{
						{ -- ITEM TOP BAR WIDTH
							["SPECIAL_KEY_WORDS"] = {"Width",	"650.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Width",	"520"},		-- Original "650"					
							}
						},
						{  -- ITEM AMOUNT at the right of TOP BAR
							["SPECIAL_KEY_WORDS"] = {"Position X",	"642.000000"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"512"},		-- Original "642"					
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
					["MXML_CHANGE_TABLE"] 	= 
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
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"24"},		-- Original "30"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"32.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"26"},		-- Original "32"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"320.000000"},
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
							["SPECIAL_KEY_WORDS"] = {"Position Y",	"14.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position Y",	"18"},		-- Original "14"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"ICON"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"24"},		-- Original "32"					
							}
						},
					}
				},	
{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\SUBSTANCEAMOUNTBLANK.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
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
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"24"},		-- Original "30"					
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
								{"Position Y",	"18"},		-- Original "14"		
								{"Width",	"208"},		-- Original "282"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"WITH_TICK"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Is Hidden",	"True"},		-- Original "False"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"ICON"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"24"},		-- Original "32"					
							}
						},
					}
				},	
				--COMPONENTS\TECH
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\SUBSTANCEAMOUNTSECTION.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MarginY",	"18.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MarginY",	"14"},		-- Original "18"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MarginY",	"6.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MarginY",	"5"},		-- Original "18"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"19.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"16"},		-- Original "19"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"20.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"18"},		-- Original "20"					
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"22.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"18"},		-- Original "22"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"24.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"18"},		-- Original "24"					
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"26.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"20"},		-- Original "26"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"24"},		-- Original "30"					
							}
						},
												{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"34.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"27"},		-- Original "34"					
							}
						},
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHCHARGESECTION.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"CHARGE"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"167"},		-- Original "297"			
								{"Position Y",	"52"},		-- Original "64"	
								{"Height",	"84"},		-- Original "144"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Position X",	"%-7.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"-5"},		-- Original "-7"			
								{"Width",	"52"},		-- Original "64"	
								{"Height",	"52"},		-- Original "64"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"CHARGE_ICON"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"40"},		-- Original "43"			
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
							["SPECIAL_KEY_WORDS"] = {"Position X",	"534.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"428"},		-- Original "534"			
								{"Position Y",	"39"},		-- Original "50"	
								{"Width",	"388"},		-- Original "88"	
								{"Width Percentage",	"False"},		-- Original "True"										
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Position X",	"81.985300"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X",	"77"},		-- Original "81.9853"			
								{"Position Y",	"88"},		-- Original "100"								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHSTATBAR.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
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
							["SPECIAL_KEY_WORDS"] = {"Width",	"50.000000"},
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
							["SPECIAL_KEY_WORDS"] = {"Width",	"10.000000"},
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
								{"Position X",	"60"},		-- Original "60.000004"
								{"Width",	"120"},		-- Original "225"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"571.000000"},
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
								{"Font Height",	"16"},		-- Original "0"	or 22										
							}
						}, ]]--
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHSTATSSECTION.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID",	"STATS_SMALL"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"144"},		-- Original "202"											
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PaddingX",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PaddingX",	"24"},		-- Original "30"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Height",	"160.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Height",	"144"},		-- Original "180"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Font Height",	"30.000000"},
							["REPLACE_TYPE"]    = "ALL", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Font Height",	"24"},		-- Original "30"									
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Width",	"290.000000"},
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