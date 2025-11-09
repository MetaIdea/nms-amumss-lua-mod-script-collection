Author = "Legandy"
ModName = "Enhanced First Person Camera"
ModDesc = "Enhances the first person camera"
ModVersion = "1.0a"
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
		-- FOV,Camera Transition Speeds (GCCAMERAGLOBALS.GLOBAL.MBIN)
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]  	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--On Foot -----------------
								{"FirstPersonFoV",	"140.0"},	    -- Base FOV when walking/running (Default: 75.0)
								--{"FirstPersonZoom1FoV", "40.0"}, 	-- Visor/Scanner Zoom Level 1 (Default: 40.0)
								--{"FirstPersonZoom2FoV", "15.0"}, 	-- Visor/Scanner Zoom Level 2 (Default: 15.0)
								--{"FirstPersonCamHeight", "0.85"}, 	-- Camera height (Default: 0.85)
								--{"FoVSpring", "0.08"}, 			-- General on-foot FOV transition speed (Default: 0.20)
								--{"FoVSpringSights", "0.01"}, 	    -- Zoom-in speed (makes aiming instantaneous) (Default: 0.05)
								--{"FoVSpringSightsPassive", "0.05"}, -- Passive zoom transition speed (Default: 0.12)
								--{"FoVAdjust", "1.0"}, 			    -- Global FOV Multiplier (Default: 1.0)
								
								-- Ship -----------------
								{"ShipFoVMin", "90.0"}, 	    -- Base ship FOV (Default: 75.0)
								{"ShipFoVMin2", "90.0"}, 	    -- Secondary base ship FOV (Default: 75.0)
								{"ShipFoVMax", "95.0"}, 	    -- Max ship FOV (used at high speed/boost) (Default: 90.0)
								--{"ShipWarpFoV", "70.0"}, 	    -- FOV during cinematic hyperdrive jump (Default: 70.0)
								{"ShipFoVBoost", "100.0"}, 	    -- FOV when ship boost is active (Default: 105.0)
								--{"ShipFoVMiniJump", "130.0"},   -- FOV during Pulse Engine travel (Default: 110.0)
								--{"ShipFoVSpring", "0.20"}, 		    -- Ship FOV transition speed (Default: 0.60)
								--{"ShipMiniJumpFoVSpring", "0.20"},  -- Pulse Engine FOV transition speed (Default: 0.60)

								--Exocraft (gets adjusted in many exocraft overhaul mods so its disabled by default)
								--{"VehicleFirstPersonFoV", "100.0"}, -- Exocraft/Vehicle FOV (Default: 95.0)

								--Freelock smoothing (doesn't get disabled in the game settings) -------------------------
								-- Ship no freelock smoothing (Credits: OasisRoot & Babscoole)
								{"ShipCamSpringStrengthMin", "0"},  -- No Freelock Smoothing (Default: 1.60)
                                {"ShipCamSpringStrengthMax", "0"}, 	-- No Freelock Smoothing (Default: 1.40)

								-- Mech no freelock smoothing (Credits: OasisRoot & Babscoole)
								{"MechCamSpringStrengthMin", "0"}, 	-- No Freelock Smoothing (Default: 0.60)
                                {"MechCamSpringStrengthMax", "0"}, 	-- No Freelock Smoothing (Default: 0.60)
								
								
							}
						}
					}
				}
			}
		},

		-- Multitool Position, Staff Position (GCGAMEPLAYGLOBALS.GLOBAL.MBIN) -----------------
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]  	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								

								--Mutitool (Tools) Position -----------------
								--{"GunOffsetX",		"0.0"},		-- Horizontal  (Default: 0.0)
								{"GunOffsetY",		"-0.08"},	 	-- Vertical  (Default: 0.0)
								{"GunOffsetZ",		"-0.08"},	 	-- Depth  (Default: 0.0)
								
								-- Multitool (Weapon) Position -----------------
								--{"GunOffsetAggressiveX", 	"0"},	 -- Horizontal (Default: 0.0)
								{"GunOffsetAggressiveY", "-0.08"},	 -- Vertical (Default: 0.05)
								{"GunOffsetAggressiveZ", "-0.08"},	 -- Depth (Default: 0.0)
								
								
								-- Rotational Limits (Prevents clipping when looking up/down) -----------------
								-- {"GunDownAngle", 		"20.0"},	-- Weapon Pitch Limit (Down)(Default: 20.0
								-- {"GunUpAngle", 			"10.0"},	-- Weapon Pitch Limit (Up)(Default: 10.0)
								-- {"BarrelOffset", 	"0.01"},		-- Muzzle/Projectile Origin (Default: 0.01)
								-- {"HitOffset", 		"0.3"},			-- Hit Detection Offset (Default: 0.3)


								-- Staff / Torch Position (Don't have one to test) -----------------

								--{"TorchOffsetX", 			"-0.5"},		-- Horizontal position of the main torch light (Default: -0.5)
								--{"TorchOffsetY", 			"-0.5"},		-- Vertical position of the main torch light (Default: -0.5)
								--{"TorchOffsetZMin", 		"-0.35"},		-- Minimum depth (Z) offset for the main torch light (Default: -0.5)
								--{"TorchOffsetZ", 			"-1.2"},		-- Depth (Z) offset for the main torch light (Default: -0.5)

								--{"TorchStaffOffsetY", 		"-0.2"},	-- Vertical offset for the Staff Multi-Tool torch (Default: -0.5)
								--{"TorchStaffOffsetZMin", 	"-2.0"},		-- Minimum depth (Z) offset for Staff torch (Default: -0.5)
								--{"TorchStaffOffsetZ", 		"-2.5"},	-- Depth (Z) offset for the Staff Multi-Tool torch (Default: -0.5)

								--{"TorchOffsetZSpeedRange", 	"7.0"},		-- Controls how far torch depth moves based on movement speed (Default: -0.5)
								--{"TorchOffsetZMinSpeed", 	"1.0"},			-- Minimum speed required to trigger the dynamic torch depth offset (Default: -0.5)
								--{"TorchHandOffsetX", 		"0.0"},			-- Horizontal position of the physical torch model (Default: 0.0)
								--{"TorchHandOffsetY", 		"0.0"},			-- Vertical position of the physical torch model (Default: 0.0)
								--{"TorchHandOffsetZ", 		"0.0"},			-- Depth position of the physical torch model (Default: 0.0)
							}
						}
					}
				}
			}
		}
	}	
}