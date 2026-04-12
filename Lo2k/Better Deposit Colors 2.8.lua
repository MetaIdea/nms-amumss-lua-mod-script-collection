NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Deposit Colors 2.8", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.32",
["MOD_DESCRIPTION"]			= "This mod improves deposit substances aspects",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						-- ACTIVATED CADMIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_RED"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MBIN"},
							}
						}, 
						
						-- ACTIVATED COPPER
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_YELLOW"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_YELLOW"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1.0"},
								{"G", "0.5"},
								{"B", "0.0"},
							}
						},
						
						-- ACTIVATED EMERIL
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_GREEN"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "EX_GREEN"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.2"},
								{"G", "0.8"},
								{"B", "0.0"},
							}
						},
						
						-- AMMONIA
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "TOXIC1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/AMMONIA.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "TOXIC1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.75"},
								{"G", "1.0"},
								{"B", "0.75"},
							}
						},
						
						-- CADMIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "RED2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MBIN"},
							}
						}, 
						
						-- COBALT
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "CAVE1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COBALT.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "CAVE1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.1"},
								{"G", "0.4"},
								{"B", "0.7"},
							}
						},
						
						-- COPPER
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "YELLOW2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COPPERDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "YELLOW2"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.9"},
								{"G", "0.6"},
								{"B", "0.5"},
							}
						},
						
						-- DIOXITE
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "COLD1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/DIOXITE.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "COLD1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.6"},
								{"G", "0.85"},
								{"B", "1.0"},
							}
						},
						
						-- GOLD 
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/GOLD.SCENE.MBIN"},
							}
						}, 
						
						
						-- EMERIL
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "GREEN2"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "GREEN2"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.2"},
								{"G", "0.8"},
								{"B", "0.0"},
							}
						},
						
						-- MAGNETIZED FERRITE
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "LAND3"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/MAGNETDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "LAND3"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.57"},
								{"G", "0.57"},
								{"B", "0.57"},
							}
						},
						
						
						-- 
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "SAND1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SILICATEPOWDER.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "SAND1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.5"},
								{"G", "0.5"},
								{"B", "0.5"},
							}
						},
						
						
						-- PARAFFINIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "LUSH1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PARAFDEBRIS.SCENE.MBIN"},
							}
						}, 
						
						--  PHOSPHORUS
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "HOT1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PHOSPHORUS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "HOT1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.96"},
								{"G", "0.25"},
								{"B", "0.32"},
							}
						},

						
						-- RUSTED METAL					
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK3"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/RUSTEDDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "SPACEGUNK3"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.8"},
								{"G", "0.3"},
								{"B", "0.0"},
							}
						}, 
						
						-- SALT
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "WATER1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "WATER1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.85"},
								{"G", "0.85"},
								{"B", "0.85"},
							}
						}, 
						
						-- SILVER				
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "ASTEROID1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.9"},
								{"G", "0.9"},
								{"B", "0.95"},
							}
						}, 
						
						-- SODIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SODIUMDEBRIS.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "1.0"},
								{"G", "1.0"},
								{"B", "0.8"},
							}
						},
						
						-- URANIUM
						{  
							["SPECIAL_KEY_WORDS"] = {"ID", "RADIO1"}, 
							["PRECEDING_KEY_WORDS"] = {"DebrisFile"}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/URANIUM.SCENE.MBIN"},
							}
						}, 
						{ 
							["SPECIAL_KEY_WORDS"] = {"ID", "RADIO1"},
							["PRECEDING_KEY_WORDS"] = {"WorldColour"},  
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", "0.9"},
								{"G", "1"},
								{"B", "0"},
							}
						},
					},
				},	
			}
		}
	},	
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\ACTIVATEDCOPPER\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/AMMONIA.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COBALT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COPPERDEBRIS.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/DIOXITE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/GOLD.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD" />
	<Property name="NameHash" value="3923064319" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris1" />
			<Property name="NameHash" value="721985619" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="721985619" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD\TERRAINDEBRISMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/MAGNETDEBRIS.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS" />
	<Property name="NameHash" value="3923064319" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris1" />
			<Property name="NameHash" value="721985619" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="721985619" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PARAFDEBRIS.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS" />
	<Property name="NameHash" value="4211824747" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS2.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris2" />
			<Property name="NameHash" value="2101527750" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="2101527750" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS\TERRAINDEBRISMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris2Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PHOSPHORUS.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS" />
	<Property name="NameHash" value="3923064319" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris1" />
			<Property name="NameHash" value="721985619" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="721985619" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS\TERRAINDEBRISMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/RUSTEDDEBRIS.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS" />
	<Property name="NameHash" value="221772996" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS3.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris3" />
			<Property name="NameHash" value="1334012232" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="1334012232" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS\TERRAINDEBRISMAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris3Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SILICATEPOWDER.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER" />
	<Property name="NameHash" value="3706854449" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS4.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris4" />
			<Property name="NameHash" value="566595021" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="566595021" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER\TERRAINDEBRISMAT3.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris4Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SODIUMDEBRIS.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS" />
	<Property name="NameHash" value="3923064319" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris1" />
			<Property name="NameHash" value="721985619" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="721985619" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS\TERRAINDEBRISMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/URANIUM.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM" />
	<Property name="NameHash" value="3923064319" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\TERRAINDEBRIS1.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="1" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="ResourceDebris1" />
			<Property name="NameHash" value="721985619" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="900" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="350" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.211731" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.208901" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.206958" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.211956" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.207946" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.206928" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="721985619" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM\TERRAINDEBRISMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="ResourceDebris1Shape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.845960" />
				<Property name="ScaleY" value="0.845960" />
				<Property name="ScaleZ" value="0.845960" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="RADIUS" />
					<Property name="Value" value="4.472136" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.955546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.803922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/ACTIVATEDCOPPER.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/AMMONIA/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\AMMONIA.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/CADMIUM/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\CADMIUM.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COBALT/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\COBALT.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/COPPERDEBRIS/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\COPPERDEBRIS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/DIOXITE/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\DIOXITE.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/EMERIL/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\EMERIL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/GOLD/TERRAINDEBRISMAT.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\GOLD.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/MAGNETDEBRIS/TERRAINDEBRISMAT.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\MAGNETDEBRIS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PARAFDEBRIS/TERRAINDEBRISMAT1.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat1" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\PARAFDEBRIS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.2.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.2.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/PHOSPHORUS/TERRAINDEBRISMAT.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\PHOSPHORUS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/RUSTEDDEBRIS/TERRAINDEBRISMAT2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat2" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\RUSTEDDEBRIS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.3.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SILICATEPOWDER/TERRAINDEBRISMAT3.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat3" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\SILICATEPOWDER.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.4.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.4.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/SODIUMDEBRIS/TERRAINDEBRISMAT.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\SODIUMDEBRIS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/URANIUM/TERRAINDEBRISMAT.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkMaterialData">
	<Property name="Name" value="TerrainDebrisMat" />
	<Property name="Metamaterial" value="Models/Effects/Debris/TerrainDebris/TerrainDebris1/Materials/TerrainDebrisMat.metamaterial.mXml" />
	<Property name="Class" value="TkMaterialClass">
		<Property name="MaterialClass" value="Opaque" />
	</Property>
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="true" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="true" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value="" />
	<Property name="Shader" value="SHADERS/UBERSHADER.SHADER.BIN" />
	<Property name="Flags">
		<Property name="Flags" value="TkMaterialFlags" _index="0">
			<Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="1">
			<Property name="MaterialFlag" value="_F03_NORMALMAP" />
		</Property>
		<Property name="Flags" value="TkMaterialFlags" _index="2">
			<Property name="MaterialFlag" value="_F25_MASKS_MAP" />
		</Property>
	</Property>
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gMaterialColourVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="1">
			<Property name="Name" value="gMaterialParamsVec4" />
			<Property name="Values">
				<Property name="X" value="1.000000" />
				<Property name="Y" value="0.500000" />
				<Property name="Z" value="1.000000" />
				<Property name="W" value="1.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="2">
			<Property name="Name" value="gMaterialParams2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="1.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="3">
			<Property name="Name" value="gMaterialSFXVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="4">
			<Property name="Name" value="gMaterialSFX2Vec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="5">
			<Property name="Name" value="gMaterialSFXColVec4" />
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt">
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="0">
			<Property name="Name" value="gDynamicFlags" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
		<Property name="Uniforms_UInt" value="TkMaterialUniform_UInt" _index="1">
			<Property name="Name" value="gLightLayers" />
			<Property name="Values">
				<Property name="X" value="3" />
				<Property name="Y" value="0" />
				<Property name="Z" value="0" />
				<Property name="W" value="0" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Samplers">
		<Property name="Samplers" value="TkMaterialSampler" _index="0">
			<Property name="Name" value="gDiffuseMap" />
			<Property name="Map" value="TEXTURES\EFFECTS\DEBRIS\TERRAINDEBRIS\URANIUM\.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="true" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="1">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
		<Property name="Samplers" value="TkMaterialSampler" _index="2">
			<Property name="Name" value="gNormalMap" />
			<Property name="Map" value="TEXTURES/EFFECTS/DEBRIS/TERRAINDEBRIS/TERDEBRIS.1.NORMAL.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
	</Property>
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
  }
}
