Author = "Gumsk n8crafter"
ModName = "gShip"
ModNameSub = "Add Missing Ship Trails"
BaseDescription = "Adds ship trails to all engines"
GameVersion = "6.2.2.0"
ModVersion = "a"

-- Rotation angles don't seem to matter for either positioning or trail angle. Rotation angle does matter for contrail angle.

TrailsInfo = {
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSA\THRUSTERSA_LEFT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail", TransX = 0.769806, TransY = -0.790548, TransZ = -0.82485, RotX = 50.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSA\THRUSTERSA_LEFT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail1", TransX = 0.769806, TransY = -0.359014, TransZ = -2.342611, RotX = 50.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSA\THRUSTERSA_RIGHT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail", TransX = -0.769806, TransY = -0.790548, TransZ = -0.82485, RotX = 50.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSA\THRUSTERSA_RIGHT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail1", TransX = -0.769806, TransY = -0.359014, TransZ = -2.342611, RotX = 50.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_LEFT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = 0.703125, TransY = 0.579102, TransZ = -1.306641, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_LEFT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail1", TransX = 0.703125, TransY = -0.661621, TransZ = -1.199219, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_RIGHT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = -0.703125, TransY = 0.579102, TransZ = -1.306641, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_RIGHT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail1", TransX = -0.703125, TransY = -0.661621, TransZ = -1.199219, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSC\THRUSTERSC_LEFT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = 0.678153, TransY = 0.515339, TransZ = -1.04004, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSC\THRUSTERSC_LEFT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail1", TransX = 0.678153, TransY = -0.440524, TransZ = -0.717285, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSC\THRUSTERSC_RIGHT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = -0.678153, TransY = 0.515339, TransZ = -1.04004, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSC\THRUSTERSC_RIGHT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail1", TransX = -0.678153, TransY = -0.440524, TransZ = -0.717285, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = 1.326172, TransY = 0.020706, TransZ = -1.702148, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_R.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = -1.326172, TransY = 0.020706, TransZ = -1.702148, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\COMBPOUNDENGINEFLAME.SCENE.MBIN", AfterNode = "Trail", Name = "Trail1", TransX = 2.275391, TransY = 2.613282, TransZ = -2.287109, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\COMBPOUNDENGINEFLAME.SCENE.MBIN", AfterNode = "Trail", Name = "Trail2", TransX = 2.275391, TransY = 2.074708, TransZ = -2.199774, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\COMBPOUNDENGINEFLAMER.SCENE.MBIN", AfterNode = "Trail", Name = "Trail1", TransX = -2.273438, TransY = 2.613282, TransZ = -2.287109, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\COMBPOUNDENGINEFLAMER.SCENE.MBIN", AfterNode = "Trail", Name = "Trail2", TransX = -2.273438, TransY = 2.074708, TransZ = -2.199846, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail10", TransX = -1.580000, TransY = 1.250000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail11", TransX = 1.580000, TransY = 1.250000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_A\WINGS_A.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail10", TransX = -1.580000, TransY = 1.250000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_A\WINGS_A.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail11", TransX = 1.580000, TransY = 1.250000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_B\WINGSB.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail10", TransX = -1.580000, TransY = 0.900000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_B\WINGSB.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail11", TransX = -1.580000, TransY = 1.650000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_B\WINGSB.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail12", TransX = 1.580000, TransY = 0.900000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_B\WINGSB.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail13", TransX = 1.580000, TransY = 1.650000, TransZ = -1.450000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_E\WINGSE.SCENE.MBIN", AfterNode = "Gun1Ref", Name = "Trail20", TransX = 1.720000, TransY = 1.400000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_E\WINGSE.SCENE.MBIN", AfterNode = "Gun1Ref", Name = "Trail21", TransX = -1.720000, TransY = 1.400000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_E\WINGSE.SCENE.MBIN", AfterNode = "Gun1Ref", Name = "Trail22", TransX = 1.750000, TransY = 2.050000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_E\WINGSE.SCENE.MBIN", AfterNode = "Gun1Ref", Name = "Trail23", TransX = -1.750000, TransY = 2.050000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail20", TransX = 4.850000, TransY = 1.230000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail21", TransX = -4.850000, TransY = 1.230000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail22", TransX = 2.509766, TransY = 1.334147, TransZ = -0.597534, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN", AfterNode = "Gun1Ref1", Name = "Trail23", TransX = -2.509766, TransY = 1.334147, TransZ = -0.597534, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_G\WINGSG.SCENE.MBIN", AfterNode = "Gun1Ref2", Name = "Trail10", TransX = 1.630000, TransY = 1.230000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_G\WINGSG.SCENE.MBIN", AfterNode = "Gun1Ref2", Name = "Trail11", TransX = -1.630000, TransY = 1.230000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_H\WINGSH.SCENE.MBIN", AfterNode = "Gun1Ref2", Name = "Trail20", TransX = 1.800000, TransY = 1.320000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_H\WINGSH.SCENE.MBIN", AfterNode = "Gun1Ref2", Name = "Trail21", TransX = -1.800000, TransY = 1.320000, TransZ = -1.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN", AfterNode = "Stage1_2", Name = "Trail4", TransX = -3.240234, TransY = 1.298828, TransZ = 0.972168, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN", AfterNode = "Stage1_2", Name = "Trail6", TransX = 3.240234, TransY = 1.298828, TransZ = 0.972168, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN", AfterNode = "Stage2_1", Name = "Trail5", TransX = -1.593750, TransY = 1.298828, TransZ = 0.996094, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN", AfterNode = "Stage2_1", Name = "Trail7", TransX = 1.593750, TransY = 1.298828, TransZ = 0.996094, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight30", Name = "Trail", TransX = 3.557988, TransY = 1.717773, TransZ = -5.027817, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight31", Name = "Trail1", TransX = -1.874023, TransY = 1.717773, TransZ = -9.757812, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight45", Name = "Trail2", TransX = 3.758327, TransY = 1.717773, TransZ = -5.027817, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight32", Name = "Trail3", TransX = -3.539204, TransY = 1.717773, TransZ = -5.027817, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight34", Name = "Trail4", TransX = 3.200200, TransY = 1.295898, TransZ = 0.350830, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight34", Name = "Trail5", TransX = 3.277340, TransY = 2.203125, TransZ = 0.338379, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight34", Name = "Trail6", TransX = 3.553000, TransY = 1.717773, TransZ = -5.028101, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight36", Name = "Trail7", TransX = -3.539204, TransY = 1.717773, TransZ = -5.027817, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight36", Name = "Trail8", TransX = -3.200195, TransY = 1.295898, TransZ = 0.350830, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight36", Name = "Trail9", TransX = -3.277340, TransY = 2.203125, TransZ = 0.338379, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight42", Name = "Trail10", TransX = 3.718078, TransY = 1.717773, TransZ = -5.027817, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN", AfterNode = "blinkinglight44", Name = "Trail10", TransX = -3.539204, TransY = 1.717773, TransZ = -5.027817, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\COCKPIT\COCKPITA\BACK\COCKPITABACKB.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail2", TransX = -0.005784, TransY = 3.324401, TransZ = -5.577473, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN", AfterNode = "Gun1Ref4", Name = "Trail2", TransX = 0.000000, TransY = 5.476562, TransZ = -3.195312, RotX = -37.500010, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN", AfterNode = "Gun1Ref4", Name = "Trail3", TransX = 0.252283, TransY = 0.568473, TransZ = -1.339915, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN", AfterNode = "Gun1Ref4", Name = "Trail4", TransX = -0.252283, TransY = 0.568473, TransZ = -1.339915, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\SUBWINGS\SUBWINGSC\SUBWINGSC_LEFT.SCENE.MBIN", AfterNode = "pCylinder8", Name = "Trail", TransX = 3.413702, TransY = -0.006276, TransZ = -0.554895, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\SUBWINGS\SUBWINGSC\SUBWINGSC_RIGHT.SCENE.MBIN", AfterNode = "pCylinder8", Name = "Trail", TransX = -3.413702, TransY = -0.006276, TransZ = -0.554895, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\SUBWINGS\SUBWINGSD\SUBWINGSD_LEFT.SCENE.MBIN", AfterNode = "SubWingD", Name = "Trail", TransX = 0.829102, TransY = 0.057312, TransZ = 0.069092, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\SUBWINGS\SUBWINGSD\SUBWINGSD_RIGHT.SCENE.MBIN", AfterNode = "SubWingD", Name = "Trail", TransX = -0.829102, TransY = 0.057312, TransZ = 0.069092, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail5", TransX = 2.064453, TransY = -0.014046, TransZ = -1.011719, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail6", TransX = 8.550686, TransY = -0.005820, TransZ = -0.291752, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSA\WINGSA_RIGHT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail5", TransX = -2.064453, TransY = -0.014046, TransZ = -1.011719, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSA\WINGSA_RIGHT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail6", TransX = -8.560285, TransY = -0.003725, TransZ = -0.221114, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Contrail3", TransX = 4.476562, TransY = 1.599609, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Contrail4", TransX = 2.009766, TransY = 1.599609, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Contrail5", TransX = 2.009766, TransY = -0.867432, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Trail5", TransX = 3.597656, TransY = 0.720215, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Trail6", TransX = 2.890625, TransY = 0.720215, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Trail7", TransX = 3.597656, TransY = 0.012367, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN", AfterNode = "_Subwing2_L", Name = "Trail8", TransX = 2.890625, TransY = 0.012367, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Contrail3", TransX = -4.476562, TransY = 1.599609, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Contrail4", TransX = -2.009766, TransY = 1.599609, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Contrail5", TransX = -2.009766, TransY = -0.867432, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail5", TransX = -3.597656, TransY = 0.720215, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail6", TransX = -2.890625, TransY = 0.720215, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail7", TransX = -3.597656, TransY = 0.012367, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail8", TransX = -2.890625, TransY = 0.012367, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Contrail3", TransX = -4.476562, TransY = 1.599609, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Contrail4", TransX = -2.009766, TransY = 1.599609, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Contrail5", TransX = -2.009766, TransY = -0.867432, TransZ = -3.521484, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail5", TransX = -3.597656, TransY = 0.720215, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail6", TransX = -2.890625, TransY = 0.720215, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail7", TransX = -3.597656, TransY = 0.012367, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT_XNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R", Name = "Trail8", TransX = -2.890625, TransY = 0.012367, TransZ = -3.990234, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSC\WINGCLEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail5", TransX = 0.708055, TransY = 1.749766, TransZ = -2.78599, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSC\WINGCLEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail6", TransX = 0.708055, TransY = -1.094960, TransZ = -1.089823, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSC\WINGCRIGHT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail5", TransX = -0.708055, TransY = 1.749766, TransZ = -2.78599, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSC\WINGCRIGHT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail6", TransX = -0.708055, TransY = -1.094960, TransZ = -1.089823, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSD\WINGDLEFT.SCENE.MBIN", AfterNode = "_Subwing1_L1", Name = "Trail5", TransX = 0.940430, TransY = 0.174438, TransZ = -0.926270, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSD\WINGDLEFT.SCENE.MBIN", AfterNode = "_Subwing1_L1", Name = "Trail6", TransX = 0.902100, TransY = -0.935791, TransZ = -0.532227, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_L2", Name = "Trail5", TransX = -0.940430, TransY = 0.174438, TransZ = -0.926270, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHT.SCENE.MBIN", AfterNode = "_Subwing2_L2", Name = "Trail6", TransX = -0.902100, TransY = -0.935791, TransZ = -0.532227, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHTXNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R2", Name = "Trail5", TransX = -0.940430, TransY = 0.174438, TransZ = -0.926270, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHTXNEVER.SCENE.MBIN", AfterNode = "_Subwing2_R2", Name = "Trail6", TransX = -0.902100, TransY = -0.935791, TransZ = -0.532227, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGLEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Contrail3", TransX = 2.347656, TransY = 0.940918, TransZ = -0.991211, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGLEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Contrail4", TransX = 0.480469, TransY = 0.925293, TransZ = -0.991211, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGLEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Contrail5", TransX = 0.495850, TransY = -0.942871, TransZ = -0.991211, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGLEFT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail5", TransX = 1.416016, TransY = -0.001044, TransZ = -0.293213, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGRIGHT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Contrail3", TransX = -2.347656, TransY = 0.940918, TransZ = -0.991211, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGRIGHT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Contrail4", TransX = -0.480469, TransY = 0.925293, TransZ = -0.991211, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGRIGHT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Contrail5", TransX = -0.495850, TransY = -0.942871, TransZ = -0.991211, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSG\WINGGRIGHT.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail5", TransX = -1.416016, TransY = -0.001044, TransZ = -0.293213, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSK\WINGKLEFT.SCENE.MBIN", AfterNode = "_Subwing1_L", Name = "Trail5", TransX = 2.270105, TransY = -0.073221, TransZ = -2.232291, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSK\WINGKRIGHT.SCENE.MBIN", AfterNode = "_Subwing1_L2", Name = "Trail5", TransX = -2.270105, TransY = -0.073221, TransZ = -2.232291, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSK\WINGKRIGHTXNEVER.SCENE.MBIN", AfterNode = "_Subwing1_R1", Name = "Trail5", TransX = -2.270105, TransY = -0.073221, TransZ = -2.232291, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSL\WINGSL_LEFT.SCENE.MBIN", AfterNode = "WingLLeftLOD3", Name = "Trail5", TransX = 1.550781, TransY = -0.014046, TransZ = -1.873047, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSL\WINGSL_LEFT.SCENE.MBIN", AfterNode = "WingLLeftLOD3", Name = "Trail6", TransX = 6.051735, TransY = -0.010000, TransZ = -2.634430, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSL\WINGSL_RIGHT.SCENE.MBIN", AfterNode = "WingLRightLOD3", Name = "Trail5", TransX = -1.550781, TransY = -0.014046, TransZ = -1.873047, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGSL\WINGSL_RIGHT.SCENE.MBIN", AfterNode = "WingLRightLOD3", Name = "Trail6", TransX = -6.051735, TransY = -0.010000, TransZ = -2.634430, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_LEFT.SCENE.MBIN", AfterNode = "DetailsLOD2", Name = "Trail10", TransX = 1.570312, TransY = -0.371338, TransZ = -0.215698, RotX = 60.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_RIGHT.SCENE.MBIN", AfterNode = "DetailsLOD2", Name = "Trail10", TransX = -1.538086, TransY = -0.371338, TransZ = -0.215698, RotX = 60.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\S-CLASS\ROYALPARTS\ENGINE\ENGINE_C.SCENE.MBIN", AfterNode = "Stage2_3", Name = "Trail5", TransX = 0.000000, TransY = 4.890625, TransZ = -10.773438, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\S-CLASS\ROYALPARTS\TOPWING\TOPWING_A.SCENE.MBIN", AfterNode = "Contrail2", Name = "Trail", TransX = 0.000000, TransY = 8.554688, TransZ = -6.742188, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\S-CLASS\ROYALPARTS\TOPWING\TOPWING_B.SCENE.MBIN", AfterNode = "spotLight2", Name = "Trail9", TransX = 0.000000, TransY = 6.554688, TransZ = -2.039062, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\S-CLASS\ROYALPARTS\WINGS\WINGS_B.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = 1.393933, TransY = 1.658415, TransZ = -2.526716, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\S-CLASS\ROYALPARTS\WINGS\WINGS_B.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail1", TransX = -1.395612, TransY = 1.658415, TransZ = -2.526716, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEHBOTANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail9", TransX = -1.830000, TransY = 0.719000, TransZ = -5.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --right
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEHBOTANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail10", TransX = 1.830000, TransY = 0.719000, TransZ = -5.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEHTOPANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail11", TransX = -1.830000, TransY = 3.570000, TransZ = -5.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --right
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEHTOPANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail12", TransX = 1.830000, TransY = 3.570000, TransZ = -5.100000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMESIDESANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail13", TransX = -5.250000, TransY = 0.438000, TransZ = -3.600000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMESIDESANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail14", TransX = 5.250000, TransY = 0.438000, TransZ = -3.600000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVBOTA.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail15", TransX = -1.445000, TransY = 0.845000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVBOTA.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail16", TransX = 1.445000, TransY = 0.845000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVBOTB.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail17", TransX = -0.830000, TransY = 0.845000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVBOTB.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail18", TransX = 0.830000, TransY = 0.845000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVTOP.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail19", TransX = -0.760000, TransY = 3.183000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVTOP.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail20", TransX = 0.760000, TransY = 3.183000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVTOPANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail21", TransX = -1.445000, TransY = 2.183000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENFLAMEVTOPANI.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail22", TransX = 1.445000, TransY = 2.183000, TransZ = -4.800000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},

-- Sentinel Engines FlameBody Close (c), Middle (m), Far (f) - Right (r), Left (l)
-- X = r/l, Y = u/d, Z = n/f. Positive/Negative changes depending on node placement
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail1", TransX = 0.230000, TransY = -0.161000, TransZ = -2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail2", TransX = -0.466000, TransY = -0.161000, TransZ = -2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --mr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail3", TransX = -0.990000, TransY = -0.161000, TransZ = -2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail4", TransX = -0.230000, TransY = 0.161000, TransZ = -2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail5", TransX = 0.466000, TransY = 0.161000, TransZ = -2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --ml
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail6", TransX = 0.990000, TransY = 0.161000, TransZ = -2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY2.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail2", TransX = 0.466000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --mr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY2.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail3", TransX = 0.990000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY2.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail5", TransX = -0.466000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --ml
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY2.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail6", TransX = -0.990000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY3.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail3", TransX = -0.990000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY3.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail6", TransX = 0.990000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY4.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail1", TransX = 0.230000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY4.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail3", TransX = -0.990000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY4.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail4", TransX = -0.230000, TransY = 0.1700000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY4.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail6", TransX = 0.990000, TransY = 0.1700000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --fl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY5.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail1", TransX = 0.230000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY5.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail2", TransX = -0.466000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --mr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY5.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail4", TransX = -0.230000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY5.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail5", TransX = 0.466000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --ml
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY6.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail1", TransX = 0.230000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY6.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail4", TransX = -0.230000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --cl
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY7.SCENE.MBIN", AfterNode = "EngineParts1", Name = "Trail2", TransX = -0.466000, TransY = -0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --mr
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEBODY7.SCENE.MBIN", AfterNode = "EngineParts", Name = "Trail5", TransX = 0.466000, TransY = 0.170000, TransZ = 2.500000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}, --ml
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEL.SCENE.MBIN", AfterNode = "LBackClaw1JNT", Name = "Trail7", TransX = 1.830000, TransY = -1.250000, TransZ = -1.300000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SENTINELSHIP\PARTS\ENGINEFLAMEL.SCENE.MBIN", AfterNode = "RBackClaw1JNT1", Name = "Trail8", TransX = -1.830000, TransY = -1.270000, TransZ = -1.300000, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYA.SCENE.MBIN", AfterNode = "_Acc_A", Name = "Trail", TransX = 0.529562, TransY = 0.743365, TransZ = -1.356251, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYA.SCENE.MBIN", AfterNode = "_Acc_A", Name = "Trail1", TransX = -0.529562, TransY = 0.743365, TransZ = -1.356251, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYC.SCENE.MBIN", AfterNode = "Object189", Name = "Trail", TransX = -0.001343, TransY = 0.476443, TransZ = -0.882019, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYF.SCENE.MBIN", AfterNode = "_Acc_NULL", Name = "Trail", TransX = 0.000000, TransY = 0.417725, TransZ = -1.410156, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYG.SCENE.MBIN", AfterNode = "MirrorMerged_X5", Name = "Trail", TransX = 0.000000, TransY = 0.694824, TransZ = -3.760742, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYI.SCENE.MBIN", AfterNode = "MirrorMerged_X2", Name = "Trail", TransX = 0.960907, TransY = 0.439915, TransZ = -2.751792, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\ACCESSORIES\ACCESSORYI.SCENE.MBIN", AfterNode = "MirrorMerged_X2", Name = "Trail1", TransX = -0.960907, TransY = 0.439915, TransZ = -2.751792, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\WINGS\WINGSE\WINGSEEND_LEFT.SCENE.MBIN", AfterNode = "Stage2", Name = "Trail", TransX = 1.817383, TransY = 0.474609, TransZ = -2.468750, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\WINGS\WINGSE\WINGSEEND_RIGHT.SCENE.MBIN", AfterNode = "Stage1", Name = "Trail", TransX = -1.817383, TransY = 0.474609, TransZ = -2.468750, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\WINGS\WINGSF\WINGSF_LEFT.SCENE.MBIN", AfterNode = "_WingA_1", Name = "Trail", TransX = 2.396484, TransY = 0.766846, TransZ = -4.738281, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000},
	{Part = "\SHUTTLE\WINGS\WINGSF\WINGSF_RIGHT.SCENE.MBIN", AfterNode = "_WingA_1", Name = "Trail", TransX = -2.396484, TransY = 0.766846, TransZ = -4.738281, RotX = 0.000000, RotY = 0.000000, RotZ = 0.000000}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION = BaseDescription,
	MOD_AUTHOR = Author,
	LUA_AUTHOR = Author,
	NMS_VERSION = GameVersion,
	MODIFICATIONS = {{
		MBIN_CHANGE_TABLE = {{
			MBIN_FILE_SOURCE = {"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESA.SCENE.MBIN",},
			MXML_CHANGE_TABLE = {
				{
					SPECIAL_KEY_WORDS = {"Name", "Trail1"},
					SEC_SAVE_TO = "TrailSEC",
				},
			},
		},}
	}}
}

for i, sec in ipairs(TrailsInfo) do
	NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][i+1] = {
		MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT"..TrailsInfo[i].Part,
		MXML_CHANGE_TABLE = {
			{
				SEC_EDIT = "TrailSEC",
				VALUE_CHANGE_TABLE = {
					{"Name", TrailsInfo[i].Name},
					{"TransX", TrailsInfo[i].TransX},
					{"TransY", TrailsInfo[i].TransY},
					{"TransZ", TrailsInfo[i].TransZ},
					{"RotX", TrailsInfo[i].RotX},
					{"RotY", TrailsInfo[i].RotY},
					{"RotZ", TrailsInfo[i].RotZ},
				},
			},
			{
				SPECIAL_KEY_WORDS = {"Name", sec.AfterNode},
				ADD_OPTION = "ADDafterSECTION",
				SEC_ADD_NAMED = "TrailSEC",
			},
		},
	}
end