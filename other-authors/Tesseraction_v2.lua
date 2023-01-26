
--======= This is a mod script lua definition file for 'No Man's Sky' PC =======
--User variables used in the CONTAINER

ENABLE_SHARPER_ANGLES = false -- ***USER SELECT: false uses -45 to 45 range, true uses -75 to 75 without the inclusion of +- 15, 30 to keep the sockets usable***
ENABLE_POLYHEDRAL_ANGLESNAPS = false -- ***USER SELECT: LEGACY OPTION, false uses standard/sharper snaps, true enables d20 snaps, DO NOT ENABLE AT THE SAME TIME AS SHARPER ANGLES***

FLOOR_ANGLE_SNAPSET_STD = -- 'Standard' +- 15, 30, 45 snap angle set
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorTile_Out_1" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="15" />
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
          <Property name="Name" value="FloorTile_Out_2" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="30" />
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
          <Property name="Name" value="FloorTile_Out_4" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="45" />
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
          <Property name="Name" value="FloorTile_Out_9" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-15" />
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
          <Property name="Name" value="FloorTile_Out_10" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-30" />
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
          <Property name="Name" value="FloorTile_Out_11" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-45" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
FLOOR_ANGLE_SNAPSET_d20 = -- Icosahedron 'd20' twenty sided die snap angle set
[[

        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorTile_Out_1" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="41.810315" />
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
          <Property name="Name" value="FloorTile_Out_2" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="60" />
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
          <Property name="Name" value="FloorTile_Out_4" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="70.5287794" />
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
          <Property name="Name" value="FloorTile_Out_5" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="90" />
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
          <Property name="Name" value="FloorTile_Out_6" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-41.810315" />
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
          <Property name="Name" value="FloorTile_Out_7" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-60" />
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
          <Property name="Name" value="FloorTile_Out_9" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-70.5287794" />
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
          <Property name="Name" value="FloorTile_Out_10" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
FLOOR_ANGLE_SNAPSET_sharper= -- 'Sharper' +- 45, 60, 75 snap angle set
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorTile_Out_1" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="45" />
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
          <Property name="Name" value="FloorTile_Out_2" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="60" />
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
          <Property name="Name" value="FloorTile_Out_4" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="75" />
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
          <Property name="Name" value="FloorTile_Out_9" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-45" />
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
          <Property name="Name" value="FloorTile_Out_10" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-60" />
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
          <Property name="Name" value="FloorTile_Out_11" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-75" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]

-- ***sets ACTIVE Angle Snap Set to use for floors ***
FLOOR_ANGLE_SNAPS = FLOOR_ANGLE_SNAPSET_STD
if ENABLE_SHARPER_ANGLES then FLOOR_ANGLE_SNAPS = FLOOR_ANGLE_SNAPSET_sharper end
if ENABLE_POLYHEDRAL_ANGLESNAPS then FLOOR_ANGLE_SNAPS = FLOOR_ANGLE_SNAPSET_d20 end

--Wall snap set User Variables
WALLTOP_ANGLE_SNAPS = -- +- 45 snap angles for Wall Top
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WallStack1_In_1" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WallStack1_In_2" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WallStack1_In_3" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
WALLBOTTOM_ANGLE_SNAPS = -- +- 45 snap angles for Wall Bottom
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WallStack0_In_1" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WallStack0_In_2" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WallStack0_In_3" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
WINWALL_ANGLE_SNAPS = -- +- 15, 30, 45, 60 snap angles Window Wall
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_2" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="15" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_3" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="30" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_4" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_5" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="60" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_6" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="75" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_7" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-15" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_8" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-30" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_9" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_10" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-60" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_11" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-75" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
WINWALL_STACK_SNAP = -- Vertical -1.666667 stack snap 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WIWall_Out_2" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-1.666667" />
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
]]

PRIMITIVE_WALLFLOOR_FRONTBACK_SNAP = --Reversed Wall, inverted Floor Snaps for FRONT and BACK Primitive Snaps 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorDown_Out_" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
PRIMITIVE_WALLFLOOR_RIGHTLEFT_SNAP = --Reversed Wall, inverted Floor Snaps for RIGHT and LEFT Primitive Snaps 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorDown_Out_" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
PRIMITIVE_WALLFLOORSHAPE_TOP_SNAP_WEDGESM = --Add angled Wall inverted Floor, Shape Snaps to TOP of WedgeSmall Primitive
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapPoint_Top" />
      <Property name="NameHash" value="729522667" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-45" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_1" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_2" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorDown_Out_" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ShapeTop_Out_T" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Shape_Out_T" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ShapeTop_In_T" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_TileTop" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
PRIMITIVE_WALLFLOORSHAPE_TOP_SNAP_WEDGE = --Add angled Wall inverted Floor, Shape Snaps to TOP of Wedge Primitive
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapPoint_Top" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="1" />
        <Property name="RotX" value="-65" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_1" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Wall_Out_2" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="FloorDown_Out_" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ShapeTop_Out_T" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Shape_Out_T" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ShapeTop_In_T" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_TileTop" />
          <Property name="Type" value="LOCATOR" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

--======== CONTAINER =============================================================
-- Comment out Sections below with Reg.Ex Find/Replace: ^(.+)$  / --\1 In selection
-- Reinstate Commented out Sections below with Reg.Ex Find/Replace: ^--(.+)$ /  \1 In selection

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "Tesseraction v2.pak",
  ["MOD_AUTHOR"] = "Korro after TheLich after Sparky after WinderTP",
  ["MOD_DESCRIPTION"] = "A fork of Tesseraction that changes and improves a few things for NMS in 2022",
  [[
 Allows Basic Floors, Walls and Primitives to be snapped onto each other at an angle\
    —Version: 3.00
	—Changelog: Outlaws (3.85) support, bunch of changes and fixed vs previous versions:
	  -Added sharper angles for walls as an option, can be enabled in config above
	  -Fixed walls snaps, now every type of a wall can enjoy angle snaps on the sides of walls
	  -General clean up/changes vs previous versions
	—Version: 2.65
	—Changelog: Origin (3.05) support

	—Version: 2.64
	—Changelog: Origin (3.03) support

	—Version: 2.63
	—Changelog: Origin (3.01) support

	—Version: 2.52
	—Changelog: Internal LUA script changes to allow snap angle sets to be user switched between standard and polyhedral angles
	
	—For Updates: To get the latest version and see the terms of use visit: https://www.nexusmods.com/nomanssky/mods/999
	—Modifies: BuildableParts  BASIC_FLOOR.SCENE, BASIC_FLOOR_TRI.SCENE,  BASIC_WALL.SCENE,  BASIC_WALL_HALF.SCENE,  CUBESNAPSHAPE.SCENE,  PIPESNAPSHAPE\TILINGTEXTURE_MAT.MATERIAL,  WEDGESMALLSNAPSHAPE.SCENE,  WEDGESNAPSHAPE.SCENE

	—This mod allows:
			FLOORS:
			·   Any building objects that use Basic Floor snappoints can be snapped onto Basic Floors at the 'Standard' angle snap set of 15, 30, 45 and 60 degrees in an upward or downward direction
    		·   Basic Triangle Floors can be snapped at an angle of 15, 30, 45 and 60 degrees
			WALLS:
			·   Any building objects that use Basic Wall snappoints can be snapped onto Basic Walls and Basic Half Walls at an angle of 15, 30 and 45 degrees to either the left or right direction in the horizontal axis
    		·   Any building objects that use Basic Wall Top / Bottom snappoints can be snapped onto Basic Walls and Basic Half Walls at an angle of 45 degrees in either forward or backward direction in the vertical axis
    		·   Basic Walls and Basic Half Walls can be "chained" horizontally
			·   Basic Floors / Walls can be snapped to infrastructure parts
			PRIMITIVE Adornments:
			·   Cubes, Pyramids and Wedges can be snapped inverted left to right and top to bottom
    		·   Adds 16 guidelines on the side of Pipe primitive/decoration
	
	—What this mod doesn't do:
			·   address Hello Games' woeful snap-point selection logic. You will need patience and an eye for greenlit attachment points. Suggest use the mod only when advanced building and remove when building conventionally

	—Thanks to:
			MonkeyMan192 for the sisyphean task that is the essential MBINCompiler, Mjjstral & Wbertro for the AMUMSS script-based auto modbuilder/updater, Gumsk for his evaluation, Winder for the original Mod, and all the rest of the contributors in our fab NMS community
  ]],
  
  ["NMS_VERSION"] = "2.32", --version when first scripted. See current version in description
  ["MODIFICATIONS"] =
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ --Basic Floor SnapPoint Additions (Standard angle snap set used)
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\BASIC_FLOOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --ADD Snap Angle Set at offset to Floor SnapPoint N
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_N",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPSET_STD  --Add incremental angle snaps subsection at line 130
						},
						{ --ADD Snap Angle Set at offset to Floor SnapPoint E
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_E",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPSET_STD  --Add incremental angle snaps subsection at line 347
						},
						{ --ADD Snap Angle Set at offset to Floor SnapPoint S
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_S",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPSET_STD  --Add incremental angle snaps subsection at line 564
						},
						{ --ADD Snap Angle Set at offset to Floor SnapPoint W
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_W",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPSET_STD --Add incremental angle snaps subsection at line 781
						},
					}
				}, --4 ADD(s) made to BASIC_FLOOR.SCENE
				{ --Basic Triangular Floor SnapPoint Additions ——**SET ACTIVE angle snap set above**——
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\BASIC_FLOOR_TRI.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --ADD Snap Angle Set at offset to Floor SnapPoint E
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_E",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPS  --Add incremental angle snaps subsection at line 347
						},
						{ --ADD Snap Angle Set at offset to Floor SnapPoint S
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_S",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPS  --Add incremental angle snaps subsection at line 564
						},
						{ --ADD Snap Angle Set at offset to Floor SnapPoint W
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_W",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+33", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = FLOOR_ANGLE_SNAPS --Add incremental angle snaps subsection at line 781
						},
					}
				}, --3 ADD(s) made to BASIC_FLOOR_TRI.SCENE
				{ --Basic Wall SnapPoint Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\BASIC_WALL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Top
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Top_",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLTOP_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Bottom
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Bot_",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLBOTTOM_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 180 deg. snap angle at second offset to Wall SnapPoint  8
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_8",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 1888 - 2023 added 
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  1E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_1E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1689
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  1W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_1W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1744
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint 9
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_9",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 2240 - 2375 added
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1854
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1909
						},
					}
				
				}, --18 ADD(s) made to BASIC_WALL.SCENE
				{ --Basic Wall SnapPoint Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\SNAPPOINT_WALLTOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Top
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Top_",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLTOP_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Bottom
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Bot_",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLBOTTOM_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint 9
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_9",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 2240 - 2375 added
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1854
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1909
						},
					}
				
				}, --18 ADD(s) made to SNAPPOINT_WALLTOP.SCENE
				{ --Basic Wall SnapPoint Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\SNAPPOINT_WALLBOT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Top
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Top_",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLTOP_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Bottom
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Bot_",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLBOTTOM_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 180 deg. snap angle at second offset to Wall SnapPoint  8
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_8",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 1888 - 2023 added 
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  1E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_1E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1689
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  1W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_1W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1744
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint 9
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_9",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 2240 - 2375 added
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1854
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1909
						},
					}
				
				}, --18 ADD(s) made to SNAPPOINT_WALLBOT.SCENE
				{ --Basic Half Wall SnapPoint Amendments
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\BASIC_WALL_HALF.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Top
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Top",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLTOP_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 0 and +- 45 deg. snap angles at offset to Wall SnapPoint Bottom
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Bottom",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --15 lines down
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WALLBOTTOM_ANGLE_SNAPS --Add incremental angle snaps subsection at line XX
						},
						{ --ADD 180 deg. snap angle at second offset to Wall SnapPoint  8
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_8",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 1888 - 2023 added 
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  1E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_1E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1689
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  1W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_1W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1744
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint 9
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_9",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --** 50 lines down! **
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_ANGLE_SNAPS  -- Lines 2240 - 2375 added
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0E4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0E4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1854
						},
						{ --ADD Y Axis -1.666667 snap at second offset to Wall SnapPoint  0W4
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_0W4",},
							["PRECEDING_KEY_WORDS"] = {"",},
							["LINE_OFFSET"] = "+15", --33 lines down 
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = WINWALL_STACK_SNAP  --Add  Y Axis -1.666667 snap subsection at line 1909
						},
					}
				}, --18 ADD(s) made to BASIC_WALL_HALF.SCENE
				--[[{ --PipeShape Texture Amendment
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PIPESNAPSHAPE\TILINGTEXTURE_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --Put a Custom Texture on the Pipe Primitive
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["REPLACE_TYPE"] = "", -- just once
							["VALUE_MATCH"] = "TEXTURES/MULTITEXTURES/BASEBUILDING/BASEBUILDINGEXTERIOR.DDS", --match this texture
							["VALUE_CHANGE_TABLE"] =
							{
								{"Map", "CUSTOMMODELS/TESS/PIPE_SCALE.DDS",} --replacement Texture on line 89
							},
						}
					}
				}, --1 replacement(s) made in TILINGTEXTURE_MAT.MATERIAL]]
				{ --Cube Primitive Snap Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBESNAPSHAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --Cube Primitive FRONT SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Front"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_FRONTBACK_SNAP --Appended to SnapPoint_Front for Cube Primitive Snaps at line 217
						},
						{ --Cube Primitive RIGHT SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Right"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_RIGHTLEFT_SNAP  --Appended to SnapPoint_Right for Cube Primitive Snaps at line 324
						},
						{ --Cube Primitive BACK SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Back"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_FRONTBACK_SNAP --Appended to SnapPoint_Front for Cube Primitive Snaps at line 430
						},
						{ --Cube Primitive LEFT SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Left"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_RIGHTLEFT_SNAP  --Appended to SnapPoint_Left for Cube Primitive Snaps at line 503
						}, 
					} 
				}, --4 ADD(s) made to CUBESNAPSHAPE.SCENE
				{ --Pyramid Primitive Snap Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PYRAMIDSNAPSHAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --Pyramid Primitive FRONT SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Front"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_FRONTBACK_SNAP --Appended to SnapPoint_Front for Pyramid Primitive Snaps at line 366
						},
						{ --Pyramid Primitive RIGHT SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Right"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_RIGHTLEFT_SNAP  --Appended to SnapPoint_Right for Pyramid Primitive Snaps at line 473
						},
						{ --Pyramid Primitive BACK SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Back"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next lines
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_FRONTBACK_SNAP --Appended to SnapPoint_Front for Pyramid Primitive Snaps at line 580
						},
						{ --Pyramid Primitive LEFT SnapPoint Amendment
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Left"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "0", --next line
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOOR_RIGHTLEFT_SNAP  --Appended to SnapPoint_Left for Pyramid Primitive Snaps at line 687
						}, 
					} 
				}, --4 ADD(s) made to PYRAMIDSNAPSHAPE.SCENE
				{ --WedgeSmall Primitive Snap Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WEDGESMALLSNAPSHAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --WedgeSmall Primitive TOP SnapPoint ADD
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Front"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "-17", --17 Lines up
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOORSHAPE_TOP_SNAP_WEDGESM --ADD SnapPoint_TOP for WedgeSmall Primitive Snap at line 473
						},
					} --1 ADD(s) made to WEDGESMALLSNAPSHAPE.SCENE
				}, --for multiple MBIN sources: copy this chunk to below
				{ --Wedge Primitive Snap Additions
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WEDGESNAPSHAPE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{ --Wedge Primitive TOP SnapPoint ADD
							["SPECIAL_KEY_WORDS"] = {"Name","SnapPoint_Front"},
							["PRECEDING_KEY_WORDS"] = "Children",
							["LINE_OFFSET"] = "-17", --17 Lines up
							["REPLACE_TYPE"] = "", -- add mid-section if offset dictates
							["VALUE_CHANGE_TABLE"] =
							{ {"IGNORE", "IGNORE",} },
							["ADD"] = PRIMITIVE_WALLFLOORSHAPE_TOP_SNAP_WEDGE --ADD SnapPoint_TOP for Wedge Primitive Snap at line 349
						},
					} --1 ADD(s) made to WEDGESNAPSHAPE.SCENE
				}, --for multiple MBIN sources: copy this chunk to below
			} --Total 54 action(s) if not commented out [4+3+18+18+1+4+4+1+1]
		}, --for multiple pak sources: copy this chunk below and add a comma behind this line here
	}
}
--DON'T ADD ANYTHING PAST THIS POINT HERE

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxx   W A R N I N G    xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--NOTE: this script uses LINE_OFFSET !
-- if NMS updates add or remove lines in the section where we ADD lines,
-- the EXML may not compile or work correctly
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
