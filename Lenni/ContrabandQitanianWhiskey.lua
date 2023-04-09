NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "ContrabandQitanianWhiskey.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.08",
["MOD_DESCRIPTION"]			= "Adds Qitanian Whiskey as a contraband item",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "ILLEGAL_PROD8"},
							["SECTION_SAVE_TO"]		= "Qit_Whiskey",
						},
						{
							["SECTION_EDIT"]		= "Qit_Whiskey",
							["VALUE_CHANGE_TABLE"] = {
								{"ID", "QIT_WHISKEY"},
							}
						},

						{
							["PRECEDING_KEY_WORDS"]	= "Table",
							["SECTION_ADD_NAMED"]	= "Qit_Whiskey",
						},
							
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "QIT_WHISKEY"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Name",	"QITANIAN WHISKEY"},
								{"NameLower",	"Qitanian Whiskey"},
								{"R",	"0.996078431"},
								{"G",	"0.901960784"},
								{"B",	"0.003921569"},
								{"Consumable",	"True"},
								{"StackMultiplier",	"10"},
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "QIT_WHISKEY", "Subtitle","VariableSizeString.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"Traditional Qitanian Beverage"},
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "QIT_WHISKEY", "Description","VariableSizeString.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"Inebriant and sickly sweet, but non-addictive Fire Water brewed from &lt;TECHNOLOGY&gt;Star Bulb&lt;&gt; that was grown naturally and within eyeshot of The Qitanian Capital Base on Hemiti Q35, and &lt;FUEL&gt;Fireberry&lt;&gt;."}, --original: "FOOD_DRINK_DESC"
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "QIT_WHISKEY", "Icon","TkTextureResource.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Filename",	"QITANIANWHISKEY.DDS"},
							},
						},
					},
				},
					
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\CATALOGUEMATERIALS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"CategoryID", "UI_PORTAL_CAT_MAT_TRADE"},
							["PKW"]					= "NMSString0x10.xml",
							["SECTION_SAVE_TO"]		= "Catalogue",
						},
						{
							["SECTION_EDIT"]		= "Catalogue",
							["VALUE_CHANGE_TABLE"]	= {
								{"Value", "QIT_WHISKEY"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"CategoryID", "UI_PORTAL_CAT_MAT_TRADE"},
							["PKW"]					= "Items",
							["SECTION_ADD_NAMED"]	= "Catalogue",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]					= {"ID", "FOOD_J_HOT"},
							["SECTION_SAVE_TO"]		= "Consume",
						},
						{
							["SECTION_EDIT"]		= "Consume",
							["VALUE_CHANGE_TABLE"]	= {
								{"ID", "QIT_WHISKEY"},
							}
						},
						{
							["PKW"]					= "Table",
							["SECTION_ADD_NAMED"]	= "Consume",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PKW"]					= {"PirateStationExtraProds", "NMSString0x10.xml"},
							["SECTION_SAVE_TO"]		= "PirateProds",
						},
						{
							["SECTION_EDIT"]		= "PirateProds",
							["VALUE_CHANGE_TABLE"]	= {
								{"Value", "QIT_WHISKEY"},
							}
						},
						{
							["PKW"]					= "PirateStationExtraProds",
							["SECTION_ADD_NAMED"]	= "PirateProds",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\PIRATEMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]					= {"DefaultItems","GcDefaultMissionItemsTable.xml", "Product", "ILLEGAL_PROD8",},
							["REPLACE_TYPE"]		= "ALL",
							["SECTION_SAVE_TO"]		= "missionProds",
						},
						{
							["SECTION_EDIT"]		= "missionProds",
							["VALUE_CHANGE_TABLE"]	= {
								{"Product", "QIT_WHISKEY"},
							}
						},
						{
							["SKW"]					= {"DefaultItems","GcDefaultMissionItemsTable.xml", "Product", "ILLEGAL_PROD8",},
							["ADD_OPTION"]			= "ADDafterSECTION",
							["SECTION_ADD_NAMED"]	= "missionProds",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]					= {"Id", "SMUGGLELOOT"},
							["PKW"]					= "GcRewardTableItem.xml",
							["WIS"]					= {
								{"ID", "ILLEGAL_PROD8"}
							},
							["SECTION_SAVE_TO"]		= "reward1",
						},
						{
							["SKW"]					= {"Id", "R_PIRATEBOARD_A"},
							["PKW"]					= "GcRewardTableItem.xml",
							["WIS"]					= {
								{"ID", "ILLEGAL_PROD8"}
							},
							["SECTION_SAVE_TO"]		= "reward2",
						},
						{
							["SKW"]					= {"Id", "CRASHCONT_M", "Value", "ILLEGAL_PROD8"},
							["SECTION_SAVE_TO"]		= "reward3",
						},
						{
							["SECTION_EDIT"]		= "reward1",
							["VALUE_CHANGE_TABLE"]	= {
								{"ID", "QIT_WHISKEY"},
							}
						},
						{
							["SECTION_EDIT"]		= "reward2",
							["VALUE_CHANGE_TABLE"]	= {
								{"ID", "QIT_WHISKEY"},
							}
						},
						{
							["SECTION_EDIT"]		= "reward3",
							["VALUE_CHANGE_TABLE"]	= {
								{"Value", "QIT_WHISKEY"},
							}
						},
						{
							["SKW"]					= {"Id", "SMUGGLELOOT"},
							["PKW"]					= {"List", "List"},
							["SECTION_ADD_NAMED"]	= "reward1",
						},
						{
							["SKW"]					= {"Id", "R_PIRATEBOARD_A"},
							["PKW"]					= {"List", "List"},
							["SECTION_ADD_NAMED"]	= "reward2",
						},
						{
							["SKW"]					= {"Id", "CRASHCONT_M"},
							["PKW"]					= "ProductList",
							["WIS"]					= {
								{"Value", "ILLEGAL_PROD8"},
							},
							["SECTION_ADD_NAMED"]	= "reward3",
						},
					},
				},
					
			}
		}
	}	
}