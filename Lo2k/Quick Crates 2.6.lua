NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Quick Crates 2.6.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["LUA_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod opens crates in one click",
	["NMS_VERSION"]		= "4.42",	
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
<!--File created using MBINCompiler version (4.3.0)-->
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
          <Property name="x" value="-0.75943154" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.75229055" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7451495" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.73800856" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7308675" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7237266" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7165855" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.70944446" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.7023035" />
          <Property name="y" value="0.13788621" />
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
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6880215" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
      </Property>
      <Property name="Translations">
        <Property value="Vector3f.xml">
          <Property name="x" value="-0.6808805" />
          <Property name="y" value="0.13788621" />
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
        <Property name="y" value="0.41540653" />
        <Property name="z" value="0" />
      </Property>
      <Property value="Vector3f.xml">
        <Property name="x" value="0.02365856" />
        <Property name="y" value="0.63010424" />
        <Property name="z" value="-0.37705734" />
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