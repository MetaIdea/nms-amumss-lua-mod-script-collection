NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "cleanHUD_Y1.pak", 
["MOD_AUTHOR"]				= "hilightnotes",
["LUA_AUTHOR"]				= "Vasiliy",
["NMS_VERSION"]				= "3.75",
["MOD_DESCRIPTION"]			= "This mod is a part of CLEAN_HUD mod. Translated to LUA with no changes. Changes nights on Lava planets",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/UI/HUD/SCANNERICONS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","SkyColour","Colour.xml"}, -- name="SkyColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"0.98"},
							}
						},
						
{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","SkyUpperColour","Colour.xml"}, -- name="SkyUpperColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","SkySolarColour","Colour.xml"}, -- name="SkySolarColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","HorizonColour","Colour.xml"}, -- name="HorizonColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","FogColour","Colour.xml"}, -- name="FogColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","HeightFogColour","Colour.xml"}, -- name="HeightFogColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
												
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","LightColour","Colour.xml"}, -- name="LightColour" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","CloudColour1","Colour.xml"}, -- name="CloudColour1" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Lava","GcWeatherColourSettingList.xml","Settings","IGNORE","GcPlanetWeatherColourData","IGNORE","CloudColour2","Colour.xml"}, -- name="CloudColour2" value="Colour.xml TABLE.
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},
							}
						}
					}
				}
			}
		}
	}	
}