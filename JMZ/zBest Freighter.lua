Author			= "JMZawodny"
ModName			= "zBest"
ModNameSub		= "Freighter"
ModPrefix		= "!"
BaseDescription = "Redesign of the Freighter Bridge and Hangar"
GameVersion		= "v6.42"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModPrefix..ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{ -- Create some Section Templates
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HangarInterior.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Create a REFERENCE Section Template
				SKW = {
					{"Name", "REFHangarSteps2",},
				},
				SEC_SAVE_TO = "ReferenceTemplate",
			},
			{ -- Clean it out
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name", "REFHangarSteps2",},
				},
				VCT = {
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{ -- Create a LOCATOR Section Template
				SKW = {
					{"Name", "ColourData"},
				},
				SEC_SAVE_TO = "LocatorTemplate",
			},
			{ -- Clean it out
				SEC_EDIT = "LocatorTemplate",
				SKW = {
					{"Name", "ColourData"},
				},
				VCT = {
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{ -- Create a Collision-Box Section Template
				SKW = {
					{"NameHash", "3733750909",},
				},
				SEC_SAVE_TO = "BoxCollision",
			},
			{ -- Clean it out
				SEC_EDIT = "BoxCollision",
				SKW = {
					{"NameHash", "3733750909",},
				},
				VCT = {
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{ -- Initialize the Size
				SEC_EDIT = "BoxCollision",
				SKW = {
					{"Name" ,"WIDTH", },
					{"Name" ,"HEIGHT", },
					{"Name" ,"DEPTH", },
				},
				VCT = {
					{"Value" ,"1.000000"},
				}
			},
		}
	},
	{ -- HangarInterior
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HangarInterior.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{	-- Remove unused Sections
				SKW = {
					{"Name", "Archs",},
					{"Name", "Archs01",},
					{"Name", "Archs02",},
					{"Name", "Archs03",},
					{"Name", "MidBase8",},
					{"Name", "MidBase10",},
					{"Name", "MidBase201",},
					{"Name", "NPC_01",},
					{"Name", "NPC_02",},
					{"Name", "NPC_03",},
					{"Name", "NPC_04",},
					{"Name", "NPC_06",},
					{"Name", "Crossing101",},
					{"Name", "RefScissorLift",},
					{"Name", "MonitorDesk",},
					{"Name", "RefLargeCrate",},
					{"Name", "RefLargeCrate8",},
					{"Name", "RefLargeCrate9",},
					{"Name", "RefLargeCrate18",},
					{"Name", "RefLargeCrate19",},
					{"Name", "RefLargeCrate21",},
					{"Name", "RefLargeCrate22",},
					{"Name", "RefLargeCrate23",},
					{"Name", "RefLargeCrate24",},
					{"Name", "RefLargeCrate25",},
					{"Name", "RefLargeCrate26",},
					{"Name", "RefLargeCrate27",},
					{"Name", "RefLargeCrate28",},
					{"Name", "RefLargeCrate41",},
					{"Name", "RefLargeCrate42",},
					{"Name", "RefLargeCrate45",},
					{"Name", "RefLargeCrate48",},
					{"Name", "RefLargeCrate57",},
					{"Name", "RefLargeCrate62",},
					{"Name", "RefPallet11",},
					{"Name", "RefPallet16",},
					{"Name", "RefPallet17",},
					{"Name", "RefPallet18",},
					{"Name", "RefPallet19",},
					{"Name", "RefPallet20",},
					{"Name", "REFFreighterHangerVolumeLight%d*",},
					{"Name", "REFFreighterHangerMistVFX",},
					{"Name", "REFFreighterHangerGroundMistVFX",},
				},
				REMOVE = "SECTION"
			},
			{	-- Edit
				SKW = {
					{"Name", "Floor",},
				},
				VCT = {
					{"TransZ" ,"@+15.000000"},
					{"ScaleZ" ,"1.300000"},
				}
			},
			{	-- Edit +18
				SKW = {
					{"Name", "LeftPillar202",},
					{"Name", "MidPillar202",},
					{"Name", "MidBase2",},
					{"Name", "MidBase",},
					{"Name", "LeftPillar201",},
					{"Name", "MidPillar201",},
					{"Name", "MidBase01",},
					{"Name", "Rectangle_A3",},
					{"Name", "Rectangle_A4",},
					{"Name", "Rectangle_A5",},
					{"Name", "Rectangle_A6",},
					{"Name", "Rectangle_A8",},
					{"Name", "Rectangle_A9",},
					{"Name", "Rectangle_A12",},
					{"Name", "Rectangle_A13",},
					{"Name", "Rectangle_A15",},
					{"Name", "Rectangle_A16",},
					{"Name", "Rectangle_A17",},
					{"Name", "Rectangle_A18",},
					{"Name", "REFHangarSteps2",},
					{"Name", "REFHangarSteps3",},
					{"Name", "REFHangarSteps4",},
					{"Name", "REFHangarSteps5",},
					{"Name", "REFHangarSteps6",},
					{"Name", "REFHangarSteps7",},
					{"Name", "REFHangarSteps",},
					{"Name", "REFHangarSteps1",},
				},
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Edit +21
				SKW = {
					{"Name", "Rectangle_A7",},
					{"Name", "Decals",},
					{"Name", "Rectangle_A11",},
					{"Name", "Rectangle_A14",},
				},
				VCT = {
					{"TransZ" ,"@+21.000000"},
				}
			},
			{	-- Edit +30
				SKW = {
					{"Name", "LeftFrontWall02",},
					{"Name", "MidFrontWall02",},
					{"Name", "LeftFrontWall01",},
					{"Name", "MidFrontWall01",},
					{"Name", "pipes4",},
					{"Name", "pipes2",},
					{"Name", "pipes1",},
					{"Name", "Letter_A41",},
					{"Name", "Letter_A42",},
					{"Name", "Letter_A32",},
					{"Name", "Letter_A31",},
					{"Name", "Letter_A14",},
					{"Name", "Letter_A13",},
					{"Name", "pointLight145",},
					{"Name", "pointLight144",},
					{"Name", "pointLight143",},
					{"Name", "pointLight142",},
				},
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "polySurface2302",},
				},
				VCT = {
					{"TransX" ,"-0.1350000"},
					{"ScaleX" ,"0.991600"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "ShadowBox",},
				},
				VCT = {
					{"TransZ" ,"@+11.45"},
					{"ScaleZ" ,"@*1.16"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "NPC_05",},
				},
				VCT = {
					{"TransX" ,"-21.000000"},
					{"TransY" ,"-4.154146"},
					{"TransZ" ,"92.000000"},
					{"RotY" ,"90.000000"},
				}
			},
			{	-- Edit Lights
				SKW = {
					{"Name", "lightorange1", "Name", "COL_%a",},
					{"Name", "pointLight8", "Name", "COL_%a",},
					{"Name", "pointLight145", "Name", "COL_%a",},
					{"Name", "pointLight144", "Name", "COL_%a",},
					{"Name", "pointLight143", "Name", "COL_%a",},
					{"Name", "pointLight142", "Name", "COL_%a",},
					{"Name", "pointLight141", "Name", "COL_%a",},
					{"Name", "pointLight140", "Name", "COL_%a",},
					{"Name", "pointLight78", "Name", "COL_%a",},
					{"Name", "pointLight7501", "Name", "COL_%a",},
					{"Name", "pointLight74", "Name", "COL_%a",},
					{"Name", "pointLight73", "Name", "COL_%a",},
					{"Name", "pointLight70", "Name", "COL_%a",},
					{"Name", "pointLight69", "Name", "COL_%a",},
					{"Name", "pointLight66", "Name", "COL_%a",},
					{"Name", "pointLight65", "Name", "COL_%a",},
					{"Name", "pointLight64", "Name", "COL_%a",},
					{"Name", "pointLight35", "Name", "COL_%a",},
					{"Name", "pointLight34", "Name", "COL_%a",},
					{"Name", "pointLight33", "Name", "COL_%a",},
					{"Name", "pointLight117", "Name", "COL_%a",},
					{"Name", "pointLight99", "Name", "COL_%a",},
					{"Name", "pointLight126", "Name", "COL_%a",},
					{"Name", "pointLight6", "Name", "COL_%a",},
					{"Name", "pointLight7", "Name", "COL_%a",},
					{"Name", "pointLight9", "Name", "COL_%a",},
					{"Name", "pointLight10", "Name", "COL_%a",},
					{"Name", "pointLight15", "Name", "COL_%a",},
					{"Name", "pointLight72", "Name", "COL_%a",},
					{"Name", "pointLight83", "Name", "COL_%a",},
					{"Name", "pointLight61", "Name", "COL_%a",},
					{"Name", "pointLight62", "Name", "COL_%a",},
					{"Name", "pointLight139", "Name", "FALLOFF",},	-- was FALLOFF_RATE
					{"Name", "pointLight138", "Name", "FALLOFF",},
					{"Name", "pointLight137", "Name", "FALLOFF",},
					{"Name", "pointLight136", "Name", "FALLOFF",},
					{"Name", "pointLight135", "Name", "FALLOFF",},
					{"Name", "pointLight134", "Name", "FALLOFF",},
				},
				VCT = {
					{"Value" ,"1.000000"},
				}
			},
			{	-- Edit Light INTENSITY 15k
				SKW = {
					{"Name", "lightorange1", "Name", "INTENSITY",},
					{"Name", "pointLight145", "Name", "INTENSITY",},
					{"Name", "pointLight144", "Name", "INTENSITY",},
					{"Name", "pointLight143", "Name", "INTENSITY",},
					{"Name", "pointLight142", "Name", "INTENSITY",},
					{"Name", "pointLight141", "Name", "INTENSITY",},
					{"Name", "pointLight140", "Name", "INTENSITY",},
				},
				VCT = {
					{"Value" ,"4.50000"},
				}
			},
			{	-- Edit Light INTENSITY 25k
				SKW = {
					{"Name", "pointLight139", "Name", "INTENSITY",},
					{"Name", "pointLight138", "Name", "INTENSITY",},
					{"Name", "pointLight137", "Name", "INTENSITY",},
					{"Name", "pointLight136", "Name", "INTENSITY",},
					{"Name", "pointLight135", "Name", "INTENSITY",},
					{"Name", "pointLight134", "Name", "INTENSITY",},
				},
				VCT = {
					{"Value" ,"12.500000"},
				}
			},
			{	-- Edit Light INTENSITY 30k
				SKW = {
					{"Name", "pointLight8", "Name", "INTENSITY",},
					{"Name", "pointLight70", "Name", "INTENSITY",},
					{"Name", "pointLight52", "Name", "INTENSITY",},
					{"Name", "pointLight901", "Name", "INTENSITY",},
					{"Name", "pointLight117", "Name", "INTENSITY",},
					{"Name", "pointLight99", "Name", "INTENSITY",},
					{"Name", "pointLight126", "Name", "INTENSITY",},
					{"Name", "pointLight6", "Name", "INTENSITY",},
					{"Name", "pointLight7", "Name", "INTENSITY",},
					{"Name", "pointLight9", "Name", "INTENSITY",},
					{"Name", "pointLight10", "Name", "INTENSITY",},
					{"Name", "pointLight15", "Name", "INTENSITY",},
					{"Name", "pointLight72", "Name", "INTENSITY",},
					{"Name", "pointLight75", "Name", "INTENSITY",},
					{"Name", "pointLight82", "Name", "INTENSITY",},
				},
				VCT = {
					{"Value" ,"19.000000"},
				}
			},
			{	-- Edit Light INTENSITY 40k
				SKW = {
					{"Name", "pointLight78", "Name", "INTENSITY",},
					{"Name", "pointLight7501", "Name", "INTENSITY",},
					{"Name", "pointLight74", "Name", "INTENSITY",},
					{"Name", "pointLight73", "Name", "INTENSITY",},
					{"Name", "pointLight69", "Name", "INTENSITY",},
					{"Name", "pointLight66", "Name", "INTENSITY",},
					{"Name", "pointLight65", "Name", "INTENSITY",},
					{"Name", "pointLight64", "Name", "INTENSITY",},
					{"Name", "pointLight35", "Name", "INTENSITY",},
					{"Name", "pointLight34", "Name", "INTENSITY",},
					{"Name", "pointLight33", "Name", "INTENSITY",},
				},
				VCT = {
					{"Value" ,"32.000000"},
				}
			},
			{	-- Edit Linear
				SKW = {
					{"Name", "pointLight139", "Name", "RADIUS",},
					{"Name", "pointLight138", "Name", "RADIUS",},
					{"Name", "pointLight137", "Name", "RADIUS",},
					{"Name", "pointLight136", "Name", "RADIUS",},
					{"Name", "pointLight135", "Name", "RADIUS",},
					{"Name", "pointLight134", "Name", "RADIUS",},
				},
				VCT = {
					{"Value" ,"50.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "pointLight139",},
				},
				VCT = {
					{"TransX" ,"@-5.000000"},
					{"TransZ" ,"@-2.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "pointLight138",},
				},
				VCT = {
					{"TransX" ,"@+5.000000"},
					{"TransZ" ,"@-2.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "pointLight137",},
				},
				VCT = {
					{"TransX" ,"@-5.000000"},
					{"TransZ" ,"@+6.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "pointLight136",},
				},
				VCT = {
					{"TransX" ,"@+5.000000"},
					{"TransZ" ,"@+6.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "pointLight135",},
				},
				VCT = {
					{"TransX" ,"@-5.000000"},
					{"TransZ" ,"@+5.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "pointLight134",},
				},
				VCT = {
					{"TransX" ,"@+5.000000"},
					{"TransZ" ,"@+5.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefHangarCrane2",},
				},
				VCT = {
					{"TransX" ,"42.000000"},
					{"TransZ" ,"91.720000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefHangarCrane1",},
				},
				VCT = {
					{"TransX" ,"-42.000000"},
					{"TransZ" ,"90.720000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefHangarCrane",},
				},
				VCT = {
					{"TransX" ,"-3.350000"},
					{"TransZ" ,"91.720000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefPallet7",},
				},
				VCT = {
					{"TransX" ,"-20.800000"},
					{"TransY" ,"-4.310000"},
					{"TransZ" ,"90.000000"},
					{"ScaleX" ,"1.400000"},
					{"ScaleY" ,"1.400000"},
					{"ScaleZ" ,"1.400000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate1",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-3.750000"},
					{"TransZ" ,"100.300000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate2",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-3.750000"},
					{"TransZ" ,"99.20000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate3",},
				},
				VCT = {
					{"TransX" ,"-22.150000"},
					{"TransY" ,"-3.750000"},
					{"TransZ" ,"99.200000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate4",},
				},
				VCT = {
					{"TransX" ,"-22.150000"},
					{"TransY" ,"-2.750000"},
					{"TransZ" ,"100.300000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate5",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-2.750000"},
					{"TransZ" ,"100.300000"},
					{"RotY" ,"-90.000000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate6",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-2.750000"},
					{"TransZ" ,"99.20000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate7",},
				},
				VCT = {
					{"TransX" ,"-22.150000"},
					{"TransY" ,"-2.750000"},
					{"TransZ" ,"99.200000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefPallet8",},
				},
				VCT = {
					{"TransX" ,"-23.8645916"},
					{"TransZ" ,"90.0598145"},
					{"ScaleX" ,"1.400000"},
					{"ScaleY" ,"1.400000"},
					{"ScaleZ" ,"1.400000"},
				}
			},
			{	-- Copy Section
				SKW = {
					{"Name", "RefPallet8",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"-22.700000"},
					{"TransY" ,"-3.900000"},
					{"TransZ" ,"99.750000"},
					{"RotY" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefPallet8",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"97.600000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefPallet8",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"95.450000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefPallet8",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate10",},
				},
				VCT = {
					{"TransX" ,"-22.150000"},
					{"TransY" ,"-3.750000"},
					{"TransZ" ,"98.150000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate11",},
				},
				VCT = {
					{"TransX" ,"-24.425040"},
					{"TransZ" ,"89.500410"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate12",},
				},
				VCT = {
					{"TransX" ,"-23.3480053"},
					{"TransZ" ,"89.539540"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate13",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-3.750000"},
					{"TransZ" ,"98.150000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate14",},
				},
				VCT = {
					{"TransX" ,"-24.4531116"},
					{"TransZ" ,"90.592580"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate15",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-3.750000"},
					{"TransZ" ,"97.050000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate16",},
				},
				VCT = {
					{"TransX" ,"-23.250000"},
					{"TransY" ,"-2.750000"},
					{"TransZ" ,"98.150000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate17",},
				},
				VCT = {
					{"TransX" ,"-23.4063759"},
					{"TransZ" ,"90.592580"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate20",},
				},
				VCT = {
					{"TransX" ,"-24.5368767"},
					{"TransZ" ,"87.311600"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "Container",},
				},
				VCT = {
					{"TransZ" ,"95.7787552"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefPallet14",},
				},
				VCT = {
					{"TransZ" ,"102.152740"},
					{"ScaleX" ,"1.400000"},
					{"ScaleY" ,"1.400000"},
					{"ScaleZ" ,"1.400000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefPallet15",},
				},
				VCT = {
					{"TransZ" ,"102.152740"},
					{"ScaleX" ,"1.400000"},
					{"ScaleY" ,"1.400000"},
					{"ScaleZ" ,"1.400000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate73",},
				},
				VCT = {
					{"TransZ" ,"85.8119469"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefLargeCrate74",},
				},
				VCT = {
					{"TransZ" ,"87.0134773"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefBiggsTeleporter",},
				},
				VCT = {
					{"TransX" ,"-24.500000"},
					{"TransZ" ,"10.000000"},
					{"RotY" ,"45.000000"},
					{"ScaleX" ,"0.800000"},
					{"ScaleY" ,"0.800000"},
					{"ScaleZ" ,"0.800000"},
				}
			},
			{	-- Edit
				SKW = {
					{"Name", "RefBiggsTeleporter1",},
				},
				VCT = {
					{"TransX" ,"24.500000"},
					{"TransZ" ,"10.000000"},
					{"RotY" ,"-45.000000"},
					{"ScaleX" ,"0.800000"},
					{"ScaleY" ,"0.800000"},
					{"ScaleZ" ,"0.800000"},
				}
			},
-- Replicate Sections
			{	-- Copy Section
				SKW = {
					{"Name", "LeftPillar202",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftPillar202",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftPillar202",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidPillar202",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidPillar202",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidPillar202",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftTopWall02",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftTopWall02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+12.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftTopWall02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftCeiling02",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftCeiling02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftCeiling02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidCeiling02",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidCeiling02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidCeiling02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "CenterCeiling02",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CenterCeiling02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CenterCeiling02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftWall102",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftWall102",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftWall102",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Crossing202",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Crossing202",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Crossing202",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftBase02",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftBase02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftBase02",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidBase",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@-58.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it thrice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@-62.000000"},
				}
			},
			{	-- Add it four times
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it five times
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"-22.665052"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it five times
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+62.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it six times
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+40.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it seven times
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Floor11",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Floor11",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Floor16",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Floor16",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Floor17",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Floor17",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftPillar201",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftPillar201",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftPillar201",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidPillar201",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidPillar201",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+24.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidPillar201",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftTopWall01",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftTopWall01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftTopWall01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftCeiling01",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftCeiling01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftCeiling01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidCeiling01",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidCeiling01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidCeiling01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "CenterCeiling01",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CenterCeiling01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CenterCeiling01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftWall101",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftWall101",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+16.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftWall101",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "CrossingMid201",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CrossingMid201",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CrossingMid201",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "LeftBase01",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftBase01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "LeftBase01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Floor4",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Floor4",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Floor5",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Floor5",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Floor10",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Floor10",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "CrossingMid2",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+60.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CrossingMid2",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "CrossingMid2",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Crossing203",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@-30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Crossing203",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it twice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+90.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Crossing203",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it thrice
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Crossing203",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidBase01",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"-22.6650524"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase01",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "MidBase2",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"-22.6650524"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "MidBase2",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "orangeceilinglights3",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+32.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "orangeceilinglights3",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "orangeceilinglights4",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+32.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "orangeceilinglights4",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Letter_A40",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Letter_A40",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Letter_A39",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Letter_A39",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Letter_A34",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Letter_A34",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Letter_A33",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Letter_A33",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Letter_A28",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Letter_A28",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "Letter_A27",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Letter_A27",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "lightorange1",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"22.700000"},
					{"TransY" ,"2.000000"},
					{"TransZ" ,"90.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "lightorange1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "lightorange1",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"-22.700000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "lightorange1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "pointLight8",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "pointLight8",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "pointLight135",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"@+35.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "pointLight135",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "pointLight134",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"@+35.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "pointLight134",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "pointLight901",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "pointLight901",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "pointLight9",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "pointLight9",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Section
				SKW = {
					{"Name", "pointLight10",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it once
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "pointLight10",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
-- Add New Sections
			{	-- Edit a REFERENCE Section
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"ShortMidBase"},
					{"TransX" ,"22.6650524"},
					{"TransY" ,"-5.60848"},
					{"TransZ" ,"24.772773"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"ShortMidBase", "Name" ,"SCENEGRAPH", },
				VCT = {
					{"Value" ,"MODELS\JMZ\ShortMidBase.SCENE.MBIN"},
				}
			},
--			{	-- Add it
--				SKW = {
--					{"Name", "RefBiggsTeleporter1",},
--				},
--				ADD_OPTION = "ADDafterSECTION",
--				AUTO_GNH = "TRUE",
--				SEC_ADD_NAMED = "ReferenceTemplate",
--			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"TransX" ,"-22.6650524"},
				}
			},
--			{	-- Add it
--				SKW = {
--					{"Name", "RefBiggsTeleporter1",},
--				},
--				ADD_OPTION = "ADDafterSECTION",
--				AUTO_GNH = "TRUE",
--				SEC_ADD_NAMED = "ReferenceTemplate",
--			},
--[[
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"CraneBeam"},
					{"TransX" ,"58.680000"},
					{"TransY" ,"4.000000"},
					{"TransZ" ,"104.300000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"90.000000"},
					{"RotZ" ,"0.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"CraneBeam", "Name" ,"SCENEGRAPH", },
				VCT = {
					{"Value" ,"MODELS\JMZ\CraneRail.SCENE.MBIN"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefBiggsTeleporter1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"TransX" ,"29.340000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefBiggsTeleporter1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"TransX" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefBiggsTeleporter1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"TransX" ,"-29.340000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefBiggsTeleporter1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"TransX" ,"-58.680000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RefBiggsTeleporter1",},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
--LOC
			{	-- Edit the LOCATOR Section
				SEC_EDIT = "LocatorTemplate",
				VCT = {
					{"Name", "ColourData"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{	-- Change Attachment
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"ATTACHMENT", },
				VCT = {
					{"Value" ,"MODELS\JMZ\ENTITIES\HAZARDCOLOURDATA.ENTITY.MBIN"},
				}
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOES = "TRUE",
			},
-- CraneA
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"CraneA"},
					{"TransX" ,"10.700000"},
					{"TransY" ,"4.000000"},
					{"TransZ" ,"104.300000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-90.000000"},
					{"RotZ" ,"0.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"CraneA", "Name" ,"SCENEGRAPH", },
				VCT = {
					{"Value" ,"MODELS\JMZ\CraneA.SCENE.MBIN"},
				}
			},
			{	-- Add 1st child
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOS = "TRUE",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- CraneB
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"CraneB"},
					{"TransX" ,"24.700000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"CraneB", "Name" ,"SCENEGRAPH"},
				VCT = {
					{"Value" ,"MODELS\JMZ\CraneB.SCENE.MBIN"},
				}
			},
			{	-- Add 2nd child
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"CraneA"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- CraneB
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"CraneB"},
					{"TransX" ,"-20.700000"},
				}
			},
			{	-- Add 3rd child
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"CraneB"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- Cargo4
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"HugeCargo04"},
					{"TransX" ,"22.700000"},
					{"TransY" ,"-4.300000"},
					{"TransZ" ,"97.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-90.000000"},
					{"RotZ" ,"0.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"HugeCargo04", "Name" ,"SCENEGRAPH", },
				VCT = {
					{"Value" ,"MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\PROPS\HugeCargoOpen.SCENE.MBIN"},
				}
			},
			{	-- Add 4th child
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"CraneB"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
--Cargo5
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"HugeCargo05"},
					{"TransX" ,"-22.700000"},
				}
			},
			{	-- Add 5th child
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"HugeCargo04"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- Write Locator
			{	-- Add the Locator with children to main Scene
				SKW = {
					{"Name", "RefBiggsTeleporter1"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "LocatorTemplate",
			},
-- Next Locator
			{	-- Change Attachment
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"ColourData", "Name" ,"ATTACHMENT", },
				VCT = {
					{"Value" ,"MODELS\JMZ\ENTITIES\CONTAINERCOLOURDATA.ENTITY.MBIN"},
				}
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOES = "TRUE",
			},
-- HugeCargo01
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"HugeCargo01"},
					{"TransX" ,"37.200000"},
					{"TransY" ,"-7.3400000"},
					{"TransZ" ,"98.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"90.000000"},
					{"RotZ" ,"0.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"HugeCargo01", "Name" ,"SCENEGRAPH", },
				VCT = {
					{"Value" ,"MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\PROPS\HugeCargo.SCENE.MBIN"},
				}
			},
			{	-- Add 1st child
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOS = "TRUE",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- HugeCargo03
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"HugeCargo03"},
					{"TransX" ,"3.6500000"},
					{"TransZ" ,"98.000000"},
					{"RotY" ,"-90.000000"},
				}
			},
			{	-- Add 3rd child first
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"HugeCargo01"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- HugeCargo02
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"HugeCargo02"},
					{"TransX" ,"10.700000"},
					{"TransY" ,"-4.600000"},
					{"TransZ" ,"94.100000"},
					{"RotY" ,"0.000000"},
				}
			},
			{	-- Add 2nd child
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"HugeCargo01"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
-- Write Locator
			{	-- Add the Locator with children to main Scene
				SKW = {
					{"Name", "RefBiggsTeleporter1"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "LocatorTemplate",
			},
--]]
-- Next Locator
			{	-- Change Attachment
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"ColourData", "Name" ,"ATTACHMENT", },
				VCT = {
					{"Value" ,"MODELS\JMZ\ENTITIES\SalvageColourData.ENTITY.MBIN"},
				}
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOES = "TRUE",
			},
-- ShipSalvager
			{	-- Edit a Reference
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name" ,"REFShipSalvager"},
					{"TransX" ,"24.200000"},
					{"TransY" ,"-4.300000"},
					{"TransZ" ,"40.500000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-90.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"0.500000"},
					{"ScaleY" ,"0.500000"},
					{"ScaleZ" ,"0.500000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {"Name" ,"REFShipSalvager", "Name" ,"SCENEGRAPH", },
				VCT = {
					{"Value" ,"MODELS\Planets\Biomes\Common\Buildings\Parts\BuildableParts\Tech\SHIPSALVAGETERMINAL.SCENE.MBIN"},
				}
			},
			{	-- Add Only child
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOS = "TRUE",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Add the Locator with child to main Scene
				SKW = {
					{"Name", "RefBiggsTeleporter1"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "LocatorTemplate",
			},
		}
	},
	{ -- HangarInteriorPirate is just a copy of HangarInterior
		MBIN_FILE_SOURCE = 
		{ 
			{
				"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HangarInterior.scene.MBIN",
				"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HangarInteriorPirate.scene.MBIN"
			}
		}
	},
	{ -- Bridge
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\Bridge.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{	-- Copy Section before we delete its parent
				SKW = {
					{"Name", "SUB2FrontWall",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{ -- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX", "-13.150000", },
					{"TransY", "5.500000", },
					{"TransZ", "12.850000", },
					{"RotY", "-45.000000", },
				},
			},
			{	-- Add Sub2FrontWall
				SKW = {
					{"Name", "RefTeleporter3",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Remove unused Sections
				SKW = {
					{"Name", "fisrtfloor",},
					{"Name", "polySurface3443",},
					{"Name", "polySurface3454",},
					{"Name", "polySurface3457",},
					{"Name", "polySurface2100",},
					{"Name", "SUB1FloorBaseLOD0",},
					{"Name", "SUB2FloorBaseLOD0",},
					{"Name", "SUB3FloorBaseLOD0",},
					{"Name", "SUB4FloorBaseLOD0",},
					{"Name", "RightWallGlass",},
					{"Name", "FrontWall",},
					{"Name", "LeftWall",},
					{"Name", "polySurface3607",},
					{"Name", "wires",},
					{"Name", "polySurface3469",},
					{"Name", "polySurface3449",},
					{"Name", "polySurface3482",},
					{"Name", "polySurface3446",},
					{"Name", "polySurface3438",},
					{"Name", "polySurface3599",},
					{"Name", "polySurface2115",},
					{"Name", "polySurface2109",},
					{"Name", "GlassWindows",},
					{"NameHash", "4088791121",},
					{"NameHash", "3007707215",},
					{"NameHash", "1408514473",},
					{"NameHash", "1659000765",},
					{"NameHash", "2821743140",},
					{"NameHash", "2122714832",},
					{"NameHash", "2363337599",},
					{"NameHash", "1661753305",},
					{"NameHash", "1868099698",},
					{"NameHash", "1166187718",},
					{"NameHash", "897647251",},
					{"NameHash", "2805556742",},
					{"Name", "PROPTABLECHAIR1",},
					{"Name", "PROPTABLECHAIR6",},
					{"Name", "PROPTABLECHAIR7",},
					{"Name", "PROPTABLECHAIR12",},
					{"Name", "PROPTABLECHAIR13",},
					{"Name", "PROPTABLECHAIR14",},
					{"Name", "NAV_POI",},
					{"Name", "NAV_NODE2",},
					{"Name", "NAV_NODE3",},
					{"Name", "NAV_NODE4",},
					{"Name", "NAV_NODE5",},
					{"Name", "NAV_NODE6",},
					{"Name", "NAV_NODE7",},
					{"Name", "NAV_NODE8",},
					{"Name", "NAV_NODE9",},
					{"Name", "NAV_NODE10",},
					{"Name", "NAV_NODE11",},
					{"Name", "NAV_NODE12",},
					{"Name", "NAV_NODE13",},
					{"Name", "NAV_NODE14",},
					{"Name", "NAV_NODE15",},
					{"Name", "NAV_NODE16",},
					{"Name", "NAV_NODE17",},
					{"Name", "NAV_POI",},
					{"Name", "NAV_POI14",},
					{"Name", "NAV_NODE3",},
					{"Name", "NAV_NODE4",},
					{"Name", "NAV_NODE5",},
					{"Name", "NAV_NODE6",},
					{"Name", "NAV_NODE7",},
					{"Name", "NAV_NODE8",},
					{"Name", "NAV_NODE9",},
					{"Name", "NAV_NODE10",},
					{"Name", "NAV_NODE11",},
					{"Name", "NAV_NODE12",},
					{"Name", "NAV_NODE13",},
					{"Name", "NAV_NODE14",},
					{"Name", "NAV_NODE15",},
					{"Name", "NAV_POI",},
					{"Name", "NAV_NODE25",},
					{"Name", "NAV_NODE26",},
					{"Name", "NAV_NODE27",},
					{"Name", "NAV_NODE2",},
					{"Name", "NAV_NODE3",},
					{"Name", "NAV_NODE4",},
					{"Name", "NAV_NODE5",},
					{"Name", "NAV_NODE6",},
					{"Name", "NAV_NODE7",},
					{"Name", "NAV_NODE8",},
					{"Name", "NAV_NODE9",},
					{"Name", "NAV_NODE10",},
					{"Name", "NAV_NODE11",},
					{"Name", "NAV_NODE12",},
					{"Name", "NAV_NODE13",},
					{"Name", "NAV_NODE14",},
					{"Name", "NAV_NODE15",},
					{"Name", "NAV_NODE16",},
					{"Name", "NAV_NODE1",},
					{"Name", "NAV_POI3",},
					{"Name", "NAV_POI13",},
					{"Name", "NAV_NODE18",},
					{"Name", "NAV_NODE19",},
					{"Name", "NAV_NODE20",},
					{"Name", "NAV_NODE21",},
					{"Name", "NAV_NODE22",},
					{"Name", "NAV_NODE23",},
					{"Name", "NAV_NODE24",},
					{"Name", "NAV_NODE18",},
					{"Name", "NAV_NODE19",},
					{"Name", "NAV_NODE20",},
					{"Name", "NAV_NODE21",},
					{"Name", "NAV_NODE22",},
					{"Name", "NAV_NODE23",},
					{"Name", "NAV_NODE24",},
					{"Name", "NAV_POI",},
					{"Name", "WallDesk9",},
					{"Name", "WallDesk8",},
					{"Name", "WallDesk7",},
					{"Name", "WallDesk4",},
					{"Name", "WallMonitorGRP1",},
					{"Name", "LargeCrate",},
					{"Name", "LargeCrate3",},
					{"Name", "Pallet4",},
					{"Name", "SmallLight",},
					{"Name", "Pallet5",},
					{"Name", "SmallLight1",},
					{"Name", "LargeCrate14",},
					{"Name", "LargeCrate15",},
					{"Name", "LargeCrate16",},
					{"Name", "LargeCrate17",},
					{"Name", "LargeCrate18",},
					{"Name", "Pallet15",},
					{"Name", "Pallet14",},
					{"Name", "LargeCrate23",},
					{"Name", "Pallet11",},
					{"Name", "RoofMonitor",},
					{"Name", "MonitorDesk",},
					{"Name", "LargeCrate28",},
					{"Name", "Monitor30",},
					{"Name", "Monitor24",},
					{"Name", "Monitor22",},
					{"Name", "Monitor21",},
					{"Name", "Pallet9",},
					{"Name", "Pallet8",},
					{"Name", "Pallet7",},
					{"Name", "Pallet6",},
					{"Name", "LargeCrate29",},
					{"Name", "LargeCrate30",},
					{"Name", "LargeCrate20",},
					{"Name", "LargeCrate33",},
					{"Name", "Rectangle_A18",},
					{"Name", "Rectangle_A17",},
					{"Name", "Rectangle_A16",},
					{"Name", "Rectangle_A15",},
					{"Name", "Rectangle_A14",},
					{"Name", "Rectangle_A13",},
					{"Name", "Rectangle_A4",},
					{"Name", "Rectangle_A5",},
					{"Name", "Rectangle_A6",},
					{"Name", "Rectangle_A9",},
					{"Name", "Rectangle_A10",},
					{"Name", "Rectangle_A3",},
					{"Name", "Rectangle_A2",},
					{"Name", "Rectangle_A1",},
					{"Name", "Rectangle_A",},
					{"Name", "Rectangle_A19",},
					{"Name", "Rectangle_A20",},
					{"Name", "pointLight60",},
					{"Name", "pointLight124",},
					{"Name", "Lightpath01",},
					{"Name", "Lightpath02",},
					{"Name", "Lightpath03",},
					{"Name", "Lightpath04",},
					{"Name", "Lightpath05",},
					{"Name", "Lightpath06",},
					{"Name", "Lightpath07",},
					{"Name", "Lightpath08",},
					{"Name", "Lightpath09",},
					{"Name", "Lightpath010",},
					{"Name", "Lightpath011",},
					{"Name", "Lightpath012",},
					{"Name", "Lightpath013",},
					{"Name", "Lightpath014",},
					{"Name", "Lightpath015",},
					{"Name", "Lightpath016",},
					{"Name", "WallFan2",},
					{"Name", "WallFan3",},
					{"Name", "WallMonitorGRP2",},
					{"Name", "LargeCrate11",},
					{"Name", "LargeCrate10",},
					{"Name", "RoofMonitor2",},
					{"Name", "RoofMonitor1",},
					{"Name", "CielingDrape_Trader1",},
					{"Name", "CielingDrape_Trader",},
					{"Name", "REFBridgeVolumeLight",},
					{"Name", "REFBridgeVolumeLight1",},
					{"Name", "REFBridgeVolumeLight2",},
					{"Name", "REFBridgeVolumeLight3",},
					{"Name", "REFBridgeVolumeLight4",},
					{"Name", "REFBridgeVolumeLight5",},
					{"Name", "REFBridgeVolumeLight6",},
					{"Name", "REFBridgeVolumeLight7",},
					{"Name", "REFBridgeVolumeLight8",},
					{"Name", "REFBridgeVolumeLight9",},
					{"Name", "RefTeleporter1",},
				},
				REMOVE = "SECTION"
			},
			{	-- Modify Existing Sections
				SKW = {
					{"Name", "FloorBaseLOD0",},
				},
				VCT = {
					{"TransY" ,"1.870000"},
					{"ScaleX" ,"1.500000"},
					{"ScaleY" ,"0.001000"},
					{"ScaleZ" ,"1.500000"},
				}
			},
			{	-- Prepare BoxCollision for FloorCollision
				SEC_EDIT = "BoxCollision",
				VCT = {
					{"Name", "FloorCollision",},
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{
				SEC_EDIT = "BoxCollision",
				SKW = {
					{"Name" ,"WIDTH", },
					{"Name" ,"DEPTH", },
				},
				VCT = {
					{"Value" ,"28.000000"},
				}
			},
			{
				SEC_EDIT = "BoxCollision",
				SKW = {
					{"Name" ,"HEIGHT", },
				},
				VCT = {
					{"Value" ,"0.010000"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "FloorBaseLOD0",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "BoxCollision",
			},
			{	-- Copy Floor
				SKW = {
					{"Name", "FloorBaseLOD0",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"180.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "FloorBaseLOD0",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "RightWallGlass1",},
				},
				VCT = {
					{"RotY" ,"90.000000"},
				}
			},
			{	-- Copy RightWallGlass1
				SKW = {
					{"Name", "RightWallGlass1",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransX" ,"-0.150000"},
					{"TransY" ,"-0.350000"},
					{"TransZ" ,"-0.150000"},
					{"RotX" ,"0.900000"},
					{"RotY" ,"-90.000000"},
					{"RotZ" ,"0.750000"},
					{"ScaleX" ,"1.012000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.012000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RightWallGlass1",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy RightWallGlass2
				SKW = {
					{"Name", "RightWallGlass2",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RightWallGlass2",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"45.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "RightWallGlass2",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "SnapGroup_WallBBackRight10",},
				},
				VCT = {
					{"TransY" ,"-0.050000"},
					{"TransZ" ,"2.900000"},
					{"ScaleY" ,"1.060000"},
				}
			},
			{
				SKW = {
					{"Name", "solidwindows",},
				},
				VCT = {
					{"TransY" ,"-0.100000"},
					{"TransZ" ,"-0.150000"},
					{"ScaleX" ,"0.980000"},
				}
			},
			{
				SKW = {
					{"Name", "SUB2Exterior",},
				},
				VCT = {
					{"TransY" ,"-0.500000"},
					{"ScaleY" ,"1.050000"},
				}
			},
			{
				SKW = {
					{"Name", "SUB3Exterior",},
				},
				VCT = {
					{"TransY" ,"-0.100000"},
					{"TransZ" ,"0.150000"},
					{"RotX" ,"-0.200000"},
					{"ScaleX" ,"0.990000"},
					{"ScaleZ" ,"0.990000"},
				}
			},
			{
				SKW = {
					{"Name", "NPC_6",},
				},
				VCT = {
					{"TransX" ,"-6.400000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"11.200000"},
					{"RotY" ,"0.000000"},
				}
			},
			{
				SKW = {
					{"Name", "NPC_1",},
				},
				VCT = {
					{"TransX" ,"-11.200000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"6.400000"},
					{"RotY" ,"0.000000"},
				}
			},
			{
				SKW = {
					{"Name", "NPCNAV_STAND_",},
				},
				VCT = {
					{"TransX" ,"-3.000000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"0.000000"},
					{"RotY" ,"0.000000"},
				}
			},
			{
				SKW = {
					{"Name", "NPC_4",},
				},
				VCT = {
					{"TransX" ,"-6.500000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"8.500000"},
					{"RotY" ,"0.000000"},
				}
			},
			{
				SKW = {
					{"Name", "NPCCaptain_",},
				},
				VCT = {
					{"TransX" ,"0.760000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"-9.330000"},
					{"RotY" ,"60.000000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE1",},
				},
				VCT = {
					{"TransX" ,"-4.359067"},
					{"TransZ" ,"10.4322548"},
					{"RotY" ,"-22.500000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE2",},
				},
				VCT = {
					{"RotY" ,"-112.500000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE3",},
				},
				VCT = {
					{"RotY" ,"112.500000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE4",},
				},
				VCT = {
					{"RotY" ,"67.500000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE5",},
				},
				VCT = {
					{"RotY" ,"-67.500000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE6",},
				},
				VCT = {
					{"RotY" ,"-157.500000"},
				}
			},
			{
				SKW = {
					{"Name", "PROPTDRAPE7",},
				},
				VCT = {
					{"RotY" ,"157.500000"},
				}
			},
			{	-- Copy Drape
				SKW = {
					{"Name", "PROPTDRAPE7",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit Drape
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "PROPTDRAPE6", },
					{"TransX", "4.359067", },
					{"TransZ", "10.4322548", },
					{"RotY", "22.500000", },
				},
			},
			{	-- Add Drape
				SKW = {"Name", "PROPTDRAPE6"},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "WallDesk6",},
				},
				VCT = {
					{"TransX" ,"-6.520000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"6.520000"},
					{"RotY" ,"135.000000"},
					{"ScaleX" ,"2.220000"},
				}
			},
			{	-- Prepare REFERENCE
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "Back6",},
					{"NameHash" ,"0"},
					{"TransX" ,"-6.470000"},
					{"TransY" ,"3.020000"},
					{"TransZ" ,"6.470000"},
					{"RotX" ,"90.000000"},
					{"RotY" ,"-45.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"2.410000"},
					{"ScaleY" ,"0.050000"},
					{"ScaleZ" ,"0.270000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\FlatPanel.SCENE.MBIN"},
				}
			},
			{	-- Add a panel to mount things to
				SKW = {
					{"Name", "WallDesk6",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{
				SKW = {
					{"Name", "WallDesk5",},
				},
				VCT = {
					{"TransX" ,"-9.800000"},
					{"TransY" ,"1.870000"},
					{"TransZ" ,"9.800000"},
					{"RotY" ,"-45.000000"},
					{"ScaleX" ,"2.900000"},
				}
			},
			{	-- Copy Back6
				SKW = {
					{"Name", "Back6",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Back5",},
					{"TransX" ,"-9.850000"},
					{"TransZ" ,"9.850000"},
					{"RotY" ,"135.000000"},
					{"ScaleX" ,"3.150000"},
				}
			},
			{	-- Add a panel to mount things to
				SKW = {
					{"Name", "WallDesk5",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "WallMonitorGRP",},
				},
				VCT = {
					{"TransX" ,"-10.600000"},
					{"TransY" ,"3.850000"},
					{"TransZ" ,"10.200000"},
					{"RotY" ,"135.000000"},
				}
			},
			{
				SKW = {
					{"Name", "Monitor29",},
				},
				VCT = {
					{"TransX" ,"-5.750000"},
					{"TransY" ,"2.830000"},
					{"TransZ" ,"7.750000"},
					{"RotZ" ,"45.000000"},
				}
			},
			{
				SKW = {
					{"Name", "Monitor27",},
				},
				VCT = {
					{"TransX" ,"-7.750000"},
					{"TransY" ,"2.830000"},
					{"TransZ" ,"5.750000"},
					{"RotZ" ,"45.000000"},
				}
			},
			{
				SKW = {
					{"Name", "RefDrone",},
				},
				VCT = {
					{"TransY" ,"2.069130"},
				}
			},
			{
				SKW = {"NAME", "pointLight62",},
				VCT = {
					{"TransY" ,"11.000000"},
					{"TransZ" ,"12.500000"},
				}
			},
			{
				SKW = {"NAME", "pointLight61",},
				VCT = {
					{"TransY" ,"11.000000"},
					{"TransZ" ,"-12.500000"},
				}
			},
			{
				SKW = {"NAME", "pointLight59",},
				VCT = {
					{"TransY" ,"11.000000"},
				}
			},
			{
				SKW = {
					{"NAME", "pointLight62", "Name", "RADIUS"},
					{"NAME", "pointLight61", "Name", "RADIUS"},
					{"NAME", "pointLight59", "Name", "RADIUS"},
				},
				VCT = {{"Value" ,"30.000000"},}
			},
			{
				SKW = {
					{"NAME", "pointLight62", "Name", "INTENSITY"},
					{"NAME", "pointLight61", "Name", "INTENSITY"},
					{"NAME", "pointLight59", "Name", "INTENSITY"},
				},
				VCT = {{"Value" ,"8.000000"},}	-- was 20k
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "pointLight62", "Name", "FALLOFF"},
					{"NAME", "pointLight61", "Name", "FALLOFF"},
					{"NAME", "pointLight59", "Name", "FALLOFF"},
					{"NAME", "pointLight62", "Name", "COL_%a"},
					{"NAME", "pointLight61", "Name", "COL_%a"},
					{"NAME", "pointLight59", "Name", "COL_%a"},
				},
				VALUE_CHANGE_TABLE = {{"Value" ,"1.000000"},}
			},
			{
				SKW = {
					{"Name", "Monitor2",},
				},
				VCT = {
					{"TransY" ,"2.870000"},
					{"TransZ" ,"-10.710000"},
				}
			},
			{
				SKW = {
					{"Name", "Monitor3",},
				},
				VCT = {
					{"TransX" ,"-1.860000"},
					{"TransY" ,"2.940000"},
					{"TransZ" ,"-9.450000"},
				}
			},
			{
				SKW = {
					{"Name", "Monitor6",},
				},
				VCT = {
					{"TransX" ,"1.870000"},
					{"TransY" ,"2.940000"},
					{"TransZ" ,"-9.450000"},
				}
			},
			{
				SKW = {
					{"Name", "Monitor7",},
				},
				VCT = {
					{"TransX" ,"-1.730000"},
					{"TransY" ,"2.870000"},
					{"TransZ" ,"-10.650000"},
				}
			},
			{
				SKW = {
					{"Name", "HelmDesk",},
				},
				VCT = {
					{"TransY" ,"1.870000"},
					{"TransZ" ,"-10.160000"},
				}
			},
			{
				SKW = {
					{"Name", "RefBridgeTerminal",},
				},
				VCT = {
					{"TransY" ,"1.870000"},
					{"RotY" ,"-45.000000"},
				}
			},
			{
				SKW = {
					{"Name", "RefTeleporter3",},
				},
				VCT = {
					{"TransX" ,"8.570000"},
					{"TransY" ,"1.900000"},
					{"TransZ" ,"8.570000"},
					{"RotY" ,"-135.000000"},
					{"ScaleX" ,"0.830000"},
					{"ScaleZ" ,"0.830000"},
				}
			},
			{
				SKW = {
					{"Name", "RefTeleporter3", "Name", "SCENEGRAPH"},
				},
				VCT = {{"Value", "MODELS\JMZ\Teleporter.Scene.MBIN"},},
			},
			{	-- Prepare REFERENCE for ExitUpperPanel
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "ExitUpperPanel",},
					{"NameHash" ,"0"},
					{"TransX" ,"-0.150000"},
					{"TransY" ,"11.950000"},
					{"TransZ" ,"-0.220000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"45.000000"},
					{"RotZ" ,"180.000000"},
					{"ScaleX" ,"0.970000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
--[[			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\JMZ\Panel.Scene.MBIN"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "SUB2FrontWall",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Prepare REFERENCE for Pillar1_2
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "Pillar1_2",},
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-90.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.0070000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\JMZ\Pillar.Scene.MBIN"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "ExitUpperPanel",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Copy Pillar
				SKW = {
					{"Name", "Pillar1_2",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar2_3",},
					{"RotY" ,"-135.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar1_2",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar3_4",},
					{"RotY" ,"180.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar2_3",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar4_5",},
					{"RotY" ,"135.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar3_4",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar5_6",},
					{"RotY" ,"90.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar4_5",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar6_7",},
					{"RotY" ,"45.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar5_6",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar7_8",},
					{"RotY" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar6_7",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name", "Pillar8_1",},
					{"RotY" ,"-45.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Pillar7_8",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
--]]
			{	-- Copy PolySurf
				SKW = {
					{"Name", "polySurface3481",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"180.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "polySurface3481",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Prepare REFERENCE for iPad
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "iPad",},
					{"NameHash" ,"0"},
					{"TransX" ,"-5.200000"},
					{"TransY" ,"2.865000"},
					{"TransZ" ,"8.560000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-90.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"models\planets\biomes\common\buildings\props\smallprops\smallproppad.scene.mbin"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
--					{"Name", "Pillar8_1",},
					{"Name", "SUB2FrontWall",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Copy PolySurf
				SKW = {
					{"Name", "polySurface3599_3",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"90.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "polySurface3599_3",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransY" ,"-0.050000"},
					{"TransZ" ,"-0.030000"},
					{"RotY" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "polySurface3599_3",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy BackWallDetail
				SKW = {
					{"Name", "BackWallDetail",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"90.000000"},
				}
			},
			{	-- Also need to change to phong106
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name" ,"MATERIAL", },
				},
				VCT = {
					{"Value" ,"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE\PHONG106.MATERIAL.MBIN"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "BackWallDetail",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"RotY" ,"-90.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "BackWallDetail",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
		}
	},
	{ -- BridgePirate starts with a copy of Bridge
		MBIN_FILE_SOURCE = 
		{ 
			{
				"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\Bridge.scene.MBIN",
				"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BridgePirate.scene.MBIN"
			}
		}
	},
	{ -- BridgePirate
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BridgePirate.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ --Arrgh!  Use Pirates
				SKW = {
					{"NAME", "Interior_", "Name", "ATTACHMENT"},
				},
				VCT = {{"Value" ,"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\ENTITIES\PIRATENPCPLACEMENTFREIGHTER.ENTITY.MBIN"},}
			},
			{ -- Pirate stars be Red
				SKW = {
					{"NAME", "RefBridgeTerminal", "Name", "SCENEGRAPH"},
				},
				VCT = {{"Value" ,"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINALPIRATE.SCENE.MBIN"},}
			},

		}
	},
	{ -- Hangar
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\hangar.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{	-- Remove unused Arch Collisions
				SKW = {
					{"NameHash", "3550468740",},
					{"NameHash", "3877405057",},
					{"NameHash", "3849551403",},
					{"NameHash", "1710620466",},
					{"NameHash", "799314576",},
					{"NameHash", "4174193890",},
					{"NameHash", "3954444760",},
					{"NameHash", "3255023436",},
					{"NameHash", "2507660637",},
					{"NameHash", "2264809570",},
					{"NameHash", "2867685372",},
					{"NameHash", "2020836105",},
					{"NameHash", "551515182",},
					{"NameHash", "2720659137",},
					{"NameHash", "3327049482",},
					{"NameHash", "2617788978",},
					{"NameHash", "1095439513",},
					{"NameHash", "3461033655",},
				},
				REMOVE = "SECTION"
			},
			{
				SKW = {
					{"NameHash", "1732013675",},
				},
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{	-- Edit the LOCATOR Section
				SEC_EDIT = "LocatorTemplate",
				VCT = {
					{"Name", "ScaleRear"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"98.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"0.100000"},
				}
			},
			{	-- Clear Attachment
				SEC_EDIT = "LocatorTemplate",
				SKW = {"Name" ,"ATTACHMENT", },
				VCT = {
					{"Value" ,""},
				}
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOES = "TRUE",
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOS = "TRUE",
			},
			{	-- Add a LOCATOR so we can scale a Collision
				SKW = {
					{"NameHash", "1732013675",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "LocatorTemplate",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "1732013675",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "ScaleRear",},
				},
				PKW = {"Children"},
				ADD_OPTION = "ADDafterLINE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Locator
				SKW = {
					{"Name", "ScaleRear",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"ScaleFront"},
					{"TransZ" ,"-20.000000"},
					{"ScaleZ" ,"0.170000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "ScaleRear",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "176506962",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"@-30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"NameHash", "176506962",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Approach
				SKW = {
					{"Name", "Approach3c",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Approach3d"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Approach3c",},
				},
				ADD_OPTION = "ADDbeforeSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Approach
				SKW = {
					{"Name", "Approach1c",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Approach1d"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Approach1c",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Approach
				SKW = {
					{"Name", "Approach2c",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Approach2d"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Approach2c",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"NameHash", "220550134",},
					{"NameHash", "4224889169",},
					{"NameHash", "4037057261",},
				},
				VCT = {
					{"TransZ" ,"@+10.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_DOCK1",},
				},
				VCT = {
					{"TransX" ,"125.000000"},
					{"TransY" ,"75.000000"},
					{"TransZ" ,"-25.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_DOCK2",},
				},
				VCT = {
					{"TransX" ,"-125.000000"},
					{"TransY" ,"75.000000"},
					{"TransZ" ,"-25.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_APPROACH1",},
				},
				VCT = {
					{"TransX" ,"125.000000"},
					{"TransY" ,"90.000000"},
					{"TransZ" ,"-125.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_APPROACH2",},
				},
				VCT = {
					{"TransX" ,"-125.000000"},
					{"TransY" ,"90.000000"},
					{"TransZ" ,"-125.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BaseBuildingArea",},
				},
				VCT = {
					{"TransZ" ,"-35.000000"},
					{"ScaleX" ,"1.100000"},
					{"ScaleZ" ,"1.250000"},
				}
			},
			{	-- Copy Dock
				SKW = {
					{"Name", "Dock3C",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Dock3D"},
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Dock3C",},
				},
				ADD_OPTION = "ADDbeforeSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Dock
				SKW = {
					{"Name", "Dock2C",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Dock2D"},
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Dock2C",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Dock
				SKW = {
					{"Name", "Dock1C",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Dock1D"},
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Dock1C",},
				},
				ADD_OPTION = "ADDbeforeSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "RefDoorBack",},
				},
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarExteriorLOD0",},
					{"Name", "HangarExteriorLOD1",},
					{"Name", "HangarExteriorLOD2",},
					{"Name", "HangarExteriorLOD3",},
					{"Name", "HangarExteriorLOD4",},
				},
				VCT = {
					{"TransZ" ,"7.500000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarPadLOD0",},
					{"Name", "HangarPadLOD1",},
					{"Name", "HangarPadLOD2",},
					{"Name", "HangarPadLOD3",},
					{"Name", "HangarPadLOD4",},
				},
				VCT = {
					{"TransY" ,"@-0.500000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarShellLOD0",},
					{"Name", "HangarShellLOD1",},
					{"Name", "HangarShellLOD2",},
					{"Name", "HangarShellLOD3",},
					{"Name", "HangarShellLOD4",},
					{"Name", "GreeblesQ1LOD0",},
					{"Name", "GreeblesQ1LOD1",},
					{"Name", "GreeblesQ1LOD2",},
					{"Name", "GreeblesQ1LOD3",},
					{"Name", "GreeblesQ1LOD4",},
					{"Name", "GreeblesQ2LOD0",},
					{"Name", "GreeblesQ2LOD1",},
					{"Name", "GreeblesQ2LOD2",},
					{"Name", "GreeblesQ2LOD3",},
					{"Name", "GreeblesQ2LOD4",},
					{"Name", "GreeblesQ3LOD0",},
					{"Name", "GreeblesQ3LOD1",},
					{"Name", "GreeblesQ3LOD2",},
					{"Name", "GreeblesQ3LOD3",},
					{"Name", "GreeblesQ3LOD4",},
					{"Name", "GreeblesQ4LOD0",},
					{"Name", "GreeblesQ4LOD1",},
					{"Name", "GreeblesQ4LOD2",},
					{"Name", "GreeblesQ4LOD3",},
					{"Name", "GreeblesQ4LOD4",},
				},
				VCT = {
					{"TransZ" ,"11.450000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarExteriorLOD0",},
					{"Name", "HangarExteriorLOD1",},
					{"Name", "HangarExteriorLOD2",},
					{"Name", "HangarExteriorLOD3",},
					{"Name", "HangarExteriorLOD4",},
					{"Name", "HangarShellLOD0",},
					{"Name", "HangarShellLOD1",},
					{"Name", "HangarShellLOD2",},
					{"Name", "HangarShellLOD3",},
					{"Name", "HangarShellLOD4",},
					{"Name", "GreeblesQ1LOD0",},
					{"Name", "GreeblesQ1LOD1",},
					{"Name", "GreeblesQ1LOD2",},
					{"Name", "GreeblesQ1LOD3",},
					{"Name", "GreeblesQ1LOD4",},
					{"Name", "GreeblesQ2LOD0",},
					{"Name", "GreeblesQ2LOD1",},
					{"Name", "GreeblesQ2LOD2",},
					{"Name", "GreeblesQ2LOD3",},
					{"Name", "GreeblesQ2LOD4",},
					{"Name", "GreeblesQ3LOD0",},
					{"Name", "GreeblesQ3LOD1",},
					{"Name", "GreeblesQ3LOD2",},
					{"Name", "GreeblesQ3LOD3",},
					{"Name", "GreeblesQ3LOD4",},
					{"Name", "GreeblesQ4LOD0",},
					{"Name", "GreeblesQ4LOD1",},
					{"Name", "GreeblesQ4LOD2",},
					{"Name", "GreeblesQ4LOD3",},
					{"Name", "GreeblesQ4LOD4",},
				},
				VCT = {
					{"ScaleZ" ,"1.160000"},
				}
			},
		}
	},
	{ -- HangarPirate
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\hangarpirate.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{	-- Remove unused Sections
				SKW = {
					{"NameHash", "3001590243",},
					{"NameHash", "3446200035",},
					{"NameHash", "3744463473",},
					{"NameHash", "71189645",},
					{"NameHash", "846471432",},
					{"NameHash", "4214403702",},
					{"NameHash", "2178462048",},
					{"NameHash", "2775779076",},
					{"NameHash", "134462900",},
					{"NameHash", "3643858955",},
					{"NameHash", "83506809",},
					{"NameHash", "3728861449",},
					{"NameHash", "1403245815",},
					{"NameHash", "4165279287",},
					{"NameHash", "1010771502",},
					{"NameHash", "2713907212",},
					{"NameHash", "2885977227",},
					{"NameHash", "2559565222",},
				},
				REMOVE = "SECTION"
			},
			{
				SKW = {
					{"NameHash", "1053042284",},
				},
				VCT = {
					{"TransZ" ,"@+18.000000"},
				}
			},
			{ -- Initialize the Locator
				SEC_EDIT = "LocatorTemplate",
				SKW = {
					{"Name", "ScaleRear"},
				},
				VCT = {
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"0.000000"},
					{"TransZ" ,"98.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"0.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOES = "TRUE",
			},
			{	-- Clear the children
				SEC_EDIT = "LocatorTemplate",
				PKW = {"Children", "Children"},
				CREATE_HOS = "TRUE",
			},
			{	-- Add a LOCATOR so we can scale a Collision
				SKW = {
					{"NameHash", "1053042284",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "LocatorTemplate",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "1053042284",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"TransZ" ,"0.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "ScaleRear",},
				},
				PKW = {"Children"},
				ADD_OPTION = "ADDafterLINE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Locator
				SKW = {
					{"Name", "ScaleRear",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"ScaleFront"},
					{"TransZ" ,"-20.000000"},
					{"ScaleZ" ,"0.170000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "ScaleRear",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Locator
				SKW = {
					{"Name", "ScaleRear",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"GQ1234Coll"},
					{"TransZ" ,"0.000000"},
					{"ScaleZ" ,"1.160000"},
				}
			},
			{	-- Remove children
				SEC_EDIT = "TmpSave",
				PKW = {"Children", "Children"},
				CREATE_HOES = "TRUE",
			},
			{	-- Add it
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_DOCK1",},
				},
				ADD_OPTION = "ADDbeforeSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "3331087740",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Remove Collision
				SKW = {
					{"NameHash", "3331087740",},
				},
				REMOVE = "SECTION"
			},
			{	-- Add it
				SKW = {
					{"Name", "GQ1234Coll",},
				},
				PKW = {"Children"},
				CREATE_HOS = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "2950311960",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Remove Collision
				SKW = {
					{"NameHash", "2950311960",},
				},
				REMOVE = "SECTION"
			},
			{	-- Add it
				SKW = {
					{"NameHash", "3331087740",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "762915680",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Remove Collision
				SKW = {
					{"NameHash", "762915680",},
				},
				REMOVE = "SECTION"
			},
			{	-- Add it
				SKW = {
					{"NameHash", "2950311960",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Collision
				SKW = {
					{"NameHash", "531599309",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Remove Collision
				SKW = {
					{"NameHash", "531599309",},
				},
				REMOVE = "SECTION"
			},
			{	-- Add it
				SKW = {
					{"NameHash", "762915680",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Approach
				SKW = {
					{"Name", "Approach3c",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Approach3d"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Approach3c",},
				},
				ADD_OPTION = "ADDbeforeSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Approach
				SKW = {
					{"Name", "Approach1c",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Approach1d"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Approach1c",},
				},
				ADD_OPTION = "ADDbeforeSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Approach
				SKW = {
					{"Name", "Approach2c",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Approach2d"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Approach2c",},
				},
				ADD_OPTION = "ADDbeforeSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_DOCK1",},
				},
				VCT = {
					{"TransX" ,"125.000000"},
					{"TransY" ,"75.000000"},
					{"TransZ" ,"-25.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_DOCK2",},
				},
				VCT = {
					{"TransX" ,"-125.000000"},
					{"TransY" ,"75.000000"},
					{"TransZ" ,"-25.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_APPROACH1",},
				},
				VCT = {
					{"TransX" ,"125.000000"},
					{"TransY" ,"75.000000"},
					{"TransZ" ,"-200.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BIGGSPLATFORM_HOVERPAD_APPROACH2",},
				},
				VCT = {
					{"TransX" ,"-125.000000"},
					{"TransY" ,"75.000000"},
					{"TransZ" ,"-200.000000"},
				}
			},
			{
				SKW = {
					{"Name", "BaseBuildingArea",},
				},
				VCT = {
					{"TransZ" ,"-35.000000"},
					{"ScaleX" ,"1.100000"},
					{"ScaleZ" ,"1.250000"},
				}
			},
			{	-- Copy Dock
				SKW = {
					{"Name", "Dock3C",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Dock3D"},
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Dock3C",},
				},
				ADD_OPTION = "ADDbeforeSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Dock
				SKW = {
					{"Name", "Dock2C",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Dock2D"},
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Dock2C",},
				},
				ADD_OPTION = "ADDafterSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Copy Dock
				SKW = {
					{"Name", "Dock1C",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				VCT = {
					{"Name" ,"Dock1D"},
					{"TransZ" ,"@+30.000000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Dock1C",},
				},
				ADD_OPTION = "ADDbeforeSection",
				SEC_ADD_NAMED = "TmpSave",
			},
			{
				SKW = {
					{"Name", "RefDoorBack",},
				},
				VCT = {
					{"TransZ" ,"@+30.000000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarExterior",},
				},
				VCT = {
					{"TransZ" ,"@+7.500000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarBody",},
					{"Name", "GreeblesQ1LOD0",},
					{"Name", "GreeblesQ1LOD1",},
					{"Name", "GreeblesQ1LOD2",},
					{"Name", "GreeblesQ1LOD3",},
					{"Name", "GreeblesQ1LOD4",},
					{"Name", "GreeblesQ2LOD0",},
					{"Name", "GreeblesQ2LOD1",},
					{"Name", "GreeblesQ2LOD2",},
					{"Name", "GreeblesQ2LOD3",},
					{"Name", "GreeblesQ2LOD4",},
					{"Name", "GreeblesQ3LOD0",},
					{"Name", "GreeblesQ3LOD1",},
					{"Name", "GreeblesQ3LOD2",},
					{"Name", "GreeblesQ3LOD3",},
					{"Name", "GreeblesQ3LOD4",},
					{"Name", "GreeblesQ4LOD0",},
					{"Name", "GreeblesQ4LOD1",},
					{"Name", "GreeblesQ4LOD2",},
					{"Name", "GreeblesQ4LOD3",},
					{"Name", "GreeblesQ4LOD4",},
				},
				VCT = {
					{"TransZ" ,"11.450000"},
				}
			},
			{
				SKW = {
					{"Name", "HangarBody",},
					{"Name", "GreeblesQ1LOD0",},
					{"Name", "GreeblesQ1LOD1",},
					{"Name", "GreeblesQ1LOD2",},
					{"Name", "GreeblesQ1LOD3",},
					{"Name", "GreeblesQ1LOD4",},
					{"Name", "GreeblesQ2LOD0",},
					{"Name", "GreeblesQ2LOD1",},
					{"Name", "GreeblesQ2LOD2",},
					{"Name", "GreeblesQ2LOD3",},
					{"Name", "GreeblesQ2LOD4",},
					{"Name", "GreeblesQ3LOD0",},
					{"Name", "GreeblesQ3LOD1",},
					{"Name", "GreeblesQ3LOD2",},
					{"Name", "GreeblesQ3LOD3",},
					{"Name", "GreeblesQ3LOD4",},
					{"Name", "GreeblesQ4LOD0",},
					{"Name", "GreeblesQ4LOD1",},
					{"Name", "GreeblesQ4LOD2",},
					{"Name", "GreeblesQ4LOD3",},
					{"Name", "GreeblesQ4LOD4",},
				},
				VCT = {
					{"ScaleZ" ,"1.160000"},
				}
			},
		}
	},
	{ -- LandingPad_Hangar
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LandingPad_Hangar.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SKW = {
					{"NAME", "pointLight1", "Name", "RADIUS"},
				},
				VCT = {{"Value" ,"30.000000"},}
			},
			{
				SKW = {
					{"NAME", "pointLight1", "Name", "INTENSITY"},
				},
				VCT = {{"Value" ,"24.500000"},}	-- was 35k
			},
			{
				SKW = {
					{"NAME", "pointLight2", "Name", "INTENSITY"},
					{"NAME", "pointLight3", "Name", "INTENSITY"},
					{"NAME", "pointLight4", "Name", "INTENSITY"},
					{"NAME", "pointLight5", "Name", "INTENSITY"},
				},
				VCT = {{"Value" ,"18.000000"},}	-- was 30k
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "pointLight1", "Name", "FALLOFF"},
					{"NAME", "pointLight1", "Name", "COL_%a"},
					{"NAME", "pointLight2", "Name", "COL_%a"},
					{"NAME", "pointLight3", "Name", "COL_%a"},
					{"NAME", "pointLight4", "Name", "COL_%a"},
					{"NAME", "pointLight5", "Name", "COL_%a"},
				},
				VALUE_CHANGE_TABLE = {{"Value" ,"1.000000"},}
			},
		}
	},
	{ -- HangarSteps
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\Hangarparts\hangarsteps.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SKW = {
					{"NAME", "pointLight4", "Name", "INTENSITY"},
				},
				VCT = {{"Value" ,"8.000000"},}	-- was 20k
			},
			{
				SPECIAL_KEY_WORDS = {
					{"NAME", "pointLight4", "Name", "COL_%a"},
				},
				VALUE_CHANGE_TABLE = {{"Value" ,"1.000000"},}
			},
		}
	},
	{ -- Lights_Mat
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HangarInterior\lights_mat.material.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SKW = {
					{"MaterialFlag", "_F21_VERTEXCUSTOM",},
				},
				REMOVE = "SECTION"
			},
		}
	},
	{ -- FighterHologram starts with a copy of Nexus Bridge
		MBIN_FILE_SOURCE = 
		{ 
			{
				"models\space\nexus\parts\bridge\bridgeroom.scene.mbin",
				"MODELS\JMZ\Parts\FighterHologram.scene.MBIN", "REMOVE"
			}
		}
	},
	{ -- FighterHologram
		MBIN_FILE_SOURCE = "MODELS\JMZ\Parts\FighterHologram.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Save the Fighter Section
				SKW = {
					{"Name", "SpinData"},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{ -- Reposition it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "SpinData"},
				},
				VCT = {
					{"TransX", "-0.100000"},
					{"TransY", "0.580000"},
					{"TransZ", "0.000000"},
				}
			},
			{	-- Clean out the 100+ Children
				PKW = {"Children"},
				CREATE_HOES = "TRUE",
			},
			{	-- Add 1st child
				PKW = {"Children"},
				CREATE_HOS = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
		}
	},
	{ -- BridgeTerminal
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BridgeTerminal.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{	-- Remove Mist
				SKW = {
					{"Name", "REFBridgeFloorMistVFX",},
					{"Name", "REFBridgeTerminalVolumeLightVFX",},
				},
				REMOVE = "SECTION"
			},
			{
				SKW = {
					{"Name", "Base",},
				},
				VCT = {
					{"ScaleX" ,"1.025000"},
					{"ScaleZ" ,"1.025000"},
				}
			},
			{
				SKW = {
					{"Name", "Galaxy",},
				},
				VCT = {
					{"ScaleX" ,"0.040000"},
					{"ScaleY" ,"0.040000"},
					{"ScaleZ" ,"0.040000"},
				}
			},
			{
				SKW = {
					{"Name", "MiddleEffect",},
				},
				VCT = {
					{"TransY" ,"2.000000"},
					{"RotY" ,"-45.000000"},
					{"RotZ" ,"5.000000"},
					{"ScaleX" ,"0.500000"},
					{"ScaleY" ,"0.500000"},
					{"ScaleZ" ,"0.500000"},
				}
			},
			{
				SKW = {
					{"Name", "EffectGlobe2LOD0",},
				},
				VCT = {
					{"RotY" ,"135.000000"},
				}
			},
			{ -- Copy an attachment
				SKW = {
					{"Name", "spinnythingy","Name", "ATTACHMENT",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name" ,"ATTACHMENT"},
				},
				VCT = {
					{"Value", "MODELS\JMZ\ENTITIES\TKRotateSlowR.ENTITY.MBIN"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Base","Name", "MESHLINK",},
				},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TmpSave",
			},
			{ -- Copy a Terminal to use as Planetary Scanner
				SKW = {
					{"Name", "FleetTerminal"},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "FleetTerminal"},
				},
				VCT = {
					{"Name", "ScanRoomInteraction"},
					{"TransX", "0.000000"},
					{"TransY", "1.500000"},
					{"TransZ", "0.000000"},
					{"RotX", "0.000000"},
					{"RotY", "0.000000"},
					{"RotZ", "0.000000"},
					{"ScaleX", "1.000000"},
					{"ScaleY", "1.000000"},
					{"ScaleZ", "1.000000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "ScanRoomInteraction", "Name" ,"ATTACHMENT"},
				},
				VCT = {
					{"Value", "MODELS\JMZ\Entities\ScanRoomInteraction.entity.MBIN"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Type", "COLLISION", "Name" ,"RADIUS"},
				},
				VCT = {
					{"Value", "0.500000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "FleetTerminal"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Reuse for Starship Outfitter
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "ScanRoomInteraction"},
				},
				VCT = {
					{"Name", "ShipSalvageTerminal"},
					{"TransX", "-2.063833"},
					{"TransY", "1.037093"},
					{"TransZ", "0.000000"},
					{"RotX", "0.000000"},
					{"RotY", "-90.000000"},
					{"RotZ", "0.000000"},
					{"ScaleX", "1.000000"},
					{"ScaleY", "1.000000"},
					{"ScaleZ", "1.000000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "ShipSalvageTerminal", "Name" ,"ATTACHMENT"},
				},
				VCT = {
					{"Value", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "ScanRoomInteraction"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Prepare REFERENCE for Fighter
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "Fighter",},
					{"NameHash" ,"0"},
					{"TransX" ,"-2.000000"},
					{"TransY" ,"0.800000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"180.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"0.400000"},
					{"ScaleY" ,"0.400000"},
					{"ScaleZ" ,"0.400000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\JMZ\Parts\FighterHologram.SCENE.MBIN"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "ShipSalvageTerminal",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Prepare REFERENCE for Planets
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "Planets",},
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"2.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-45.000000"},
					{"RotZ" ,"-10.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\JMZ\Parts\BRIDGESCAN.SCENE.MBIN"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "Fighter",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
		}
	},
	{ -- BridgeTerminalPirate
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BridgeTerminalPirate.scene.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{	-- Remove Mist
				SKW = {
					{"Name", "REFBridgeFloorMistVFX",},
					{"Name", "REFBridgeTerminalVolumeLightVFX",},
				},
				REMOVE = "SECTION"
			},
			{
				SKW = {
					{"Name", "Base",},
				},
				VCT = {
					{"ScaleX" ,"1.025000"},
					{"ScaleZ" ,"1.025000"},
				}
			},
			{
				SKW = {
					{"Name", "Galaxy",},
				},
				VCT = {
					{"ScaleX" ,"0.040000"},
					{"ScaleY" ,"0.040000"},
					{"ScaleZ" ,"0.040000"},
				}
			},
			{
				SKW = {
					{"Name", "MiddleEffect",},
				},
				VCT = {
					{"TransY" ,"2.000000"},
					{"RotY" ,"-45.000000"},
					{"RotZ" ,"5.000000"},
					{"ScaleX" ,"0.500000"},
					{"ScaleY" ,"0.500000"},
					{"ScaleZ" ,"0.500000"},
				}
			},
			{
				SKW = {
					{"Name", "EffectGlobe2LOD0",},
				},
				VCT = {
					{"RotY" ,"135.000000"},
				}
			},
			{ -- Copy an attachment
				SKW = {
					{"Name", "spinnythingy","Name", "ATTACHMENT",},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name" ,"ATTACHMENT"},
				},
				VCT = {
					{"Value", "MODELS\JMZ\ENTITIES\TKRotateSlowR.ENTITY.MBIN"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "Base","Name", "MESHLINK",},
				},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TmpSave",
			},
			{ -- Copy a Terminal to use as Planetary Scanner
				SKW = {
					{"Name", "FleetTerminal"},
				},
				SEC_SAVE_TO = "TmpSave",
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "FleetTerminal"},
				},
				VCT = {
					{"Name", "ScanRoomInteraction"},
					{"TransX", "0.000000"},
					{"TransY", "1.500000"},
					{"TransZ", "0.000000"},
					{"RotX", "0.000000"},
					{"RotY", "0.000000"},
					{"RotZ", "0.000000"},
					{"ScaleX", "1.000000"},
					{"ScaleY", "1.000000"},
					{"ScaleZ", "1.000000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "ScanRoomInteraction", "Name" ,"ATTACHMENT"},
				},
				VCT = {
					{"Value", "MODELS\JMZ\Entities\ScanRoomInteraction.entity.MBIN"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Type", "COLLISION", "Name" ,"RADIUS"},
				},
				VCT = {
					{"Value", "0.500000"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "FleetTerminal"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Reuse for Starship Outfitter
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "ScanRoomInteraction"},
				},
				VCT = {
					{"Name", "ShipSalvageTerminal"},
					{"TransX", "-2.063833"},
					{"TransY", "1.037093"},
					{"TransZ", "0.000000"},
					{"RotX", "0.000000"},
					{"RotY", "-90.000000"},
					{"RotZ", "0.000000"},
					{"ScaleX", "1.000000"},
					{"ScaleY", "1.000000"},
					{"ScaleZ", "1.000000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "TmpSave",
				SKW = {
					{"Name", "ShipSalvageTerminal", "Name" ,"ATTACHMENT"},
				},
				VCT = {
					{"Value", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN"},
				}
			},
			{	-- Add it
				SKW = {
					{"Name", "ScanRoomInteraction"},
				},
				ADD_OPTION = "ADDafterSECTION",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "TmpSave",
			},
			{	-- Prepare REFERENCE for Fighter
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "Fighter",},
					{"NameHash" ,"0"},
					{"TransX" ,"-2.000000"},
					{"TransY" ,"0.800000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"180.000000"},
					{"RotZ" ,"0.000000"},
					{"ScaleX" ,"0.400000"},
					{"ScaleY" ,"0.400000"},
					{"ScaleZ" ,"0.400000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\JMZ\Parts\FighterHologram.SCENE.MBIN"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "ShipSalvageTerminal",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
			{	-- Prepare REFERENCE for Planets
				SEC_EDIT = "ReferenceTemplate",
				VCT = {
					{"Name", "Planets",},
					{"NameHash" ,"0"},
					{"TransX" ,"0.000000"},
					{"TransY" ,"2.000000"},
					{"TransZ" ,"0.000000"},
					{"RotX" ,"0.000000"},
					{"RotY" ,"-45.000000"},
					{"RotZ" ,"-10.000000"},
					{"ScaleX" ,"1.000000"},
					{"ScaleY" ,"1.000000"},
					{"ScaleZ" ,"1.000000"},
				}
			},
			{	-- Edit it
				SEC_EDIT = "ReferenceTemplate",
				SKW = {
					{"Name" ,"SCENEGRAPH", },
				},
				VCT = {
					{"Value" ,"MODELS\JMZ\Parts\BRIDGESCAN.SCENE.MBIN"},
				}
			},
			{	-- Add the REFERENCE
				SKW = {
					{"Name", "Fighter",},
				},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				SEC_ADD_NAMED = "ReferenceTemplate",
			},
		}
	},
	{ -- ScanRoomInteraction starts with a copy of Vanilla Entity
		MBIN_FILE_SOURCE = 
		{ 
			{
				"models\planets\biomes\common\buildings\parts\buildableparts\freighterbase\rooms\scanroom\parts\floor0\entities\scanroominteraction.entity.mbin",
				"MODELS\JMZ\Entities\ScanRoomInteraction.entity.MBIN", "REMOVE"
			}
		}
	},
	{ -- ScanRoomInteraction
		MBIN_FILE_SOURCE = "MODELS\JMZ\Entities\ScanRoomInteraction.entity.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{ -- Yeet Section
				SKW = {
					{"Components", "GcMaintenanceComponentData"},
				},
				REMOVE = "SECTION"
			},
		}
	},
	}},}
}