NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Broken & Overloaded Slots 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k & DarkScythe",
["NMS_VERSION"]				= "4.10",
["MOD_DESCRIPTION"]			= "This mods improves broken and overloaded icons",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHBROKENICON.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{	-- Remove old bubble red glow
							["SKW"] = {"Image", "/TEXTURES/UI/HUD/HAZARDEXCLAMATIONGLOW.DDS"},
							["REMOVE"] = "SECTION",  
						},
						{  -- new notification icon settings
							["SKW"] = {"Image", "/TEXTURES/UI/HUD/HAZARDEXCLAMATION.DDS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX", "46"}, --original 50
								{"Width", "80"},	 --original 100
								{"Height", "80"},	 --original 100   							
							}
						},
						{	
							["SKW"] = {"Image", "/TEXTURES/UI/HUD/HAZARDEXCLAMATION.DDS"},
							["LINE_OFFSET"] = 0,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Image",	"/TEXTURES/UI/HUD/HAZARDEXCLAMATION2.DDS"},	--Use new uncached notification icon
							}
						},      
					}
				}
			}
		}
	}	
}