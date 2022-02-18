Author = "Gumsk"
ModName = "GDoor"
GameVersion = "261"
ModVersion = "a"

NewTexture = {}
NMS_MOD_DEFINITION_CONTAINER = {}

NewTexture = {
	{"TEXTURES/EFFECTS","DRONESCAN","BlueStrange"},
	{"TEXTURES/EFFECTS","FLASH_SINGLE","OrangeSmoke"},
	{"TEXTURES/EFFECTS","REDDRONESCAN","RedStrange"},
	{"TEXTURES/EFFECTS","GRADIENT_LONGFALLOFF.ORANGE","OrangeLongFade"},
	{"TEXTURES/EFFECTS","GRADIENT_LONGFALLOFF.PURPLE","PurpleLongFade"},
	{"TEXTURES/EFFECTS","GRADIENT_LONGFALLOFF.RED","RedLongFade"},
	{"TEXTURES/EFFECTS","GRADIENT_LONGFALLOFF.WHITE","WhiteLongFade"},
	{"TEXTURES/EFFECTS","SMOKE","WhiteSmoke"},
	{"TEXTURES/EFFECTS/BLACKHOLE","BLACKHOLESCROLL_GLOW","TealPlasma"},
	{"TEXTURES/EFFECTS/BLACKHOLE","BLACKHOLESCROLL_GREY","WhitePlasmaSubtle"},
	{"TEXTURES/EFFECTS/BLACKHOLE","BLACKHOLESCROLL_GLOW.MASKS","OrangePlasma1"},
	{"TEXTURES/EFFECTS/BLACKHOLE","BLACKHOLESCROLL_GREY.MASKS","OrangePlasma2"},
	{"TEXTURES/EFFECTS/BLACKHOLE","PLASMA","BluePlasma"},
	{"TEXTURES/EFFECTS/BLACKHOLE","PLASMAYELLOW","YellowPlasma"},
	{"TEXTURES/EFFECTS/DEBRIS","SUB.TECH.MASKS","YellowFade1"},
	{"TEXTURES/EFFECTS/DEBRIS","SUB.TECH.METALLIC","WhiteFade"},
	{"TEXTURES/EFFECTS/FULLSCREEN/HAZARDS","HOT.REFRACTION","PurpleFade"},
	{"TEXTURES/EFFECTS/GRADIENTS","LONGFALLOFF_BLUE","BlueFade"},
	{"TEXTURES/EFFECTS/GRADIENTS","LONGFALLOFF_GREEN","GreenFade1"},
	{"TEXTURES/EFFECTS/GRADIENTS","LONGFALLOFF_RED","RedFade"},
	{"TEXTURES/EFFECTS/HOLOGRAM","GRID","Grid"},
	{"TEXTURES/GALACTIC","WAVE","GalacticPlasma"},
	{"TEXTURES/PLANETS/BIOMES/BARREN/HQ/TREES","BARK_DETAIL","BrownTreeBark"},
	{"TEXTURES/SPACE/ANOMALY","COREBEAM.1","BlueCore"},
	{"TEXTURES/SPACE/ANOMALY","GALAXYSPIRAL.2","BlueGalaxy"},
	{"TEXTURES/SPACE/ANOMALY","LIGHTFADE.1","WhiteReverse"},
	{"TEXTURES/SPACE/ANOMALY","LIGHTFADEALT.1","OrangeReverse"},
	{"TEXTURES/SPACE/ANOMALY","LIGHTFADESCROLL.1","OrangeBands"},
	{"TEXTURES/SPACE/ANOMALY","PANNINGLIGHTS.1","RedReverse"},
	{"TEXTURES/SPACE/NEXUS","EFFECTFADE","GreenFade2"},
	{"TEXTURES/SPACE/NEXUS","LIGHTCARD_1","WhiteSoft"},
	{"TEXTURES/SPACE/NEXUS","LIGHTINGEFFECTS","YellowFade2"},
	{"TEXTURES/SPACE/NEXUS","ORANGEGLOWFADE","OrangeFade"},
	{"TEXTURES/SPACE/NEXUS","PANNINGCIRCUIT","BlueCircuits"},
	{"TEXTURES/SPACE/NEXUS","TERMINALEYE","OrangeCircuitEye"},
	{"TEXTURES/SPACE/NEXUS","WIRECELLSGLOWSCROLL","OrangeCircuitDense"},
	{"TEXTURES/SPACE/SPACESTATION","ENTRANCEBEAM_RED","OrangeBlue"},
	}

for i = 1,#NewTexture do

	NMS_MOD_DEFINITION_CONTAINER[(#NMS_MOD_DEFINITION_CONTAINER+1)] = {
		["MOD_FILENAME"]	= ModName.." Holo "..NewTexture[i][3].." "..GameVersion..ModVersion..".pak",
		["MOD_DESCRIPTION"]	= "Holodoor Reskin"..NewTexture[i][3],
			["MOD_AUTHOR"]		= Author,
			["NMS_VERSION"]		= GameVersion,
			["MODIFICATIONS"]	= {
			{["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DOOR_2/GLOWGRADIENT_SKINNEDMAT.MATERIAL.MBIN",
			["EXML_CHANGE_TABLE"] = {{
				["PRECEDING_KEY_WORDS"] = {"Samplers"},
				["VALUE_CHANGE_TABLE"] = {
					{"Map", NewTexture[i][1].."/"..NewTexture[i][2]..".DDS"}
		}}}}}}}
	}

	NMS_MOD_DEFINITION_CONTAINER[(#NMS_MOD_DEFINITION_CONTAINER+1)] = {
		["MOD_FILENAME"]	= ModName.." Moonpool "..NewTexture[i][3].." "..GameVersion..ModVersion..".pak",
		["MOD_DESCRIPTION"]	= "Moonpool Floor Reskin"..NewTexture[i][3],
		["MOD_AUTHOR"]		= Author,
		["NMS_VERSION"]		= GameVersion,
		["MODIFICATIONS"]	= {{
			["MBIN_CHANGE_TABLE"] = {
			{["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UNDERWATERBASE/FLOOR_WATERDOOR/HOLOGRAMDISPLACEMENT_MAT.MATERIAL.MBIN",
			["EXML_CHANGE_TABLE"] = {{
				["PRECEDING_KEY_WORDS"] = {"Samplers"},
				["VALUE_CHANGE_TABLE"] = {
		--Horizontal shifting overlay on top of pool. Placed on object in a radial pattern. Works best with a uniform pattern.
					{"Map",NewTexture[i][1].."/"..NewTexture[i][2]..".DDS"}
		}}}},
			{["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UNDERWATERBASE/FLOOR_WATERDOOR/HOLOGRAMDISPLACEMENT_MAT1.MATERIAL.MBIN",
			["EXML_CHANGE_TABLE"] = {{
				["PRECEDING_KEY_WORDS"] = {"Samplers"},
				["VALUE_CHANGE_TABLE"] = {
		--Vertical cylinder glow emanating from pool going down, like holodoor. Works best with a left to right fade.
					{"Map",NewTexture[i][1].."/"..NewTexture[i][2]..".DDS"}
		}}}}}}}
	}

	NMS_MOD_DEFINITION_CONTAINER[(#NMS_MOD_DEFINITION_CONTAINER+1)] = {
		["MOD_FILENAME"]	= ModName.." Watertight "..NewTexture[i][3].." "..GameVersion..ModVersion..".pak",
		["MOD_DESCRIPTION"]	= "Watertight Door Reskin"..NewTexture[i][3],
		["MOD_AUTHOR"]		= Author,
		["NMS_VERSION"]		= GameVersion,
		["MODIFICATIONS"]	= {
			{["MBIN_CHANGE_TABLE"] = {
			{["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UNDERWATERBASE/DOOR/HOLOGRAMDISPLACEMENT_MAT2.MATERIAL.MBIN",
			["EXML_CHANGE_TABLE"] = {{
				["PRECEDING_KEY_WORDS"] = {"Samplers"},
				["VALUE_CHANGE_TABLE"] = {
		--Flat surface across door entrance. Texture placed in a radial pattern starting at 09:30 with the bottom of the texture closest to the middle and becoming more compressed closer to the middle. Works best with a uniform texture.
					{"Map",NewTexture[i][1].."/"..NewTexture[i][2]..".DDS"}
		}}}},
			{["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UNDERWATERBASE/DOOR/HOLOGRAMDISPLACEMENT_MAT3.MATERIAL.MBIN",
			["EXML_CHANGE_TABLE"] = {{
				["PRECEDING_KEY_WORDS"] = {"Samplers"},
				["VALUE_CHANGE_TABLE"] = {
		--Cylinder emanating horizontally from door. Texture placed around circumference in a clockwise pattern starting at 09:30. Works best with a top to bottom fade.
					{"Map",NewTexture[i][1].."/"..NewTexture[i][2]..".DDS"}
		}}}}}}}
	}

end