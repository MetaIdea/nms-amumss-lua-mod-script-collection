NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_DUD_ShipTrailAngleFix_v3751.pak",
["MOD_AUTHOR"]				= "jasondude7116",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.75",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "RefEngineB4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"21.100931"},
								{"Value",		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER.SCENE.MBIN"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "RefEngineB5"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"21.100931"},
								{"Value",		"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER.SCENE.MBIN"}
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pCube7",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "RotZ", 			"-20.321157" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pCube8",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "RotZ", 			"20.132433" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","C3",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "TransX", 			"0.32" },
								{ "TransZ", 			"0.15" },
								{ "ScaleX", 			"0.765" },
								{ "ScaleY", 			"0.765" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pCylinder12",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "TransX", 			"-0.13" },
								{ "TransZ", 			"-0.77" },
								{ "ScaleX", 			"1.1" },
								{ "ScaleY", 			"1.1" },
								{ "ScaleZ", 			"0.59" },
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"TransY", "2.325378"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"37.840652"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"TransX", "0.238925"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"27.772223"},
								{"RotY",		"-47.318554"},
								{"RotZ",		"-26.806637"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"TransX", "-0.238925"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-27.772223"},
								{"RotY",		"-132.68146"},
								{"RotZ",		"-26.806637"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"TransY", "1.927788"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-33.463203"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "Trail"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",		"1.03424"},
								{"TransY",		"1.568754"},
								{"RotX",		"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "Trail1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",		"-1.034242"},
								{"TransY",		"1.568754"},
								{"RotX",		"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "_SmallSign1_A"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",		"104.30264"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "_SmallSign2_A"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotZ",		"-31.363827"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "C2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-31.026487"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "C3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-31.026487"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "_Number_A1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"38.172882"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "_Letter2_A"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",		"-85.228546"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "Trail1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",		"1.869246"},
								{"TransZ",		"-2.01901"},
								{"RotX",		"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "Trail"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY",		"1.869246"},
								{"TransZ",		"-2.01901"},
								{"RotX",		"0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"TransZ", "-2.884613"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-48.134666"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"TransZ", "-1.508934"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-31.475046"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"TransZ", "-0.664027"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotX",		"-61.512165"},
							}
						},						
					}
				},				
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER.SCENE.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER" />
  <Property name="NameHash" value="3821677782" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData.xml">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="J_Root" />
      <Property name="NameHash" value="3252211502" />
      <Property name="Type" value="JOINT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="JOINTINDEX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="J_Scale" />
          <Property name="NameHash" value="64026902" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.55" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.5" />
            <Property name="ScaleY" value="0.5" />
            <Property name="ScaleZ" value="0.5" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Stage1" />
              <Property name="NameHash" value="1790279305" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="-1.1" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="2" />
                <Property name="ScaleY" value="2" />
                <Property name="ScaleZ" value="2" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="AE" />
                  <Property name="NameHash" value="2110272059" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-1.687207" />
                    <Property name="TransY" value="-1.329538" />
                    <Property name="TransZ" value="-1.429934" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1.0693" />
                    <Property name="ScaleY" value="1.0693" />
                    <Property name="ScaleZ" value="1.0693" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1134" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="331" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="391" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="300" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="60" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="40" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="72" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.894528" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.926724" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.841498" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.261193" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.560019" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.242055" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="11699364034995609252" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEGLOW_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="AEShape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Stage2" />
              <Property name="NameHash" value="1483987462" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="-1.1" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="2" />
                <Property name="ScaleY" value="2" />
                <Property name="ScaleZ" value="2" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="pCylinder10" />
                  <Property name="NameHash" value="689248453" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-1E-06" />
                    <Property name="TransZ" value="0.140736" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="0.243354" />
                    <Property name="ScaleY" value="0.243354" />
                    <Property name="ScaleZ" value="0.243354" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1434" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="392" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="976" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="3072" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="584" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="72" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="120" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.302084" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.302084" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-9.643144" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.302085" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.302085" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.000002" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="17699109134216209378" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEJET_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="pCylinderShape10" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Stage7" />
                  <Property name="NameHash" value="3058053" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-1E-06" />
                    <Property name="TransZ" value="0.41198" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="0.18824" />
                    <Property name="ScaleY" value="0.18824" />
                    <Property name="ScaleZ" value="0.18824" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="4506" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="977" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1301" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1536" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="324" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="120" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="152" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.724631" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="2.663431" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="8641086052981455289" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEJET_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="StageShape7" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="C1" />
                  <Property name="NameHash" value="3411200775" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-1E-06" />
                    <Property name="TransZ" value="0.543193" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="2.314815" />
                    <Property name="ScaleY" value="2.314815" />
                    <Property name="ScaleZ" value="2.314815" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6042" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1302" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1626" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1536" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="324" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="152" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="168" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.082535" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.000001" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="15131237570110795455" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEJET_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="C1Shape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail" />
              <Property name="NameHash" value="4236082237" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="-0.3" />
                <Property name="TransZ" value="-1.1" />
                <Property name="RotX" value="-21.100931" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="0.744" />
                <Property name="ScaleY" value="0.744" />
                <Property name="ScaleZ" value="0.744" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="EngineB" />
      <Property name="NameHash" value="947670659" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="330" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1134" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="330" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="40" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.302163" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.540515" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1077645760821637270" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINES_B_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="EngineBShape" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENTITIES\ENGINEB.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]			
		}
	}
}