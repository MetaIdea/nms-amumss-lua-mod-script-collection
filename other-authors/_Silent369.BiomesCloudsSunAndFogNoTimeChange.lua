local modfilename = "_BiomesSunCloudsAndFog"
local lua_author  = "Silent"
local lua_version = "1.4"
local mod_author  = "Silent369"
local nms_version = "3.8"
local description = "Realtime (NMS time) Day Length (Optional), Better Detailed Clouds, Slower Cloud Animation, Sun Properties and Planet Fog Adjustments. LOD Adjustments, Optional Lens Dirt Removal."

--modifies the following:
--GCGRAPHICSGLOBALS.GLOBAL.MBIN
--GCENVIRONMENTGLOBALS.GLOBAL.MBIN
--GCSKYGLOBALS.GLOBALS.MBIN

--TIME RATIOS
--30Mn =  1800
--01Hr =  3600
--03Hr = 10800
--06Hr = 21600
--12Hr = 43200
--24Hr = 86400

_Day_Length 			= 1800 --Original "1800"

--CLOUD ANIM SPEED
_Anim_Scale 			= 13   --Original "50" wtf!

----------------------------------------------------------------------------------------------------
--------------------------- SHOULD LEAVE THESE VALUES ALONE - PROBABLY!  ---------------------------
----------------------------------------------------------------------------------------------------

--SUN BRIGHTNESS
_LUTDFMult				= 1    --Original "0"
_Intensity  			= 2.6  --Original "3"
_BlendTime				= 3    --Original "5"
_RayDensity				= 1    --Original "1"
_Brightness 			= 0    --Original "0"
_Contrast   			= 0.6  --Original "1"
_HueVariance 			= 1.04 --Original "1.04"
_Saturation 			= 0.63 --Original "1"
_VSaturation		    = 0.04 --Original "0.05"
_SSunFactor 			= 19.7 --Original "20"
_SMieFactor				= 0.4  --Original "0.3"
_MaxSpaceFogStrength    = 0.3  --Original "0.5"
_ReflectionStrength		= 0.1  --Original "0.3"
_WeatherBloomGain		= 3.1  --Original "7.1"
_WeatherFilterSTCTime 	= 8    --Original "10"
_DOFFarStrengthWater	= 0.5  --Original "0"

--STORM SETTINGS            
_StormWarningTime 		= 25   --Original "25"
_StormTransitionTime 	= 20   --Original "25"
_MaxCloudCover 			= 0.89 --Original "0.8"
_MaxStormCloudCover 	= 0.95 --Original "0.8"
_CloudCoverSmoothTime 	= 15   --Original "10"
_CloudRatioSmoothTime   = 10   --Original "4"
_StormCloudSmoothTime	= 15   --Original "0.8"

--Storm Settings
_MinStormLengthLow		= 100  --Original "120"
_MaxStormLengthLow		= 120  --Original "180"
_MinStormLengthHigh		= 120  --Original "150"
_MaxStormLengthHigh		= 160  --Original "320"
_ExtremeAudioLevel		= 0.25 --Original "0.3"
_StormAudioLevel		= 0.4  --Original "0.5"

--CLOUD RATIO
_CloudRatio				= 1.19 --Original "0.5-0.6"
_CloudRatioPrime		= 1.29 --Original "0.5-0.6"

--CLOUD SETTINGS
_LightScalar			= 4	   --Original "5"
_AmbientScalar			= 1.52 --Original "1.721854"
_Density				= 1    --Original "1"
_AmbientDensity			= 0.1  --Original "0.1"
_BaseScale				= 1    --Original "1"
_SampleScalar			= 2    --Original "5"
_SampleThreshold		= 0.22 --Original "0.25"
_CloudBottomFade		= 0.95 --Original "1"
_DetailScale			= 12   --Original "6"
_ErosionEdgeSize		= 0.6  --Original "0.5"
_CloudDistortion		= 75   --Original "50"
_CloudDistortionScale	= 2    --Original "1"
_MaxIterations			= 256  --Original "128"

--Horizon
_HorizonFadeStartAlpha  = -0.3 --Original "0"
_HorizonFadeScalar		= 0.2  --Original "0.25"
_HorizonDistance		= 23165 --Original "11165"

--Cloud Heights
_CloudHeightMin			= 750  --Original "650"
_CloudHeightMax			= 950  --Original "900"
_SkyAtmosphereHeight	= 6200 --Original "6000"
_StratosphereHeight		= 4200 --Original "4000"

_CloudHeightMinP		= 1450 --Original "1500"
_CloudHeightMaxP		= 1500 --Original "1500"
_SkyAtmosphereHeightP	= 7300 --Original "7200"
_StratosphereHeightP	= 5300 --Original "5200"

--Curve types that make sense with cloud animations
--Linear
--SmoothInOut
--Logarithmic
--SmootherStep
--EaseInOutSine
--EaseInOutQuad
--EaseInOutQuart
--EaseInOutQuint
--EaseInOutExpo
--EaseInOutCirc
--EaseInOutBack

_Curve					= "EaseInOutSine" --Original "Linear"

--Height Fog Height
_HeightFogHeightMin		= -2   --Original "100"
_WaterAlphaHeightMin	= 2    --Original "40"

--Planet Fog
_PPF_FogStrength		= 0.05 --Original "0.04"
_PPF_FogMax				= 0.8  --Original "1"
_PPF_FogColourStrength	= 0.8  --Original "10"
_PPF_HeightFogStrength	= 0.04 --Original "0.08"
_PPF_HeightFogFOStrength = 0.01 --Original "0.25"
_PPF_HeightFogMax		= 0.4  --Original "0.8"
_PPF_FogHeight			= 4  --Original "128"

--Planet Flight Fog
_PFF_FogStrength		= 0.05 --Original "0.04"
_PFF_FogMax				= 0.8  --Original "1"
_PFF_FogColourStrength	= 0.8  --Original "10"
_PFF_HeightFogStrength	= 0.04 --Original "0.08"
_PFF_HeightFogFOStrength = 0.01 --Original "0.25"
_PFF_HeightFogMax		= 0.4  --Original "0.8"
_PFF_FogHeight			= 4    --Original "128"

--Planet Extreme Fog
_PXF_FogStrength		= 0.04  --Original "0.5"
_PXF_FogMax				= 0.8  --Original "0.9"
_PXF_FogColourStrength	= 0.8  --Original "6"
_PXF_HeightFogStrength	= 0.04 --Original "0.3"
_PXF_HeightFogFOStrength = 0.01 --Original "0.1"
_PXF_HeightFogMax		= 0.4  --Original "0.6"
_PXF_FogHeight			= 4    --Original "8"

--Planet Storm Fog
_PSF_FogStrength		= 0.75 --Original "1.5"
_PSF_FogMax				= 0.8  --Original "0.95"
_PSF_FogColourStrength	= 1.5  --Original "2.5"
_PSF_HeightFogStrength	= 0.4  --Original "0.5"
_PSF_HeightFogFOStrength = 0.2  --Original "0.3"
_PSF_HeightFogMax		= 0.4  --Original "0.6"
_PSF_FogHeight			= 4    --Original "4"

--SUN CLAMP
_SunClmHMin				= 300  --Original "300"
_SunClmHMax				= 390  --Original "390"
_SunClampAngle			= 90   --Original "55"
_SunFactorMin			= 0.35 --Original "0.4"

--SUN POSITION
_sun_position_x			= -77.25284 --Original "-77.25284"
_sun_position_y			= 61.62304  --Original "61.62304"
_sun_position_z			= -21.84243 --Original "-21.84243"

--HEAVYAIR
_ThickNess				= 0.5  --Original "1"
_Speed					= 0.5  --Original "1"
_Alpha1					= 0.4  --Original "1"
_Alpha2					= 0.4  --Original "1"

--STAR CHANCE
_BinaryStarChance  		= 0.1  --Original "0.2"
_TernaryStarChance 		= 0.01 --Original "0.05"

--Original
--  <Property name="SpacePlanetFogStrength">
--    <Property value="5" />
--    <Property value="5" />
--    <Property value="5" />
--    <Property value="5" />
--  </Property>

_SpacePlanetFogStrength =
[[
	<Property name="SpacePlanetFogStrength">
      <Property value="5" />
      <Property value="5" />
      <Property value="6" />
      <Property value="7" />
	</Property>
]]

--Original
--      <Property name="LODAdjust">
--        <Property value="1" />
--        <Property value="1" />
--        <Property value="1" />
--        <Property value="1" />
--        <Property value="1" />
--      </Property>

_LODAdjust =
[[
      <Property name="LODAdjust">
        <Property value="2" />
        <Property value="2.5" />
        <Property value="3" />
        <Property value="3.5" />
        <Property value="4" />
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 			= modfilename..lua_version..".pak",
	["LUA_AUTHOR"]				= lua_author,
	["MOD_AUTHOR"]				= mod_author,
	["NMS_VERSION"]				= nms_version,
	["MOD_DESCRIPTION"]			= description,
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
					{
						----------------------------------------------------------------------------
						--SUN LIGHT SETTINGS
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EnableVariableUpdate", 		    "False"}, --Original "True"
								{"LUTDistanceFlightMultiplier",  _LUTDFMult}, --Original "0"
								{"SunLightIntensity",  		    _Intensity }, --Original "3"
								{"SunLightBlendTime",  		     _BlendTime}, --Original "5"
								{"SunRayDensity",      		    _RayDensity}, --Original "1"
								{"Brightness",		   		    _Brightness}, --Original "0"
								{"Contrast",		   		      _Contrast}, --Original "1"
								{"HueVariance", 	   		   _HueVariance}, --Original "1.04"
								{"Saturation",		   		    _Saturation}, --Original "1"
								{"SaturationVariance", 		   _VSaturation}, --Original "0.05"
								{"SpaceSunFactor",	   		    _SSunFactor}, --Original "20"
								{"SpaceMieFactor",	   		    _SMieFactor}, --Original "0.3"
								{"MaxSpaceFogStrength",_MaxSpaceFogStrength}, --Original "0.5"
								{"ReflectionStrength",  _ReflectionStrength}, --Original "0.3"
								{"WeatherBloomGain",	  _WeatherBloomGain}, --Original "7.1"
								{"DOFFarStrengthWater",_DOFFarStrengthWater}, --Original "0"
								{"DOFFarPlaneInteraction", 			  "500"}, --Original "0.2"
								{"DOFFarFadeDistanceInteraction", 	 "1000"}, --Original "2"
				
								{"MaxParticleRenderRange", 			  "150"}, --Original "75"
								{"MaxParticleRenderRangeSpace",	    "20000"}, --Original "10000"
				
								{"Redo_SkyIntensity", 					"3"}, --Original "1"
								{"Redo_BounceIntensity", 			  "0.8"}, --Original "1"
								{"New_BounceLightPower", 				"1"}, --Original "4"
								{"New_BounceLightIntensity", 		  "0.5"}, --Original "1"
								{"New_SkyLightPower", 					"1"}, --Original "2"
								{"New_SideRimWarp", 					"0"}, --Original "0.85"
								{"New_SideRimColourMixer", 			 "0.25"}, --Original "0.5"
								{"New_TopRimWarp", 						"0"}, --Original "1"
								{"New_TopRimColourMixer", 				"0"}, --Original "1"
								{"New_TopRimPower", 					"0"}, --Original "30"
								{"New_TopRimIntensity", 			  "0.1"}, --Original "0.3"
								{"Old_SideRimWarp", 					"0"}, --Original "0.5"
								{"Old_TopRimWarp", 						"0"}, --Original "1"
								{"Old_TopRimPower", 					"0"}, --Original "30"
								{"ModelRendererLightIntensity", 		"3"}, --Original "4"
				
								{"ShadowLength", 			 		  "800"}, --Original "400"
				
								{"HBAOBias", 				 		  "0.2"}, --Original "0.1"
								{"HBAORadius", 				 		    "5"}, --Original "2"
								{"HBAOIntensity", 			 		  "1.0"}, --Original "5"
				
								--WARP
								{"WarpK", 							"-0.55"}, --Original "-0.35"
								{"WarpKCube", 						 "0.35"}, --Original "0.2"
								{"WarpScale", 						  "0.8"}, --Original "1.08"
								{"WarpKDispersion", 				 "0.25"}, --Original "0.025"
				
								--LENS DIRT--		                  
								--{"LensScale",		       	 		    "0"}, --Original "0.3"
								--{"LensDirt",			     		    "0"}, --Original "0.3"
								--{"LensScaleCave",		     		    "0"}, --Original "4"
								--{"LensDirtCave",		     		    "0"}, --Original "0.4"
				
								--LOD Adjustments
								{"ForceUncachedTerrain", 			 "True"}, --Original "False"
							}
						},
						----------------------------------------------------------------------------
						--LIGHT SHAFT PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"]	= {"LightShaftProperties",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"LightShaftScattering",   "2E-06"}, --Original "0.55"
								{"LightShaftStrength",		 "0.4"}, --Original "2"
								{"LightShaftBottom",	   "0.002"}, --Original "0"
								{"LightShaftTop",			 "0.1"}, --Original "0.75"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"LightShaftProperties", "LightShaftColourBottom",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"R",   				     "0.1"}, --Original "0.263"
								{"G",		                 "0.1"}, --Original "0.263"
								{"B",	   				    "0.13"}, --Original "0.263"
								{"A",			 			 "0.5"}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"LightShaftProperties", "LightShaftColourTop",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"R",   				     "0.1"}, --Original "0.387"
								{"G",		                 "0.1"}, --Original "0.341"
								{"B",	   				    "0.13"}, --Original "0.253"
								{"A",			 			 "0.5"}, --Original "1"
							}
						},
						----------------------------------------------------------------------------
						--STORM LIGHT SHAFT PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"]	= {"StormLightShaftProperties",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"LightShaftScattering",   "4E-06"}, --Original "0.55"
								{"LightShaftStrength",		 "0.4"}, --Original "25"
								{"LightShaftBottom",	   "0.002"}, --Original "0"
								{"LightShaftTop",			 "0.1"}, --Original "0.25"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"StormLightShaftProperties", "LightShaftColourBottom",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"R",   				     "0.1"}, --Original "0.531"
								{"G",		                 "0.1"}, --Original "0.493"
								{"B",	   				    "0.13"}, --Original "0.443"
								{"A",			 			 "0.5"}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"StormLightShaftProperties", "LightShaftColourTop",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"R",   				     "0.1"}, --Original "0.04"
								{"G",		                 "0.1"}, --Original "0.034"
								{"B",	   				    "0.13"}, --Original "0.03"
								{"A",			 			 "0.5"}, --Original "1"
							}
						},
						----------------------------------------------------------------------------
						--WIND DIRECTION
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"]	= {"WindDir1",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"x",						 "0.3"}, --Original "1"
								{"y",						 "0.3"}, --Original "0.5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"WindDir2",},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"x",		 				 "0.3"}, --Original "1"
								{"y",						 "0.3"}, --Original "-0.75"
							}
						},
					}
				},
				----------------------------------------------------------------------------
				--GC ENVIRONMENT GLOBALS
				----------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"]   = { "GCENVIRONMENTGLOBALS.GLOBAL.MBIN" },
					["EXML_CHANGE_TABLE"]  =
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"IndoorsLightingTransitionTime", 		  "3.2"}, --Original "1.2"
								{"HeightFogHeightMin", 		_HeightFogHeightMin}, --Original "100"
								{"WaterAlphaHeightMin",    _WaterAlphaHeightMin}, --Original "40"
								{"SunClampHeightMin",  				_SunClmHMin}, --Original "300"
								{"SunClampHeightMax", 	    		_SunClmHMax}, --Original "390"
								{"SunFactorMin",				  _SunFactorMin}, --Original "0.4"
								{"InteractionRadius",				  	 "0.05"}, --Original "0.15"

								--LOD Changes
								{"TerrainFadeTime",						  "0.5"}, --Original "2"
								{"TerrainFadeTimeInShip",			        "1"}, --Original "2"
								{"CreatureFadeTime",					  "0.7"}, --Original "1.5"
								{"FloraFadeTime",						  "0.3"}, --Original "0.6"
								{"FloraFadeTimeMax",					  "1.1"}, --Original "2.25"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODSettings", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "LODAdjust"},
							["REMOVE"] 				= "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LODSettings", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml"},
							["LINE_OFFSET"]			= "+0",
							["ADD"]					= _LODAdjust,
						},
						----------------------------------------------------------------------------
						--ENVIRONMENT PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "EnvironmentProperties",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"CloudHeightMin", 		       _CloudHeightMin}, --Original "650"
								{"CloudHeightMax", 		       _CloudHeightMax}, --Original "900"
								{"SkyAtmosphereHeight",   _SkyAtmosphereHeight}, --Original "6000"
								{"StratosphereHeight", 	   _StratosphereHeight}, --Original "4000"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "EnvironmentPrimeProperties",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"CloudHeightMin", 		      _CloudHeightMinP}, --Original "1500"
								{"CloudHeightMax", 		      _CloudHeightMaxP}, --Original "1500"
								{"SkyAtmosphereHeight",  _SkyAtmosphereHeightP}, --Original "7200"
								{"StratosphereHeight", 	  _StratosphereHeightP}, --Original "5200"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SpacePlanetFogStrength",
							["REPLACE_TYPE"]		= "ALL",
							["REMOVE"] 				= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MinWaterReflections", "0.2"},
							["LINE_OFFSET"]		  = "+0",
							["ADD"] 			  = _SpacePlanetFogStrength,
						},
						----------------------------------------------------------------------------
						--PRIMARY CLOUD PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "CloudProperties",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"LightScalar",    	  	   	     	_LightScalar}, --Original "5"
								{"AmbientScalar",    	  	   	  _AmbientScalar}, --Original "1.721854"
								{"AnimationScale",    	  	   	     _Anim_Scale}, --Original "50"
								{"Density", 		     	 	  	    _Density}, --Original "1"
								{"AmbientDensity",	  	   	     _AmbientDensity}, --Original "0.1"
								{"BaseScale",						  _BaseScale}, --Original "1"
								{"SampleScalar", 			 	   _SampleScalar}, --Original "5"
								{"SampleThreshold",	 	  	    _SampleThreshold}, --Original "0.25"
								{"CloudBottomFade", 	  	    _CloudBottomFade}, --Original "1"
								{"DetailScale", 		  	  	    _DetailScale}, --Original "6"
								{"ErosionEdgeSize", 	  	    _ErosionEdgeSize}, --Original "0.5"
								{"CloudDistortion", 	  	    _CloudDistortion}, --Original "50"
								{"CloudDistortionScale",   _CloudDistortionScale}, --Original "1"
								{"MaxIterations", 				  _MaxIterations}, --Original "128"
								{"HorizonFadeStartAlpha", _HorizonFadeStartAlpha}, --Original "0.25"
								{"HorizonFadeScalar",		  _HorizonFadeScalar}, --Original "0.25"
								{"HorizonDistance",			    _HorizonDistance}, --Original "11165"
							}
						},
						----------------------------------------------------------------------------
						--CLOUD GRADIENT SETTINGS
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient1"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",					   "0.08"}, --Original "0.1"
								{"y",					    "0.1"}, --Original "0.15"
								{"z",					   "0.12"}, --Original "0.15"
								{"t",					   "0.15"}, --Original "0.2"
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient2"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",					   	  "0"}, --Original "0"
								{"y",					    "0.1"}, --Original "0.1"
								{"z",					   "0.15"}, --Original "0.3"
								{"t",					    "0.3"}, --Original "0.6"
							}		
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CloudHeightGradient3"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",					      "0"}, --Original "0"
								{"y",					    "0.1"}, --Original "0.2"
								{"z",					    "0.2"}, --Original "0.3"
								{"t",					    "0.5"}, --Original "1"
							}		
						},
						----------------------------------------------------------------------------
						--WIND OFFSET SETTINGS
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"WindOffset"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"x",					    "-0.3"},
								{"y",					    "0.3"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StratosphereWindOffset"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"x",					    "0.3"},
								{"y",					    "0.3"},
							}
						},
						----------------------------------------------------------------------------
						--WIND SHEAR SETTINGS
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"]	= {"ShearWindSettings", "Octave0"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinStrength",	   		   "0.05"}, --Original "0.1"
								{"MaxStrength",		        "0.1"}, --Original "0.15"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"ShearWindSettings", "Octave3"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MaxStrength",	   		    "0.1"}, --Original "0"
							}
						},
					},
				},
				----------------------------------------------------------------------------
				--SKY GLOBALS SETTINGS
				----------------------------------------------------------------------------
				{
					["MBIN_FILE_SOURCE"]   = { "GCSKYGLOBALS.GLOBALS.MBIN" },
					["EXML_CHANGE_TABLE"]  =
					{
						----------------------------------------------------------------------------
						--SPACE FOG REMOVAL
						----------------------------------------------------------------------------
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"SpaceFogStrength", 				 "0"}, --Original "0.04"
							},
						},
						----------------------------------------------------------------------------
						--DUSK / SUN SET SKY PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",				   "0.6"}, -- Original "0.62"
								{"MaxNightFade",				  "0.85"}, -- Original "0.68"
								{"MinSunsetFade",				 "0.433"}, -- Original "0.4"
								{"MaxSunsetFade",				 "0.667"}, -- Original "0.5"
								{"MinSunsetHorizonFade",		 "0.417"}, -- Original "0.4"
								{"MaxSunsetHorizonFade",		 "0.667"}, -- Original "0.5"
								{"MinSunsetAtmosphereFade",		 "0.467"}, -- Original "0.4"
								{"MaxSunsetAtmosphereFade",		 "0.733"}, -- Original "0.5"
								{"MinSunsetColourFade",			   "0.5"}, -- Original "0.65"
								{"MaxSunsetColourFade",			 "0.667"}, -- Original "0.7"
								{"AmbientFactor",				   "0.4"}, -- Original "0.4"
								{"HorizonMultiplier",				 "1"}, -- Original "1"
								{"DuskHorizonMultiplier",		   "0.9"}, -- Original "1.2"
								{"NightHorizonMultiplier",		   "0.1"}, -- Original "1.554867"
							}	
						},
						----------------------------------------------------------------------------
						--SUN PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"]	= {"PlanetProperties", "PlanetSky"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"SunSize", 				"0.07"}, --Original "0.25"
								{"SunStrength", 			"0.23"}, --Original "0.225806"
								{"SunSurroundSize", 		   "1"}, --Original "10"
								{"SunSurroundStrength", 	 "0.5"}, --Original "12"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"PlanetPrimeProperties", "PlanetSky"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"SunSize", 				"0.07"}, --Original "0.25"
								{"SunStrength", 			"0.23"}, --Original "0.225806"
								{"SunSurroundSize", 		   "1"}, --Original "10"
								{"SunSurroundStrength", 	 "0.5"}, --Original "12"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"SpaceSkyMin"},
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"SunSize", 			  "0.0001"}, --Original "0.005"
								{"SunStrength", 			"0.55"}, --Original "0.6"
								{"AtmosphereThickness", 	"0.22"}, --Original "0.28"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"SpaceSkyMax"},
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"SunSize", 			  "0.0001"}, --Original "0.005"
								{"SunStrength", 			"0.55"}, --Original "0.6"
								{"AtmosphereThickness", 	"0.22"}, --Original "0.28"
							}
						},
						{
							["PRECEDING_KEY_WORDS"]	= {"SunPosition"},
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"x", 			  	_sun_position_x}, --Original "-77.25284"
								{"y", 			 	_sun_position_y}, --Original "61.62304"
								{"z", 			 	_sun_position_z}, --Original "-21.84243"
							}
						},
						----------------------------------------------------------------------------
						--GLOBAL PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								--DAY / NIGHT CYCLE LENGTH
								{"DayLength",          		  			_Day_Length}, --Original "1800"

								--SKY PROPERTIES--
								{"SunClampAngle",					 _SunClampAngle}, --Original "55"
								{"RainbowScale",							 "2200"}, --Original "2000"
								{"RainbowWidth",							 "0.15"}, --Original "0.13"
								{"RainbowAlpha",							 "0.01"}, --Original "0.1"
								{"HeavyAirScale",			   	   				"1"}, --Original "1"
								{"MinSaturation",							 "0.64"}, --Original "0.65"
								{"MaxSaturation",							 "0.64"}, --Original "0.65"
								{"FreshStartTimeOfDay",						 "0.21"}, --Original "0.3"

								--STORM SETTINGS            
								{"StormWarningTime",		  _StormWarningTime	   }, --Original "25"
								{"StormTransitionTime",		  _StormTransitionTime }, --Original "25"
								{"MaxCloudCover",			  _MaxCloudCover	   }, --Original "0.8"
								{"MaxStormCloudCover",		  _MaxStormCloudCover  }, --Original "0.8"
								{"CloudCoverSmoothTime",	  _CloudCoverSmoothTime}, --Original "10"
								{"CloudRatioSmoothTime",	  _CloudRatioSmoothTime}, --Original "4"
								{"StormCloudSmoothTime",	  _StormCloudSmoothTime}, --Original "0.8"
								{"WeatherFilterSpaceTransitionChangeTime", _WeatherFilterSTCTime}, --Original "10"

								{"MinStormLengthLow", 			 _MinStormLengthLow}, --Original "120"
								{"MaxStormLengthLow", 			 _MaxStormLengthLow}, --Original "180"
								{"MinStormLengthHigh", 			_MinStormLengthHigh}, --Original "150"
								{"MaxStormLengthHigh", 			_MaxStormLengthHigh}, --Original "320"

								{"ExtremeAudioLevel", 			 _ExtremeAudioLevel}, --Original "0.3"
								{"StormAudioLevel", 			   _StormAudioLevel}, --Original "0.5"

								--GENERAL SETTINGS
								{"AmbientFactor",							  "0.6"}, --Original "0.4"
								{"MaxFogSaturation",						  "0.4"}, --Original "0.3"

								--STAR CHANCE--             
								{"BinaryStarChance",		      _BinaryStarChance}, --Original "0.2"
								{"TernaryStarChance",		     _TernaryStarChance}, --Original "0.05"

								--WEATHER
								{"WeatherBloomGain",			  _WeatherBloomGain}, --Original "7.1"
								{"RainWetnessFadeInTime",					    "5"}, --Original "15"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DayLightColour",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"R",		    				"1"}, --Original "1"
								{"G",		    				"1"}, --Original "1"
								{"B",		    				"1"}, --Original "0.904"
								{"A",							"1"}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"NightSkyColours", "HeightFogColour",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"R",		    		    "0.007"}, --Original "207"
								{"G",		    		    "0.007"}, --Original "207"
								{"B",		    		    "0.007"}, --Original "207"
								{"A",					        "1"}, --Original "1"
							}
						},
						----------------------------------------------------------------------------
						--FOG PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFog",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FogStrength",		    	 _PPF_FogStrength},
								{"FogMax",		    		 _PPF_FogMax},
								{"FogColourStrength",		 _PPF_FogColourStrength},
								{"HeightFogStrength",		 _PPF_HeightFogStrength},
								{"HeightFogFadeOutStrength", _PPF_HeightFogFOStrength},
								{"HeightFogMax",		     _PPF_HeightFogMax},
								{"FogHeight", 				 _PPF_FogHeight},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFlightFog",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FogStrength",		    	 _PFF_FogStrength},
								{"FogMax",		    		 _PFF_FogMax},
								{"FogColourStrength",		 _PFF_FogColourStrength},
								{"HeightFogStrength",		 _PFF_HeightFogStrength},
								{"HeightFogFadeOutStrength", _PFF_HeightFogFOStrength},
								{"HeightFogMax",		     _PFF_HeightFogMax},
								{"FogHeight", 				 _PFF_FogHeight},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetExtremeFog",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FogStrength",		    	 _PXF_FogStrength},
								{"FogMax",		    		 _PXF_FogMax},
								{"FogColourStrength",		 _PXF_FogColourStrength},
								{"HeightFogStrength",		 _PXF_HeightFogStrength},
								{"HeightFogFadeOutStrength", _PXF_HeightFogFOStrength},
								{"HeightFogMax",		     _PXF_HeightFogMax},
								{"FogHeight", 				 _PXF_FogHeight},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetStormFog",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FogStrength",		    	 _PSF_FogStrength},
								{"FogMax",		    		 _PSF_FogMax},
								{"FogColourStrength",		 _PSF_FogColourStrength},
								{"HeightFogStrength",		 _PSF_HeightFogStrength},
								{"HeightFogFadeOutStrength", _PSF_HeightFogFOStrength},
								{"HeightFogMax",		     _PSF_HeightFogMax},
								{"FogHeight", 				 _PSF_FogHeight},
							}
						},
						----------------------------------------------------------------------------
						--CLOUD ADJUST CURVE
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"CloudAdjust", "AdjustMaxCurve"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Curve",		    _Curve}, --Original "Linear"
							}
						},
						----------------------------------------------------------------------------
						--CLOUD RATIO PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "PlanetProperties",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"CloudRatio",		_CloudRatio}, --Original "0.5-0.6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "PlanetPrimeProperties",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"CloudRatio",	    _CloudRatioPrime}, --Original "0.5-0.6"
							}
						},
						----------------------------------------------------------------------------
						--CLOUD COVERAGE PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = "PlanetCloudsMin",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Coverage1",				    "1"}, --Original "0.5"
								{"Coverage2",				    "2"}, --Original "1"
								{"Coverage3",				    "3"}, --Original "1"
								{"Offset1",					    "1"}, --Original "0"
								{"Offset2",					    "3"}, --Original "0"
								{"Offset3",					    "5"}, --Original "0"
								{"RateOfChange",			 "0.01"}, --Original "0.1"
								{"SecondaryRateOfChange",	"0.025"}, --Original "0.15"
								{"Cloudiness", 				"ClearWithCloudySpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "PlanetCloudsMax",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Coverage1",				    "6"}, --Original "3"
								{"Coverage2",				    "9"}, --Original "6"
								{"Coverage3",				   "12"}, --Original "9"
								{"Offset2",					    "5"}, --Original "5"
								{"Offset2",					   "10"}, --Original "5"
								{"Offset3",					   "15"}, --Original "5"
								{"RateOfChange",			 "0.01"}, --Original "0.1"
								{"SecondaryRateOfChange",	"0.045"}, --Original "0.15"
								{"Cloudiness", 				"ClearWithCloudySpells"}, --Original "CloudyWithClearSpells" --Alternate "ClearWithCloudySpells"
							}
						},
						----------------------------------------------------------------------------
						--HEAVY AIR PROPERTIES
						----------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetFog", "HeavyAir",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Thickness",		    _ThickNess}, --Original "1"
								{"Speed",			        _Speed}, --Original "1"
								{"Alpha1",			       _Alpha1}, --Original "1"
								{"Alpha2",			       _Alpha2}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetFlightFog", "HeavyAir",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Thickness",		    _ThickNess}, --Original "1"
								{"Speed",			        _Speed}, --Original "1"
								{"Alpha1",			       _Alpha1}, --Original "1"
								{"Alpha2",			       _Alpha2}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetExtremeFog", "HeavyAir",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Thickness",		    _ThickNess}, --Original "1"
								{"Speed",			        _Speed}, --Original "1"
								{"Alpha1",			       _Alpha1}, --Original "1"
								{"Alpha2",			       _Alpha2}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetStormFog", "HeavyAir",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Thickness",		    _ThickNess}, --Original "1"
								{"Speed",			        _Speed}, --Original "1"
								{"Alpha1",			       _Alpha1}, --Original "1"
								{"Alpha2",			       _Alpha2}, --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AbandonedFreighterFog", "HeavyAir",},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Thickness",		    _ThickNess}, --Original "1"
								{"Speed",			        _Speed}, --Original "1"
								{"Alpha1",			       _Alpha1}, --Original "1"
								{"Alpha2",			       _Alpha2}, --Original "1"
							}
						},
					}
				},
			}
		},
	}
}
