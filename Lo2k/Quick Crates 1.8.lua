NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Quick Crates 1.8.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod opens crates in one click",
	["NMS_VERSION"]		= "3.87",	
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
<!--File created using MBINCompiler version (3.87.0)-->
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="71" />
  <Property name="NodeCount" value="17" />
  <Property name="NodeData">
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_FrontLid" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="9" />
      <Property name="ScaleIndex" value="0" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_Screen" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="1" />
      <Property name="TransIndex" value="10" />
      <Property name="ScaleIndex" value="1" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_Bolts" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="13" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="2" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_LockLeft" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="2" />
      <Property name="TransIndex" value="11" />
      <Property name="ScaleIndex" value="3" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_LockRight" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="3" />
      <Property name="TransIndex" value="12" />
      <Property name="ScaleIndex" value="4" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="J_BackLid" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="4" />
      <Property name="TransIndex" value="13" />
      <Property name="ScaleIndex" value="5" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="Screen" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="5" />
      <Property name="TransIndex" value="1" />
      <Property name="ScaleIndex" value="6" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="Bolts" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="6" />
      <Property name="TransIndex" value="2" />
      <Property name="ScaleIndex" value="7" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="FrontLid" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="7" />
      <Property name="TransIndex" value="3" />
      <Property name="ScaleIndex" value="8" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="FrontLid1_DUP" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="8" />
      <Property name="TransIndex" value="4" />
      <Property name="ScaleIndex" value="9" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="pCube1" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="9" />
      <Property name="TransIndex" value="5" />
      <Property name="ScaleIndex" value="10" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="FrontLid1_DUP_2" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="10" />
      <Property name="TransIndex" value="6" />
      <Property name="ScaleIndex" value="11" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="pCube1_2" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="11" />
      <Property name="TransIndex" value="7" />
      <Property name="ScaleIndex" value="12" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="BackLid" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="12" />
      <Property name="TransIndex" value="8" />
      <Property name="ScaleIndex" value="13" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="Crate_Large" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="14" />
      <Property name="TransIndex" value="14" />
      <Property name="ScaleIndex" value="14" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="collisionBox" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="15" />
      <Property name="TransIndex" value="15" />
      <Property name="ScaleIndex" value="15" />
    </Property>
    <Property value="TkAnimNodeData.xml">
      <Property name="Node" value="Effect" />
      <Property name="CanCompress" value="True" />
      <Property name="RotIndex" value="16" />
      <Property name="TransIndex" value="16" />
      <Property name="ScaleIndex" value="16" />
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
          <Property name="z" value="-0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="2.9802322E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="0.93819463" />
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
          <Property name="z" value="0.039276514" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.044430733" />
          <Property name="y" value="-0.024487674" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.078466706" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.090645805" />
          <Property name="y" value="-0.04541397" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="z" value="-0.27143955" />
          <Property name="w" value="0.96245545" />
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
          <Property name="z" value="0.117527425" />
          <Property name="w" value="0.99306965" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.13836022" />
          <Property name="y" value="-0.06264967" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="z" value="-0.23345788" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.15645865" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.18727988" />
          <Property name="y" value="-0.07608867" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="z" value="-0.19508775" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.19508775" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.23710313" />
          <Property name="y" value="-0.08564794" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="z" value="-0.15645865" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.23345788" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.2875228" />
          <Property name="y" value="-0.09126878" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="0.99306965" />
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
          <Property name="z" value="0.27143955" />
          <Property name="w" value="0.96245545" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.33822805" />
          <Property name="y" value="-0.09291631" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3090328" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.3889063" />
          <Property name="y" value="-0.09058052" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="z" value="-0.039276514" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3461081" />
          <Property name="w" value="0.93819463" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.43924505" />
          <Property name="y" value="-0.08427578" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="1.4901161E-08" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3695545" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-3.7252903E-09" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.73910904" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.044375822" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.36955458" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="y" value="0.17497472" />
          <Property name="z" value="0" />
          <Property name="w" value="0.98457295" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.17497472" />
          <Property name="z" value="0" />
          <Property name="w" value="0.98457295" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.17497472" />
          <Property name="z" value="0" />
          <Property name="w" value="0.98457295" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.17497472" />
          <Property name="z" value="0" />
          <Property name="w" value="0.98457295" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.17497472" />
          <Property name="z" value="0" />
          <Property name="w" value="0.98457295" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.17497472" />
          <Property name="z" value="0" />
          <Property name="w" value="0.98457295" />
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
          <Property name="x" value="-0.75229055" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.007141009" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.12613879" />
          <Property name="y" value="0" />
          <Property name="z" value="0.029269189" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.040478356" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.39148736" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.12613879" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.7098399" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.040478356" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.34762168" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="y" value="0.34451115" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.34451115" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.34451115" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.34451115" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.34451115" />
          <Property name="z" value="0" />
          <Property name="w" value="0.9387822" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.34451115" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.014282063" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.23447146" />
          <Property name="y" value="0" />
          <Property name="z" value="0.100204125" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.029263118" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.41073474" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.23447146" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.6389049" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.029263118" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.32837433" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="y" value="0.50347316" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.50347316" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.50347316" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.50347316" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.50347316" />
          <Property name="z" value="0" />
          <Property name="w" value="0.8640109" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.50347316" />
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
          <Property name="x" value="-0.73800856" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.021422997" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.31173304" />
          <Property name="y" value="0" />
          <Property name="z" value="0.20411913" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.0121033825" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.42493987" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.31173304" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.53498995" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.0121033825" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.31416923" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="0.76257724" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.76257724" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.76257724" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.76257724" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.76257724" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.6468972" />
          <Property name="z" value="0" />
          <Property name="w" value="0.76257724" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.02856405" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.34846362" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3282908" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.008899815" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.43236345" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.34846362" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.41081828" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.008899815" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.30674565" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="0.63770384" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.63770384" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.63770384" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.63770384" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.63770384" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.7702817" />
          <Property name="z" value="0" />
          <Property name="w" value="0.63770384" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.035704985" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.34016564" />
          <Property name="y" value="0" />
          <Property name="z" value="0.4575147" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.031174697" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.43209642" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.34016564" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.28159437" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.031174697" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.30701262" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="y" value="0.86998886" />
          <Property name="z" value="0" />
          <Property name="w" value="0.49307135" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.86998886" />
          <Property name="z" value="0" />
          <Property name="w" value="0.49307135" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.86998886" />
          <Property name="z" value="0" />
          <Property name="w" value="0.49307135" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.86998886" />
          <Property name="z" value="0" />
          <Property name="w" value="0.49307135" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.86998886" />
          <Property name="z" value="0" />
          <Property name="w" value="0.49307135" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.86998886" />
          <Property name="z" value="0" />
          <Property name="w" value="0.49307135" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.04284604" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.28785512" />
          <Property name="y" value="0" />
          <Property name="z" value="0.5759687" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.05199393" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.42417163" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.28785512" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.16314039" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.05199393" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.31493744" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="y" value="0.94283986" />
          <Property name="z" value="0" />
          <Property name="w" value="0.33324614" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.94283986" />
          <Property name="z" value="0" />
          <Property name="w" value="0.33324614" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.94283986" />
          <Property name="z" value="0" />
          <Property name="w" value="0.33324614" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.94283986" />
          <Property name="z" value="0" />
          <Property name="w" value="0.33324614" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.94283986" />
          <Property name="z" value="0" />
          <Property name="w" value="0.33324614" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.94283986" />
          <Property name="z" value="0" />
          <Property name="w" value="0.33324614" />
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
          <Property name="x" value="-0.70944446" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.049987093" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.19793731" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6691484" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.068808265" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.40955928" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.19793731" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.069960654" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.068808265" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.3295498" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="y" value="0.98660153" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.98660153" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.98660153" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.98660153" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.98660153" />
          <Property name="z" value="0" />
          <Property name="w" value="0.1631486" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.98660153" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.057128027" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.08142178" />
          <Property name="y" value="0" />
          <Property name="z" value="0.725645" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.079558946" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.39004862" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.08142178" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.01346406" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.079558946" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.34906045" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.06426908" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.04742457" />
          <Property name="y" value="0" />
          <Property name="z" value="0.73854053" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.082929604" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.3680286" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.04742457" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0005684922" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.082929604" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.37108046" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.18675768" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.18675768" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.18675768" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.18675768" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.18675768" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.982406" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.18675768" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.071410075" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.17282598" />
          <Property name="y" value="0" />
          <Property name="z" value="0.7062561" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07850751" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.34619537" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.17282598" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.032852933" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07850751" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.3929137" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="z" value="0.38270864" />
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
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48893392" />
          <Property name="y" value="-0.07404095" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07855107" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27942696" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.066834144" />
          <Property name="y" value="0.6186858" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
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
          <Property name="z" value="-0.0011221862" />
          <Property name="w" value="0.99999934" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.0033665586" />
          <Property name="w" value="0.99999434" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3816728" />
          <Property name="w" value="0.9242975" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0011221862" />
          <Property name="w" value="0.99999934" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0011221862" />
          <Property name="w" value="0.99999934" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0010358641" />
          <Property name="y" value="0.93457055" />
          <Property name="z" value="0.00038844906" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0010358641" />
          <Property name="y" value="0.93457055" />
          <Property name="z" value="0.00038844906" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0010358641" />
          <Property name="y" value="0.93457055" />
          <Property name="z" value="0.00038844906" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0010358641" />
          <Property name="y" value="0.93457055" />
          <Property name="z" value="0.00038844906" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.0033665586" />
          <Property name="w" value="0.99999434" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.48775768" />
          <Property name="y" value="-0.073732495" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07754098" />
          <Property name="y" value="0.0012230277" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.0010100007" />
          <Property name="y" value="0.0013981164" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27841634" />
          <Property name="y" value="0.000775218" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.067203104" />
          <Property name="y" value="0.61993337" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27841634" />
          <Property name="y" value="0.000775218" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.067203104" />
          <Property name="y" value="0.61993337" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.003038764" />
          <Property name="y" value="0.004226595" />
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
          <Property name="z" value="-0.0042297784" />
          <Property name="w" value="0.99999106" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.012818819" />
          <Property name="w" value="0.9999178" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.37878096" />
          <Property name="w" value="0.9254864" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0042297784" />
          <Property name="w" value="0.99999106" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.0042297784" />
          <Property name="w" value="0.99999106" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0039708125" />
          <Property name="y" value="0.93456155" />
          <Property name="z" value="0.0015106353" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0039708125" />
          <Property name="y" value="0.93456155" />
          <Property name="z" value="0.0015106353" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0039708125" />
          <Property name="y" value="0.93456155" />
          <Property name="z" value="0.0015106353" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.0039708125" />
          <Property name="y" value="0.93456155" />
          <Property name="z" value="0.0015106353" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.012818819" />
          <Property name="w" value="0.9999178" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.4844516" />
          <Property name="y" value="-0.072850525" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07471305" />
          <Property name="y" value="0.00467664" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.0038352013" />
          <Property name="y" value="0.005344391" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27558163" />
          <Property name="y" value="0.0029689074" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.068256184" />
          <Property name="y" value="0.62343967" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.27558163" />
          <Property name="y" value="0.0029689074" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.068256184" />
          <Property name="y" value="0.62343967" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.011436224" />
          <Property name="y" value="0.016228586" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.0274504" />
          <Property name="w" value="0.9996232" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.37429225" />
          <Property name="w" value="0.92731076" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.009106972" />
          <Property name="w" value="0.9999585" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.009106972" />
          <Property name="w" value="0.9999585" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.008502718" />
          <Property name="y" value="0.9345433" />
          <Property name="z" value="0.0032370754" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.008502718" />
          <Property name="y" value="0.9345433" />
          <Property name="z" value="0.0032370754" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.008502718" />
          <Property name="y" value="0.9345433" />
          <Property name="z" value="0.0032370754" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.008502718" />
          <Property name="y" value="0.9345433" />
          <Property name="z" value="0.0032370754" />
          <Property name="w" value="-0.355733" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.4793532" />
          <Property name="y" value="-0.07144666" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07038543" />
          <Property name="y" value="0.010048628" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.008152723" />
          <Property name="y" value="0.011477828" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.2712281" />
          <Property name="y" value="0.00639385" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.06992698" />
          <Property name="y" value="0.6288452" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.2712281" />
          <Property name="y" value="0.00639385" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.06992698" />
          <Property name="y" value="0.6288452" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.023963213" />
          <Property name="y" value="0.03508398" />
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
          <Property name="z" value="-0.015365318" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.04631176" />
          <Property name="w" value="0.99892706" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.36846554" />
          <Property name="w" value="0.9296414" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.015365318" />
          <Property name="w" value="0.9998819" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.015365318" />
          <Property name="w" value="0.9998819" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.014329454" />
          <Property name="y" value="0.93446195" />
          <Property name="z" value="0.005438287" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.014329454" />
          <Property name="y" value="0.93446195" />
          <Property name="z" value="0.005438287" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.014329454" />
          <Property name="y" value="0.93446195" />
          <Property name="z" value="0.005438287" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.014329454" />
          <Property name="y" value="0.93446195" />
          <Property name="z" value="0.005438287" />
          <Property name="w" value="-0.355733" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.04631176" />
          <Property name="w" value="0.99892706" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.472803" />
          <Property name="y" value="-0.06956464" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.06488525" />
          <Property name="y" value="0.017033458" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.01362884" />
          <Property name="y" value="0.01944369" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.26566657" />
          <Property name="y" value="0.01086992" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07215731" />
          <Property name="y" value="0.6357874" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.26566657" />
          <Property name="y" value="0.01086992" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07215731" />
          <Property name="y" value="0.6357874" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.039284885" />
          <Property name="y" value="0.059910566" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.068410195" />
          <Property name="w" value="0.99765724" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3616461" />
          <Property name="w" value="0.93231547" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.022659529" />
          <Property name="w" value="0.9997432" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.022659529" />
          <Property name="w" value="0.9997432" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.021192053" />
          <Property name="y" value="0.93432885" />
          <Property name="z" value="0.008071108" />
          <Property name="w" value="-0.35568985" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.021192053" />
          <Property name="y" value="0.93432885" />
          <Property name="z" value="0.008071108" />
          <Property name="w" value="-0.35568985" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.021192053" />
          <Property name="y" value="0.93432885" />
          <Property name="z" value="0.008071108" />
          <Property name="w" value="-0.35568985" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.021192053" />
          <Property name="y" value="0.93432885" />
          <Property name="z" value="0.008071108" />
          <Property name="w" value="-0.35568985" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.068410195" />
          <Property name="w" value="0.99765724" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.46514207" />
          <Property name="y" value="-0.06725043" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.05853852" />
          <Property name="y" value="0.025322497" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.019931734" />
          <Property name="y" value="0.028884172" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.25920784" />
          <Property name="y" value="0.016214073" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.0748868" />
          <Property name="y" value="0.64390314" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.25920784" />
          <Property name="y" value="0.016214073" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.0748868" />
          <Property name="y" value="0.64390314" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.056066453" />
          <Property name="y" value="0.08977583" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.09279617" />
          <Property name="w" value="0.9956851" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.35404974" />
          <Property name="w" value="0.9352266" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.030773798" />
          <Property name="w" value="0.9995264" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.030773798" />
          <Property name="w" value="0.9995264" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.028788392" />
          <Property name="y" value="0.9341291" />
          <Property name="z" value="0.010962896" />
          <Property name="w" value="-0.35560355" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.028788392" />
          <Property name="y" value="0.9341291" />
          <Property name="z" value="0.010962896" />
          <Property name="w" value="-0.35560355" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.028788392" />
          <Property name="y" value="0.9341291" />
          <Property name="z" value="0.010962896" />
          <Property name="w" value="-0.35560355" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.028788392" />
          <Property name="y" value="0.9341291" />
          <Property name="z" value="0.010962896" />
          <Property name="w" value="-0.35560355" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.45670956" />
          <Property name="y" value="-0.064560235" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.051661506" />
          <Property name="y" value="0.034597397" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.02674061" />
          <Property name="y" value="0.0394319" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.25215665" />
          <Property name="y" value="0.0222345" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07804395" />
          <Property name="y" value="0.6528315" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.25215665" />
          <Property name="y" value="0.0222345" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07804395" />
          <Property name="y" value="0.6528315" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.07306695" />
          <Property name="y" value="0.12363559" />
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
          <Property name="z" value="-0.039362837" />
          <Property name="w" value="0.99922496" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.11856329" />
          <Property name="w" value="0.9929465" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.34602177" />
          <Property name="w" value="0.93822646" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.039362837" />
          <Property name="w" value="0.99922496" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.039362837" />
          <Property name="w" value="0.99922496" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.03677318" />
          <Property name="y" value="0.9338578" />
          <Property name="z" value="0.013984166" />
          <Property name="w" value="-0.35547405" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.03677318" />
          <Property name="y" value="0.9338578" />
          <Property name="z" value="0.013984166" />
          <Property name="w" value="-0.35547405" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.03677318" />
          <Property name="y" value="0.9338578" />
          <Property name="z" value="0.013984166" />
          <Property name="w" value="-0.35547405" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.03677318" />
          <Property name="y" value="0.9338578" />
          <Property name="z" value="0.013984166" />
          <Property name="w" value="-0.35547405" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.11856329" />
          <Property name="w" value="0.9929465" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.44784087" />
          <Property name="y" value="-0.06156695" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.0445538" />
          <Property name="y" value="0.044525802" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.033753872" />
          <Property name="y" value="0.050704747" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.24480727" />
          <Property name="y" value="0.02872461" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08153977" />
          <Property name="y" value="0.6622162" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.24480727" />
          <Property name="y" value="0.02872461" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08153977" />
          <Property name="y" value="0.6622162" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08921903" />
          <Property name="y" value="0.16030204" />
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
          <Property name="w" value="0.99884343" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.14467569" />
          <Property name="w" value="0.9894791" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3378212" />
          <Property name="w" value="0.9412103" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.04808136" />
          <Property name="w" value="0.99884343" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.04808136" />
          <Property name="w" value="0.99884343" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.044930603" />
          <Property name="y" value="0.93349844" />
          <Property name="z" value="0.017091759" />
          <Property name="w" value="-0.3553446" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.044930603" />
          <Property name="y" value="0.93349844" />
          <Property name="z" value="0.017091759" />
          <Property name="w" value="-0.3553446" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.044930603" />
          <Property name="y" value="0.93349844" />
          <Property name="z" value="0.017091759" />
          <Property name="w" value="-0.3553446" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.044930603" />
          <Property name="y" value="0.93349844" />
          <Property name="z" value="0.017091759" />
          <Property name="w" value="-0.3553446" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.14467569" />
          <Property name="w" value="0.9894791" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.43886554" />
          <Property name="y" value="-0.058363497" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.037493326" />
          <Property name="y" value="0.054757953" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.040694535" />
          <Property name="y" value="0.06230384" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.2374402" />
          <Property name="y" value="0.03546107" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08526388" />
          <Property name="y" value="0.6717079" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.2374402" />
          <Property name="y" value="0.03546107" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08526388" />
          <Property name="y" value="0.6717079" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.1036914" />
          <Property name="y" value="0.198441" />
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
          <Property name="z" value="-0.056670398" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.17027016" />
          <Property name="w" value="0.9853974" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3297501" />
          <Property name="w" value="0.94406825" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.056670398" />
          <Property name="w" value="0.99839294" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.056670398" />
          <Property name="w" value="0.99839294" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.052958556" />
          <Property name="y" value="0.933082" />
          <Property name="z" value="0.02015619" />
          <Property name="w" value="-0.35517192" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.052958556" />
          <Property name="y" value="0.933082" />
          <Property name="z" value="0.02015619" />
          <Property name="w" value="-0.35517192" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.052958556" />
          <Property name="y" value="0.933082" />
          <Property name="z" value="0.02015619" />
          <Property name="w" value="-0.35517192" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.052958556" />
          <Property name="y" value="0.933082" />
          <Property name="z" value="0.02015619" />
          <Property name="w" value="-0.35517192" />
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
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.43010575" />
          <Property name="y" value="-0.055064976" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.030733466" />
          <Property name="y" value="0.064926565" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.047313273" />
          <Property name="y" value="0.07381284" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.23031989" />
          <Property name="y" value="0.042201817" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08908253" />
          <Property name="y" value="0.6809661" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.23031989" />
          <Property name="y" value="0.042201817" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.08908253" />
          <Property name="y" value="0.6809661" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.11593026" />
          <Property name="y" value="0.23659267" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.19435401" />
          <Property name="w" value="0.98093146" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.32206744" />
          <Property name="w" value="0.9467167" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.06474151" />
          <Property name="w" value="0.9979021" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.06474151" />
          <Property name="w" value="0.9979021" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06051173" />
          <Property name="y" value="0.93262136" />
          <Property name="z" value="0.023047978" />
          <Property name="w" value="-0.35499927" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06051173" />
          <Property name="y" value="0.93262136" />
          <Property name="z" value="0.023047978" />
          <Property name="w" value="-0.35499927" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06051173" />
          <Property name="y" value="0.93262136" />
          <Property name="z" value="0.023047978" />
          <Property name="w" value="-0.35499927" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06051173" />
          <Property name="y" value="0.93262136" />
          <Property name="z" value="0.023047978" />
          <Property name="w" value="-0.35499927" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.19435401" />
          <Property name="w" value="0.98093146" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.42187557" />
          <Property name="y" value="-0.05180794" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.024502687" />
          <Property name="y" value="0.07464743" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.05338967" />
          <Property name="y" value="0.08479887" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.22369412" />
          <Property name="y" value="0.048687458" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.092839144" />
          <Property name="y" value="0.6896592" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.22369412" />
          <Property name="y" value="0.048687458" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.092839144" />
          <Property name="y" value="0.6896592" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.1256721" />
          <Property name="y" value="0.27320683" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.21602084" />
          <Property name="w" value="0.97638875" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.31511852" />
          <Property name="w" value="0.94905233" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.07207888" />
          <Property name="w" value="0.9973989" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.07207888" />
          <Property name="w" value="0.9973989" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06737433" />
          <Property name="y" value="0.9321489" />
          <Property name="z" value="0.025637638" />
          <Property name="w" value="-0.35482663" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06737433" />
          <Property name="y" value="0.9321489" />
          <Property name="z" value="0.025637638" />
          <Property name="w" value="-0.35482663" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06737433" />
          <Property name="y" value="0.9321489" />
          <Property name="z" value="0.025637638" />
          <Property name="w" value="-0.35482663" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.06737433" />
          <Property name="y" value="0.9321489" />
          <Property name="z" value="0.025637638" />
          <Property name="w" value="-0.35482663" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.21602084" />
          <Property name="w" value="0.97638875" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.4144806" />
          <Property name="y" value="-0.048748493" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.019005544" />
          <Property name="y" value="0.08352262" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.05872947" />
          <Property name="y" value="0.09481561" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.21779472" />
          <Property name="y" value="0.054643333" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.09635668" />
          <Property name="y" value="0.6974657" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.21779472" />
          <Property name="y" value="0.054643333" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.09635668" />
          <Property name="y" value="0.6974657" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.13292795" />
          <Property name="y" value="0.30668676" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.23436427" />
          <Property name="w" value="0.97214884" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.3091623" />
          <Property name="w" value="0.95100933" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.07829407" />
          <Property name="w" value="0.9969303" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.07829407" />
          <Property name="w" value="0.9969303" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07320107" />
          <Property name="y" value="0.931712" />
          <Property name="z" value="0.027838849" />
          <Property name="w" value="-0.354654" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07320107" />
          <Property name="y" value="0.931712" />
          <Property name="z" value="0.027838849" />
          <Property name="w" value="-0.354654" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07320107" />
          <Property name="y" value="0.931712" />
          <Property name="z" value="0.027838849" />
          <Property name="w" value="-0.354654" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07320107" />
          <Property name="y" value="0.931712" />
          <Property name="z" value="0.027838849" />
          <Property name="w" value="-0.354654" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.23436427" />
          <Property name="w" value="0.97214884" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.40821904" />
          <Property name="y" value="-0.04605794" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.014427327" />
          <Property name="y" value="0.09114349" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.0631606" />
          <Property name="y" value="0.10340676" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.21284012" />
          <Property name="y" value="0.0597831" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.09944221" />
          <Property name="y" value="0.7040724" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.21284012" />
          <Property name="y" value="0.0597831" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.09944221" />
          <Property name="y" value="0.7040724" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.13793343" />
          <Property name="y" value="0.33542788" />
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
          <Property name="z" value="-0.083128095" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.24856424" />
          <Property name="w" value="0.9686154" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.30454406" />
          <Property name="w" value="0.95249826" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.083128095" />
          <Property name="w" value="0.9965389" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.083128095" />
          <Property name="w" value="0.9965389" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07768981" />
          <Property name="y" value="0.9313445" />
          <Property name="z" value="0.02956529" />
          <Property name="w" value="-0.3545245" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07768981" />
          <Property name="y" value="0.9313445" />
          <Property name="z" value="0.02956529" />
          <Property name="w" value="-0.3545245" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07768981" />
          <Property name="y" value="0.9313445" />
          <Property name="z" value="0.02956529" />
          <Property name="w" value="-0.3545245" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.07768981" />
          <Property name="y" value="0.9313445" />
          <Property name="z" value="0.02956529" />
          <Property name="w" value="-0.3545245" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.24856424" />
          <Property name="w" value="0.9686154" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.40338394" />
          <Property name="y" value="-0.043916285" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.010940738" />
          <Property name="y" value="0.09709591" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.066524684" />
          <Property name="y" value="0.11011067" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.20904024" />
          <Property name="y" value="0.06381357" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.10189314" />
          <Property name="y" value="0.70917183" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.20904024" />
          <Property name="y" value="0.06381357" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.10189314" />
          <Property name="y" value="0.70917183" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.1410687" />
          <Property name="y" value="0.35784712" />
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
          <Property name="z" value="-0.086278856" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.25771436" />
          <Property name="w" value="0.96622115" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.30156595" />
          <Property name="w" value="0.9534453" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.086278856" />
          <Property name="w" value="0.996271" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.086278856" />
          <Property name="w" value="0.996271" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08062476" />
          <Property name="y" value="0.93109155" />
          <Property name="z" value="0.030687476" />
          <Property name="w" value="-0.3544382" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08062476" />
          <Property name="y" value="0.93109155" />
          <Property name="z" value="0.030687476" />
          <Property name="w" value="-0.3544382" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08062476" />
          <Property name="y" value="0.93109155" />
          <Property name="z" value="0.030687476" />
          <Property name="w" value="-0.3544382" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08062476" />
          <Property name="y" value="0.93109155" />
          <Property name="z" value="0.030687476" />
          <Property name="w" value="-0.3544382" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.25771436" />
          <Property name="w" value="0.96622115" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.40026653" />
          <Property name="y" value="-0.04250568" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.0087154955" />
          <Property name="y" value="0.10096532" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.068666756" />
          <Property name="y" value="0.11446577" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.20660236" />
          <Property name="y" value="0.06644118" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.10350532" />
          <Property name="y" value="0.7124588" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.20660236" />
          <Property name="y" value="0.06644118" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.10350532" />
          <Property name="y" value="0.7124588" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.14274734" />
          <Property name="y" value="0.37239867" />
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
          <Property name="w" value="0.99617696" />
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
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0.9345712" />
          <Property name="z" value="0" />
          <Property name="w" value="-0.35577616" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.26095146" />
          <Property name="w" value="0.96535194" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.30053008" />
          <Property name="w" value="0.95377237" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.08735788" />
          <Property name="w" value="0.99617696" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="-0.08735788" />
          <Property name="w" value="0.99617696" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08166062" />
          <Property name="y" value="0.9310048" />
          <Property name="z" value="0.031075925" />
          <Property name="w" value="-0.354395" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08166062" />
          <Property name="y" value="0.9310048" />
          <Property name="z" value="0.031075925" />
          <Property name="w" value="-0.354395" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08166062" />
          <Property name="y" value="0.9310048" />
          <Property name="z" value="0.031075925" />
          <Property name="w" value="-0.354395" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0.08166062" />
          <Property name="y" value="0.9310048" />
          <Property name="z" value="0.031075925" />
          <Property name="w" value="-0.354395" />
        </Property>
        <Property value="Quaternion.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.26095146" />
          <Property name="w" value="0.96535194" />
        </Property>
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.3991608" />
          <Property name="y" value="-0.04199958" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.007930562" />
          <Property name="y" value="0.10234374" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.06942141" />
          <Property name="y" value="0.116016656" />
          <Property name="z" value="0" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.20573995" />
          <Property name="y" value="0.06737864" />
          <Property name="z" value="0.6327449" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.104083136" />
          <Property name="y" value="0.7136245" />
          <Property name="z" value="0.32722238" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.20573995" />
          <Property name="y" value="0.06737864" />
          <Property name="z" value="-0.106364146" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.104083136" />
          <Property name="y" value="0.7136245" />
          <Property name="z" value="-0.4118867" />
        </Property>
        <Property value="Vector3f.xml">
          <Property name="x" value="0.14327753" />
          <Property name="y" value="0.3775772" />
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
        <Property name="z" value="0.7071499" />
        <Property name="w" value="0.7071499" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property value="Vector3f.xml">
        <Property name="x" value="0.6267205" />
        <Property name="y" value="0.4537919" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.29287818" />
        <Property name="y" value="0.09938308" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.60743445" />
        <Property name="y" value="0.17470482" />
        <Property name="z" value="0.36955452" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.60743445" />
        <Property name="y" value="0.17470482" />
        <Property name="z" value="-0.36955455" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="-0.6267205" />
        <Property name="y" value="0.4537919" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.28934988" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.006622767" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0.41540653" />
        <Property name="z" value="0" />
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