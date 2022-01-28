NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "cleanHUD_3V.pak", 
["MOD_AUTHOR"]				= "hilightnotes",
["LUA_AUTHOR"]				= "Vasiliy",
["NMS_VERSION"]				= "3.75",
["MOD_DESCRIPTION"]			= "This mod is a part of CLEAN_HUD mod. Removes icons. Same as 3c with even less number of icons",
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
							["SPECIAL_KEY_WORDS"] = {"FreighterBase","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- some icon?
							}
						},
						
						{							
							["SPECIAL_KEY_WORDS"] = {"Vehicle","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- Vehicle icon
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"PlayerFreighter","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- Freighter icon, NEW
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"PlayerBase","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- Base icon
							}
						},
						
						{	
							-- [""PRECEDING_KEY_WORDS"] = {"ScannableIcons"}, -- Надо разобраться как работает и указать				
							["SPECIAL_KEY_WORDS"] = {"BuriedTech","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.DIG.DDS"}, -- Burried tech icon
							}
						},
						
						{	
							-- [""PRECEDING_KEY_WORDS"] = {"ScannableIcons"}, -- Надо разобраться как работает и указать	
							["SPECIAL_KEY_WORDS"] = {"FreighterDataPad","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.DIG.DDS"}, -- ???
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"CreatureDiscovered","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- CreatureDiscovered icon
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"CreatureUndiscovered","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- CreatureUndiscovered icon
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"CreatureUnknown","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- CreatureUnknown icon
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"EditingBase","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- EditingBase icon, NEW
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"BaseBuildingMarker","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- PROBABLY Other Player Base icon, NEW
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"PlayerSettlement","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- PlayerSettlement icon, NEW
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"OtherPlayerSettlement","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/HUD/DRONEDIRECTION.DDS"}, -- Other PlayerSettlement icon, NEW
							}
						},
						
						{	
							["SPECIAL_KEY_WORDS"] = {"SettlementNPC","GcScannerIcon.xml","Main","TkTextureResource.xml"},
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	""}, -- Settlement NPC thought icons, NEW
							}
						}
							
						
					}
				}
			}
		}
	}	
}