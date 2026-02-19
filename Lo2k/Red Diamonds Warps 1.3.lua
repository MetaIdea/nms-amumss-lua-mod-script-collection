NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME = "Red Diamonds Warps 1.3.pak", 
MOD_AUTHOR	 = "Lo2k",
LUA_AUTHOR	 = "Lo2k",
NMS_VERSION  = "6.22",
MOD_DESCRIPTION = "Red Diamonds Warps",
MODIFICATIONS= 
	{
		{
			MBIN_CHANGE_TABLE = 
			{ 
				{
					MBIN_FILE_SOURCE = {"MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN",},
					MXML_CHANGE_TABLE = 
					{
						{
						--	PKW = "Children",  --remove warp screen aka debug mode
							SKW = {"Children","TkSceneNodeData",},
							SECTION_ACTIVE = {
							0, --AnimatedLights - 
							1, --Joint1 - 
							--2, --WarpCylinder1
							--3, --scrollingwaveALT -- slow red streaks
							4, --scrollingwave9  --big white swirling energy beams
							--5, --scrollingwaveALT1 -- very slow little red streaks
							6, --scrollingwave -- slow white streaks
							7, --stars2
							8, --stars1
							9, --stars  --symetric stars
							10, --gradientclouds - 
							11, --gradientcloudsalt - 
							--12, --EndGlowCaps
							13, --LightArms
							--14, --EndFade
							15, --LightStreaks
							16, --LightStreaksSmall
							17, --LightStreaks1
							18, --LightStreaksSmall1
							19, --LightLargeStreaks
							},
							REMOVE = "SECTION",
						},
					}
				},
				{
					MBIN_FILE_SOURCE = {"MODELS/EFFECTS/WARP/WARPTUNNEL\SCROLLINGWAVES2MAT.MATERIAL.MBIN",
										"MODELS/EFFECTS/WARP/WARPTUNNEL\SCROLLINGWAVESALTMAT.MATERIAL.MBIN",},
					MXML_CHANGE_TABLE = 
					{
						{
							VALUE_CHANGE_TABLE  = {  {"Map", "TEXTURES/EFFECTS/WARP/SCROLLINGWAVES2.DDS",} },
						},
					}
				},
			}
		}
	}
}  
-- 5+6 : white diamonds, too static
-- 3+6 : white diamonds, with variations

-- 3+5 : black diamonds
-- 4+5 : black diamonds+white beams, interesting

-- 3+5+6 : good
-- 4+6 : blinding
-- 4+5+6 : blinding
