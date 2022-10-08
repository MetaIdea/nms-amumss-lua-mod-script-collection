NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Quick Crates 1.9.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod opens crates in one click",
	["NMS_VERSION"]		= "4.0",	
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
<!--File created using MBINCompiler version (4.0.0)-->
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="7516" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="8364" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="9223" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="10094" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="10974" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="11863" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="12758" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="13660" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14565" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="15473" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="20437" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="20437" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="24365" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="24365" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="28048" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="28048" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="31371" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="31371" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="31158" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="31158" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="27807" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="27807" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="24104" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="24104" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="20163" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="20163" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="16105" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="16105" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="12056" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="12056" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16357" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16461" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16285" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16680" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16172" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="17019" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16027" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="17456" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="15858" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="17968" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="15670" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="18533" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="15471" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="19130" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="15269" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="19735" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="15070" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="20328" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14883" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="20886" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14713" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="21388" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14569" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="21813" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14457" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="22142" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14384" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="22354" />
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
        <Property value="16383" />
        <Property value="16383" />
        <Property value="14359" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="49151" />
        <Property value="16383" />
        <Property value="8140" />
        <Property value="16383" />
        <Property value="16383" />
        <Property value="22429" />
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
      <Property value="16383" />
      <Property value="16383" />
      <Property value="16383" />
      <Property value="49151" />
      <Property value="65535" />
      <Property value="32767" />
      <Property value="16383" />
      <Property value="16383" />
      <Property value="16383" />
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