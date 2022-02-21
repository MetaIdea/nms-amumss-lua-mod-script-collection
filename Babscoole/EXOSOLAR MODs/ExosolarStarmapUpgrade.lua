NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= "_Exosolar's Starmap Upgrade.pak",
	["MOD_AUTHOR"]				= "Exosolar",
	["LUA_AUTHOR"]				= "Makto & Updated by Babscoole",
	["NMS_VERSION"]				= "3.81",
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PathToTargetIndicatorTimeFactor",		   		"0.4"},  
								{"PathUISelectionMultiplierMouse",				"0.8"}, 
								{"ShowPopupAtCameraMinDistance",		   		"5"},  
								{"GalacticPathMaximumJumpDistanceLightyears",	"3000"}, 
								{"GalacticPathPreferGuideStarsTillJump",		"30"},
								{"IntroFadeInRate",								"0.065"},
								{"IntroTitleFadeTrigger",						"4.5"}, 
								{"IntroTitleHoldTime",					    	"1"}, 						
								{"IntroFadeOutRate",							"0.8"}, 					
								{"IntroCameraLookSmoothRate",					"4"}, 
								{"TransitionTime",								"1"},
								{"IntroCameraLookSmoothRate",					"4"}, 
								{"PathRenderingSelectedStartAlpha",				"0.7"},								
								{"PathRenderingSelectedEndAlpha",				"0.01"},
								{"StarBlurMaxDistanceFromCamera",				"0.01"},  								
								{"StarBlurMaxBlurLength",						"0.01"},	
								{"StarBlurSizeMultiplier",						"0.01"}, 
								{"StarBlurLineWidth",							"0.01"},	
								{"StarBlurIntroMultiplier",						"0.01"},
								{"AnostreakAlpha",								"1"},
								{"FadeGameOutTime",								"0.25"},	
								{"FadeMapInTime",								"0.4"},								
								{"FadeMapOutTime",								"0.22"}, 	
								{"FadeGameInTime",								"0.35"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Visited", "IconSize"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "45"},  
								{"y", "45"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Yellow"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},  
								{"G", "0.87"},
								{"B", "0.46"},  
								{"A", "0.2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Green"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.3"},  
								{"G", "1"},
								{"B", "0.075"},  
								{"A", "0.85"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours", "Blue"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.42"},  
								{"G", "0.1"},
								{"B", "1"},  
								{"A", "0.4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarProtanopiaColours", "Yellow"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},  
								{"G", "0.32"},
								{"B", "0.18"},  
								{"A", "0.7"}
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"Camera"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MovementBlendRateLocked",		"2"},  
								{"MovementBlendRateLookLocked",	"10"}, 
								{"FreePanSpeed",				"1"}, 
								{"FreePanSpeedTurbo",			"3.5"},
								{"FreeRotateSpeed",				"1.8"},
								{"FreeElevationBlendRate",		"0.66"}, 
								{"ZoomOutElevation",			"0.1"}, 						
								{"ZoomOutRate",					"0.66"}, 					
								{"ZoomInRate",					"6"}, 
								{"MinZoomDIstance",				"3"},
								{"MaxZoomDistance",				"150"},  
								{"MinPushingZoomDistance",		"80"},	
							}
						},
						{--1
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},						
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.992157"},  
								{"G", "0.682353"},
								{"B", "0.039216"},  
								{"A", "1"}
							}
						},
						{--2
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.027451"},  
								{"G", "0.686275"},
								{"B", "0.588235"},  
								{"A", "1"}
							}
						},
						{--3
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.615686"},  
								{"G", "0.615686"},
								{"B", "0.87451"},  
								{"A", "1"}
							}
						},
						{--4
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.92549"},  
								{"G", "0.517647"},
								{"B", "0.956863"},  
								{"A", "1"}
							}
						},
						{--5
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.717647"},  
								{"G", "0.156863"},
								{"B", "0.54902"},  
								{"A", "1"}
							}
						},
						{--6
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.772549"},  
								{"G", "0.670588"},
								{"B", "0.670588"},  
								{"A", "1"}
							}
						},
						{--7
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.835294"},  
								{"G", "0.05098"},
								{"B", "0.282353"},  
								{"A", "1"}
							}
						},
						{--8
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.576471"},  
								{"G", "0.776471"},
								{"B", "0.992157"},  
								{"A", "1"}
							}
						},
						{--9
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.133333"},  
								{"G", "0.6"},
								{"B", "0.733333"},  
								{"A", "1"}
							}
						},
						{--10
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.321569"},  
								{"G", "0.596078"},
								{"B", "0.341176"},  
								{"A", "1"}
							}
						},
						{--1
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},  
								{"G", "0.980392"},
								{"B", "0.168627"},  
								{"A", "1"}
							}
						},
						{--2
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.823529"},  
								{"G", "1"},
								{"B", "0.12549"},  
								{"A", "1"}
							}
						},
						{--3
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.701961"},  
								{"G", "0.25098"},
								{"B", "0.635294"},  
								{"A", "1"}
							}
						},
						{--4
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},  
								{"G", "0.52549"},
								{"B", "0.05098"},  
								{"A", "1"}
							}
						},
						{--5
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.329412"},  
								{"G", "0.47451"},
								{"B", "0.854902"},  
								{"A", "1"}
							}
						},
						{--6
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.933333"},  
								{"G", "0.92549"},
								{"B", "0.901961"},  
								{"A", "1"}
							}
						},
						{--7
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.47451"},  
								{"G", "0.870588"},
								{"B", "0.941176"},  
								{"A", "1"}
							}
						},
						{--8
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.411765"},  
								{"G", "0.709804"},
								{"B", "0.141176"},  
								{"A", "1"}
							}
						},
						{--9
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.45098"},  
								{"G", "0.054902"},
								{"B", "0.772549"},  
								{"A", "1"}
							}
						},
						{--10
							["SPECIAL_KEY_WORDS"] = {"VignetteSizeIncreaseSelected","0.25",},							
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.039216"},  
								{"G", "0.470588"},
								{"B", "0.058824"}, 
								{"A", "1"}
							}
						},
						{--1
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.992157"},  
								{"G", "0.682353"},
								{"B", "0.039216"},  
								{"A", "1"}
							}
						},
						{--2
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.027451"},  
								{"G", "0.686275"},
								{"B", "0.588235"},  
								{"A", "1"}
							}
						},
						{--3
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.615686"},  
								{"G", "0.615686"},
								{"B", "0.87451"},  
								{"A", "1"}
							}
						},
						{--4
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.92549"},  
								{"G", "0.517647"},
								{"B", "0.956863"},  
								{"A", "1"}
							}
						},
						{--5
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.717647"},  
								{"G", "0.156863"},
								{"B", "0.54902"},  
								{"A", "1"}
							}
						},
						{--6
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.772549"},  
								{"G", "0.670588"},
								{"B", "0.670588"},  
								{"A", "1"}
							}
						},
						{--7
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.835294"},  
								{"G", "0.05098"},
								{"B", "0.282353"},  
								{"A", "1"}
							}
						},
						{--8
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.576471"},  
								{"G", "0.776471"},
								{"B", "0.992157"},  
								{"A", "1"}
							}
						},
						{--9
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.133333"},  
								{"G", "0.6"},
								{"B", "0.733333"},  
								{"A", "1"}
							}
						},
						{--10
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaPrimaryDefaultColours", "MapLargeAreaPrimaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.321569"},  
								{"G", "0.596078"},
								{"B", "0.341176"},  
								{"A", "1"}
							}
						},
						{--1
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},  
								{"G", "0.980392"},
								{"B", "0.168627"},  
								{"A", "1"}
							}
						},
						{--2
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.823529"},  
								{"G", "1"},
								{"B", "0.12549"},  
								{"A", "1"}
							}
						},
						{--3
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.701961"},  
								{"G", "0.25098"},
								{"B", "0.635294"},  
								{"A", "1"}
							}
						},
						{--4
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1"},  
								{"G", "0.52549"},
								{"B", "0.05098"},  
								{"A", "1"}
							}
						},
						{--5
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.329412"},  
								{"G", "0.47451"},
								{"B", "0.854902"},  
								{"A", "1"}
							}
						},
						{--6
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.933333"},  
								{"G", "0.92549"},
								{"B", "0.901961"},  
								{"A", "1"}
							}
						},
						{--7
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.47451"},  
								{"G", "0.870588"},
								{"B", "0.941176"},  
								{"A", "1"}
							}
						},
						{--8
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.411765"},  
								{"G", "0.709804"},
								{"B", "0.141176"},  
								{"A", "1"}
							}
						},
						{--9
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.45098"},  
								{"G", "0.054902"},
								{"B", "0.772549"},  
								{"A", "1"}
							}
						},
						{--10
							["PRECEDING_KEY_WORDS"] = {"MapLargeAreaSecondaryDefaultColours", "MapLargeAreaSecondaryDefaultColours", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml", "Colour.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.039216"},  
								{"G", "0.470588"},
								{"B", "0.058824"},  
								{"A", "1"}
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetParameters"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FirstOrbitRadiusMin", 	"52"},  
								{"FirstOrbitRadiusMax", 	"200"},
								{"OrbitRadiusOffsetMin", 	"62"},  
								{"OrbitRadiusOffsetMax", 	"300"},
								{"OrbitRotationSpeedMin", 	"24"},
								{"OrbitRotationSpeedMax", 	"48"},  
								{"OrbitLineWidth", 			"0.4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "MoonParameters"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FirstOrbitRadiusMin", 	"14"},  
								{"FirstOrbitRadiusMax", 	"17"},
								{"OrbitRadiusOffsetMin", 	"7"},  
								{"OrbitRadiusOffsetMax", 	"11"},
								{"OrbitRotationSpeedMin", 	"55"},
								{"OrbitRotationSpeedMax", 	"350"},  
								{"OrbitLineWidth", 			"0.33"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetRadii"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Large", 	"11"},  
								{"Medium", 	"8.5"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SystemTilt", 	"12"},  
								{"NonVisitedPlanetAlpha", 	"0.555"}
							}
						},
					} 
				}
			}
		}
	}	
}

