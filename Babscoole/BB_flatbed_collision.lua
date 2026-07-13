NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "BB_flatbed_collision",
["MOD_AUTHOR"]       = "POPiD6oFrfMfPZp",
["LUA_AUTHOR"]       = "Babscoole",
["NMS_VERSION"]      = "6.22",
["MOD_DESCRIPTION"]  = "Add an invisible lid to the Colossus bed",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\ROVER\FLATBED.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision312316_2"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FlatBed_Wall"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD"] =
              
[[
								<Property name="Children" value="TkSceneNodeData" _index="0">
									<Property name="Name" value="MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision" />
									<Property name="NameHash" value="1064751356" />
									<Property name="Type" value="COLLISION" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="2.000000" />
										<Property name="TransY" value="3.29999971" />
										<Property name="TransZ" value="-0.199999809" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="NAVIGATION" />
											<Property name="Value" value="FALSE" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="TYPE" />
											<Property name="Value" value="Box" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="WIDTH" />
											<Property name="Value" value="0.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="HEIGHT" />
											<Property name="Value" value="6.000000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="DEPTH" />
											<Property name="Value" value="8.000000" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="1">
									<Property name="Name" value="MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision" />
									<Property name="NameHash" value="1064751356" />
									<Property name="Type" value="COLLISION" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="-2.000000" />
										<Property name="TransY" value="3.29999971" />
										<Property name="TransZ" value="-0.199999809" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="NAVIGATION" />
											<Property name="Value" value="FALSE" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="TYPE" />
											<Property name="Value" value="Box" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="WIDTH" />
											<Property name="Value" value="0.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="HEIGHT" />
											<Property name="Value" value="6.000000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="DEPTH" />
											<Property name="Value" value="8.000000" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="2">
									<Property name="Name" value="MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision" />
									<Property name="NameHash" value="1064751356" />
									<Property name="Type" value="COLLISION" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="3.300000" />
										<Property name="TransZ" value="-4.09999943" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="NAVIGATION" />
											<Property name="Value" value="FALSE" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="TYPE" />
											<Property name="Value" value="Box" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="WIDTH" />
											<Property name="Value" value="4.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="HEIGHT" />
											<Property name="Value" value="6.000000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="DEPTH" />
											<Property name="Value" value="0.200000" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="3">
									<Property name="Name" value="MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision" />
									<Property name="NameHash" value="1064751356" />
									<Property name="Type" value="COLLISION" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="3.29999971" />
										<Property name="TransZ" value="3.70000029" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="NAVIGATION" />
											<Property name="Value" value="FALSE" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="TYPE" />
											<Property name="Value" value="Box" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="WIDTH" />
											<Property name="Value" value="4.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="HEIGHT" />
											<Property name="Value" value="6.000000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="DEPTH" />
											<Property name="Value" value="0.200000" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="4">
									<Property name="Name" value="MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision" />
									<Property name="NameHash" value="1064751356" />
									<Property name="Type" value="COLLISION" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="0.399999946" />
										<Property name="TransZ" value="-0.200000048" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="NAVIGATION" />
											<Property name="Value" value="FALSE" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="TYPE" />
											<Property name="Value" value="Box" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="WIDTH" />
											<Property name="Value" value="4.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="HEIGHT" />
											<Property name="Value" value="0.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="DEPTH" />
											<Property name="Value" value="8.000000" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
								<Property name="Children" value="TkSceneNodeData" _index="5">
									<Property name="Name" value="MODELS\COMMON\VEHICLES\ROVER\FLATBED|Collision" />
									<Property name="NameHash" value="1064751356" />
									<Property name="Type" value="COLLISION" />
									<Property name="Transform" value="TkTransformData">
										<Property name="TransX" value="0.000000" />
										<Property name="TransY" value="6.20000029" />
										<Property name="TransZ" value="-0.200000048" />
										<Property name="RotX" value="0.000000" />
										<Property name="RotY" value="-0.000000" />
										<Property name="RotZ" value="0.000000" />
										<Property name="ScaleX" value="1.000000" />
										<Property name="ScaleY" value="1.000000" />
										<Property name="ScaleZ" value="1.000000" />
									</Property>
									<Property name="PlatformExclusion" value="0" />
									<Property name="Attributes">
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
											<Property name="Name" value="NAVIGATION" />
											<Property name="Value" value="FALSE" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
											<Property name="Name" value="TYPE" />
											<Property name="Value" value="Box" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
											<Property name="Name" value="WIDTH" />
											<Property name="Value" value="4.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
											<Property name="Name" value="HEIGHT" />
											<Property name="Value" value="0.200000" />
										</Property>
										<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
											<Property name="Name" value="DEPTH" />
											<Property name="Value" value="8.000000" />
										</Property>
									</Property>
									<Property name="Children" />
								</Property>
]]
            },
          }
        },
      }
    }
  }
}