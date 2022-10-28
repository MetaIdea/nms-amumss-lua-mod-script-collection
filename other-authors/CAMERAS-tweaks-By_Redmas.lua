SMALL_SPACESHIPS_MIN_DIST = 2
SMALL_SPACESHIPS_MAX_DIST = 40
SMALL_SPACESHIPS_UP_MIN_DIST = 1
SMALL_SPACESHIPS_UP_MAX_DIST = 5
-----------------------------------------
LONG_SPACESHIPS_MIN_DIST = 5
LONG_SPACESHIPS_MAX_DIST = 60
LONG_SPACESHIPS_UP_MIN_DIST = 2
LONG_SPACESHIPS_UP_MAX_DIST = 10
-------------------------------------------
--------------------------------------------
SMALL_SPACESHIPS_MIN_DIST = tostring(SMALL_SPACESHIPS_MIN_DIST)
SMALL_SPACESHIPS_MAX_DIST = tostring(SMALL_SPACESHIPS_MAX_DIST)
SMALL_SPACESHIPS_UP_MIN_DIST = tostring(SMALL_SPACESHIPS_UP_MIN_DIST)
SMALL_SPACESHIPS_UP_MAX_DIST = tostring(SMALL_SPACESHIPS_UP_MAX_DIST)
-----------------------------------------
LONG_SPACESHIPS_MIN_DIST = tostring(LONG_SPACESHIPS_MIN_DIST)
LONG_SPACESHIPS_MAX_DIST = tostring(LONG_SPACESHIPS_MAX_DIST)
LONG_SPACESHIPS_UP_MIN_DIST = tostring(LONG_SPACESHIPS_UP_MIN_DIST)
LONG_SPACESHIPS_UP_MAX_DIST = tostring(LONG_SPACESHIPS_UP_MAX_DIST)
---------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "_CAMERAS-tweaks_By_Redmas.pak",
["MOD_DESCRIPTION"] = "Overhaul of all the cameras",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Redmas",
["NMS_VERSION"]     = "3.99",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CHARJETPACK",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "3.5"},
								{"BackMaxDistance", "17.2"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ROCKETBOOTS",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "8.5"},
								{"BackMaxDistance", "12"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ROCKETBOOTSCHRG",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "2.5"},
								{"BackMaxDistance", "3.5"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CHARSPACE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "2"},
								{"BackMaxDistance", "2"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GRABBED",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BackMinDistance", "1.5"},
								{"BackMaxDistance", "1.5"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BUGGY",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{		
								{"BackMinDistance", "3"},
								{"BackMaxDistance", "5"},
								{"UpMinDistance", "0"},
								{"UpMaxDistance", "1"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","HOVERCRAFT",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{		
								{"OffsetY", "3.8"},
								{"OffsetYAlt", "5"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{		
								{"OffsetY", "3.8"},
								{"OffsetZFlat", "-2.5"},
								{"BackMinDistance", "8"},
								{"BackMaxDistance", "18.7"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"BikeFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{		
								{"OffsetY", "0.5"},
								{"OffsetYAlt", "0.5"},
								{"BackMinDistance", "5"},
								{"BackMaxDistance", "15"},
								{"UpMinDistance", "0"},
								{"UpMaxDistance", "0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WheeledBikeFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{		
								{"OffsetY", "0.9"},
								{"OffsetYAlt", "2"},
								{"BackMinDistance", "5"},
								{"BackMaxDistance", "13"},
								--{"UpMinDistance", "0"}, -- to activate when/if vanilla is different
								--{"UpMaxDistance", "0"} -- to activate when/if vanilla is different
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TruckFollowCam","GcCameraFollowSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{		
								{"OffsetY", "3.8"},
								--{"OffsetYAlt", "5"},-- to activate when/if vanilla is different
								{"BackMinDistance", "5"},
								{"BackMaxDistance", "13"},
								{"UpMinDistance", "0"}, -- to activate when/if vanilla is different
								{"UpMaxDistance", "0"} -- to activate when/if vanilla is different
							}
						},
						--- Spaceships
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SPACESHIP",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", LONG_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", LONG_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", LONG_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", LONG_SPACESHIPS_UP_MAX_DIST}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DROPSHIP",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", LONG_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", LONG_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", LONG_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", LONG_SPACESHIPS_UP_MAX_DIST}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SHUTTLE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", SMALL_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", SMALL_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", SMALL_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", SMALL_SPACESHIPS_UP_MAX_DIST}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ROYAL",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", SMALL_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", SMALL_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", SMALL_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", SMALL_SPACESHIPS_UP_MAX_DIST}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SAILSHIP",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", LONG_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", LONG_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", LONG_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", LONG_SPACESHIPS_UP_MAX_DIST}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SCIENCE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", SMALL_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", SMALL_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", SMALL_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", SMALL_SPACESHIPS_UP_MAX_DIST}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ALIENSHIP",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LookStickLimitAngle", "115"},
								{"BackMinDistance", SMALL_SPACESHIPS_MIN_DIST},
								{"BackMaxDistance", SMALL_SPACESHIPS_MAX_DIST},
								{"UpMinDistance", SMALL_SPACESHIPS_UP_MIN_DIST},
								{"UpMaxDistance", SMALL_SPACESHIPS_UP_MAX_DIST}
							}
						},
						--- Warp 
						{
							["SPECIAL_KEY_WORDS"] = {"WarpSettings","GcCameraWarpSettings.xml",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"FocusPointDist", "99999999"},
								{"OffsetZStartBias", "100"}
							}
						},
						-- FOV
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"FirstPersonFoV", "85"},
								{"ThirdPersonFoV", "100"},
								{"ShipFoVMiniJump", "125"}
							}
						},
						--- NO SHAKE 
						--[[{
							["PRECEDING_KEY_WORDS"] = "CameraShakeTable",
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = {1,2},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"TotalTime", "0.001"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIGPAINSHAKE",},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"TotalTime", "1"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MEDIUMRUMBLE",},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"TotalTime", "5"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SANDWORMEMERGE",},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"TotalTime", "0.5"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WORMGRNDEMERGE",},
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"TotalTime", "2.5"}
							}
						},						
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"BobAmount", "0.006"}
							}
						}
						]]--

					}
				}
			}
		}
	}	
}