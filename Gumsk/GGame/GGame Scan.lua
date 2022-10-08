Author = "Gumsk"
ModName = "gGame"
ModNameSub = "Scan"
BaseDescription = "Various modifications to gameplay globals"
GameVersion = "401"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {

				--Scanning
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",500},									--200; Multitool scan range, in u, easy mode
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",500},									--150; Multitool scan range, in u, hard mode
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",30000},								--10000; Ship scan range, in u
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedEffect",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BasecolourIntensity",2.0},						--0.4; 
								{"ScanlinesSeparation",5},							--5; 
								{"FresnelIntensity",-10},							--"-10"; 
								{"GlowIntensity",1},								--0; 
								{"FadeInTime",0},									--0.1; 
								{"FadeOutTime",0.35}								--0.2; 
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedColour",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"R",0},											--0.588; 
								{"G",1},											--1; 
								{"B",0},											--0.639; 
								{"A",0.6}											--1; 
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedUnknownColour",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"R",1},											--0.926; 
								{"G",0},											--0.539; 
								{"B",0},											--1; 
								{"A",1}												--1; 
							},
						},
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"TerrainResourceScanTime",30},						--30; 
								{"TerrainResourceScanRange",2000},					--1200; 
								{"BinocsDisplayUnknownCreatures","False"},			--False; 
								{"BinocularScanTargetMinHeight",5},					--5; 
								{"BinocularScanTargetHeightRange",0},				--0; 
								{"BinocTimeBeforeScan",0.2},						--0.5; 
								{"BinocMinScanTime",0.2},							--3.9; 
								{"BinocScanTime",0.2},								--3.9; 
								{"BinocCreatureScanTime",0.2},						--3.9; 
								{"ScanStartTimeDelayMinDist",30},					--30; 
								{"ScanStartTimeDelayRange",100},					--100; 
								{"ScanStartTimeDistanceDelayTime",1},				--1; 
								{"ScanStickyDecay",3},								--3; 
								{"CreatureScanStickyDecay",0.8},					--0.8; 
								{"CreatureScanAngle",0.08},							--0.08; 
								{"CreatureMinScanTime",0.8},						--0.8; 
								{"ScanAngle",0.04},									--0.04; 
								{"NewDiscoveryDisplayTime",0.5},					--2; 
								{"SurveyMaxDistance",2000},							--400; How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable.
								{"SurveySonarMinPulseSpeed",-2.4},					--0.4; Frequency for sweeps or pings of the hotspot scanner. Lower is slower.
							},
						},
					},
				},
			}
		}
	}
}