NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "QitanianWhiskey.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.88",
["MOD_DESCRIPTION"]			= "Turns Fire Water into Qitanian Whiskey",
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
							["SPECIAL_KEY_WORDS"]	= {"Id", "FOOD_J_HOT"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Name",	"QITANIAN WHISKEY"},  --original: "FOOD_J_HOT_NAME"
								{"NameLower",	"Qitanian Whiskey"},  --original: "FOOD_J_HOT_NAME_L"
								{"R",	"0.996078431"},  --original: "0.858823538"
								{"G",	"0.901960784"},  --original: "0.141176477"
								{"B",	"0.003921569"},  --original: "0"
								
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FOOD_J_HOT", "Subtitle","VariableSizeString.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"Traditional Qitanian Beverage"},	--original: "FOOD_COOKED_SUB"
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FOOD_J_HOT", "Description","VariableSizeString.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	"Inebriant and sickly sweet, but non-addictive Fire Water brewed from &lt;TECHNOLOGY&gt;Star Bulb&lt;&gt; that was grown naturally and within eyeshot of The Qitanian Capital Base on Hemiti Q35, and &lt;FUEL&gt;Fireberry&lt;&gt;."}, --original: "FOOD_DRINK_DESC"
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FOOD_J_HOT", "Icon","TkTextureResource.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Filename",	"QITANIANWHISKEY.DDS"},	--original: "TEXTURES/UI/FRONTEND/ICONS/COOKINGPRODUCTS/PRODUCT.SAUCE.DDS"
							},
						},
					},
				},
			}
		}
	}	
}