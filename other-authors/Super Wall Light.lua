ModeName = "Super Wall Light"
Author = "Jyin"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 			= ModeName..".pak",
    ["MOD_DESCRIPTION"]			= ModeName,
    ["MOD_AUTHOR"]				= Author,
    ["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
                {
                    MBIN_FILE_SOURCE  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\WALLLIGHT01.SCENE.MBIN",
                    MXML_CHANGE_TABLE =
                    {
                        {
                            PRECEDING_KEY_WORDS = {"Children"},
                            ADD_OPTION  = "ADDendSECTION",
                            ADD =
[[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="VolLight" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.457188" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="90.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="40.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="20000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="1.000000" />
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
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="Light" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.457188" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="90.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="45.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="linear" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="200000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.000000" />
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

]]
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP2.SCENE.MBIN",
                    MXML_CHANGE_TABLE =
                    {
                        {
                            PRECEDING_KEY_WORDS = {"Children"},
                            ADD_OPTION  = "ADDendSECTION",
                            ADD =
[[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="VolLight" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="90.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.750000" />
				<Property name="ScaleY" value="0.750000" />
				<Property name="ScaleZ" value="0.750000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="120.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="20000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="1.000000" />
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
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="Light" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="90.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.750000" />
				<Property name="ScaleY" value="0.750000" />
				<Property name="ScaleZ" value="0.750000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="135.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="linear" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="10.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="200000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="1.000000" />
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

]]
                        }
                    }
                }				
            }
        }
    }
}