--[[
for the latest mod updates, visit: https://github.com/SunnySummit/LasagnaBiomeGeneration2

feel free to make your own changes. in order to distribute (paks or lua scripts) you must:
    1. provide full credits in a readme file included with the archive.
    2. use open (GPLv3) licensing and/or open nexus mods permissions (include these 5 points in the readme/description page).
    3. you cannot sell or profit from this mod.
    4. you cannot distribute this mod for other games or media besides No Man's Sky.
    5. don't re-upload these lua scripts verbatim, instead, link to this repo (or create a fork).
	
thank.
--]]

--[[
Just crystals i.e. "E3" crystals
]]

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section below, modified by Lasagna (--*** = lasagna comments)----------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

--METADATA\SIMULATION\SOLARSYSTEM\BIOMES\*
--local RadiusMultiplier = 3				--objects draw distance multiplier (limited by engine's hard-limit)
--local LodDistanceMultiplierMisc = 2
--local CoverageMultiplier = 1			--object placement coverage multiplier (object density) --***needed to work

--------------------------------------------------------------------------------------------------------------------------------------------------
--Code originally by InsaneRuffles in section above, modified by Lasagna -------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


NMS_MOD_DEFINITION_CONTAINER = 
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "LASAGNA_LargeCrystals_v1.41.pak", 
["MOD_AUTHOR"]				= "goosetehmoose - with InsaneRuffles code",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = =JUST CRYSTALS (BIOMES 11) = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\BARREN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\DEAD.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FROZEN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FULL.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\LUSH.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\RADIOACTIVE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\SCORCHED.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\TOXIC.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
-------------------------------------------------------------------------------------------------------------------------------------------------
-- a. DESTROYEDBYSHIP/SCALE/ROTATION/COLLISION CHANGES ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DestroyedByPlayerShip",	"True"},
								{"MaxScale",	"15"}, --from ~1
								{"MaxScaleY",	"3"}, --from 1
								{"MaxAngle",	"180"}, --from ~40
								{"PatchEdgeScaling",	"0.75"}, --from 0
								{"MaxXZRotation",	"5"},
								{"CollideWithPlayer",	"True"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects"},
							--["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							--["VALUE_MATCH"] 		= "9999",
							--["VALUE_MATCH_OPTIONS"] = "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"MaxRegionRadius",				CoverageMultiplier},
								{"MaxImposterRadius",			30},
								--{"FadeOutStartDistance",		RadiusMultiplier},
								--{"FadeOutEndDistance",	RadiusMultiplier},--
								{"FadeOutOffsetDistance",		5}--
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects","LodDistances"},  	--if we wanted to replace only in a group, we would put a key_word here
							--["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",    --ALL means all the file since we have no PRECEDING_KEY_WORDS
							["LINE_OFFSET"] 		= "+1",     --one line down
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	0}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects","LodDistances"},
							--["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	40}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects","LodDistances"},
							--["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	120}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects","LodDistances"},
							--["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	300} 
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Objects","LodDistances"},
							--["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["LINE_OFFSET"] 		= "+5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LodDistances",	500}
							}
						},
						
--------------------------------------------------------------------------------------------------------------------------------------------------
-- ^^^ Code originally by InsaneRuffles in section above, modified by Lllasagna (*** = lasagna comment) ^^^ --------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

					}
				},	
				
            }
        },
    },
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE