Author = "Gumsk,lMonk"
ModName = "GMech"
ModNameSub = "Mechjets Reskin Yellow"
BaseDescription = "Reskin of all the lighting sources on the mech"
GameVersion = "261"
ModVersion = "a"
FileSource1 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\JETPACKCOREMAT.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\JETPACKCAMFACEMAT.MATERIAL.MBIN"
FileSource3 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\JETPACKSCROLLMAT.MATERIAL.MBIN"
FileSource4 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\PHONG4.MATERIAL.MBIN"
FileSource5 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\JETSPARKSMAT.MATERIAL.MBIN"
FileSource6 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\HOVERENGINEMAT.MATERIAL.MBIN"
FileSource7 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\SOLIDLIGHT5.MATERIAL.MBIN"
FileSource8 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\ORANGEGLOWFADE_MAT.MATERIAL.MBIN"
FileSource9 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\PANNINGCIRCUIT_MAT.MATERIAL.MBIN"
FileSource10 = "MODELS\EFFECTS\TRAILS\MECH\MECHCONTRAIL.MATERIAL.MBIN"
FileSource11 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\PHONG2.MATERIAL.MBIN"
FileSource12 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01.SCENE.MBIN"
FileSource13 = "MODELS\COMMON\VEHICLES\SHARED\MININGLASER.SCENE.MBIN"

MechJetCore = "TEXTURES/EFFECTS/SPACE/PLASMA.DDS"
MechJetLayer1 = ""
MechJetLayer2 = ""
MechJetLayer3 = ""
MechJetOuterGlowRed = 1.0
MechJetOuterGlowGreen = 1.0
MechJetOuterGlowBlue = 0.0
MechJetOuterGlowTransparency = 1.0
MechJetSparks = "TEXTURES/EFFECTS/PLAYER/JETPACKJET.DDS"
MechJetExhaust = "TEXTURES/EFFECTS/PLAYER/JETPACKJET.DDS"
MechJetChestLights = "TEXTURES/EFFECTS/PLAYER/JETPACKJET.DDS"
MechJetRibLights = "TEXTURES/EFFECTS/PLAYER/JETPACKJET.DDS"
MechJetRibCircuit = "TEXTURES/EFFECTS/PLAYER/JETPACKJET.DDS"
MechJetStreamers = "TEXTURES/EFFECTS/PLAYER/JETPACKJET.DDS"
MechJetPhong2 = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\MECHJETPACK01\JETPACKCOREMAT.MATERIAL.MBIN"
MechJetGlowFOV = 360				--360
MechJetGlowFalloff = "linear"		--quadratic
MechJetGlowIntensityMult = 7		--1.0
MechJetGlowRed = 1.0				--1
MechJetGlowGreen = 1.0				--0.794800
MechJetGlowBlue = 0.0				--0.313700

SpotlightTransX		= 1.32			--Light source left/right from exocraft centerline
SpotlightTransY		= 3.45			--Light source down/up from exocraft centerline
SpotlightTransZ		= -4.2			--Light source back/forward from somewhere in front of exocraft, about 4u
SpotlightFOV		= 50
SpotlightFalloff	= "linear"
SpotlightIntensity	= "200000.0"
SpotlightRed		= 1.0
SpotlightGreen		= 1.0
SpotlightBlue		= 0.0
SpotlightText = [[					<Property value="TkSceneNodeData.xml">
					  <Property name="Name" value="spotLight1" />
					  <Property name="NameHash" value="422545419" />
					  <Property name="Type" value="LIGHT" />
					  <Property name="Transform" value="TkTransformData.xml">
						<Property name="TransX" value="]]..SpotlightTransX..[[" />
						<Property name="TransY" value="]]..SpotlightTransY..[[" />
						<Property name="TransZ" value="]]..SpotlightTransZ..[[" />
						<Property name="RotX" value="-10.6" />
						<Property name="RotY" value="180" />
						<Property name="RotZ" value="0" />
						<Property name="ScaleX" value="23.54772" />
						<Property name="ScaleY" value="23.54772" />
						<Property name="ScaleZ" value="23.54772" />
					  </Property>
					  <Property name="Attributes">
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="FOV" />
						  <Property name="Value" value="]]..SpotlightFOV..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="FALLOFF" />
						  <Property name="Value" value="]]..SpotlightFalloff..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="INTENSITY" />
						  <Property name="Value" value="]]..SpotlightIntensity..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_R" />
						  <Property name="Value" value="]]..SpotlightRed..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_G" />
						  <Property name="Value" value="]]..SpotlightGreen..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_B" />
						  <Property name="Value" value="]]..SpotlightBlue..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="MATERIAL" />
						  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					  </Property>
					  <Property name="Children" />
					</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {


MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
MODIFICATIONS	= {

	--Jet core and layer 4 color
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource1,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetCore}}}
			--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKRIM.DDS
			--Solid left fades to black at middle and all of right
	}}}},
		
	--Jet layer 1 color
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource2,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetLayer1}}}
			--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKRIM.DDS
	}}}},
	
	--Jet layer 2 color
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource3,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetLayer2}}}
			--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKLINES.DDS
	}}}},

	--Jet layer 3 color
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource4,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetLayer3}}}
			--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKRIM.DDS
	}}}},
	
	--Sparks
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource5,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetSparks}}}
			--Original TEXTURES/EFFECTS/PLAYER/SPARKS.DDS
	}}}},

	--Two blue rectangles on back of shoulders.
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource6,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetExhaust}}}
			--Original TEXTURES/EFFECTS/PLAYER/JETPACKJETBCORE.DDS
	}}}},

	--5 soft white lights on chest
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource7,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetChestLights}}}
			--Original TEXTURES/COMMON/VEHICLES/ROVER/ROVERFRONTLIGHT.1.DDS
	}}}},

	--Single, solid light on each side of rib cage
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource8,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetRibLights}}}
			--Original TEXTURES/SPACE/NEXUS/ORANGEGLOWFADE.DDS
	}}}},
	
	--Blinking lights in rib cage
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource9,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetRibCircuit}}}
			--Original TEXTURES/SPACE/NEXUS/PANNINGCIRCUIT.DDS
	}}}},
	
	--Streamers from shoulders and ankles, 4 total
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource10,
	EXML_CHANGE_TABLE = {
		{PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
			{"Map",MechJetStreamers}}}
			--Original TEXTURES/EFFECTS/TRAILS/MECHCONTRAIL/CONTRAIL.DDS
	}}}},
	
	--Outer jet glow, default red-orange
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource11,
	EXML_CHANGE_TABLE = {
		{SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
		LINE_OFFSET = "+1",
		VALUE_CHANGE_TABLE = {
			{"x",MechJetOuterGlowRed},
			{"y",MechJetOuterGlowBlue},
			{"z",MechJetOuterGlowGreen},
			{"t",MechJetOuterGlowTransparency}
		}}
			--Original TEXTURES/EFFECTS/TRAILS/MECHCONTRAIL/CONTRAIL.DDS
	}}}},

	--MechJet ambient glow, default yellow
	{MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = FileSource12,
	EXML_CHANGE_TABLE = {
		{SPECIAL_KEY_WORDS 		= {"Name","FOV"},
			REPLACE_TYPE 		= "ALL",
			VALUE_CHANGE_TABLE	= {
				{"Value", MechJetGlowFOV}}},
		{SPECIAL_KEY_WORDS 		= {"Name","FALLOFF"},
			REPLACE_TYPE 		= "ALL",
			VALUE_CHANGE_TABLE	= {
				{"Value", MechJetGlowFalloff}}},
		{SPECIAL_KEY_WORDS 		= {"Name","INTENSITY","Value","IGNORE"},
			["MATH_OPERATION"]		= "*",
			REPLACE_TYPE 		= "ALL",
			VALUE_CHANGE_TABLE	= {
				{"IGNORE", MechJetGlowIntensityMult}}},
		{SPECIAL_KEY_WORDS = {"Name","COL_R"},
			REPLACE_TYPE 		= "ALL",
			VALUE_CHANGE_TABLE	= {
				{"Value", MechJetGlowRed}}},
		{SPECIAL_KEY_WORDS = {"Name","COL_G"},
			REPLACE_TYPE 		= "ALL",
			VALUE_CHANGE_TABLE	= {
				{"Value", MechJetGlowGreen}}},
		{SPECIAL_KEY_WORDS = {"Name","COL_B"},	
		REPLACE_TYPE 		= "ALL",
			VALUE_CHANGE_TABLE	= {
				{"Value", MechJetGlowBlue}}},
	
			-- --No idea
			-- {MBIN_CHANGE_TABLE = {{
			-- MBIN_FILE_SOURCE = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\HOVERENGINENOSCROLLMAT.MATERIAL.MBIN",
			-- EXML_CHANGE_TABLE = {
				-- {PRECEDING_KEY_WORDS = {"Samplers"},
				-- VALUE_CHANGE_TABLE = {
					-- {"Map","TEXTURES/EFFECTS/PLAYER/JETPACKJETB.DDS"}}}
					-- --Original TEXTURES/EFFECTS/PLAYER/JETPACKJETBCORE.DDS
			-- }}}},
	
			-- --No idea
			-- {MBIN_CHANGE_TABLE = {{
			-- MBIN_FILE_SOURCE = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\TURBINEGLOW_MAT.MATERIAL.MBIN",
			-- EXML_CHANGE_TABLE = {
				-- {PRECEDING_KEY_WORDS = {"Samplers"},
				-- VALUE_CHANGE_TABLE = {
					-- {"Map","TEXTURES/EFFECTS/PLAYER/JETPACKJETB.DDS"}}}
					-- --Original TEXTURES/COMMON/SPACECRAFT/S-CLASS/GLOWINGCOREPROC.PRIMARY.DDS
			-- }}}},
	
			-- --No idea
			-- {MBIN_CHANGE_TABLE = {{
			-- MBIN_FILE_SOURCE = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\WARRIORLIGHTS_MAT5.MATERIAL.MBIN",
			-- EXML_CHANGE_TABLE = {
				-- {PRECEDING_KEY_WORDS = {"Samplers"},
				-- VALUE_CHANGE_TABLE = {
					-- {"Map","TEXTURES/EFFECTS/PLAYER/JETPACKJETB.DDS"}}}
					-- --Original TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/WARRIOR/WARRIORLIGHTS.DDS
			-- }}}},
	}}}},
	{MBIN_CHANGE_TABLE = {
		{MBIN_FILE_SOURCE	= FileSource13,
		EXML_CHANGE_TABLE 	= 
				{{SPECIAL_KEY_WORDS	= {"Name","GunLight"},
				["ADD"] 				= SpotlightText,
				REPLACE_TYPE		= "AddAfterSection"}}
	}}}
}}