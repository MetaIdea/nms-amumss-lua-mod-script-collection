Author = "Legandy"
ModName = "Enhanced Gunplay"
ModDesc = "Enhances gunplay"
ModVersion = "1.0_a"
GameVersion = "6.0"
-- ModLink = "https://www.nexusmods.com/nomanssky/mods/3901"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_AUTHOR"] = Author,
	["LUA_AUTHOR"] = Author,
	["MOD_FILENAME"] = ModName.."_"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDesc,
	["NMS_VERSION"] = GameVersion,
	["MODIFICATIONS"] =
	{
		------------------IMPORTANT: All values are not finalized by me (I gave up) but if someone wants to tweak them here you go. Share it with me if you found nice values. -------------------------------

		-- Head Bob, Camera Pitch (GCCAMERAGLOBALS.GLOBAL.MBIN)
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{

						-- On Foot Camera Shake
						-- A. SHOOTSHAKE -----------------------------------

						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "SHOOTSHAKE"}, 
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "DecayRate",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"StrengthScale", "500"}, -- Overall intensity multiplier (Default: 50.0)
								--{"ThirdPersonDamp", "1.0"}, --Third person effect damp (Default: 1.0)
								--{"VRStrength", "0"}, -- VR effect damp (Default: 0.0)
							}
							
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "SHOOTSHAKE"},
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Active", "True"},	
								{"ShakeStrength", "1"}, -- Strength of the initial screen displacement (Default: 0.0)
								--{"ShakeFrequency", "5"}, -- Frequency/Speed of the shake (Default: 5.0)
								{"VibrateStrength", "0.3"}, -- Strength of the sustained vibration (Default: 0.1)
								--{"VibrateFrequency", "15"}, -- Frequency of the sustained vibration (Default: 3.0)
							}
						},
						
						-- B. GUNSHAKE (The primary recoil kick) -----------------------------------------
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "GUNSHAKE"}, 
							["SECTION_UP"]				= 1, 
							["PRECEDING_KEY_WORDS"] = "TimeStart",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"TotalTime", "0.8"}, 	-- How long the shake lasts (Default: 0.4)
								{"StrengthScale", "500"}, -- Overall intensity multiplier  (Default: 50.0)
								--{"ThirdPersonDamp", "500"}, -- Overall intensity multiplier  (Default: 50.0)
								--{"ThirdPersonDamp", "1.0"}, --Third person effect damp (Default: 1.0)
								--{"VRStrength", "0"}, -- VR effect damp (Default: 0.0)
							}
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "GUNSHAKE"},
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Active", "True"},	
								{"ShakeStrength", "1"}, -- Strength of the initial screen displacement  (Default: 0.0)
								--{"ShakeFrequency", "3"}, -- Frequency/Speed of the shake (Default: 3.0)
								{"VibrateStrength", "0.3"}, -- Strength of the sustained vibration (Default: 0.1)
								--{"VibrateFrequency", "2"}, -- Frequency of the sustained vibration (Default: 2.0)
							}
						},
						
						--- C. LASERSHAKE (Mining/Beam Weapon Sustained Shake) ---------------------------
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "LASERSHAKE"}, 
							["SECTION_UP"]				= 1, 
							["PRECEDING_KEY_WORDS"] = "DecayRate",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"StrengthScale", "5000"}, -- Overall intensity multiplier (Default: 1000.0)
								--{"ThirdPersonDamp", "1.0"}, --Third person effect damp (Default: 1.0)
								--{"VRStrength", "0"}, -- VR effect damp (Default: 0.0)
							}
						},
						
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "LASERSHAKE"},
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Active", "True"},	
								{"ShakeStrength", "10"}, -- Strength of the initial screen displacement (Default: 1.0)
								--{"ShakeFrequency", "2000"}, -- Frequency/Speed of the shake (Default: 1000.0)
								{"VibrateStrength", "5"}, -- Strength of the sustained vibration (Default: 1.0)
								--{"VibrateFrequency", "25"}, -- Frequency of the sustained vibration (Default: 10.0)
							}
						},
						
						--- D. GRENADESHAKE (Explosive Launcher Shake) ----------------------------------
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "GRENADESHAKE"}, 
							["SECTION_UP"]				= 1, 
							["PRECEDING_KEY_WORDS"] = "TimeStart",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"TotalTime", "0.5"}, 	-- How long the shake lasts (Default: 0.5)
								{"DecayRate", "0.6"}, 	-- Rate at which the shake fades (Default: 1.0)
								{"StrengthScale", "1"}, -- Overall intensity multiplier (Default: 1.0)
								--{"ThirdPersonDamp", "1.0"}, --Third person effect damp (Default: 1.0)
								--{"VRStrength", "0"}, -- VR effect damp (Default: 0.0)
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "GRENADESHAKE"},
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Active", "True"},	
								{"ShakeStrength", "0.2"}, -- Strength of the initial screen displacement (Default: 0.02)
								--{"ShakeFrequency", "2"}, -- Frequency/Speed of the shake (Default: 5.0)
								{"VibrateStrength", "0.02"}, -- Strength of the sustained vibration (Default: 0.02)
								--{"VibrateFrequency", "5"}, -- Frequency of the sustained vibration (Default: 5.0)
							}
						},
						
						
						--- E. MELEE (Standard Melee Attack Shake) ---------------------------------------
						--[[
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "MELEE"}, 
							["SECTION_UP"]				= 1, 
							["PRECEDING_KEY_WORDS"] = "TimeStart",
							["VALUE_CHANGE_TABLE"]  =
							{
								--{"TotalTime", "0.5"}, 	-- How long the shake lasts (Default: 0.5)
								{"StrengthScale", "700"}, -- Overall intensity multiplier (Default: 400.0)
								--{"ThirdPersonDamp", "1.0"}, --Third person effect damp (Default: 1.0)
								--{"VRStrength", "0"}, -- VR effect damp (Default: 0.0)
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "MELEE"},
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Active", "True"},	
								{"ShakeStrength", "1"}, -- Strength of the initial screen displacement (Default: 1.0)
								{"ShakeFrequency", "1.4"}, -- Frequency/Speed of the shake (Default: 1.4)
								{"VibrateStrength", "0.03"}, -- Strength of the sustained vibration (Default: 0.03)
								{"VibrateFrequency", "8.2"}, -- Frequency of the sustained vibration (Default: 8.2)
							}
						},
						
						--- F. MELEE_HIT (Shake upon hitting a target) ------------------------------------
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "MELEE_HIT"}, 
							["SECTION_UP"]				= 1, 
							["PRECEDING_KEY_WORDS"] = "TimeStart",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"TotalTime", "0.3"}, 	-- How long the shake lasts (Default: 0.3)
								{"DecayRate", "1.7"}, 	-- Rate at which the shake fades (Default: 1.7)
								{"StrengthScale", "900"}, -- Overall intensity multiplier (Increased for powerful hit confirmation) (Default: 500.0)
								--{"ThirdPersonDamp", "1.0"}, --Third person effect damp (Default: 1.0)
								--{"VRStrength", "0"}, -- VR effect damp (Default: 0.0)
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name", "MELEE_HIT"},
							["SECTION_UP"]				= 1,
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Active", "True"},	
								{"ShakeStrength", "0.012"}, -- Strength of the initial screen displacement (Default: 0.012)
								{"ShakeFrequency", "1.4"}, -- Frequency/Speed of the shake (Default: 1.4)
								{"VibrateStrength", "0.03"}, -- Strength of the sustained vibration (Default: 0.03)
								{"VibrateFrequency", "8.2"}, -- Frequency of the sustained vibration (Default: 8.2)
							}
						},
						]]--
					}
				}
			}
		},

		
		-- Scope Zoom Adjustment, MOUSE INPUT (GCPLAYERGLOBALS.GLOBAL.MBIN) -----------------
		
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						
						{
							-- Scope Settings -----------------
							["PRECEDING_KEY_WORDS"] = "", 
							["VALUE_CHANGE_TABLE"]  =
							{
								{"WeaponZoomFOV", 				"0.1"}, 			-- Zoom multiplier. Lower value = more zoom (e.g., 0.2 is max zoom, 1.0 is no zoom). (Default: 0.7)
								--{"WeaponZoomVertRotation", 	"6"},	    			-- Vertical mouse sensitivity multiplier while zoomed (Higher = faster aim). (Default: 8.0)
								--{"WeaponZoomHorzRotation", 	"3"},	    			-- Horizontal mouse sensitivity multiplier while zoomed (Higher = faster aim). (Default: 2.0)
								--{"PassiveWeaponZoomFOV", 			"1.0"},  		-- FOV Multiplier for passive zoom states. (Default: 1.0)
								--{"WeaponZoomRecoilMultiplier", 			"2"} 	-- Multiplies weapon recoil when zooming. (Default: 2.0)
                                
							}
						},

						--[[
						-- No Mouse Smoothing (Can be set globally in game) -----------------
						{
							["PRECEDING_KEY_WORDS"] = "MouseSpringStrength",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"X",			"0.0"},  -- Remove horizontal spring/lag (Default: 0.03)
								{"Y",			"0.0"},	  -- Remove vertical spring/lag (Default: 0.09)
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MouseSpringStrengthMinDelta",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"X",			"0.0"},  -- Disable min delta threshold (Default: 0.8)
								{"Y",			"0.0"},	  -- Disable min delta threshold (Default: 1.5)
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MouseSpringStrengthMaxDelta",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"X",			"0.0"},  -- Disable max delta threshold (Default: 3.0)
								{"Y",			"0.0"},	  -- Disable max delta threshold (Default: 12.0)
							}
						},
						]]--
					
					}
				}
				
			} 
		}
		
	}	
}
