Author = "REDMAS"
LUAAuthor = "REDMAS"
ModName = "___REDMAS_Atmospheric_Stationary_Freighter"
--ModNameSub = ""
BaseDescription = "Mod idea by Flowwy. -> make player's freighters hovering inside atmosphere. this mod is not visible in multiplayer without the mod"
GameVersion = "5.03"
--ModVersion = "1.02"

----------------------------------------------------------------

Freighters_lowering_value = 1900

-- 3500 to make freighters touch the ground
-- 3000 recommended lower height for venator freighter ( recommanded by Flowwy )
-- 2600 recommanded lower height for sentinel frieghter ( recommanded by Flowwy )
-- 2500 is mid atmosphere
-- 1900 recommended lower height for pirate freighter ( recommanded by Flowwy )
-- 1500 to put freighters on high atmosphere

---------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName.." for NMS "..GameVersion..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["LUA_AUTHOR"] 	= LUAAuthor,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"]    = 
	{
        {
            ["MBIN_CHANGE_TABLE"] = 
			{
                {
					-- Clouds fixing ( in order to make them not being seen inside the freighters hangars,
					-- we lower the clouds skybox
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SECTION_ACTIVE"] = {0,1,2},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"CloudHeightMin", "500"},
								{"CloudHeightMax", "500"},
								{"Large", "500"},
								{"Medium", "500"},
								{"Small", "500"},
								{"Moon", "500"},
							}
						},                    
					}
				},
				--
				-- we lower player freighters			
				{
					
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\FREIGHTER_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Hull_B"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},  
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Hull_A"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},						
					}
				},
				{
					
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\CAPITALFREIGHTER_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Hull_A3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},  
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MaintenanceSlot1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},						
					}
				},
				--- update for post NMS ORBITAL versions ( comment this part is you created the mod for an anterior to Orbital version of NMS
				
								--- update for post NMS ORBITAL versions ( comment this part is you created the mod for an anterior to Orbital version of NMS
				{
					
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\PIRATECRUISER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "dffewqf1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},  
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "dffewqf1_2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "dffewqf1_3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LODpirateCruiserData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PirateCruiserData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "TRAIL2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "EngineMeshVFXRef2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},						
					}
				},
				
				--
				{
					
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\PIRATEFREIGHTER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CAMFOCUS_HULL"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},  
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CAMFOCUS_ENGINE"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MainBody"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ArchStructure2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ArchStructure3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopAerials"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopSurface"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PipeVols"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower10"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower11"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GunTower12"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "BridgeBase"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "BridgeLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "BridgeLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "BridgeLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "BridgeLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStripLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStripLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStripLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStripLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip2LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip2LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip2LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip2LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},

{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},

{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6ALOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6ALOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6ALOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6ALOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},

{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6BLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6BLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6BLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6BLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},


{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6CLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6CLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6CLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name", "GlowStrip6CLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},

{
							["SPECIAL_KEY_WORDS"] = {"Name", "ArchStructure1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ArchStructure1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ArchStructure1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ArchStructure1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BoosterHousing"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "DivSecHull"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "DivSecInt"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "IntBars"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "DivSecGirder"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FrontLaunchHangar"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetailsLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetailsLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetailsLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetailsLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails2LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails2LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails2LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails2LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails4LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails4LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails4LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails4LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails5LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails5LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails5LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails5LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails6LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails6LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails6LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails6LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetailsLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetailsLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetailsLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetailsLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails2LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails2LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails2LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails2LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails4LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails4LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails4LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails4LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails5LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails5LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails5LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails5LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails6LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails6LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails6LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails6LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "FinBase4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "FinBase3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FinBase2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FinBase1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets2LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets2LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets2LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets2LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAereets3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets2LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets2LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets2LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets2LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RAereets3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FrontAerials"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ForwardStruct"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdGirder"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},					

						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetailsLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetailsLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetailsLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetailsLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails1LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails1LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails1LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails1LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails2LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails2LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails2LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails2LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails3LOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails3LOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails3LOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails3LOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PipesLOD0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PipesLOD1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PipesLOD2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PipesLOD3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_PirateFreighter_"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ShieldData"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						

						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetailsLOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails1LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails2LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails3LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails4LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails5LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RSideDetails6LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
												{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetailsLOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails1LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails2LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails3LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails4LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails5LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LSideDetails6LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetailsLOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails1LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails2LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FwdSmallDetails3LOD4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCH0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCH1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCH2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCH3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCH4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCH5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TrenchEntranceR"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TrenchEntranceL"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopLight7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
				
				{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RedLight9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateFreighterAtmosVFX"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
							{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateElectricalArcsVFX9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateFreighterTrenchMistVFX"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFPirateFreighterTrenchMistVFX1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFShieldGenerator10"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF10"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF11"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SmallTurretREF12"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TrenchesREF"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},

						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF10"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TopDeflectorREF11"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF9"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "PFAerialREF10"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
						
						
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster0"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster4"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster5"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster6"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster7"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "REFGreebleCluster8"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RefThruster"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RefThruster1"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RefThruster2"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RefThruster3"},
							["SECTION_ACTIVE"] = {0},
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", Freighters_lowering_value},
							}
						},
						
					}
				},
			}
		}
	}
}