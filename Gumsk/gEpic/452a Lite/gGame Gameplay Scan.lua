ModName = "gGame Gameplay"
ModNameSub = "Scan"
GameVersion = "452"
ModVersion = "a"

--[[ Files Modified:
METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN
GCGAMEPLAYGLOBALS.GLOBAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= "Various modifications to gameplay globals",
	["MOD_AUTHOR"]		= "Gumsk",
	["LUA_AUTHOR"]		= "Gumsk",
	["NMS_VERSION"]		= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
			
			--Scanning
				{
					["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = "ScannerRechargeMultipliers",
							["VALUE_CHANGE_TABLE"] = {
								{"VeryFast",10},								--10; 
								{"Fast",10},									--5; 
								{"Normal",10},									--1.66; 
								{"Slow",10}										--1; 
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {
								"ID", "TOOL",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",500},									--200; Multitool scan range, in u, easy mode
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {
								"ID", "TOOL_HARD",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",500},									--150; Multitool scan range, in u, hard mode
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {
								"ID", "SHIP",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"PulseRange",30000},								--10000; Ship scan range, in u
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedEffect",
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
							["VALUE_CHANGE_TABLE"] = {
								{"R",0},											--0.588; 
								{"G",1},											--1; 
								{"B",0},											--0.639; 
								{"A",0.6}											--1; 
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedUnknownColour",
							["VALUE_CHANGE_TABLE"] = {
								{"R",1},											--0.926; 
								{"G",0},											--0.539; 
								{"B",0},											--1; 
								{"A",1}												--1; 
							},
						},
						{
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