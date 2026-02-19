NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME = "Data Warps 1.3.pak", 
MOD_AUTHOR	 = "Lo2k",
LUA_AUTHOR	 = "Lo2k",
NMS_VERSION  = "6.22",
MOD_DESCRIPTION = "Data Warps",
MODIFICATIONS= 
	{
		{
			MBIN_CHANGE_TABLE = 
			{ 
				{
					MBIN_FILE_SOURCE = {"MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN",},
					MXML_CHANGE_TABLE = 
					{
						{
						--	PKW = "Children",  --remove warp screen aka debug mode
							SKW = {"Children","TkSceneNodeData",},
							SECTION_ACTIVE = {
							0, --AnimatedLights - unknown
							1, --joint1 - unknown
							2, --WarpCylinder1 - psychedelic fast full screen blue-green tunnel
							3, --Warpclouds - unknown
							--4, --WarpCylinder1_2 - mostly opaque background but bleeding lights
							--5, --scrollingwaveALT - swirling metallic green psychedelic effect
							--6, --scrollingwaveALT1 - swirling metallic green psychedelic effect
							--7, --scrollingwaveALT2 - metallic green psychedelic effect
							8, --gradientcloud - swirling washed out green-purple
							9, --gradientcloudsAlt - unknown
							10, --scrollingwaveBG5 - small purple clouds tunnel
							--11, -- EndGlowCaps - central white glow
							12, --LightArms - green-yellow smoke tunnel
							13, --LightStreaks - slow white stripes glow tunnel
							14, --LightStreaksSmall - symetric white streak
							15, --LightStreaks1 - slow white stripes glow tunnel
							16, --LightStreaksSmall1 - symetric white streak
							--17, --EndFade1 - central white cap
							18, --LightLargeStreaks - yellow-red-purple stripes tunnel
							--19, --FarLight - unknown
							},
							REMOVE = "SECTION",
						},
					}
				}, 
				{
					MBIN_FILE_SOURCE = {"MODELS/EFFECTS/WARP/WARPPORTAL\SCROLLINGWAVESALTG2MAT.MATERIAL.MBIN",
										"MODELS/EFFECTS/WARP/WARPPORTAL\SCROLLINGWAVESALTG3MAT.MATERIAL.MBIN",
										"MODELS/EFFECTS/WARP/WARPPORTAL\SCROLLINGWAVESALTGMAT.MATERIAL.MBIN",},
					MXML_CHANGE_TABLE = 
					{
						{
							VALUE_CHANGE_TABLE  = {  {"Map", "TEXTURES/EFFECTS/WARP/SCROLLINGWAVES3.DDS",} },
						},
					}
				},
			}
		}
	}
}  
