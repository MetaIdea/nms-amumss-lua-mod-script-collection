NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Broken & Overloaded Slots 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k & DarkScythe",
["NMS_VERSION"]				= "6.22",
["MOD_DESCRIPTION"]			= "This mods improves broken and overloaded icons",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHBROKENICON.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{  -- new notification icon settings
							["SKW"] = {"Image", "/TEXTURES/UI/HUD/HAZARDEXCLAMATION.DDS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Position X", "46"}, --original 50
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
						{	-- Remove old bubble red glow
							["SKW"] = {"Image", "/TEXTURES/UI/HUD/HAZARDEXCLAMATIONGLOW.DDS"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",  --WARNING : AMUMSS doesn't remove the section properly
						},						
					}
				}
			}
		}
	}	
}