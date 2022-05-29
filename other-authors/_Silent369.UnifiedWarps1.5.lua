local modfilename = "_UnifiedWarps"
local lua_author  = "Silent"
local lua_version = "v1.5"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = "Unifies Blackhole/Portal/Ship/Teleporter Warps"

--MODIFIES:
--GCSIMULATIONGLOBALS.GLOBAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVESMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN

_falloff   = "linear"			--Original "quadratic"
_falloffrt = "2.500000"			--Original "2.000000"
_intensity = "000100.000000"	--Original "100000.000000"

_Multiplier = 0.5

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]		= modfilename..lua_version..".pak",
	["LUA_AUTHOR"]			= lua_author,
	["MOD_AUTHOR"]			= mod_author,
	["NMS_VERSION"]			= nms_version,
	["MOD_DESCRIPTION"]		= description,
	["MODIFICATIONS"]		=
	{
		{
			["MBIN_CHANGE_TABLE"]	=
			{
				{	--WARP TUNNEL EFFECT
					["MBIN_FILE_SOURCE"]	= {"MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"]	=
					{

						--|----------------------------------------------------------------------------------------
						--| Remove Unecessary Sections
						--|----------------------------------------------------------------------------------------
				
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "joint1"},
							["REMOVE"]				= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "scrollingwaveALT"},
							["REMOVE"]				= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "scrollingwaveALT1"},
							["REMOVE"]				= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "stars2"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "stars1"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gradientCloud"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gradientCloudAlt"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "LightArms"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "LightStreaks"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "LightStreaksSmall"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "LightStreaks1"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "LightStreaksSmall1"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "LightLargeStreaks"},
							["REMOVE"]				= "SECTION"
						},

						--|----------------------------------------------------------------------------------------
						--| Settings
						--|----------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "FALLOFF"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Value",			_falloff}, --Original "quadratic"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "FALLOFF_RATE"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Value",			_falloffrt}, --Original "2.000000"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "INTENSITY"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Value",			_intensity}, --Original "100000.000000"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "WarpCylinder1", "Transform", "TkTransformData.xml"},
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"ScaleX",		_Multiplier}, --Original "1"
								{"ScaleY",		_Multiplier}, --Original "1"
								{"ScaleZ",		_Multiplier}, --Original "1"
							}
						},
					},
				},

						--|----------------------------------------------------------------------------------------
						--| Change TUNNELMAT1 Image
						--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	= {
						"MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Class",			"Translucent"}, --Original "GlowTranslucent"
								{"TransparencyLayerID", 	 "10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Map",	"TEXTURES/EFFECTS/WARP/LINES.DDS"},
							}
						},
					}
				},

						--|----------------------------------------------------------------------------------------
						--| Change EngGLowCapMat Material
						--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	= {"MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN",},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Class",			"Translucent"}, --Original "Glow"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"MaterialFlag", "_F34_GLOW"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gCustomParams01Vec4"},
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"t",			 "0.03"}, --Original "0.04"
							}
						},
					}
				},

						--|----------------------------------------------------------------------------------------
						--| Create New Light Material
						--| Since the default LIGHT.MATERIAL.MBIN is used throughout the game in many places we
						--| need to create a new material, edit it and insert back in the scene for our purposes.
						--|----------------------------------------------------------------------------------------

				{	--Create the new Light Material
					["MBIN_FILE_SOURCE"] =
					{
						{
							"MATERIALS/LIGHT.MATERIAL.MBIN",
							"MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN",
							"REMOVE"
						}
					}
				},
				{	--Edit the new Light Material
					["MBIN_FILE_SOURCE"]	= {"MATERIALS\LIGHT_WARPTUNNEL.MATERIAL.MBIN",},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Class",			"Translucent"}, --Original "GlowTranslucent"
								{"TransparencyLayerID",	   "-100"}, --waaay back in the z order
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gHSVOverlay"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Anisotropy",		"0"},
							}
						},
					}
				},
				{	--Insert the new Light Material
					["MBIN_FILE_SOURCE"]	= {"MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN",},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"Type", "LIGHT", "Name", "MATERIAL"},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Value",		"MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},
							}
						},
					}
				},

						--|----------------------------------------------------------------------------------------
						--| Change Srolling Waves
						--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	=
					{
						"MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVESMAT.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Class",		"Translucent"}, --Original "GlowTranslucent"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"MaterialFlag", "_F34_GLOW"},
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gCustomParams01Vec4"},
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"t",			 "0.03"}, --Original "0.04"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gDiffuseMap"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Anisotropy",		"0"}, --Original "0"
							}
						},
					}
				},

						--|----------------------------------------------------------------------------------------
						--| Merge All Warp scenes into one
						--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	= {"GCSIMULATIONGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BlackHoleTunnelFile",		"MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"
								{"TeleportTunnelFile",		"MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"
								{"PortalTunnelFile",		"MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN""
								{"PortalStoryTunnelFile",	"MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN"
							}
						}
					}
				},
			}
		},
	}
}