Color = "GREEN"
Red = "0"			--1
Green = "1"			--0.794800
Blue = "0"			--0.313700
Alpha = "1"			--1

Author = "Gumsk,lMonk"
ModName = "GMech"
ModNameSub = "Mechjets Reskin "..Color
BaseDescription = "Reskin of all the lighting sources on the mech"
GameVersion = "464"
ModVersion = "a"

CoreFile = "GUMSK."..Color..".MECHJETPACKRIM.DDS"
Layer1File = "GUMSK."..Color..".MECHJETPACKRIM.DDS"
Layer2File = "GUMSK."..Color..".MECHJETPACKLINES.DDS"
Layer3File = "GUMSK."..Color..".MECHJETPACKRIM.DDS"
Layer4File = "GUMSK."..Color..".MECHJETPACKRIM.DDS"
SparksFile = "GUMSK."..Color..".SPARKS.DDS"
ContrailsFile = "GUMSK."..Color..""
ExhaustFile = "GUMSK."..Color..".JETPACKJETBCORE.DDS"
ChestLightsFile = "GUMSK."..Color..".ROVERFRONTLIGHT.1.DDS"
RibLightsFile = "GUMSK."..Color..".ORANGEGLOWFADE.DDS"
RibCircuitsFile = "GUMSK."..Color..".PANNINGCIRCUIT.DDS"
WarriorFile = "GUMSK."..Color..".WARRIORLIGHTS.DDS"

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
FileSource14 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\WARRIORLIGHTS_MAT5.MATERIAL.MBIN"
FileSource15 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT.SCENE.MBIN"

MechJetGlowFOV 		= 360				--360
MechJetGlowFalloff 	= "linear"		--quadratic
MechJetGlowIntensityMult = 7		--1.0

SpotlightTransX		= 1.32			--Light source left/right from exocraft centerline
SpotlightTransY		= 3.45			--Light source down/up from exocraft centerline
SpotlightTransZ		= -4.2			--Light source back/forward from somewhere in front of exocraft, about 4u
SpotlightFOV		= 45
SpotlightFalloff	= "linear"
SpotlightIntensity	= "200000.0"
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
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..SpotlightFOV..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="FALLOFF" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..SpotlightFalloff..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="INTENSITY" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..SpotlightIntensity..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_R" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..Red..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_G" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..Green..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_B" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..Blue..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="MATERIAL" />
						  <Property name="AltID" value="" />
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
ADD_FILES = {
	{
		FILE_DESTINATION 		= "TEXTURES/"..CoreFile,
		["EXTERNAL_FILE_SOURCE"] 	= CoreFile,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..Layer2File,
		["EXTERNAL_FILE_SOURCE"] 	= Layer2File,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..SparksFile,
		["EXTERNAL_FILE_SOURCE"] 	= SparksFile,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..ExhaustFile,
		["EXTERNAL_FILE_SOURCE"] 	= ExhaustFile,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..ChestLightsFile,
		["EXTERNAL_FILE_SOURCE"] 	= ChestLightsFile,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..RibLightsFile,
		["EXTERNAL_FILE_SOURCE"] 	= RibLightsFile,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..RibCircuitsFile,
		["EXTERNAL_FILE_SOURCE"] 	= RibCircuitsFile,
	},
	{
		FILE_DESTINATION 		= "TEXTURES/"..WarriorFile,
		["EXTERNAL_FILE_SOURCE"] 	= WarriorFile,
	},
},
MODIFICATIONS	= {
	{MBIN_CHANGE_TABLE = {
		--Jet core and layer 4 color
		{MBIN_FILE_SOURCE = FileSource1,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..CoreFile}}}
				--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKRIM.DDS
		}},
		
		--Jet layer 1 color
		{MBIN_FILE_SOURCE = FileSource2,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..Layer1File}}}
				--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKRIM.DDS
		}},
	
		--Jet layer 2 color
		{MBIN_FILE_SOURCE = FileSource3,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..Layer2File}}}
				--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKLINES.DDS
		}},

		--Jet layer 3 color
		{MBIN_FILE_SOURCE = FileSource4,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..Layer3File}}}
				--Original TEXTURES/EFFECTS/PLAYER/MECHJETPACKRIM.DDS
		}},
	
		--Sparks
		{MBIN_FILE_SOURCE = FileSource5,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..SparksFile}}}
				--Original TEXTURES/EFFECTS/PLAYER/SPARKS.DDS
		}},

		--Two blue rectangles on back of shoulders.
		{MBIN_FILE_SOURCE = FileSource6,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..ExhaustFile}}}
				--Original TEXTURES/EFFECTS/PLAYER/JETPACKJETBCORE.DDS
		}},

		--5 soft white lights on chest
		{MBIN_FILE_SOURCE = FileSource7,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..ChestLightsFile}}}
				--Original TEXTURES/COMMON/VEHICLES/ROVER/ROVERFRONTLIGHT.1.DDS
		}},

		--Single, solid light on each side of rib cage
		{MBIN_FILE_SOURCE = FileSource8,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..RibLightsFile}}}
				--Original TEXTURES/SPACE/NEXUS/ORANGEGLOWFADE.DDS
		}},
	
		--Blinking lights in rib cage
		{MBIN_FILE_SOURCE = FileSource9,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..RibCircuitsFile}}}
				--Original TEXTURES/SPACE/NEXUS/PANNINGCIRCUIT.DDS
		}},
	
		--Streamers from shoulders and ankles, 4 total
		{MBIN_FILE_SOURCE = FileSource10,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..ContrailsFile}}}
				--Original TEXTURES/EFFECTS/TRAILS/MECHCONTRAIL/CONTRAIL.DDS
		}},
	
		--Outer jet glow, default red-orange
		{MBIN_FILE_SOURCE = FileSource11,
		EXML_CHANGE_TABLE = {
			{SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
			LINE_OFFSET = "+1",
			VALUE_CHANGE_TABLE = {
				{"x",Red},
				{"y",Blue},
				{"z",Green},
				{"t",Alpha}
			}}
		}},

		--MechJet ambient glow, default yellow
		{MBIN_FILE_SOURCE = FileSource12,
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
					{"Value", Red}}},
			{SPECIAL_KEY_WORDS = {"Name","COL_G"},
				REPLACE_TYPE 		= "ALL",
				VALUE_CHANGE_TABLE	= {
					{"Value", Green}}},
			{SPECIAL_KEY_WORDS = {"Name","COL_B"},	
			REPLACE_TYPE 		= "ALL",
				VALUE_CHANGE_TABLE	= {
					{"Value", Blue}}},
					
		}},
	
		{MBIN_FILE_SOURCE	= FileSource13,
		EXML_CHANGE_TABLE 	= {
			{SPECIAL_KEY_WORDS	= {"Name","GunLight"},
				["ADD"] 				= SpotlightText,
				REPLACE_TYPE		= "AddAfterSection"}}
		},

		--Small long rectangular lights at crotch and front of shoulders - Top right on DDS
		{MBIN_FILE_SOURCE = FileSource14,
		EXML_CHANGE_TABLE = {
			{PRECEDING_KEY_WORDS = {"Samplers"},
			VALUE_CHANGE_TABLE = {
				{"Map","TEXTURES/"..WarriorFile}}}
				--Original TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/WARRIOR/WARRIORLIGHTS.DDS
		}},

		--Small long rectangular lights at crotch and front of shoulders - Top right on DDS
		{MBIN_FILE_SOURCE = FileSource15,
		EXML_CHANGE_TABLE = {
			{SPECIAL_KEY_WORDS = {"Name","spotLight2"},
				--["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION",
			},
			{SPECIAL_KEY_WORDS = {"Name","spotLight3"},
				--["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION",
			},
		}},

}}}}