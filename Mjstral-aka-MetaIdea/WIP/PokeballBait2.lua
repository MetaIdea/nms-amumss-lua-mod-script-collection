--OBJECT = [[MODELS\SPACE\ATLASSTATION\MODULARPARTS\ATLASCORE\ATLASCORE.SCENE.MBIN]]
OBJECT = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC.SCENE.MBIN]]
--OBJECT = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\OBJECTSPAWNER\BALL.SCENE.MBIN"
OBJECT_CLONE = string.gsub(OBJECT, ".SCENE", "_CLONE.SCENE")

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PokeballBait2.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.22+",
["MOD_DESCRIPTION"]			= "Replace creature food with another object",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= OBJECT_CLONE,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScaleX", 0.1},
								{"ScaleY", 0.1},
								{"ScaleZ", 0.1},
							}							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\PLANETEFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= { "Id", "ENZYMEFLUID"},
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/COOKING/ENZYMEFLUID.SCENE.MBIN" />]], [[<Property name="Filename" value="]] .. OBJECT_CLONE .. [[" />]]},
							}							
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = string.gsub(OBJECT, ".MBIN", ".EXML"),
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC" />
  <Property name="NameHash" value="1161166694" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Root" />
      <Property name="NameHash" value="2839882488" />
      <Property name="Type" value="JOINT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="13.5418" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Out1" />
          <Property name="NameHash" value="2777261903" />
          <Property name="Type" value="JOINT" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="In1" />
              <Property name="NameHash" value="2876203926" />
              <Property name="Type" value="JOINT" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="pSphere4_DUP" />
                  <Property name="NameHash" value="1739952105" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="3E-06" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-90" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="163143" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="82514" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="83080" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1713" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="566" />
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
                      <Property name="Value" value="1400" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1436" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-6.947547" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-6.952728" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.000002" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.000674" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6.952728" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="4.373351" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="14183595569619805926" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDINGINTERIOR_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="pSphere4_DUPShape" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="SUB1pSphere4_DUP" />
                      <Property name="NameHash" value="4203438640" />
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
                          <Property name="Value" value="164856" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTPHYSI" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="83081" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDPHYSICS" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="83454" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHCOUNT" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="870" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDGRAPHIC" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="373" />
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
                          <Property name="Value" value="1436" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BOUNDHULLED" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="1472" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-6.947547" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-6.952728" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.000002" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.000674" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6.952728" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="4.398904" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="HASH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="13378324752644339286" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MATERIAL" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDING_MAT.MATERIAL.MBIN" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MESHLINK" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="pSphere4_DUPShape" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="SUB2pSphere4_DUP" />
                      <Property name="NameHash" value="1519046947" />
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
                          <Property name="Value" value="165726" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTPHYSI" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="83455" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDPHYSICS" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="83459" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHCOUNT" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="9" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDGRAPHIC" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="4" />
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
                          <Property name="Value" value="1472" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BOUNDHULLED" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="1484" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.598055" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6.931075" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0.001734" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.110775" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6.952727" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0.105454" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="HASH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6895480961311183525" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MATERIAL" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\LAMBERT1.MATERIAL.MBIN" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MESHLINK" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="pSphere4_DUPShape" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="pSphere1" />
              <Property name="NameHash" value="1596631334" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="3E-06" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="-90" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="165735" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="83460" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="84264" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2328" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="804" />
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
                  <Property name="Value" value="1484" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1528" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-5.178813" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-6.755910" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.007075" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.002476" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="6.755909" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="6.750773" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="8572428901461582278" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDINGINTERIOR_MAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="pSphereShape1" />
                </Property>
              </Property>
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="SUB1pSphere1" />
                  <Property name="NameHash" value="3108062167" />
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
                      <Property name="Value" value="168063" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="84265" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="84467" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="456" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="202" />
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
                      <Property name="Value" value="1528" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1564" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.116039" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-6.755910" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.007075" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.002476" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6.755909" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6.750773" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="13227855633177292229" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDING_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="pSphereShape1" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Out2" />
          <Property name="NameHash" value="4026547259" />
          <Property name="Type" value="JOINT" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="In2" />
              <Property name="NameHash" value="2099676933" />
              <Property name="Type" value="JOINT" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="5" />
                </Property>
              </Property>
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="pSphere4_DUP2" />
                  <Property name="NameHash" value="2001201291" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="3E-06" />
                    <Property name="TransZ" value="0.005676" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="-90" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="168519" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="84468" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="85034" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1713" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="566" />
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
                      <Property name="Value" value="1564" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1600" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-6.947547" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-6.952728" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.000002" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.000674" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6.952728" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="4.373351" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="5653213901880719031" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDINGINTERIOR_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="pSphere4_DUPShape" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="SUB1pSphere4_DUP2" />
                      <Property name="NameHash" value="2947182175" />
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
                          <Property name="Value" value="170232" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTPHYSI" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="85035" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDPHYSICS" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="85408" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHCOUNT" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="870" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDGRAPHIC" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="373" />
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
                          <Property name="Value" value="1600" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BOUNDHULLED" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="1636" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-6.947547" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-6.952728" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.000002" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.000674" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6.952728" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="4.398904" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="HASH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="13498796505689325192" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MATERIAL" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDING_MAT.MATERIAL.MBIN" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MESHLINK" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="pSphere4_DUPShape" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="SUB2pSphere4_DUP2" />
                      <Property name="NameHash" value="1619358283" />
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
                          <Property name="Value" value="171102" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTPHYSI" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="85409" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDPHYSICS" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="85413" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BATCHCOUNT" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="9" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRSTARTGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="VERTRENDGRAPHIC" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="4" />
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
                          <Property name="Value" value="1636" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="BOUNDHULLED" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="1648" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.598055" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6.931075" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMINZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0.001734" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXX" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="-0.110775" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXY" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="6.952727" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="AABBMAXZ" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="0.105454" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="HASH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="17991082279467273288" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MATERIAL" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\LAMBERT1.MATERIAL.MBIN" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="MESHLINK" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="pSphere4_DUPShape" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="pSphere9" />
              <Property name="NameHash" value="846876610" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="3E-06" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="-90" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="171111" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="85414" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="86218" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2328" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="804" />
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
                  <Property name="Value" value="1648" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1692" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-5.178813" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-6.755910" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.007075" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.002476" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="6.755909" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="6.750773" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="13345437095798468415" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDINGINTERIOR_MAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="pSphereShape1" />
                </Property>
              </Property>
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="SUB1pSphere9" />
                  <Property name="NameHash" value="1257400123" />
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
                      <Property name="Value" value="173439" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="86219" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="86421" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="456" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="202" />
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
                      <Property name="Value" value="1692" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1728" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.116039" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-6.755910" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.007075" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.002476" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6.755909" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6.750773" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="16491940186502142892" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDING_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="pSphereShape1" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
      <Property name="Name" value="polySurface513" />
      <Property name="NameHash" value="1906065425" />
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
          <Property name="Value" value="217647" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="94893" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="102167" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="18672" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7274" />
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
          <Property name="Value" value="2120" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2168" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-4.511103" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.405239" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-4.511103" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.511103" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="11.107175" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.511103" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16697894253396729012" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDING_MAT1.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="polySurfaceShape563" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1polySurface513" />
          <Property name="NameHash" value="2430132837" />
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
              <Property name="Value" value="236319" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="102168" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="102311" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="288" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="143" />
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
              <Property name="Value" value="2168" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2216" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.976007" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.897880" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.976007" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.976007" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="10.779263" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.976007" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13381848438504063031" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\LIGHTS2_MAT1.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape563" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB2polySurface513" />
          <Property name="NameHash" value="1207113841" />
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
              <Property name="Value" value="236607" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="102312" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="120675" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="42264" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="18363" />
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
              <Property name="Value" value="2216" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2256" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.622938" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.159667" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.622938" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.622938" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9.756748" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.622938" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8028995640706897028" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDINGINTERIOR_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape563" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB3polySurface513" />
          <Property name="NameHash" value="123731359" />
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
              <Property name="Value" value="278871" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="120676" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="121163" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1200" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="487" />
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
              <Property name="Value" value="2256" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2288" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.969562" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.242762" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.969562" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.969562" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9.607280" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.969562" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="17391328003707541148" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\LIGHTS1_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape563" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB4polySurface513" />
          <Property name="NameHash" value="847268333" />
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
              <Property name="Value" value="280071" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="121164" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125549" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="10560" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4385" />
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
              <Property name="Value" value="2288" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2332" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.621430" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12.657333" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-3.807292" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.621430" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20.320486" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.807292" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14794447755985825323" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\PASTED__SCIENTIFICBUILDING_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape563" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="polySurface514" />
      <Property name="NameHash" value="2403367769" />
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
          <Property name="Value" value="290631" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="125550" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="136631" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="25740" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="11081" />
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
          <Property name="Value" value="2332" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2380" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-7.104834" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="11.822948" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.718853" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7.104834" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="15.260653" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.718853" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16882936438996997009" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\PASTED__SCIENTIFICBUILDING_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="polySurfaceShape564" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1polySurface514" />
          <Property name="NameHash" value="2742978480" />
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
              <Property name="Value" value="316371" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="136632" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="136887" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="384" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="255" />
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
              <Property name="Value" value="2380" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2396" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-7.063811" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13.326797" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.284833" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7.063811" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13.896462" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.284833" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="11940014106687949844" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\PASTED__LIGHTS2_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape564" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB2polySurface514" />
          <Property name="NameHash" value="2928469415" />
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
              <Property name="Value" value="316755" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="136888" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="136903" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="24" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="15" />
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
              <Property name="Value" value="2396" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2414" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.371421" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13.541800" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.718853" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.371421" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14.072955" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.718853" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="11199942949332189999" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\PASTED__SCIENTIFICBUILDINGDECAL_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape564" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB3polySurface514" />
          <Property name="NameHash" value="171770713" />
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
              <Property name="Value" value="316779" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="136904" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="138081" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4752" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1177" />
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
              <Property name="Value" value="2414" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2454" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.583292" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8.885720" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.583867" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.583292" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13.560578" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.583869" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7342816562621343903" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDINGINTERIOR_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape564" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
          <Property name="Name" value="SUB5polySurface514" />
          <Property name="NameHash" value="599013662" />
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
              <Property name="Value" value="324675" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="139386" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="145661" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12792" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6275" />
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
              <Property name="Value" value="2502" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2550" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.958068" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.457514" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.958068" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.958068" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8.531442" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.958068" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9011002666694511637" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\SCIENTIFICBUILDING_MAT3.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="polySurfaceShape564" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
      <Property name="Name" value="INACTIVE" />
      <Property name="NameHash" value="404414664" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="3.608732" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLight8" />
      <Property name="NameHash" value="2491467745" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="3.715492" />
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
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="constant" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="100000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.926688" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
      <Property name="Name" value="Door" />
      <Property name="NameHash" value="2299307041" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.964013" />
        <Property name="TransZ" value="-18.82015" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHOP\SCIENTIFICPARTS\SCIENTIFICDOOR.SCENE.MBIN" />
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