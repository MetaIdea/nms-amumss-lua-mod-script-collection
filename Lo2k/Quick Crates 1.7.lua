NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Quick Crates 1.7.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod opens crates in one click",
	["NMS_VERSION"]		= "3.7",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE_RARE\ENTITIES\CRATE_LARGE_RARE.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AnimType",	"OneShot"},
								{"Active", "False"},
							},
						},				
						{      
							["PRECEDING_KEY_WORDS"] = {"GcMaintenanceComponentData.xml",},
							["REMOVE"] 	= "SECTION",
						},
					},
				},
			},
		},
	},
	["ADD_FILES"] 			= 
	{
		{		
            ["FILE_DESTINATION"] = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE_RARE.ANIM.EXML]],
            ["FILE_CONTENT"]      = 	
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.52.0)-->
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="71" />
  <Property name="NodeCount" value="8" />
  <Property name="NodeData">
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_FrontLid" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="1" />
      <Property name="ScaleIndex" value="0" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_Screen" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="1" />
      <Property name="TransIndex" value="2" />
      <Property name="ScaleIndex" value="1" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_Bolts" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="5" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="2" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_LockLeft" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="2" />
      <Property name="TransIndex" value="3" />
      <Property name="ScaleIndex" value="3" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_LockRight" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="3" />
      <Property name="TransIndex" value="4" />
      <Property name="ScaleIndex" value="4" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_BackLid" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="4" />
      <Property name="TransIndex" value="5" />
      <Property name="ScaleIndex" value="5" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="Effect" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="6" />
      <Property name="TransIndex" value="6" />
      <Property name="ScaleIndex" value="6" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="MaintenanceSlot0" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="7" />
      <Property name="TransIndex" value="7" />
      <Property name="ScaleIndex" value="7" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.382708639" />
          <Property name="w" value="0.9238691" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.3461081" />
          <Property name="w" value="0.938194633" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.3090328" />
          <Property name="w" value="0.9510514" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.271439552" />
          <Property name="w" value="0.962455451" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.233457878" />
          <Property name="w" value="0.9723669" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.195087746" />
          <Property name="w" value="0.9807858" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.156458646" />
          <Property name="w" value="0.9876845" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.117527425" />
          <Property name="w" value="0.993069649" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.078466706" />
          <Property name="w" value="0.9969167" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0392765142" />
          <Property name="w" value="0.9992284" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.759431541" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.174974725" />
          <Property name="z" value="0" />
          <Property name="w" value="0.984572947" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.174974725" />
          <Property name="z" value="0" />
          <Property name="w" value="0.984572947" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.752290547" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.344511151" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.344511151" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7451495" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.503473163" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.503473163" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.738008559" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.762577236" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.762577236" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7308675" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.637703836" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.637703836" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7237266" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.869988859" />
          <Property name="z" value="0" />
          <Property name="w" value="0.493071347" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.869988859" />
          <Property name="z" value="0" />
          <Property name="w" value="0.493071347" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7165855" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.942839861" />
          <Property name="z" value="0" />
          <Property name="w" value="0.333246142" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.942839861" />
          <Property name="z" value="0" />
          <Property name="w" value="0.333246142" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.709444463" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.986601532" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.986601532" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7023035" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.999928" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.01199876" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.999928" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.01199876" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6951625" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.186757684" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.186757684" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6880215" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.00112218619" />
          <Property name="w" value="0.999999344" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.00336655858" />
          <Property name="w" value="0.999994338" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.00422977842" />
          <Property name="w" value="0.999991059" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.0128188189" />
          <Property name="w" value="0.9999178" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.009106972" />
          <Property name="w" value="0.9999585" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.0274504" />
          <Property name="w" value="0.9996232" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0153653184" />
          <Property name="w" value="0.9998819" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.04631176" />
          <Property name="w" value="0.998927057" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.022659529" />
          <Property name="w" value="0.9997432" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.0684101954" />
          <Property name="w" value="0.997657239" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.030773798" />
          <Property name="w" value="0.9995264" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.09279617" />
          <Property name="w" value="0.9956851" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0393628366" />
          <Property name="w" value="0.999224961" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.118563287" />
          <Property name="w" value="0.9929465" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.04808136" />
          <Property name="w" value="0.998843431" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.144675687" />
          <Property name="w" value="0.9894791" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0566703975" />
          <Property name="w" value="0.99839294" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.17027016" />
          <Property name="w" value="0.9853974" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.06474151" />
          <Property name="w" value="0.9979021" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.194354013" />
          <Property name="w" value="0.980931461" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.07207888" />
          <Property name="w" value="0.9973989" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.216020837" />
          <Property name="w" value="0.976388752" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.07829407" />
          <Property name="w" value="0.9969303" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.234364271" />
          <Property name="w" value="0.972148836" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0831280947" />
          <Property name="w" value="0.9965389" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.248564243" />
          <Property name="w" value="0.9686154" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0862788558" />
          <Property name="w" value="0.996271" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.257714361" />
          <Property name="w" value="0.966221154" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations">
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.08735788" />
          <Property name="w" value="0.996176958" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
          <Property name="w" value="1" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.355776161" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.260951459" />
          <Property name="w" value="0.965351939" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.137886211" />
          <Property name="z" value="0" />
        </Property>
      </Property>
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations">
      <Property value="Quaternion.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="w" value="1" />
      </Property>
      <Property value="Quaternion.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0.7071499" />
        <Property name="w" value="0.7071499" />
      </Property>
      <Property value="Quaternion.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="w" value="1" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property value="Vector3f.xml">
        <Property name="x" value="0.6267205" />
        <Property name="y" value="0.4537919" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.292878181" />
        <Property name="y" value="0.09938308" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.607434452" />
        <Property name="y" value="0.17470482" />
        <Property name="z" value="0.36955452" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.607434452" />
        <Property name="y" value="0.17470482" />
        <Property name="z" value="-0.369554549" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.6267205" />
        <Property name="y" value="0.4537919" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.415406525" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0.02365856" />
        <Property name="y" value="0.630104244" />
        <Property name="z" value="-0.377057344" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0.99999994" />
        <Property name="y" value="0.99999994" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
      </Property>
    </Property>
  </Property>
</Data>
]],
		},	
	},	
}